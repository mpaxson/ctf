
stack2:     file format elf32-i386


Disassembly of section .plt:

0804835c <__gmon_start__@plt-0x10>:
 804835c:	ff 35 4c 97 04 08    	push   DWORD PTR ds:0x804974c
 8048362:	ff 25 50 97 04 08    	jmp    DWORD PTR ds:0x8049750
 8048368:	00 00                	add    BYTE PTR [eax],al
	...

0804836c <__gmon_start__@plt>:
 804836c:	ff 25 54 97 04 08    	jmp    DWORD PTR ds:0x8049754
 8048372:	68 00 00 00 00       	push   0x0
 8048377:	e9 e0 ff ff ff       	jmp    804835c <_init+0x30>

0804837c <getenv@plt>:
 804837c:	ff 25 58 97 04 08    	jmp    DWORD PTR ds:0x8049758
 8048382:	68 08 00 00 00       	push   0x8
 8048387:	e9 d0 ff ff ff       	jmp    804835c <_init+0x30>

0804838c <__libc_start_main@plt>:
 804838c:	ff 25 5c 97 04 08    	jmp    DWORD PTR ds:0x804975c
 8048392:	68 10 00 00 00       	push   0x10
 8048397:	e9 c0 ff ff ff       	jmp    804835c <_init+0x30>

0804839c <strcpy@plt>:
 804839c:	ff 25 60 97 04 08    	jmp    DWORD PTR ds:0x8049760
 80483a2:	68 18 00 00 00       	push   0x18
 80483a7:	e9 b0 ff ff ff       	jmp    804835c <_init+0x30>

080483ac <printf@plt>:
 80483ac:	ff 25 64 97 04 08    	jmp    DWORD PTR ds:0x8049764
 80483b2:	68 20 00 00 00       	push   0x20
 80483b7:	e9 a0 ff ff ff       	jmp    804835c <_init+0x30>

080483bc <errx@plt>:
 80483bc:	ff 25 68 97 04 08    	jmp    DWORD PTR ds:0x8049768
 80483c2:	68 28 00 00 00       	push   0x28
 80483c7:	e9 90 ff ff ff       	jmp    804835c <_init+0x30>

080483cc <puts@plt>:
 80483cc:	ff 25 6c 97 04 08    	jmp    DWORD PTR ds:0x804976c
 80483d2:	68 30 00 00 00       	push   0x30
 80483d7:	e9 80 ff ff ff       	jmp    804835c <_init+0x30>

Disassembly of section .text:

080483e0 <_start>:
 80483e0:	31 ed                	xor    ebp,ebp
 80483e2:	5e                   	pop    esi
 80483e3:	89 e1                	mov    ecx,esp
 80483e5:	83 e4 f0             	and    esp,0xfffffff0
 80483e8:	50                   	push   eax
 80483e9:	54                   	push   esp
 80483ea:	52                   	push   edx
 80483eb:	68 20 85 04 08       	push   0x8048520
 80483f0:	68 30 85 04 08       	push   0x8048530
 80483f5:	51                   	push   ecx
 80483f6:	56                   	push   esi
 80483f7:	68 94 84 04 08       	push   0x8048494
 80483fc:	e8 8b ff ff ff       	call   804838c <__libc_start_main@plt>
 8048401:	f4                   	hlt
 8048402:	90                   	nop
 8048403:	90                   	nop
 8048404:	90                   	nop
 8048405:	90                   	nop
 8048406:	90                   	nop
 8048407:	90                   	nop
 8048408:	90                   	nop
 8048409:	90                   	nop
 804840a:	90                   	nop
 804840b:	90                   	nop
 804840c:	90                   	nop
 804840d:	90                   	nop
 804840e:	90                   	nop
 804840f:


 	/*
		c1 = 0x80485e9

		var1 = esp+0x5c
		var2 = esp+0x4
		var3 = esp+0x58


	*/


08048494 <main>:
 8048494:	55                   	push   ebp
 8048495:	89 e5                	mov    ebp,esp
 8048497:	83 e4 f0             	and    esp,0xfffffff0
 804849a:	83 ec 60             	sub    esp,0x60



 804849d:	c7 04 24 e0 85 04 08 	mov    DWORD PTR [esp],0x80485e0
 80484a4:	e8 d3 fe ff ff       	call   804837c <getenv@plt>


 											var1 = argument
 80484a9:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax //var 1


 //checks to see if var1 is 080484c8
 80484ad:	83 7c 24 5c 00       	cmp    DWORD PTR [esp+0x5c],0x0
 80484b2:	75 14                	jne    80484c8 <main+0x34> 	 jump1:

													    var2
 80484b4:	c7 44 24 04 e8 85 04 	mov    DWORD PTR [esp+0x4],0x80485e8
 80484bb:	08

													//move 1 onto the stack
 80484bc:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80484c3:	e8 f4 fe ff ff       	call   80483bc <errx@plt>


jump1:
 														var3  = 0
 80484c8:	c7 44 24 58 00 00 00 	mov    DWORD PTR [esp+0x58],0x0
 80484cf:	00

 															move var1 into temporary register
 80484d0:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]

 														var2 = var1;
 80484d4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax


 80484d8:	8d 44 24 18          	lea    eax,[esp+0x18]
 80484dc:	89 04 24             	mov    DWORD PTR [esp],eax
 80484df:	e8 b8 fe ff ff       	call   804839c <strcpy@plt>
 80484e4:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
 80484e8:	3d 0a 0d 0a 0d       	cmp    eax,0xd0a0d0a
 80484ed:	75 0e                	jne    80484fd <main+0x69>
 80484ef:	c7 04 24 18 86 04 08 	mov    DWORD PTR [esp],0x8048618
 80484f6:	e8 d1 fe ff ff       	call   80483cc <puts@plt>
 80484fb:	eb 15                	jmp    8048512 <main+0x7e>
 80484fd:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
 8048501:	b8 41 86 04 08       	mov    eax,0x8048641
 8048506:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 804850a:	89 04 24             	mov    DWORD PTR [esp],eax
 804850d:	e8 9a fe ff ff       	call   80483ac <printf@plt>
 8048512:	c9                   	leave
 8048513:	c3                   	ret







 8048514:	90                   	nop
 8048515:	90                   	nop
 8048516:	90                   	nop
 8048517:	90                   	nop
 8048518:	90                   	nop
 8048519:	90                   	nop
 804851a:	90                   	nop
 804851b:	90                   	nop
 804851c:	90                   	nop
 804851d:	90                   	nop
 804851e:	90                   	nop
 804851f:	90                   	nop
