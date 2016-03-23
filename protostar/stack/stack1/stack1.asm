
stack1:     file format elf32-i386


Disassembly of section .init:

08048308 <_init>:
 8048308:	55                   	push   ebp
 8048309:	89 e5                	mov    ebp,esp
 804830b:	53                   	push   ebx
 804830c:	83 ec 04             	sub    esp,0x4
 804830f:	e8 00 00 00 00       	call   8048314 <_init+0xc>
 8048314:	5b                   	pop    ebx
 8048315:	81 c3 e8 13 00 00    	add    ebx,0x13e8
 804831b:	8b 93 fc ff ff ff    	mov    edx,DWORD PTR [ebx-0x4]
 8048321:	85 d2                	test   edx,edx
 8048323:	74 05                	je     804832a <_init+0x22>
 8048325:	e8 1e 00 00 00       	call   8048348 <__gmon_start__@plt>
 804832a:	e8 11 01 00 00       	call   8048440 <frame_dummy>
 804832f:	e8 1c 02 00 00       	call   8048550 <__do_global_ctors_aux>
 8048334:	58                   	pop    eax
 8048335:	5b                   	pop    ebx
 8048336:	c9                   	leave  
 8048337:	c3                   	ret    

Disassembly of section .plt:

08048338 <__gmon_start__@plt-0x10>:
 8048338:	ff 35 00 97 04 08    	push   DWORD PTR ds:0x8049700
 804833e:	ff 25 04 97 04 08    	jmp    DWORD PTR ds:0x8049704
 8048344:	00 00                	add    BYTE PTR [eax],al
	...

08048348 <__gmon_start__@plt>:
 8048348:	ff 25 08 97 04 08    	jmp    DWORD PTR ds:0x8049708
 804834e:	68 00 00 00 00       	push   0x0
 8048353:	e9 e0 ff ff ff       	jmp    8048338 <_init+0x30>

08048358 <__libc_start_main@plt>:
 8048358:	ff 25 0c 97 04 08    	jmp    DWORD PTR ds:0x804970c
 804835e:	68 08 00 00 00       	push   0x8
 8048363:	e9 d0 ff ff ff       	jmp    8048338 <_init+0x30>

08048368 <strcpy@plt>:
 8048368:	ff 25 10 97 04 08    	jmp    DWORD PTR ds:0x8049710
 804836e:	68 10 00 00 00       	push   0x10
 8048373:	e9 c0 ff ff ff       	jmp    8048338 <_init+0x30>

08048378 <printf@plt>:
 8048378:	ff 25 14 97 04 08    	jmp    DWORD PTR ds:0x8049714
 804837e:	68 18 00 00 00       	push   0x18
 8048383:	e9 b0 ff ff ff       	jmp    8048338 <_init+0x30>

08048388 <errx@plt>:
 8048388:	ff 25 18 97 04 08    	jmp    DWORD PTR ds:0x8049718
 804838e:	68 20 00 00 00       	push   0x20
 8048393:	e9 a0 ff ff ff       	jmp    8048338 <_init+0x30>

08048398 <puts@plt>:
 8048398:	ff 25 1c 97 04 08    	jmp    DWORD PTR ds:0x804971c
 804839e:	68 28 00 00 00       	push   0x28
 80483a3:	e9 90 ff ff ff       	jmp    8048338 <_init+0x30>

Disassembly of section .text:

080483b0 <_start>:
 80483b0:	31 ed                	xor    ebp,ebp
 80483b2:	5e                   	pop    esi
 80483b3:	89 e1                	mov    ecx,esp
 80483b5:	83 e4 f0             	and    esp,0xfffffff0
 80483b8:	50                   	push   eax
 80483b9:	54                   	push   esp
 80483ba:	52                   	push   edx
 80483bb:	68 e0 84 04 08       	push   0x80484e0
 80483c0:	68 f0 84 04 08       	push   0x80484f0
 80483c5:	51                   	push   ecx
 80483c6:	56                   	push   esi
 80483c7:	68 64 84 04 08       	push   0x8048464
 80483cc:	e8 87 ff ff ff       	call   8048358 <__libc_start_main@plt>
 80483d1:	f4                   	hlt    
 80483d2:	90                   	nop
 80483d3:	90                   	nop
 80483d4:	90                   	nop
 80483d5:	90                   	nop
 80483d6:	90                   	nop
 80483d7:	90                   	nop
 80483d8:	90                   	nop
 80483d9:	90                   	nop
 80483da:	90                   	nop
 80483db:	90                   	nop
 80483dc:	90                   	nop
 80483dd:	90                   	nop
 80483de:	90                   	nop
 80483df:	90                   	nop

080483e0 <__do_global_dtors_aux>:
 80483e0:	55                   	push   ebp
 80483e1:	89 e5                	mov    ebp,esp
 80483e3:	53                   	push   ebx
 80483e4:	83 ec 04             	sub    esp,0x4
 80483e7:	80 3d 28 97 04 08 00 	cmp    BYTE PTR ds:0x8049728,0x0
 80483ee:	75 3f                	jne    804842f <__do_global_dtors_aux+0x4f>
 80483f0:	a1 2c 97 04 08       	mov    eax,ds:0x804972c
 80483f5:	bb 20 96 04 08       	mov    ebx,0x8049620
 80483fa:	81 eb 1c 96 04 08    	sub    ebx,0x804961c
 8048400:	c1 fb 02             	sar    ebx,0x2
 8048403:	83 eb 01             	sub    ebx,0x1
 8048406:	39 d8                	cmp    eax,ebx
 8048408:	73 1e                	jae    8048428 <__do_global_dtors_aux+0x48>
 804840a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048410:	83 c0 01             	add    eax,0x1
 8048413:	a3 2c 97 04 08       	mov    ds:0x804972c,eax
 8048418:	ff 14 85 1c 96 04 08 	call   DWORD PTR [eax*4+0x804961c]
 804841f:	a1 2c 97 04 08       	mov    eax,ds:0x804972c
 8048424:	39 d8                	cmp    eax,ebx
 8048426:	72 e8                	jb     8048410 <__do_global_dtors_aux+0x30>
 8048428:	c6 05 28 97 04 08 01 	mov    BYTE PTR ds:0x8049728,0x1
 804842f:	83 c4 04             	add    esp,0x4
 8048432:	5b                   	pop    ebx
 8048433:	5d                   	pop    ebp
 8048434:	c3                   	ret    
 8048435:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048439:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048440 <frame_dummy>:
 8048440:	55                   	push   ebp
 8048441:	89 e5                	mov    ebp,esp
 8048443:	83 ec 18             	sub    esp,0x18
 8048446:	a1 24 96 04 08       	mov    eax,ds:0x8049624
 804844b:	85 c0                	test   eax,eax
 804844d:	74 12                	je     8048461 <frame_dummy+0x21>
 804844f:	b8 00 00 00 00       	mov    eax,0x0
 8048454:	85 c0                	test   eax,eax
 8048456:	74 09                	je     8048461 <frame_dummy+0x21>
 8048458:	c7 04 24 24 96 04 08 	mov    DWORD PTR [esp],0x8049624
 804845f:	ff d0                	call   eax
 8048461:	c9                   	leave  
 8048462:	c3                   	ret    
 8048463:	90                   	nop

08048464 <main>:
 8048464:	55                   	push   ebp
 8048465:	89 e5                	mov    ebp,esp
 8048467:	83 e4 f0             	and    esp,0xfffffff0
 804846a:	83 ec 60             	sub    esp,0x60 //size

//compare 1 word and 1 
//var3 = ebp+0x8
 804846d:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1 
 8048471:	75 14                	jne    8048487 <main+0x23>


 8048473:	c7 44 24 04 a0 85 04 	mov    DWORD PTR [esp+0x4],0x80485a0
 804847a:	08 
 804847b:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048482:	e8 01 ff ff ff       	call   8048388 <errx@plt>
 8048487:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
 804848e:	00 
 804848f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048492:	83 c0 04             	add    eax,0x4
 8048495:	8b 00                	mov    eax,DWORD PTR [eax]
//0x4 =64 
 8048497:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804849b:	8d 44 24 1c          	lea    eax,[esp+0x1c]
 804849f:	89 04 24             	mov    DWORD PTR [esp],eax


//possible vulnerability in strcpy
80484a2:	e8 c1 fe ff ff       	call   8048368 <strcpy@plt>

//esp+0x1c = var1
//esp+0x5c = var2
 
 80484a7:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]

//cmp eax  & 'abcd'	
 80484ab:	3d 64 63 62 61       	cmp    eax,0x61626364

 80484b0:	75 0e                	jne    80484c0 <main+0x5c>
 80484b2:	c7 04 24 bc 85 04 08 	mov    DWORD PTR [esp],0x80485bc
 80484b9:	e8 da fe ff ff       	call   8048398 <puts@plt>
 80484be:	eb 15                	jmp    80484d5 <main+0x71>
 80484c0:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
 80484c4:	b8 f3 85 04 08       	mov    eax,0x80485f3
 80484c9:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 80484cd:	89 04 24             	mov    DWORD PTR [esp],eax
 80484d0:	e8 a3 fe ff ff       	call   8048378 <printf@plt>
 80484d5:	c9                   	leave  
 80484d6:	c3                   	ret    
 80484d7:	90                   	nop
 80484d8:	90                   	nop
 80484d9:	90                   	nop
 80484da:	90                   	nop
 80484db:	90                   	nop
 80484dc:	90                   	nop
 80484dd:	90                   	nop
 80484de:	90                   	nop
 80484df:	90                   	nop

080484e0 <__libc_csu_fini>:
 80484e0:	55                   	push   ebp
 80484e1:	89 e5                	mov    ebp,esp
 80484e3:	5d                   	pop    ebp
 80484e4:	c3                   	ret    
 80484e5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80484e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080484f0 <__libc_csu_init>:
 80484f0:	55                   	push   ebp
 80484f1:	89 e5                	mov    ebp,esp
 80484f3:	57                   	push   edi
 80484f4:	56                   	push   esi
 80484f5:	53                   	push   ebx
 80484f6:	e8 4f 00 00 00       	call   804854a <__i686.get_pc_thunk.bx>
 80484fb:	81 c3 01 12 00 00    	add    ebx,0x1201
 8048501:	83 ec 1c             	sub    esp,0x1c
 8048504:	e8 ff fd ff ff       	call   8048308 <_init>
 8048509:	8d bb 18 ff ff ff    	lea    edi,[ebx-0xe8]
 804850f:	8d 83 18 ff ff ff    	lea    eax,[ebx-0xe8]
 8048515:	29 c7                	sub    edi,eax
 8048517:	c1 ff 02             	sar    edi,0x2
 804851a:	85 ff                	test   edi,edi
 804851c:	74 24                	je     8048542 <__libc_csu_init+0x52>
 804851e:	31 f6                	xor    esi,esi
 8048520:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048523:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048527:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804852a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804852e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048531:	89 04 24             	mov    DWORD PTR [esp],eax
 8048534:	ff 94 b3 18 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe8]
 804853b:	83 c6 01             	add    esi,0x1
 804853e:	39 fe                	cmp    esi,edi
 8048540:	72 de                	jb     8048520 <__libc_csu_init+0x30>
 8048542:	83 c4 1c             	add    esp,0x1c
 8048545:	5b                   	pop    ebx
 8048546:	5e                   	pop    esi
 8048547:	5f                   	pop    edi
 8048548:	5d                   	pop    ebp
 8048549:	c3                   	ret    

0804854a <__i686.get_pc_thunk.bx>:
 804854a:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 804854d:	c3                   	ret    
 804854e:	90                   	nop
 804854f:	90                   	nop

08048550 <__do_global_ctors_aux>:
 8048550:	55                   	push   ebp
 8048551:	89 e5                	mov    ebp,esp
 8048553:	53                   	push   ebx
 8048554:	83 ec 04             	sub    esp,0x4
 8048557:	a1 14 96 04 08       	mov    eax,ds:0x8049614
 804855c:	83 f8 ff             	cmp    eax,0xffffffff
 804855f:	74 13                	je     8048574 <__do_global_ctors_aux+0x24>
 8048561:	bb 14 96 04 08       	mov    ebx,0x8049614
 8048566:	66 90                	xchg   ax,ax
 8048568:	83 eb 04             	sub    ebx,0x4
 804856b:	ff d0                	call   eax
 804856d:	8b 03                	mov    eax,DWORD PTR [ebx]
 804856f:	83 f8 ff             	cmp    eax,0xffffffff
 8048572:	75 f4                	jne    8048568 <__do_global_ctors_aux+0x18>
 8048574:	83 c4 04             	add    esp,0x4
 8048577:	5b                   	pop    ebx
 8048578:	5d                   	pop    ebp
 8048579:	c3                   	ret    
 804857a:	90                   	nop
 804857b:	90                   	nop

Disassembly of section .fini:

0804857c <_fini>:
 804857c:	55                   	push   ebp
 804857d:	89 e5                	mov    ebp,esp
 804857f:	53                   	push   ebx
 8048580:	83 ec 04             	sub    esp,0x4
 8048583:	e8 00 00 00 00       	call   8048588 <_fini+0xc>
 8048588:	5b                   	pop    ebx
 8048589:	81 c3 74 11 00 00    	add    ebx,0x1174
 804858f:	e8 4c fe ff ff       	call   80483e0 <__do_global_dtors_aux>
 8048594:	59                   	pop    ecx
 8048595:	5b                   	pop    ebx
 8048596:	c9                   	leave  
 8048597:	c3                   	ret    
