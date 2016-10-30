
jumpy:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e8 <_init>:
  4004e8:	48 83 ec 08          	sub    rsp,0x8
  4004ec:	48 8b 05 05 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b05]        # 600ff8 <_DYNAMIC+0x1d0>
  4004f3:	48 85 c0             	test   rax,rax
  4004f6:	74 05                	je     4004fd <_init+0x15>
  4004f8:	e8 83 00 00 00       	call   400580 <open@plt+0x10>
  4004fd:	48 83 c4 08          	add    rsp,0x8
  400501:	c3                   	ret    

Disassembly of section .plt:

0000000000400510 <puts@plt-0x10>:
  400510:	ff 35 f2 0a 20 00    	push   QWORD PTR [rip+0x200af2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmp    QWORD PTR [rip+0x200af4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400520 <puts@plt>:
  400520:	ff 25 f2 0a 20 00    	jmp    QWORD PTR [rip+0x200af2]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400526:	68 00 00 00 00       	push   0x0
  40052b:	e9 e0 ff ff ff       	jmp    400510 <_init+0x28>

0000000000400530 <printf@plt>:
  400530:	ff 25 ea 0a 20 00    	jmp    QWORD PTR [rip+0x200aea]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400536:	68 01 00 00 00       	push   0x1
  40053b:	e9 d0 ff ff ff       	jmp    400510 <_init+0x28>

0000000000400540 <read@plt>:
  400540:	ff 25 e2 0a 20 00    	jmp    QWORD PTR [rip+0x200ae2]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400546:	68 02 00 00 00       	push   0x2
  40054b:	e9 c0 ff ff ff       	jmp    400510 <_init+0x28>

0000000000400550 <__libc_start_main@plt>:
  400550:	ff 25 da 0a 20 00    	jmp    QWORD PTR [rip+0x200ada]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400556:	68 03 00 00 00       	push   0x3
  40055b:	e9 b0 ff ff ff       	jmp    400510 <_init+0x28>

0000000000400560 <fflush@plt>:
  400560:	ff 25 d2 0a 20 00    	jmp    QWORD PTR [rip+0x200ad2]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400566:	68 04 00 00 00       	push   0x4
  40056b:	e9 a0 ff ff ff       	jmp    400510 <_init+0x28>

0000000000400570 <open@plt>:
  400570:	ff 25 ca 0a 20 00    	jmp    QWORD PTR [rip+0x200aca]        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400576:	68 05 00 00 00       	push   0x5
  40057b:	e9 90 ff ff ff       	jmp    400510 <_init+0x28>

Disassembly of section .plt.got:

0000000000400580 <.plt.got>:
  400580:	ff 25 72 0a 20 00    	jmp    QWORD PTR [rip+0x200a72]        # 600ff8 <_DYNAMIC+0x1d0>
  400586:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000400590 <_start>:
  400590:	31 ed                	xor    ebp,ebp
  400592:	49 89 d1             	mov    r9,rdx
  400595:	5e                   	pop    rsi
  400596:	48 89 e2             	mov    rdx,rsp
  400599:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40059d:	50                   	push   rax
  40059e:	54                   	push   rsp
  40059f:	49 c7 c0 a0 07 40 00 	mov    r8,0x4007a0
  4005a6:	48 c7 c1 30 07 40 00 	mov    rcx,0x400730
  4005ad:	48 c7 c7 ec 06 40 00 	mov    rdi,0x4006ec
  4005b4:	e8 97 ff ff ff       	call   400550 <__libc_start_main@plt>
  4005b9:	f4                   	hlt    
  4005ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004005c0 <deregister_tm_clones>:
  4005c0:	b8 5f 10 60 00       	mov    eax,0x60105f
  4005c5:	55                   	push   rbp
  4005c6:	48 2d 58 10 60 00    	sub    rax,0x601058
  4005cc:	48 83 f8 0e          	cmp    rax,0xe
  4005d0:	48 89 e5             	mov    rbp,rsp
  4005d3:	76 1b                	jbe    4005f0 <deregister_tm_clones+0x30>
  4005d5:	b8 00 00 00 00       	mov    eax,0x0
  4005da:	48 85 c0             	test   rax,rax
  4005dd:	74 11                	je     4005f0 <deregister_tm_clones+0x30>
  4005df:	5d                   	pop    rbp
  4005e0:	bf 58 10 60 00       	mov    edi,0x601058
  4005e5:	ff e0                	jmp    rax
  4005e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4005ee:	00 00 
  4005f0:	5d                   	pop    rbp
  4005f1:	c3                   	ret    
  4005f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4005f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4005fd:	00 00 00 

0000000000400600 <register_tm_clones>:
  400600:	be 58 10 60 00       	mov    esi,0x601058
  400605:	55                   	push   rbp
  400606:	48 81 ee 58 10 60 00 	sub    rsi,0x601058
  40060d:	48 c1 fe 03          	sar    rsi,0x3
  400611:	48 89 e5             	mov    rbp,rsp
  400614:	48 89 f0             	mov    rax,rsi
  400617:	48 c1 e8 3f          	shr    rax,0x3f
  40061b:	48 01 c6             	add    rsi,rax
  40061e:	48 d1 fe             	sar    rsi,1
  400621:	74 15                	je     400638 <register_tm_clones+0x38>
  400623:	b8 00 00 00 00       	mov    eax,0x0
  400628:	48 85 c0             	test   rax,rax
  40062b:	74 0b                	je     400638 <register_tm_clones+0x38>
  40062d:	5d                   	pop    rbp
  40062e:	bf 58 10 60 00       	mov    edi,0x601058
  400633:	ff e0                	jmp    rax
  400635:	0f 1f 00             	nop    DWORD PTR [rax]
  400638:	5d                   	pop    rbp
  400639:	c3                   	ret    
  40063a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400640 <__do_global_dtors_aux>:
  400640:	80 3d 19 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a19],0x0        # 601060 <completed.7585>
  400647:	75 11                	jne    40065a <__do_global_dtors_aux+0x1a>
  400649:	55                   	push   rbp
  40064a:	48 89 e5             	mov    rbp,rsp
  40064d:	e8 6e ff ff ff       	call   4005c0 <deregister_tm_clones>
  400652:	5d                   	pop    rbp
  400653:	c6 05 06 0a 20 00 01 	mov    BYTE PTR [rip+0x200a06],0x1        # 601060 <completed.7585>
  40065a:	f3 c3                	repz ret 
  40065c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400660 <frame_dummy>:
  400660:	bf 20 0e 60 00       	mov    edi,0x600e20
  400665:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  400669:	75 05                	jne    400670 <frame_dummy+0x10>
  40066b:	eb 93                	jmp    400600 <register_tm_clones>
  40066d:	0f 1f 00             	nop    DWORD PTR [rax]
  400670:	b8 00 00 00 00       	mov    eax,0x0
  400675:	48 85 c0             	test   rax,rax
  400678:	74 f1                	je     40066b <frame_dummy+0xb>
  40067a:	55                   	push   rbp
  40067b:	48 89 e5             	mov    rbp,rsp
  40067e:	ff d0                	call   rax
  400680:	5d                   	pop    rbp
  400681:	e9 7a ff ff ff       	jmp    400600 <register_tm_clones>

0000000000400686 <winrar>:
  400686:	55                   	push   rbp
  400687:	48 89 e5             	mov    rbp,rsp
  40068a:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  400691:	be 00 00 00 00       	mov    esi,0x0
  400696:	bf b4 07 40 00       	mov    edi,0x4007b4
  40069b:	b8 00 00 00 00       	mov    eax,0x0
  4006a0:	e8 cb fe ff ff       	call   400570 <open@plt>
  4006a5:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  4006a8:	48 8d 8d 70 ff ff ff 	lea    rcx,[rbp-0x90]
  4006af:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4006b2:	ba 80 00 00 00       	mov    edx,0x80
  4006b7:	48 89 ce             	mov    rsi,rcx
  4006ba:	89 c7                	mov    edi,eax
  4006bc:	e8 7f fe ff ff       	call   400540 <read@plt>
  4006c1:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4006c8:	48 89 c6             	mov    rsi,rax
  4006cb:	bf b9 07 40 00       	mov    edi,0x4007b9
  4006d0:	b8 00 00 00 00       	mov    eax,0x0
  4006d5:	e8 56 fe ff ff       	call   400530 <printf@plt>
  4006da:	48 8b 05 77 09 20 00 	mov    rax,QWORD PTR [rip+0x200977]        # 601058 <__TMC_END__>
  4006e1:	48 89 c7             	mov    rdi,rax
  4006e4:	e8 77 fe ff ff       	call   400560 <fflush@plt>
  4006e9:	90                   	nop
  4006ea:	c9                   	leave  
  4006eb:	c3                   	ret    

00000000004006ec <main>:
  4006ec:	55                   	push   rbp
  4006ed:	48 89 e5             	mov    rbp,rsp
  4006f0:	48 83 ec 10          	sub    rsp,0x10
  4006f4:	bf d3 07 40 00       	mov    edi,0x4007d3
  4006f9:	e8 22 fe ff ff       	call   400520 <puts@plt>
  4006fe:	48 8b 05 53 09 20 00 	mov    rax,QWORD PTR [rip+0x200953]        # 601058 <__TMC_END__>
  400705:	48 89 c7             	mov    rdi,rax
  400708:	e8 53 fe ff ff       	call   400560 <fflush@plt>
  40070d:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  400711:	ba 50 00 00 00       	mov    edx,0x50
  400716:	48 89 c6             	mov    rsi,rax
  400719:	bf 00 00 00 00       	mov    edi,0x0
  40071e:	e8 1d fe ff ff       	call   400540 <read@plt>
  400723:	b8 00 00 00 00       	mov    eax,0x0
  400728:	c9                   	leave  
  400729:	c3                   	ret    
  40072a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400730 <__libc_csu_init>:
  400730:	41 57                	push   r15
  400732:	41 56                	push   r14
  400734:	41 89 ff             	mov    r15d,edi
  400737:	41 55                	push   r13
  400739:	41 54                	push   r12
  40073b:	4c 8d 25 ce 06 20 00 	lea    r12,[rip+0x2006ce]        # 600e10 <__frame_dummy_init_array_entry>
  400742:	55                   	push   rbp
  400743:	48 8d 2d ce 06 20 00 	lea    rbp,[rip+0x2006ce]        # 600e18 <__init_array_end>
  40074a:	53                   	push   rbx
  40074b:	49 89 f6             	mov    r14,rsi
  40074e:	49 89 d5             	mov    r13,rdx
  400751:	4c 29 e5             	sub    rbp,r12
  400754:	48 83 ec 08          	sub    rsp,0x8
  400758:	48 c1 fd 03          	sar    rbp,0x3
  40075c:	e8 87 fd ff ff       	call   4004e8 <_init>
  400761:	48 85 ed             	test   rbp,rbp
  400764:	74 20                	je     400786 <__libc_csu_init+0x56>
  400766:	31 db                	xor    ebx,ebx
  400768:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40076f:	00 
  400770:	4c 89 ea             	mov    rdx,r13
  400773:	4c 89 f6             	mov    rsi,r14
  400776:	44 89 ff             	mov    edi,r15d
  400779:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40077d:	48 83 c3 01          	add    rbx,0x1
  400781:	48 39 eb             	cmp    rbx,rbp
  400784:	75 ea                	jne    400770 <__libc_csu_init+0x40>
  400786:	48 83 c4 08          	add    rsp,0x8
  40078a:	5b                   	pop    rbx
  40078b:	5d                   	pop    rbp
  40078c:	41 5c                	pop    r12
  40078e:	41 5d                	pop    r13
  400790:	41 5e                	pop    r14
  400792:	41 5f                	pop    r15
  400794:	c3                   	ret    
  400795:	90                   	nop
  400796:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40079d:	00 00 00 

00000000004007a0 <__libc_csu_fini>:
  4007a0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004007a4 <_fini>:
  4007a4:	48 83 ec 08          	sub    rsp,0x8
  4007a8:	48 83 c4 08          	add    rsp,0x8
  4007ac:	c3                   	ret    
