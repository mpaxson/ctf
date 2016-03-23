
stack0:     file format elf32-i386


Disassembly of section .init:

080482bc <_init>:
 80482bc:	55                   	push   ebp
 80482bd:	89 e5                	mov    ebp,esp
 80482bf:	53                   	push   ebx
 80482c0:	83 ec 04             	sub    esp,0x4
 80482c3:	e8 00 00 00 00       	call   80482c8 <_init+0xc>
 80482c8:	5b                   	pop    ebx
 80482c9:	81 c3 58 13 00 00    	add    ebx,0x1358
 80482cf:	8b 93 fc ff ff ff    	mov    edx,DWORD PTR [ebx-0x4]
 80482d5:	85 d2                	test   edx,edx
 80482d7:	74 05                	je     80482de <_init+0x22>
 80482d9:	e8 1e 00 00 00       	call   80482fc <__gmon_start__@plt>
 80482de:	e8 ed 00 00 00       	call   80483d0 <frame_dummy>
 80482e3:	e8 c8 01 00 00       	call   80484b0 <__do_global_ctors_aux>
 80482e8:	58                   	pop    eax
 80482e9:	5b                   	pop    ebx
 80482ea:	c9                   	leave  
 80482eb:	c3                   	ret    

Disassembly of section .plt:

080482ec <__gmon_start__@plt-0x10>:
 80482ec:	ff 35 24 96 04 08    	push   DWORD PTR ds:0x8049624
 80482f2:	ff 25 28 96 04 08    	jmp    DWORD PTR ds:0x8049628
 80482f8:	00 00                	add    BYTE PTR [eax],al
	...

080482fc <__gmon_start__@plt>:
 80482fc:	ff 25 2c 96 04 08    	jmp    DWORD PTR ds:0x804962c
 8048302:	68 00 00 00 00       	push   0x0
 8048307:	e9 e0 ff ff ff       	jmp    80482ec <_init+0x30>

0804830c <gets@plt>:
 804830c:	ff 25 30 96 04 08    	jmp    DWORD PTR ds:0x8049630
 8048312:	68 08 00 00 00       	push   0x8
 8048317:	e9 d0 ff ff ff       	jmp    80482ec <_init+0x30>

0804831c <__libc_start_main@plt>:
 804831c:	ff 25 34 96 04 08    	jmp    DWORD PTR ds:0x8049634
 8048322:	68 10 00 00 00       	push   0x10
 8048327:	e9 c0 ff ff ff       	jmp    80482ec <_init+0x30>

0804832c <puts@plt>:
 804832c:	ff 25 38 96 04 08    	jmp    DWORD PTR ds:0x8049638
 8048332:	68 18 00 00 00       	push   0x18
 8048337:	e9 b0 ff ff ff       	jmp    80482ec <_init+0x30>

Disassembly of section .text:

08048340 <_start>:
 8048340:	31 ed                	xor    ebp,ebp
 8048342:	5e                   	pop    esi
 8048343:	89 e1                	mov    ecx,esp
 8048345:	83 e4 f0             	and    esp,0xfffffff0
 8048348:	50                   	push   eax
 8048349:	54                   	push   esp
 804834a:	52                   	push   edx
 804834b:	68 40 84 04 08       	push   0x8048440
 8048350:	68 50 84 04 08       	push   0x8048450
 8048355:	51                   	push   ecx
 8048356:	56                   	push   esi
 8048357:	68 f4 83 04 08       	push   0x80483f4
 804835c:	e8 bb ff ff ff       	call   804831c <__libc_start_main@plt>
 8048361:	f4                   	hlt    
 8048362:	90                   	nop
 8048363:	90                   	nop
 8048364:	90                   	nop
 8048365:	90                   	nop
 8048366:	90                   	nop
 8048367:	90                   	nop
 8048368:	90                   	nop
 8048369:	90                   	nop
 804836a:	90                   	nop
 804836b:	90                   	nop
 804836c:	90                   	nop
 804836d:	90                   	nop
 804836e:	90                   	nop
 804836f:	90                   	nop

08048370 <__do_global_dtors_aux>:
 8048370:	55                   	push   ebp
 8048371:	89 e5                	mov    ebp,esp
 8048373:	53                   	push   ebx
 8048374:	83 ec 04             	sub    esp,0x4
 8048377:	80 3d 44 96 04 08 00 	cmp    BYTE PTR ds:0x8049644,0x0
 804837e:	75 3f                	jne    80483bf <__do_global_dtors_aux+0x4f>
 8048380:	a1 48 96 04 08       	mov    eax,ds:0x8049648
 8048385:	bb 44 95 04 08       	mov    ebx,0x8049544
 804838a:	81 eb 40 95 04 08    	sub    ebx,0x8049540
 8048390:	c1 fb 02             	sar    ebx,0x2
 8048393:	83 eb 01             	sub    ebx,0x1
 8048396:	39 d8                	cmp    eax,ebx
 8048398:	73 1e                	jae    80483b8 <__do_global_dtors_aux+0x48>
 804839a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80483a0:	83 c0 01             	add    eax,0x1
 80483a3:	a3 48 96 04 08       	mov    ds:0x8049648,eax
 80483a8:	ff 14 85 40 95 04 08 	call   DWORD PTR [eax*4+0x8049540]
 80483af:	a1 48 96 04 08       	mov    eax,ds:0x8049648
 80483b4:	39 d8                	cmp    eax,ebx
 80483b6:	72 e8                	jb     80483a0 <__do_global_dtors_aux+0x30>
 80483b8:	c6 05 44 96 04 08 01 	mov    BYTE PTR ds:0x8049644,0x1
 80483bf:	83 c4 04             	add    esp,0x4
 80483c2:	5b                   	pop    ebx
 80483c3:	5d                   	pop    ebp
 80483c4:	c3                   	ret    
 80483c5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80483c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080483d0 <frame_dummy>:
 80483d0:	55                   	push   ebp
 80483d1:	89 e5                	mov    ebp,esp
 80483d3:	83 ec 18             	sub    esp,0x18
 80483d6:	a1 48 95 04 08       	mov    eax,ds:0x8049548
 80483db:	85 c0                	test   eax,eax
 80483dd:	74 12                	je     80483f1 <frame_dummy+0x21>
 80483df:	b8 00 00 00 00       	mov    eax,0x0
 80483e4:	85 c0                	test   eax,eax
 80483e6:	74 09                	je     80483f1 <frame_dummy+0x21>
 80483e8:	c7 04 24 48 95 04 08 	mov    DWORD PTR [esp],0x8049548
 80483ef:	ff d0                	call   eax
 80483f1:	c9                   	leave  
 80483f2:	c3                   	ret    
 80483f3:	90                   	nop

080483f4 <main>:
 80483f4:	55                   	push   ebp
 80483f5:	89 e5                	mov    ebp,esp
 80483f7:	83 e4 f0             	and    esp,0xfffffff0
 80483fa:	83 ec 60             	sub    esp,0x60
 80483fd:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
 8048404:	00 
 8048405:	8d 44 24 1c          	lea    eax,[esp+0x1c]
 8048409:	89 04 24             	mov    DWORD PTR [esp],eax
 804840c:	e8 fb fe ff ff       	call   804830c <gets@plt>
 8048411:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
 8048415:	85 c0                	test   eax,eax
 8048417:	74 0e                	je     8048427 <main+0x33>
 8048419:	c7 04 24 00 85 04 08 	mov    DWORD PTR [esp],0x8048500
 8048420:	e8 07 ff ff ff       	call   804832c <puts@plt>
 8048425:	eb 0c                	jmp    8048433 <main+0x3f>
 8048427:	c7 04 24 29 85 04 08 	mov    DWORD PTR [esp],0x8048529
 804842e:	e8 f9 fe ff ff       	call   804832c <puts@plt>
 8048433:	c9                   	leave  
 8048434:	c3                   	ret    
 8048435:	90                   	nop
 8048436:	90                   	nop
 8048437:	90                   	nop
 8048438:	90                   	nop
 8048439:	90                   	nop
 804843a:	90                   	nop
 804843b:	90                   	nop
 804843c:	90                   	nop
 804843d:	90                   	nop
 804843e:	90                   	nop
 804843f:	90                   	nop

08048440 <__libc_csu_fini>:
 8048440:	55                   	push   ebp
 8048441:	89 e5                	mov    ebp,esp
 8048443:	5d                   	pop    ebp
 8048444:	c3                   	ret    
 8048445:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048449:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048450 <__libc_csu_init>:
 8048450:	55                   	push   ebp
 8048451:	89 e5                	mov    ebp,esp
 8048453:	57                   	push   edi
 8048454:	56                   	push   esi
 8048455:	53                   	push   ebx
 8048456:	e8 4f 00 00 00       	call   80484aa <__i686.get_pc_thunk.bx>
 804845b:	81 c3 c5 11 00 00    	add    ebx,0x11c5
 8048461:	83 ec 1c             	sub    esp,0x1c
 8048464:	e8 53 fe ff ff       	call   80482bc <_init>
 8048469:	8d bb 18 ff ff ff    	lea    edi,[ebx-0xe8]
 804846f:	8d 83 18 ff ff ff    	lea    eax,[ebx-0xe8]
 8048475:	29 c7                	sub    edi,eax
 8048477:	c1 ff 02             	sar    edi,0x2
 804847a:	85 ff                	test   edi,edi
 804847c:	74 24                	je     80484a2 <__libc_csu_init+0x52>
 804847e:	31 f6                	xor    esi,esi
 8048480:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048483:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048487:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804848a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804848e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048491:	89 04 24             	mov    DWORD PTR [esp],eax
 8048494:	ff 94 b3 18 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe8]
 804849b:	83 c6 01             	add    esi,0x1
 804849e:	39 fe                	cmp    esi,edi
 80484a0:	72 de                	jb     8048480 <__libc_csu_init+0x30>
 80484a2:	83 c4 1c             	add    esp,0x1c
 80484a5:	5b                   	pop    ebx
 80484a6:	5e                   	pop    esi
 80484a7:	5f                   	pop    edi
 80484a8:	5d                   	pop    ebp
 80484a9:	c3                   	ret    

080484aa <__i686.get_pc_thunk.bx>:
 80484aa:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80484ad:	c3                   	ret    
 80484ae:	90                   	nop
 80484af:	90                   	nop

080484b0 <__do_global_ctors_aux>:
 80484b0:	55                   	push   ebp
 80484b1:	89 e5                	mov    ebp,esp
 80484b3:	53                   	push   ebx
 80484b4:	83 ec 04             	sub    esp,0x4
 80484b7:	a1 38 95 04 08       	mov    eax,ds:0x8049538
 80484bc:	83 f8 ff             	cmp    eax,0xffffffff
 80484bf:	74 13                	je     80484d4 <__do_global_ctors_aux+0x24>
 80484c1:	bb 38 95 04 08       	mov    ebx,0x8049538
 80484c6:	66 90                	xchg   ax,ax
 80484c8:	83 eb 04             	sub    ebx,0x4
 80484cb:	ff d0                	call   eax
 80484cd:	8b 03                	mov    eax,DWORD PTR [ebx]
 80484cf:	83 f8 ff             	cmp    eax,0xffffffff
 80484d2:	75 f4                	jne    80484c8 <__do_global_ctors_aux+0x18>
 80484d4:	83 c4 04             	add    esp,0x4
 80484d7:	5b                   	pop    ebx
 80484d8:	5d                   	pop    ebp
 80484d9:	c3                   	ret    
 80484da:	90                   	nop
 80484db:	90                   	nop

Disassembly of section .fini:

080484dc <_fini>:
 80484dc:	55                   	push   ebp
 80484dd:	89 e5                	mov    ebp,esp
 80484df:	53                   	push   ebx
 80484e0:	83 ec 04             	sub    esp,0x4
 80484e3:	e8 00 00 00 00       	call   80484e8 <_fini+0xc>
 80484e8:	5b                   	pop    ebx
 80484e9:	81 c3 38 11 00 00    	add    ebx,0x1138
 80484ef:	e8 7c fe ff ff       	call   8048370 <__do_global_dtors_aux>
 80484f4:	59                   	pop    ecx
 80484f5:	5b                   	pop    ebx
 80484f6:	c9                   	leave  
 80484f7:	c3                   	ret    
