
warmup:     file format elf32-i386


Disassembly of section .init:

080482f4 <_init>:
 80482f4:	53                   	push   ebx
 80482f5:	83 ec 08             	sub    esp,0x8
 80482f8:	e8 b3 00 00 00       	call   80483b0 <__x86.get_pc_thunk.bx>
 80482fd:	81 c3 03 1d 00 00    	add    ebx,0x1d03
 8048303:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048309:	85 c0                	test   eax,eax
 804830b:	74 05                	je     8048312 <_init+0x1e>
 804830d:	e8 3e 00 00 00       	call   8048350 <__gmon_start__@plt>
 8048312:	83 c4 08             	add    esp,0x8
 8048315:	5b                   	pop    ebx
 8048316:	c3                   	ret    

Disassembly of section .plt:

08048320 <gets@plt-0x10>:
 8048320:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048326:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804832c:	00 00                	add    BYTE PTR [eax],al
	...

08048330 <gets@plt>:
 8048330:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048336:	68 00 00 00 00       	push   0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048340 <system@plt>:
 8048340:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048346:	68 08 00 00 00       	push   0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048350 <__gmon_start__@plt>:
 8048350:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048356:	68 10 00 00 00       	push   0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048360 <__libc_start_main@plt>:
 8048360:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048366:	68 18 00 00 00       	push   0x18
 804836b:	e9 b0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048370 <write@plt>:
 8048370:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 8048376:	68 20 00 00 00       	push   0x20
 804837b:	e9 a0 ff ff ff       	jmp    8048320 <_init+0x2c>

Disassembly of section .text:

08048380 <_start>:
 8048380:	31 ed                	xor    ebp,ebp
 8048382:	5e                   	pop    esi
 8048383:	89 e1                	mov    ecx,esp
 8048385:	83 e4 f0             	and    esp,0xfffffff0
 8048388:	50                   	push   eax
 8048389:	54                   	push   esp
 804838a:	52                   	push   edx
 804838b:	68 40 85 04 08       	push   0x8048540
 8048390:	68 d0 84 04 08       	push   0x80484d0
 8048395:	51                   	push   ecx
 8048396:	56                   	push   esi
 8048397:	68 91 84 04 08       	push   0x8048491
 804839c:	e8 bf ff ff ff       	call   8048360 <__libc_start_main@plt>
 80483a1:	f4                   	hlt    
 80483a2:	66 90                	xchg   ax,ax
 80483a4:	66 90                	xchg   ax,ax
 80483a6:	66 90                	xchg   ax,ax
 80483a8:	66 90                	xchg   ax,ax
 80483aa:	66 90                	xchg   ax,ax
 80483ac:	66 90                	xchg   ax,ax
 80483ae:	66 90                	xchg   ax,ax

080483b0 <__x86.get_pc_thunk.bx>:
 80483b0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80483b3:	c3                   	ret    
 80483b4:	66 90                	xchg   ax,ax
 80483b6:	66 90                	xchg   ax,ax
 80483b8:	66 90                	xchg   ax,ax
 80483ba:	66 90                	xchg   ax,ax
 80483bc:	66 90                	xchg   ax,ax
 80483be:	66 90                	xchg   ax,ax

080483c0 <deregister_tm_clones>:
 80483c0:	b8 2b a0 04 08       	mov    eax,0x804a02b
 80483c5:	2d 28 a0 04 08       	sub    eax,0x804a028
 80483ca:	83 f8 06             	cmp    eax,0x6
 80483cd:	77 01                	ja     80483d0 <deregister_tm_clones+0x10>
 80483cf:	c3                   	ret    
 80483d0:	b8 00 00 00 00       	mov    eax,0x0
 80483d5:	85 c0                	test   eax,eax
 80483d7:	74 f6                	je     80483cf <deregister_tm_clones+0xf>
 80483d9:	55                   	push   ebp
 80483da:	89 e5                	mov    ebp,esp
 80483dc:	83 ec 18             	sub    esp,0x18
 80483df:	c7 04 24 28 a0 04 08 	mov    DWORD PTR [esp],0x804a028
 80483e6:	ff d0                	call   eax
 80483e8:	c9                   	leave  
 80483e9:	c3                   	ret    
 80483ea:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080483f0 <register_tm_clones>:
 80483f0:	b8 28 a0 04 08       	mov    eax,0x804a028
 80483f5:	2d 28 a0 04 08       	sub    eax,0x804a028
 80483fa:	c1 f8 02             	sar    eax,0x2
 80483fd:	89 c2                	mov    edx,eax
 80483ff:	c1 ea 1f             	shr    edx,0x1f
 8048402:	01 d0                	add    eax,edx
 8048404:	d1 f8                	sar    eax,1
 8048406:	75 01                	jne    8048409 <register_tm_clones+0x19>
 8048408:	c3                   	ret    
 8048409:	ba 00 00 00 00       	mov    edx,0x0
 804840e:	85 d2                	test   edx,edx
 8048410:	74 f6                	je     8048408 <register_tm_clones+0x18>
 8048412:	55                   	push   ebp
 8048413:	89 e5                	mov    ebp,esp
 8048415:	83 ec 18             	sub    esp,0x18
 8048418:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804841c:	c7 04 24 28 a0 04 08 	mov    DWORD PTR [esp],0x804a028
 8048423:	ff d2                	call   edx
 8048425:	c9                   	leave  
 8048426:	c3                   	ret    
 8048427:	89 f6                	mov    esi,esi
 8048429:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048430 <__do_global_dtors_aux>:
 8048430:	80 3d 28 a0 04 08 00 	cmp    BYTE PTR ds:0x804a028,0x0
 8048437:	75 13                	jne    804844c <__do_global_dtors_aux+0x1c>
 8048439:	55                   	push   ebp
 804843a:	89 e5                	mov    ebp,esp
 804843c:	83 ec 08             	sub    esp,0x8
 804843f:	e8 7c ff ff ff       	call   80483c0 <deregister_tm_clones>
 8048444:	c6 05 28 a0 04 08 01 	mov    BYTE PTR ds:0x804a028,0x1
 804844b:	c9                   	leave  
 804844c:	f3 c3                	repz ret 
 804844e:	66 90                	xchg   ax,ax

08048450 <frame_dummy>:
 8048450:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048455:	85 c0                	test   eax,eax
 8048457:	74 1f                	je     8048478 <frame_dummy+0x28>
 8048459:	b8 00 00 00 00       	mov    eax,0x0
 804845e:	85 c0                	test   eax,eax
 8048460:	74 16                	je     8048478 <frame_dummy+0x28>
 8048462:	55                   	push   ebp
 8048463:	89 e5                	mov    ebp,esp
 8048465:	83 ec 18             	sub    esp,0x18
 8048468:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804846f:	ff d0                	call   eax
 8048471:	c9                   	leave  
 8048472:	e9 79 ff ff ff       	jmp    80483f0 <register_tm_clones>
 8048477:	90                   	nop
 8048478:	e9 73 ff ff ff       	jmp    80483f0 <register_tm_clones>

0804847d <easy>:
 804847d:	55                   	push   ebp
 804847e:	89 e5                	mov    ebp,esp
 8048480:	83 ec 18             	sub    esp,0x18
 8048483:	c7 04 24 60 85 04 08 	mov    DWORD PTR [esp],0x8048560
 804848a:	e8 b1 fe ff ff       	call   8048340 <system@plt>
 804848f:	c9                   	leave  
 8048490:	c3                   	ret    

08048491 <main>:
 8048491:	55                   	push   ebp
 8048492:	89 e5                	mov    ebp,esp
 8048494:	83 e4 f0             	and    esp,0xfffffff0
 8048497:	83 ec 50             	sub    esp,0x50
 804849a:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
 80484a1:	00 
 80484a2:	c7 44 24 04 68 85 04 	mov    DWORD PTR [esp+0x4],0x8048568
 80484a9:	08 
 80484aa:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80484b1:	e8 ba fe ff ff       	call   8048370 <write@plt>
 80484b6:	8d 44 24 1e          	lea    eax,[esp+0x1e]
 80484ba:	89 04 24             	mov    DWORD PTR [esp],eax
 80484bd:	e8 6e fe ff ff       	call   8048330 <gets@plt>
 80484c2:	c9                   	leave  
 80484c3:	c3                   	ret    
 80484c4:	66 90                	xchg   ax,ax
 80484c6:	66 90                	xchg   ax,ax
 80484c8:	66 90                	xchg   ax,ax
 80484ca:	66 90                	xchg   ax,ax
 80484cc:	66 90                	xchg   ax,ax
 80484ce:	66 90                	xchg   ax,ax

080484d0 <__libc_csu_init>:
 80484d0:	55                   	push   ebp
 80484d1:	57                   	push   edi
 80484d2:	31 ff                	xor    edi,edi
 80484d4:	56                   	push   esi
 80484d5:	53                   	push   ebx
 80484d6:	e8 d5 fe ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 80484db:	81 c3 25 1b 00 00    	add    ebx,0x1b25
 80484e1:	83 ec 1c             	sub    esp,0x1c
 80484e4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80484e8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80484ee:	e8 01 fe ff ff       	call   80482f4 <_init>
 80484f3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80484f9:	29 c6                	sub    esi,eax
 80484fb:	c1 fe 02             	sar    esi,0x2
 80484fe:	85 f6                	test   esi,esi
 8048500:	74 27                	je     8048529 <__libc_csu_init+0x59>
 8048502:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048508:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804850c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804850f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048513:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048517:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804851b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048522:	83 c7 01             	add    edi,0x1
 8048525:	39 f7                	cmp    edi,esi
 8048527:	75 df                	jne    8048508 <__libc_csu_init+0x38>
 8048529:	83 c4 1c             	add    esp,0x1c
 804852c:	5b                   	pop    ebx
 804852d:	5e                   	pop    esi
 804852e:	5f                   	pop    edi
 804852f:	5d                   	pop    ebp
 8048530:	c3                   	ret    
 8048531:	eb 0d                	jmp    8048540 <__libc_csu_fini>
 8048533:	90                   	nop
 8048534:	90                   	nop
 8048535:	90                   	nop
 8048536:	90                   	nop
 8048537:	90                   	nop
 8048538:	90                   	nop
 8048539:	90                   	nop
 804853a:	90                   	nop
 804853b:	90                   	nop
 804853c:	90                   	nop
 804853d:	90                   	nop
 804853e:	90                   	nop
 804853f:	90                   	nop

08048540 <__libc_csu_fini>:
 8048540:	f3 c3                	repz ret 

Disassembly of section .fini:

08048544 <_fini>:
 8048544:	53                   	push   ebx
 8048545:	83 ec 08             	sub    esp,0x8
 8048548:	e8 63 fe ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 804854d:	81 c3 b3 1a 00 00    	add    ebx,0x1ab3
 8048553:	83 c4 08             	add    esp,0x8
 8048556:	5b                   	pop    ebx
 8048557:	c3                   	ret    
