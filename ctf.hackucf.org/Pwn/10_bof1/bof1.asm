
bof1:     file format elf64-x86-64


Disassembly of section .init:

00000000004005b8 <_init>:
  4005b8:	48 83 ec 08          	sub    rsp,0x8
  4005bc:	48 8b 05 c5 06 20 00 	mov    rax,QWORD PTR [rip+0x2006c5]        # 600c88 <_DYNAMIC+0x1d0>
  4005c3:	48 85 c0             	test   rax,rax
  4005c6:	74 05                	je     4005cd <_init+0x15>
  4005c8:	e8 c3 00 00 00       	call   400690 <exit@plt+0x10>
  4005cd:	48 83 c4 08          	add    rsp,0x8
  4005d1:	c3                   	ret    

Disassembly of section .plt:

00000000004005e0 <putchar@plt-0x10>:
  4005e0:	ff 35 b2 06 20 00    	push   QWORD PTR [rip+0x2006b2]        # 600c98 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005e6:	ff 25 b4 06 20 00    	jmp    QWORD PTR [rip+0x2006b4]        # 600ca0 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005f0 <putchar@plt>:
  4005f0:	ff 25 b2 06 20 00    	jmp    QWORD PTR [rip+0x2006b2]        # 600ca8 <_GLOBAL_OFFSET_TABLE_+0x18>
  4005f6:	68 00 00 00 00       	push   0x0
  4005fb:	e9 e0 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400600 <puts@plt>:
  400600:	ff 25 aa 06 20 00    	jmp    QWORD PTR [rip+0x2006aa]        # 600cb0 <_GLOBAL_OFFSET_TABLE_+0x20>
  400606:	68 01 00 00 00       	push   0x1
  40060b:	e9 d0 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400610 <fclose@plt>:
  400610:	ff 25 a2 06 20 00    	jmp    QWORD PTR [rip+0x2006a2]        # 600cb8 <_GLOBAL_OFFSET_TABLE_+0x28>
  400616:	68 02 00 00 00       	push   0x2
  40061b:	e9 c0 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400620 <fgetc@plt>:
  400620:	ff 25 9a 06 20 00    	jmp    QWORD PTR [rip+0x20069a]        # 600cc0 <_GLOBAL_OFFSET_TABLE_+0x30>
  400626:	68 03 00 00 00       	push   0x3
  40062b:	e9 b0 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400630 <__libc_start_main@plt>:
  400630:	ff 25 92 06 20 00    	jmp    QWORD PTR [rip+0x200692]        # 600cc8 <_GLOBAL_OFFSET_TABLE_+0x38>
  400636:	68 04 00 00 00       	push   0x4
  40063b:	e9 a0 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400640 <feof@plt>:
  400640:	ff 25 8a 06 20 00    	jmp    QWORD PTR [rip+0x20068a]        # 600cd0 <_GLOBAL_OFFSET_TABLE_+0x40>
  400646:	68 05 00 00 00       	push   0x5
  40064b:	e9 90 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400650 <fflush@plt>:
  400650:	ff 25 82 06 20 00    	jmp    QWORD PTR [rip+0x200682]        # 600cd8 <_GLOBAL_OFFSET_TABLE_+0x48>
  400656:	68 06 00 00 00       	push   0x6
  40065b:	e9 80 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400660 <fopen@plt>:
  400660:	ff 25 7a 06 20 00    	jmp    QWORD PTR [rip+0x20067a]        # 600ce0 <_GLOBAL_OFFSET_TABLE_+0x50>
  400666:	68 07 00 00 00       	push   0x7
  40066b:	e9 70 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400670 <__isoc99_scanf@plt>:
  400670:	ff 25 72 06 20 00    	jmp    QWORD PTR [rip+0x200672]        # 600ce8 <_GLOBAL_OFFSET_TABLE_+0x58>
  400676:	68 08 00 00 00       	push   0x8
  40067b:	e9 60 ff ff ff       	jmp    4005e0 <_init+0x28>

0000000000400680 <exit@plt>:
  400680:	ff 25 6a 06 20 00    	jmp    QWORD PTR [rip+0x20066a]        # 600cf0 <_GLOBAL_OFFSET_TABLE_+0x60>
  400686:	68 09 00 00 00       	push   0x9
  40068b:	e9 50 ff ff ff       	jmp    4005e0 <_init+0x28>

Disassembly of section .plt.got:

0000000000400690 <.plt.got>:
  400690:	ff 25 f2 05 20 00    	jmp    QWORD PTR [rip+0x2005f2]        # 600c88 <_DYNAMIC+0x1d0>
  400696:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000004006a0 <_start>:
  4006a0:	31 ed                	xor    ebp,ebp
  4006a2:	49 89 d1             	mov    r9,rdx
  4006a5:	5e                   	pop    rsi
  4006a6:	48 89 e2             	mov    rdx,rsp
  4006a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4006ad:	50                   	push   rax
  4006ae:	54                   	push   rsp
  4006af:	49 c7 c0 00 09 40 00 	mov    r8,0x400900
  4006b6:	48 c7 c1 90 08 40 00 	mov    rcx,0x400890
  4006bd:	48 c7 c7 25 08 40 00 	mov    rdi,0x400825
  4006c4:	e8 67 ff ff ff       	call   400630 <__libc_start_main@plt>
  4006c9:	f4                   	hlt    
  4006ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006d0 <deregister_tm_clones>:
  4006d0:	b8 0f 0d 60 00       	mov    eax,0x600d0f
  4006d5:	55                   	push   rbp
  4006d6:	48 2d 08 0d 60 00    	sub    rax,0x600d08
  4006dc:	48 83 f8 0e          	cmp    rax,0xe
  4006e0:	48 89 e5             	mov    rbp,rsp
  4006e3:	76 1b                	jbe    400700 <deregister_tm_clones+0x30>
  4006e5:	b8 00 00 00 00       	mov    eax,0x0
  4006ea:	48 85 c0             	test   rax,rax
  4006ed:	74 11                	je     400700 <deregister_tm_clones+0x30>
  4006ef:	5d                   	pop    rbp
  4006f0:	bf 08 0d 60 00       	mov    edi,0x600d08
  4006f5:	ff e0                	jmp    rax
  4006f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4006fe:	00 00 
  400700:	5d                   	pop    rbp
  400701:	c3                   	ret    
  400702:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400706:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40070d:	00 00 00 

0000000000400710 <register_tm_clones>:
  400710:	be 08 0d 60 00       	mov    esi,0x600d08
  400715:	55                   	push   rbp
  400716:	48 81 ee 08 0d 60 00 	sub    rsi,0x600d08
  40071d:	48 c1 fe 03          	sar    rsi,0x3
  400721:	48 89 e5             	mov    rbp,rsp
  400724:	48 89 f0             	mov    rax,rsi
  400727:	48 c1 e8 3f          	shr    rax,0x3f
  40072b:	48 01 c6             	add    rsi,rax
  40072e:	48 d1 fe             	sar    rsi,1
  400731:	74 15                	je     400748 <register_tm_clones+0x38>
  400733:	b8 00 00 00 00       	mov    eax,0x0
  400738:	48 85 c0             	test   rax,rax
  40073b:	74 0b                	je     400748 <register_tm_clones+0x38>
  40073d:	5d                   	pop    rbp
  40073e:	bf 08 0d 60 00       	mov    edi,0x600d08
  400743:	ff e0                	jmp    rax
  400745:	0f 1f 00             	nop    DWORD PTR [rax]
  400748:	5d                   	pop    rbp
  400749:	c3                   	ret    
  40074a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400750 <__do_global_dtors_aux>:
  400750:	80 3d b9 05 20 00 00 	cmp    BYTE PTR [rip+0x2005b9],0x0        # 600d10 <completed.6945>
  400757:	75 11                	jne    40076a <__do_global_dtors_aux+0x1a>
  400759:	55                   	push   rbp
  40075a:	48 89 e5             	mov    rbp,rsp
  40075d:	e8 6e ff ff ff       	call   4006d0 <deregister_tm_clones>
  400762:	5d                   	pop    rbp
  400763:	c6 05 a6 05 20 00 01 	mov    BYTE PTR [rip+0x2005a6],0x1        # 600d10 <completed.6945>
  40076a:	f3 c3                	repz ret 
  40076c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400770 <frame_dummy>:
  400770:	bf b0 0a 60 00       	mov    edi,0x600ab0
  400775:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  400779:	75 05                	jne    400780 <frame_dummy+0x10>
  40077b:	eb 93                	jmp    400710 <register_tm_clones>
  40077d:	0f 1f 00             	nop    DWORD PTR [rax]
  400780:	b8 00 00 00 00       	mov    eax,0x0
  400785:	48 85 c0             	test   rax,rax
  400788:	74 f1                	je     40077b <frame_dummy+0xb>
  40078a:	55                   	push   rbp
  40078b:	48 89 e5             	mov    rbp,rsp
  40078e:	ff d0                	call   rax
  400790:	5d                   	pop    rbp
  400791:	e9 7a ff ff ff       	jmp    400710 <register_tm_clones>

0000000000400796 <win>:
  400796:	55                   	push   rbp
  400797:	48 89 e5             	mov    rbp,rsp
  40079a:	48 83 ec 10          	sub    rsp,0x10
  40079e:	be 14 09 40 00       	mov    esi,0x400914
  4007a3:	bf 16 09 40 00       	mov    edi,0x400916
  4007a8:	e8 b3 fe ff ff       	call   400660 <fopen@plt>
  4007ad:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4007b1:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4007b6:	75 23                	jne    4007db <win+0x45>
  4007b8:	bf 2a 09 40 00       	mov    edi,0x40092a
  4007bd:	e8 3e fe ff ff       	call   400600 <puts@plt>
  4007c2:	48 8b 05 3f 05 20 00 	mov    rax,QWORD PTR [rip+0x20053f]        # 600d08 <__TMC_END__>
  4007c9:	48 89 c7             	mov    rdi,rax
  4007cc:	e8 7f fe ff ff       	call   400650 <fflush@plt>
  4007d1:	bf 00 00 00 00       	mov    edi,0x0
  4007d6:	e8 a5 fe ff ff       	call   400680 <exit@plt>
  4007db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4007df:	48 89 c7             	mov    rdi,rax
  4007e2:	e8 39 fe ff ff       	call   400620 <fgetc@plt>
  4007e7:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  4007ea:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4007ee:	48 89 c7             	mov    rdi,rax
  4007f1:	e8 4a fe ff ff       	call   400640 <feof@plt>
  4007f6:	85 c0                	test   eax,eax
  4007f8:	75 1b                	jne    400815 <win+0x7f>
  4007fa:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4007fd:	89 c7                	mov    edi,eax
  4007ff:	e8 ec fd ff ff       	call   4005f0 <putchar@plt>
  400804:	48 8b 05 fd 04 20 00 	mov    rax,QWORD PTR [rip+0x2004fd]        # 600d08 <__TMC_END__>
  40080b:	48 89 c7             	mov    rdi,rax
  40080e:	e8 3d fe ff ff       	call   400650 <fflush@plt>
  400813:	eb c6                	jmp    4007db <win+0x45>
  400815:	90                   	nop
  400816:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40081a:	48 89 c7             	mov    rdi,rax
  40081d:	e8 ee fd ff ff       	call   400610 <fclose@plt>
  400822:	90                   	nop
  400823:	c9                   	leave  
  400824:	c3                   	ret    

0000000000400825 <main>:
  400825:	55                   	push   rbp
  400826:	48 89 e5             	mov    rbp,rsp
  400829:	48 83 ec 40          	sub    rsp,0x40
  40082d:	89 7d cc             	mov    DWORD PTR [rbp-0x34],edi
  400830:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
  400834:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  40083b:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40083f:	48 89 c6             	mov    rsi,rax
  400842:	bf 3f 09 40 00       	mov    edi,0x40093f
  400847:	b8 00 00 00 00       	mov    eax,0x0
  40084c:	e8 1f fe ff ff       	call   400670 <__isoc99_scanf@plt>
  400851:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
  400855:	74 0c                	je     400863 <main+0x3e>
  400857:	b8 00 00 00 00       	mov    eax,0x0
  40085c:	e8 35 ff ff ff       	call   400796 <win>
  400861:	eb 0a                	jmp    40086d <main+0x48>
  400863:	bf 42 09 40 00       	mov    edi,0x400942
  400868:	e8 93 fd ff ff       	call   400600 <puts@plt>
  40086d:	48 8b 05 94 04 20 00 	mov    rax,QWORD PTR [rip+0x200494]        # 600d08 <__TMC_END__>
  400874:	48 89 c7             	mov    rdi,rax
  400877:	e8 d4 fd ff ff       	call   400650 <fflush@plt>
  40087c:	b8 00 00 00 00       	mov    eax,0x0
  400881:	c9                   	leave  
  400882:	c3                   	ret    
  400883:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40088a:	00 00 00 
  40088d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400890 <__libc_csu_init>:
  400890:	41 57                	push   r15
  400892:	41 56                	push   r14
  400894:	41 89 ff             	mov    r15d,edi
  400897:	41 55                	push   r13
  400899:	41 54                	push   r12
  40089b:	4c 8d 25 fe 01 20 00 	lea    r12,[rip+0x2001fe]        # 600aa0 <__frame_dummy_init_array_entry>
  4008a2:	55                   	push   rbp
  4008a3:	48 8d 2d fe 01 20 00 	lea    rbp,[rip+0x2001fe]        # 600aa8 <__init_array_end>
  4008aa:	53                   	push   rbx
  4008ab:	49 89 f6             	mov    r14,rsi
  4008ae:	49 89 d5             	mov    r13,rdx
  4008b1:	4c 29 e5             	sub    rbp,r12
  4008b4:	48 83 ec 08          	sub    rsp,0x8
  4008b8:	48 c1 fd 03          	sar    rbp,0x3
  4008bc:	e8 f7 fc ff ff       	call   4005b8 <_init>
  4008c1:	48 85 ed             	test   rbp,rbp
  4008c4:	74 20                	je     4008e6 <__libc_csu_init+0x56>
  4008c6:	31 db                	xor    ebx,ebx
  4008c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4008cf:	00 
  4008d0:	4c 89 ea             	mov    rdx,r13
  4008d3:	4c 89 f6             	mov    rsi,r14
  4008d6:	44 89 ff             	mov    edi,r15d
  4008d9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4008dd:	48 83 c3 01          	add    rbx,0x1
  4008e1:	48 39 eb             	cmp    rbx,rbp
  4008e4:	75 ea                	jne    4008d0 <__libc_csu_init+0x40>
  4008e6:	48 83 c4 08          	add    rsp,0x8
  4008ea:	5b                   	pop    rbx
  4008eb:	5d                   	pop    rbp
  4008ec:	41 5c                	pop    r12
  4008ee:	41 5d                	pop    r13
  4008f0:	41 5e                	pop    r14
  4008f2:	41 5f                	pop    r15
  4008f4:	c3                   	ret    
  4008f5:	90                   	nop
  4008f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4008fd:	00 00 00 

0000000000400900 <__libc_csu_fini>:
  400900:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400904 <_fini>:
  400904:	48 83 ec 08          	sub    rsp,0x8
  400908:	48 83 c4 08          	add    rsp,0x8
  40090c:	c3                   	ret    
