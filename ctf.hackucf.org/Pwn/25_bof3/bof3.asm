
bof3:     file format elf32-i386


Disassembly of section .init:

080483ec <_init>:
 80483ec:	53                   	push   ebx
 80483ed:	83 ec 08             	sub    esp,0x8
 80483f0:	e8 0b 01 00 00       	call   8048500 <__x86.get_pc_thunk.bx>
 80483f5:	81 c3 e3 15 00 00    	add    ebx,0x15e3
 80483fb:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048401:	85 c0                	test   eax,eax
 8048403:	74 05                	je     804840a <_init+0x1e>
 8048405:	e8 b6 00 00 00       	call   80484c0 <__isoc99_scanf@plt+0x10>
 804840a:	83 c4 08             	add    esp,0x8
 804840d:	5b                   	pop    ebx
 804840e:	c3                   	ret    

Disassembly of section .plt:

08048410 <fflush@plt-0x10>:
 8048410:	ff 35 dc 99 04 08    	push   DWORD PTR ds:0x80499dc
 8048416:	ff 25 e0 99 04 08    	jmp    DWORD PTR ds:0x80499e0
 804841c:	00 00                	add    BYTE PTR [eax],al
	...

08048420 <fflush@plt>:
 8048420:	ff 25 e4 99 04 08    	jmp    DWORD PTR ds:0x80499e4
 8048426:	68 00 00 00 00       	push   0x0
 804842b:	e9 e0 ff ff ff       	jmp    8048410 <_init+0x24>

08048430 <fclose@plt>:
 8048430:	ff 25 e8 99 04 08    	jmp    DWORD PTR ds:0x80499e8
 8048436:	68 08 00 00 00       	push   0x8
 804843b:	e9 d0 ff ff ff       	jmp    8048410 <_init+0x24>

08048440 <puts@plt>:
 8048440:	ff 25 ec 99 04 08    	jmp    DWORD PTR ds:0x80499ec
 8048446:	68 10 00 00 00       	push   0x10
 804844b:	e9 c0 ff ff ff       	jmp    8048410 <_init+0x24>

08048450 <exit@plt>:
 8048450:	ff 25 f0 99 04 08    	jmp    DWORD PTR ds:0x80499f0
 8048456:	68 18 00 00 00       	push   0x18
 804845b:	e9 b0 ff ff ff       	jmp    8048410 <_init+0x24>

08048460 <feof@plt>:
 8048460:	ff 25 f4 99 04 08    	jmp    DWORD PTR ds:0x80499f4
 8048466:	68 20 00 00 00       	push   0x20
 804846b:	e9 a0 ff ff ff       	jmp    8048410 <_init+0x24>

08048470 <__libc_start_main@plt>:
 8048470:	ff 25 f8 99 04 08    	jmp    DWORD PTR ds:0x80499f8
 8048476:	68 28 00 00 00       	push   0x28
 804847b:	e9 90 ff ff ff       	jmp    8048410 <_init+0x24>

08048480 <fopen@plt>:
 8048480:	ff 25 fc 99 04 08    	jmp    DWORD PTR ds:0x80499fc
 8048486:	68 30 00 00 00       	push   0x30
 804848b:	e9 80 ff ff ff       	jmp    8048410 <_init+0x24>

08048490 <putchar@plt>:
 8048490:	ff 25 00 9a 04 08    	jmp    DWORD PTR ds:0x8049a00
 8048496:	68 38 00 00 00       	push   0x38
 804849b:	e9 70 ff ff ff       	jmp    8048410 <_init+0x24>

080484a0 <fgetc@plt>:
 80484a0:	ff 25 04 9a 04 08    	jmp    DWORD PTR ds:0x8049a04
 80484a6:	68 40 00 00 00       	push   0x40
 80484ab:	e9 60 ff ff ff       	jmp    8048410 <_init+0x24>

080484b0 <__isoc99_scanf@plt>:
 80484b0:	ff 25 08 9a 04 08    	jmp    DWORD PTR ds:0x8049a08
 80484b6:	68 48 00 00 00       	push   0x48
 80484bb:	e9 50 ff ff ff       	jmp    8048410 <_init+0x24>

Disassembly of section .plt.got:

080484c0 <.plt.got>:
 80484c0:	ff 25 d4 99 04 08    	jmp    DWORD PTR ds:0x80499d4
 80484c6:	66 90                	xchg   ax,ax

Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    ebp,ebp
 80484d2:	5e                   	pop    esi
 80484d3:	89 e1                	mov    ecx,esp
 80484d5:	83 e4 f0             	and    esp,0xfffffff0
 80484d8:	50                   	push   eax
 80484d9:	54                   	push   esp
 80484da:	52                   	push   edx
 80484db:	68 40 87 04 08       	push   0x8048740
 80484e0:	68 e0 86 04 08       	push   0x80486e0
 80484e5:	51                   	push   ecx
 80484e6:	56                   	push   esi
 80484e7:	68 99 86 04 08       	push   0x8048699
 80484ec:	e8 7f ff ff ff       	call   8048470 <__libc_start_main@plt>
 80484f1:	f4                   	hlt    
 80484f2:	66 90                	xchg   ax,ax
 80484f4:	66 90                	xchg   ax,ax
 80484f6:	66 90                	xchg   ax,ax
 80484f8:	66 90                	xchg   ax,ax
 80484fa:	66 90                	xchg   ax,ax
 80484fc:	66 90                	xchg   ax,ax
 80484fe:	66 90                	xchg   ax,ax

08048500 <__x86.get_pc_thunk.bx>:
 8048500:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048503:	c3                   	ret    
 8048504:	66 90                	xchg   ax,ax
 8048506:	66 90                	xchg   ax,ax
 8048508:	66 90                	xchg   ax,ax
 804850a:	66 90                	xchg   ax,ax
 804850c:	66 90                	xchg   ax,ax
 804850e:	66 90                	xchg   ax,ax

08048510 <deregister_tm_clones>:
 8048510:	b8 17 9a 04 08       	mov    eax,0x8049a17
 8048515:	2d 14 9a 04 08       	sub    eax,0x8049a14
 804851a:	83 f8 06             	cmp    eax,0x6
 804851d:	76 1a                	jbe    8048539 <deregister_tm_clones+0x29>
 804851f:	b8 00 00 00 00       	mov    eax,0x0
 8048524:	85 c0                	test   eax,eax
 8048526:	74 11                	je     8048539 <deregister_tm_clones+0x29>
 8048528:	55                   	push   ebp
 8048529:	89 e5                	mov    ebp,esp
 804852b:	83 ec 14             	sub    esp,0x14
 804852e:	68 14 9a 04 08       	push   0x8049a14
 8048533:	ff d0                	call   eax
 8048535:	83 c4 10             	add    esp,0x10
 8048538:	c9                   	leave  
 8048539:	f3 c3                	repz ret 
 804853b:	90                   	nop
 804853c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

08048540 <register_tm_clones>:
 8048540:	b8 14 9a 04 08       	mov    eax,0x8049a14
 8048545:	2d 14 9a 04 08       	sub    eax,0x8049a14
 804854a:	c1 f8 02             	sar    eax,0x2
 804854d:	89 c2                	mov    edx,eax
 804854f:	c1 ea 1f             	shr    edx,0x1f
 8048552:	01 d0                	add    eax,edx
 8048554:	d1 f8                	sar    eax,1
 8048556:	74 1b                	je     8048573 <register_tm_clones+0x33>
 8048558:	ba 00 00 00 00       	mov    edx,0x0
 804855d:	85 d2                	test   edx,edx
 804855f:	74 12                	je     8048573 <register_tm_clones+0x33>
 8048561:	55                   	push   ebp
 8048562:	89 e5                	mov    ebp,esp
 8048564:	83 ec 10             	sub    esp,0x10
 8048567:	50                   	push   eax
 8048568:	68 14 9a 04 08       	push   0x8049a14
 804856d:	ff d2                	call   edx
 804856f:	83 c4 10             	add    esp,0x10
 8048572:	c9                   	leave  
 8048573:	f3 c3                	repz ret 
 8048575:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048579:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048580 <__do_global_dtors_aux>:
 8048580:	80 3d 18 9a 04 08 00 	cmp    BYTE PTR ds:0x8049a18,0x0
 8048587:	75 13                	jne    804859c <__do_global_dtors_aux+0x1c>
 8048589:	55                   	push   ebp
 804858a:	89 e5                	mov    ebp,esp
 804858c:	83 ec 08             	sub    esp,0x8
 804858f:	e8 7c ff ff ff       	call   8048510 <deregister_tm_clones>
 8048594:	c6 05 18 9a 04 08 01 	mov    BYTE PTR ds:0x8049a18,0x1
 804859b:	c9                   	leave  
 804859c:	f3 c3                	repz ret 
 804859e:	66 90                	xchg   ax,ax

080485a0 <frame_dummy>:
 80485a0:	b8 e8 98 04 08       	mov    eax,0x80498e8
 80485a5:	8b 10                	mov    edx,DWORD PTR [eax]
 80485a7:	85 d2                	test   edx,edx
 80485a9:	75 05                	jne    80485b0 <frame_dummy+0x10>
 80485ab:	eb 93                	jmp    8048540 <register_tm_clones>
 80485ad:	8d 76 00             	lea    esi,[esi+0x0]
 80485b0:	ba 00 00 00 00       	mov    edx,0x0
 80485b5:	85 d2                	test   edx,edx
 80485b7:	74 f2                	je     80485ab <frame_dummy+0xb>
 80485b9:	55                   	push   ebp
 80485ba:	89 e5                	mov    ebp,esp
 80485bc:	83 ec 14             	sub    esp,0x14
 80485bf:	50                   	push   eax
 80485c0:	ff d2                	call   edx
 80485c2:	83 c4 10             	add    esp,0x10
 80485c5:	c9                   	leave  
 80485c6:	e9 75 ff ff ff       	jmp    8048540 <register_tm_clones>

080485cb <win>:
 80485cb:	55                   	push   ebp
 80485cc:	89 e5                	mov    ebp,esp
 80485ce:	83 ec 18             	sub    esp,0x18
 80485d1:	83 ec 08             	sub    esp,0x8
 80485d4:	68 60 87 04 08       	push   0x8048760
 80485d9:	68 62 87 04 08       	push   0x8048762
 80485de:	e8 9d fe ff ff       	call   8048480 <fopen@plt>
 80485e3:	83 c4 10             	add    esp,0x10
 80485e6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80485e9:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80485ed:	75 56                	jne    8048645 <win+0x7a>
 80485ef:	83 ec 0c             	sub    esp,0xc
 80485f2:	68 76 87 04 08       	push   0x8048776
 80485f7:	e8 44 fe ff ff       	call   8048440 <puts@plt>
 80485fc:	83 c4 10             	add    esp,0x10
 80485ff:	a1 14 9a 04 08       	mov    eax,ds:0x8049a14
 8048604:	83 ec 0c             	sub    esp,0xc
 8048607:	50                   	push   eax
 8048608:	e8 13 fe ff ff       	call   8048420 <fflush@plt>
 804860d:	83 c4 10             	add    esp,0x10
 8048610:	83 ec 0c             	sub    esp,0xc
 8048613:	6a 00                	push   0x0
 8048615:	e8 36 fe ff ff       	call   8048450 <exit@plt>
 804861a:	83 ec 0c             	sub    esp,0xc
 804861d:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 8048620:	e8 7b fe ff ff       	call   80484a0 <fgetc@plt>
 8048625:	83 c4 10             	add    esp,0x10
 8048628:	83 ec 0c             	sub    esp,0xc
 804862b:	50                   	push   eax
 804862c:	e8 5f fe ff ff       	call   8048490 <putchar@plt>
 8048631:	83 c4 10             	add    esp,0x10
 8048634:	a1 14 9a 04 08       	mov    eax,ds:0x8049a14
 8048639:	83 ec 0c             	sub    esp,0xc
 804863c:	50                   	push   eax
 804863d:	e8 de fd ff ff       	call   8048420 <fflush@plt>
 8048642:	83 c4 10             	add    esp,0x10
 8048645:	83 ec 0c             	sub    esp,0xc
 8048648:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 804864b:	e8 10 fe ff ff       	call   8048460 <feof@plt>
 8048650:	83 c4 10             	add    esp,0x10
 8048653:	85 c0                	test   eax,eax
 8048655:	74 c3                	je     804861a <win+0x4f>
 8048657:	83 ec 0c             	sub    esp,0xc
 804865a:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 804865d:	e8 ce fd ff ff       	call   8048430 <fclose@plt>
 8048662:	83 c4 10             	add    esp,0x10
 8048665:	90                   	nop
 8048666:	c9                   	leave  
 8048667:	c3                   	ret    

08048668 <lose>:
 8048668:	55                   	push   ebp
 8048669:	89 e5                	mov    ebp,esp
 804866b:	83 ec 08             	sub    esp,0x8
 804866e:	83 ec 0c             	sub    esp,0xc
 8048671:	68 8b 87 04 08       	push   0x804878b
 8048676:	e8 c5 fd ff ff       	call   8048440 <puts@plt>
 804867b:	83 c4 10             	add    esp,0x10
 804867e:	a1 14 9a 04 08       	mov    eax,ds:0x8049a14
 8048683:	83 ec 0c             	sub    esp,0xc
 8048686:	50                   	push   eax
 8048687:	e8 94 fd ff ff       	call   8048420 <fflush@plt>
 804868c:	83 c4 10             	add    esp,0x10
 804868f:	83 ec 0c             	sub    esp,0xc
 8048692:	6a 00                	push   0x0
 8048694:	e8 b7 fd ff ff       	call   8048450 <exit@plt>

08048699 <main>:
 8048699:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 804869d:	83 e4 f0             	and    esp,0xfffffff0
 80486a0:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 80486a3:	55                   	push   ebp
 80486a4:	89 e5                	mov    ebp,esp
 80486a6:	51                   	push   ecx
 80486a7:	83 ec 54             	sub    esp,0x54
 80486aa:	c7 45 f4 68 86 04 08 	mov    DWORD PTR [ebp-0xc],0x8048668
 80486b1:	83 ec 08             	sub    esp,0x8
 80486b4:	8d 45 b4             	lea    eax,[ebp-0x4c]
 80486b7:	50                   	push   eax
 80486b8:	68 96 87 04 08       	push   0x8048796
 80486bd:	e8 ee fd ff ff       	call   80484b0 <__isoc99_scanf@plt>
 80486c2:	83 c4 10             	add    esp,0x10
 80486c5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80486c8:	ff d0                	call   eax
 80486ca:	b8 00 00 00 00       	mov    eax,0x0
 80486cf:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
 80486d2:	c9                   	leave  
 80486d3:	8d 61 fc             	lea    esp,[ecx-0x4]
 80486d6:	c3                   	ret    
 80486d7:	66 90                	xchg   ax,ax
 80486d9:	66 90                	xchg   ax,ax
 80486db:	66 90                	xchg   ax,ax
 80486dd:	66 90                	xchg   ax,ax
 80486df:	90                   	nop

080486e0 <__libc_csu_init>:
 80486e0:	55                   	push   ebp
 80486e1:	57                   	push   edi
 80486e2:	56                   	push   esi
 80486e3:	53                   	push   ebx
 80486e4:	e8 17 fe ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 80486e9:	81 c3 ef 12 00 00    	add    ebx,0x12ef
 80486ef:	83 ec 0c             	sub    esp,0xc
 80486f2:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 80486f6:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80486fc:	e8 eb fc ff ff       	call   80483ec <_init>
 8048701:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048707:	29 c6                	sub    esi,eax
 8048709:	c1 fe 02             	sar    esi,0x2
 804870c:	85 f6                	test   esi,esi
 804870e:	74 25                	je     8048735 <__libc_csu_init+0x55>
 8048710:	31 ff                	xor    edi,edi
 8048712:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048718:	83 ec 04             	sub    esp,0x4
 804871b:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 804871f:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048723:	55                   	push   ebp
 8048724:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 804872b:	83 c7 01             	add    edi,0x1
 804872e:	83 c4 10             	add    esp,0x10
 8048731:	39 f7                	cmp    edi,esi
 8048733:	75 e3                	jne    8048718 <__libc_csu_init+0x38>
 8048735:	83 c4 0c             	add    esp,0xc
 8048738:	5b                   	pop    ebx
 8048739:	5e                   	pop    esi
 804873a:	5f                   	pop    edi
 804873b:	5d                   	pop    ebp
 804873c:	c3                   	ret    
 804873d:	8d 76 00             	lea    esi,[esi+0x0]

08048740 <__libc_csu_fini>:
 8048740:	f3 c3                	repz ret 

Disassembly of section .fini:

08048744 <_fini>:
 8048744:	53                   	push   ebx
 8048745:	83 ec 08             	sub    esp,0x8
 8048748:	e8 b3 fd ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 804874d:	81 c3 8b 12 00 00    	add    ebx,0x128b
 8048753:	83 c4 08             	add    esp,0x8
 8048756:	5b                   	pop    ebx
 8048757:	c3                   	ret    
