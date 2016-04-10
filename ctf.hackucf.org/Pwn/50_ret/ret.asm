
ret:     file format elf32-i386


Disassembly of section .init:

0804830c <_init>:
 804830c:	53                   	push   ebx
 804830d:	83 ec 08             	sub    esp,0x8
 8048310:	e8 bb 00 00 00       	call   80483d0 <__x86.get_pc_thunk.bx>
 8048315:	81 c3 fb 14 00 00    	add    ebx,0x14fb
 804831b:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048321:	85 c0                	test   eax,eax
 8048323:	74 05                	je     804832a <_init+0x1e>
 8048325:	e8 66 00 00 00       	call   8048390 <__isoc99_scanf@plt+0x10>
 804832a:	83 c4 08             	add    esp,0x8
 804832d:	5b                   	pop    ebx
 804832e:	c3                   	ret    

Disassembly of section .plt:

08048330 <puts@plt-0x10>:
 8048330:	ff 35 14 98 04 08    	push   DWORD PTR ds:0x8049814
 8048336:	ff 25 18 98 04 08    	jmp    DWORD PTR ds:0x8049818
 804833c:	00 00                	add    BYTE PTR [eax],al
	...

08048340 <puts@plt>:
 8048340:	ff 25 1c 98 04 08    	jmp    DWORD PTR ds:0x804981c
 8048346:	68 00 00 00 00       	push   0x0
 804834b:	e9 e0 ff ff ff       	jmp    8048330 <_init+0x24>

08048350 <system@plt>:
 8048350:	ff 25 20 98 04 08    	jmp    DWORD PTR ds:0x8049820
 8048356:	68 08 00 00 00       	push   0x8
 804835b:	e9 d0 ff ff ff       	jmp    8048330 <_init+0x24>

08048360 <exit@plt>:
 8048360:	ff 25 24 98 04 08    	jmp    DWORD PTR ds:0x8049824
 8048366:	68 10 00 00 00       	push   0x10
 804836b:	e9 c0 ff ff ff       	jmp    8048330 <_init+0x24>

08048370 <__libc_start_main@plt>:
 8048370:	ff 25 28 98 04 08    	jmp    DWORD PTR ds:0x8049828
 8048376:	68 18 00 00 00       	push   0x18
 804837b:	e9 b0 ff ff ff       	jmp    8048330 <_init+0x24>

08048380 <__isoc99_scanf@plt>:
 8048380:	ff 25 2c 98 04 08    	jmp    DWORD PTR ds:0x804982c
 8048386:	68 20 00 00 00       	push   0x20
 804838b:	e9 a0 ff ff ff       	jmp    8048330 <_init+0x24>

Disassembly of section .plt.got:

08048390 <.plt.got>:
 8048390:	ff 25 0c 98 04 08    	jmp    DWORD PTR ds:0x804980c
 8048396:	66 90                	xchg   ax,ax

Disassembly of section .text:

080483a0 <_start>:
 80483a0:	31 ed                	xor    ebp,ebp
 80483a2:	5e                   	pop    esi
 80483a3:	89 e1                	mov    ecx,esp
 80483a5:	83 e4 f0             	and    esp,0xfffffff0
 80483a8:	50                   	push   eax
 80483a9:	54                   	push   esp
 80483aa:	52                   	push   edx
 80483ab:	68 90 85 04 08       	push   0x8048590
 80483b0:	68 30 85 04 08       	push   0x8048530
 80483b5:	51                   	push   ecx
 80483b6:	56                   	push   esi
 80483b7:	68 0b 85 04 08       	push   0x804850b
 80483bc:	e8 af ff ff ff       	call   8048370 <__libc_start_main@plt>
 80483c1:	f4                   	hlt    
 80483c2:	66 90                	xchg   ax,ax
 80483c4:	66 90                	xchg   ax,ax
 80483c6:	66 90                	xchg   ax,ax
 80483c8:	66 90                	xchg   ax,ax
 80483ca:	66 90                	xchg   ax,ax
 80483cc:	66 90                	xchg   ax,ax
 80483ce:	66 90                	xchg   ax,ax

080483d0 <__x86.get_pc_thunk.bx>:
 80483d0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80483d3:	c3                   	ret    
 80483d4:	66 90                	xchg   ax,ax
 80483d6:	66 90                	xchg   ax,ax
 80483d8:	66 90                	xchg   ax,ax
 80483da:	66 90                	xchg   ax,ax
 80483dc:	66 90                	xchg   ax,ax
 80483de:	66 90                	xchg   ax,ax

080483e0 <deregister_tm_clones>:
 80483e0:	b8 3b 98 04 08       	mov    eax,0x804983b
 80483e5:	2d 38 98 04 08       	sub    eax,0x8049838
 80483ea:	83 f8 06             	cmp    eax,0x6
 80483ed:	76 1a                	jbe    8048409 <deregister_tm_clones+0x29>
 80483ef:	b8 00 00 00 00       	mov    eax,0x0
 80483f4:	85 c0                	test   eax,eax
 80483f6:	74 11                	je     8048409 <deregister_tm_clones+0x29>
 80483f8:	55                   	push   ebp
 80483f9:	89 e5                	mov    ebp,esp
 80483fb:	83 ec 14             	sub    esp,0x14
 80483fe:	68 38 98 04 08       	push   0x8049838
 8048403:	ff d0                	call   eax
 8048405:	83 c4 10             	add    esp,0x10
 8048408:	c9                   	leave  
 8048409:	f3 c3                	repz ret 
 804840b:	90                   	nop
 804840c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

08048410 <register_tm_clones>:
 8048410:	b8 38 98 04 08       	mov    eax,0x8049838
 8048415:	2d 38 98 04 08       	sub    eax,0x8049838
 804841a:	c1 f8 02             	sar    eax,0x2
 804841d:	89 c2                	mov    edx,eax
 804841f:	c1 ea 1f             	shr    edx,0x1f
 8048422:	01 d0                	add    eax,edx
 8048424:	d1 f8                	sar    eax,1
 8048426:	74 1b                	je     8048443 <register_tm_clones+0x33>
 8048428:	ba 00 00 00 00       	mov    edx,0x0
 804842d:	85 d2                	test   edx,edx
 804842f:	74 12                	je     8048443 <register_tm_clones+0x33>
 8048431:	55                   	push   ebp
 8048432:	89 e5                	mov    ebp,esp
 8048434:	83 ec 10             	sub    esp,0x10
 8048437:	50                   	push   eax
 8048438:	68 38 98 04 08       	push   0x8049838
 804843d:	ff d2                	call   edx
 804843f:	83 c4 10             	add    esp,0x10
 8048442:	c9                   	leave  
 8048443:	f3 c3                	repz ret 
 8048445:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048449:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048450 <__do_global_dtors_aux>:
 8048450:	80 3d 38 98 04 08 00 	cmp    BYTE PTR ds:0x8049838,0x0
 8048457:	75 13                	jne    804846c <__do_global_dtors_aux+0x1c>
 8048459:	55                   	push   ebp
 804845a:	89 e5                	mov    ebp,esp
 804845c:	83 ec 08             	sub    esp,0x8
 804845f:	e8 7c ff ff ff       	call   80483e0 <deregister_tm_clones>
 8048464:	c6 05 38 98 04 08 01 	mov    BYTE PTR ds:0x8049838,0x1
 804846b:	c9                   	leave  
 804846c:	f3 c3                	repz ret 
 804846e:	66 90                	xchg   ax,ax

08048470 <frame_dummy>:
 8048470:	b8 20 97 04 08       	mov    eax,0x8049720
 8048475:	8b 10                	mov    edx,DWORD PTR [eax]
 8048477:	85 d2                	test   edx,edx
 8048479:	75 05                	jne    8048480 <frame_dummy+0x10>
 804847b:	eb 93                	jmp    8048410 <register_tm_clones>
 804847d:	8d 76 00             	lea    esi,[esi+0x0]
 8048480:	ba 00 00 00 00       	mov    edx,0x0
 8048485:	85 d2                	test   edx,edx
 8048487:	74 f2                	je     804847b <frame_dummy+0xb>
 8048489:	55                   	push   ebp
 804848a:	89 e5                	mov    ebp,esp
 804848c:	83 ec 14             	sub    esp,0x14
 804848f:	50                   	push   eax
 8048490:	ff d2                	call   edx
 8048492:	83 c4 10             	add    esp,0x10
 8048495:	c9                   	leave  
 8048496:	e9 75 ff ff ff       	jmp    8048410 <register_tm_clones>

0804849b <win>:
 804849b:	55                   	push   ebp
 804849c:	89 e5                	mov    ebp,esp
 804849e:	83 ec 08             	sub    esp,0x8
 80484a1:	83 ec 0c             	sub    esp,0xc
 80484a4:	68 b0 85 04 08       	push   0x80485b0
 80484a9:	e8 92 fe ff ff       	call   8048340 <puts@plt>
 80484ae:	83 c4 10             	add    esp,0x10
 80484b1:	83 ec 0c             	sub    esp,0xc
 80484b4:	68 ba 85 04 08       	push   0x80485ba
 80484b9:	e8 92 fe ff ff       	call   8048350 <system@plt>
 80484be:	83 c4 10             	add    esp,0x10
 80484c1:	90                   	nop
 80484c2:	c9                   	leave  
 80484c3:	c3                   	ret    

080484c4 <func>:
 80484c4:	55                   	push   ebp
 80484c5:	89 e5                	mov    ebp,esp
 80484c7:	83 ec 58             	sub    esp,0x58
 80484ca:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80484d1:	83 ec 08             	sub    esp,0x8
 80484d4:	8d 45 b4             	lea    eax,[ebp-0x4c]
 80484d7:	50                   	push   eax
 80484d8:	68 c2 85 04 08       	push   0x80485c2
 80484dd:	e8 9e fe ff ff       	call   8048380 <__isoc99_scanf@plt>
 80484e2:	83 c4 10             	add    esp,0x10
 80484e5:	81 7d f4 ef be ad de 	cmp    DWORD PTR [ebp-0xc],0xdeadbeef
 80484ec:	74 1a                	je     8048508 <func+0x44>
 80484ee:	83 ec 0c             	sub    esp,0xc
 80484f1:	68 c5 85 04 08       	push   0x80485c5
 80484f6:	e8 45 fe ff ff       	call   8048340 <puts@plt>
 80484fb:	83 c4 10             	add    esp,0x10
 80484fe:	83 ec 0c             	sub    esp,0xc
 8048501:	6a 00                	push   0x0
 8048503:	e8 58 fe ff ff       	call   8048360 <exit@plt>
 8048508:	90                   	nop
 8048509:	c9                   	leave  
 804850a:	c3                   	ret    

0804850b <main>:
 804850b:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 804850f:	83 e4 f0             	and    esp,0xfffffff0
 8048512:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 8048515:	55                   	push   ebp
 8048516:	89 e5                	mov    ebp,esp
 8048518:	51                   	push   ecx
 8048519:	83 ec 04             	sub    esp,0x4
 804851c:	e8 a3 ff ff ff       	call   80484c4 <func>
 8048521:	b8 00 00 00 00       	mov    eax,0x0
 8048526:	83 c4 04             	add    esp,0x4
 8048529:	59                   	pop    ecx
 804852a:	5d                   	pop    ebp
 804852b:	8d 61 fc             	lea    esp,[ecx-0x4]
 804852e:	c3                   	ret    
 804852f:	90                   	nop

08048530 <__libc_csu_init>:
 8048530:	55                   	push   ebp
 8048531:	57                   	push   edi
 8048532:	56                   	push   esi
 8048533:	53                   	push   ebx
 8048534:	e8 97 fe ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 8048539:	81 c3 d7 12 00 00    	add    ebx,0x12d7
 804853f:	83 ec 0c             	sub    esp,0xc
 8048542:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 8048546:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804854c:	e8 bb fd ff ff       	call   804830c <_init>
 8048551:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048557:	29 c6                	sub    esi,eax
 8048559:	c1 fe 02             	sar    esi,0x2
 804855c:	85 f6                	test   esi,esi
 804855e:	74 25                	je     8048585 <__libc_csu_init+0x55>
 8048560:	31 ff                	xor    edi,edi
 8048562:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048568:	83 ec 04             	sub    esp,0x4
 804856b:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 804856f:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048573:	55                   	push   ebp
 8048574:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 804857b:	83 c7 01             	add    edi,0x1
 804857e:	83 c4 10             	add    esp,0x10
 8048581:	39 f7                	cmp    edi,esi
 8048583:	75 e3                	jne    8048568 <__libc_csu_init+0x38>
 8048585:	83 c4 0c             	add    esp,0xc
 8048588:	5b                   	pop    ebx
 8048589:	5e                   	pop    esi
 804858a:	5f                   	pop    edi
 804858b:	5d                   	pop    ebp
 804858c:	c3                   	ret    
 804858d:	8d 76 00             	lea    esi,[esi+0x0]

08048590 <__libc_csu_fini>:
 8048590:	f3 c3                	repz ret 

Disassembly of section .fini:

08048594 <_fini>:
 8048594:	53                   	push   ebx
 8048595:	83 ec 08             	sub    esp,0x8
 8048598:	e8 33 fe ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 804859d:	81 c3 73 12 00 00    	add    ebx,0x1273
 80485a3:	83 c4 08             	add    esp,0x8
 80485a6:	5b                   	pop    ebx
 80485a7:	c3                   	ret    
