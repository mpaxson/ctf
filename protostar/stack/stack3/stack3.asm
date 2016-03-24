
stack3:     file format elf32-i386


Disassembly of section .init:

080482e0 <_init>:
 80482e0:	55                   	push   ebp
 80482e1:	89 e5                	mov    ebp,esp
 80482e3:	53                   	push   ebx
 80482e4:	83 ec 04             	sub    esp,0x4
 80482e7:	e8 00 00 00 00       	call   80482ec <_init+0xc>
 80482ec:	5b                   	pop    ebx
 80482ed:	81 c3 90 13 00 00    	add    ebx,0x1390
 80482f3:	8b 93 fc ff ff ff    	mov    edx,DWORD PTR [ebx-0x4]
 80482f9:	85 d2                	test   edx,edx
 80482fb:	74 05                	je     8048302 <_init+0x22>
 80482fd:	e8 1e 00 00 00       	call   8048320 <__gmon_start__@plt>
 8048302:	e8 f9 00 00 00       	call   8048400 <frame_dummy>
 8048307:	e8 e4 01 00 00       	call   80484f0 <__do_global_ctors_aux>
 804830c:	58                   	pop    eax
 804830d:	5b                   	pop    ebx
 804830e:	c9                   	leave
 804830f:	c3                   	ret

Disassembly of section .plt:

08048310 <__gmon_start__@plt-0x10>:
 8048310:	ff 35 80 96 04 08    	push   DWORD PTR ds:0x8049680
 8048316:	ff 25 84 96 04 08    	jmp    DWORD PTR ds:0x8049684
 804831c:	00 00                	add    BYTE PTR [eax],al
	...

08048320 <__gmon_start__@plt>:
 8048320:	ff 25 88 96 04 08    	jmp    DWORD PTR ds:0x8049688
 8048326:	68 00 00 00 00       	push   0x0
 804832b:	e9 e0 ff ff ff       	jmp    8048310 <_init+0x30>

08048330 <gets@plt>:
 8048330:	ff 25 8c 96 04 08    	jmp    DWORD PTR ds:0x804968c
 8048336:	68 08 00 00 00       	push   0x8
 804833b:	e9 d0 ff ff ff       	jmp    8048310 <_init+0x30>

08048340 <__libc_start_main@plt>:
 8048340:	ff 25 90 96 04 08    	jmp    DWORD PTR ds:0x8049690
 8048346:	68 10 00 00 00       	push   0x10
 804834b:	e9 c0 ff ff ff       	jmp    8048310 <_init+0x30>

08048350 <printf@plt>:
 8048350:	ff 25 94 96 04 08    	jmp    DWORD PTR ds:0x8049694
 8048356:	68 18 00 00 00       	push   0x18
 804835b:	e9 b0 ff ff ff       	jmp    8048310 <_init+0x30>

08048360 <puts@plt>:
 8048360:	ff 25 98 96 04 08    	jmp    DWORD PTR ds:0x8049698
 8048366:	68 20 00 00 00       	push   0x20
 804836b:	e9 a0 ff ff ff       	jmp    8048310 <_init+0x30>

Disassembly of section .text:

08048370 <_start>:
 8048370:	31 ed                	xor    ebp,ebp
 8048372:	5e                   	pop    esi
 8048373:	89 e1                	mov    ecx,esp
 8048375:	83 e4 f0             	and    esp,0xfffffff0
 8048378:	50                   	push   eax
 8048379:	54                   	push   esp
 804837a:	52                   	push   edx
 804837b:	68 80 84 04 08       	push   0x8048480
 8048380:	68 90 84 04 08       	push   0x8048490
 8048385:	51                   	push   ecx
 8048386:	56                   	push   esi
 8048387:	68 38 84 04 08       	push   0x8048438
 804838c:	e8 af ff ff ff       	call   8048340 <__libc_start_main@plt>
 8048391:	f4                   	hlt
 8048392:	90                   	nop
 8048393:	90                   	nop
 8048394:	90                   	nop
 8048395:	90                   	nop
 8048396:	90                   	nop
 8048397:	90                   	nop
 8048398:	90                   	nop
 8048399:	90                   	nop
 804839a:	90                   	nop
 804839b:	90                   	nop
 804839c:	90                   	nop
 804839d:	90                   	nop
 804839e:	90                   	nop
 804839f:	90                   	nop

080483a0 <__do_global_dtors_aux>:
 80483a0:	55                   	push   ebp
 80483a1:	89 e5                	mov    ebp,esp
 80483a3:	53                   	push   ebx
 80483a4:	83 ec 04             	sub    esp,0x4
 80483a7:	80 3d a4 96 04 08 00 	cmp    BYTE PTR ds:0x80496a4,0x0
 80483ae:	75 3f                	jne    80483ef <__do_global_dtors_aux+0x4f>
 80483b0:	a1 a8 96 04 08       	mov    eax,ds:0x80496a8
 80483b5:	bb a0 95 04 08       	mov    ebx,0x80495a0
 80483ba:	81 eb 9c 95 04 08    	sub    ebx,0x804959c
 80483c0:	c1 fb 02             	sar    ebx,0x2
 80483c3:	83 eb 01             	sub    ebx,0x1
 80483c6:	39 d8                	cmp    eax,ebx
 80483c8:	73 1e                	jae    80483e8 <__do_global_dtors_aux+0x48>
 80483ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80483d0:	83 c0 01             	add    eax,0x1
 80483d3:	a3 a8 96 04 08       	mov    ds:0x80496a8,eax
 80483d8:	ff 14 85 9c 95 04 08 	call   DWORD PTR [eax*4+0x804959c]
 80483df:	a1 a8 96 04 08       	mov    eax,ds:0x80496a8
 80483e4:	39 d8                	cmp    eax,ebx
 80483e6:	72 e8                	jb     80483d0 <__do_global_dtors_aux+0x30>
 80483e8:	c6 05 a4 96 04 08 01 	mov    BYTE PTR ds:0x80496a4,0x1
 80483ef:	83 c4 04             	add    esp,0x4
 80483f2:	5b                   	pop    ebx
 80483f3:	5d                   	pop    ebp
 80483f4:	c3                   	ret
 80483f5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80483f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048400 <frame_dummy>:
 8048400:	55                   	push   ebp
 8048401:	89 e5                	mov    ebp,esp
 8048403:	83 ec 18             	sub    esp,0x18
 8048406:	a1 a4 95 04 08       	mov    eax,ds:0x80495a4
 804840b:	85 c0                	test   eax,eax
 804840d:	74 12                	je     8048421 <frame_dummy+0x21>
 804840f:	b8 00 00 00 00       	mov    eax,0x0
 8048414:	85 c0                	test   eax,eax
 8048416:	74 09                	je     8048421 <frame_dummy+0x21>
 8048418:	c7 04 24 a4 95 04 08 	mov    DWORD PTR [esp],0x80495a4
 804841f:	ff d0                	call   eax
 8048421:	c9                   	leave
 8048422:	c3                   	ret
 8048423:	90                   	nop











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


08048480 <__libc_csu_fini>:
 8048480:	55                   	push   ebp
 8048481:	89 e5                	mov    ebp,esp
 8048483:	5d                   	pop    ebp
 8048484:	c3                   	ret
 8048485:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048489:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048490 <__libc_csu_init>:
 8048490:	55                   	push   ebp
 8048491:	89 e5                	mov    ebp,esp
 8048493:	57                   	push   edi
 8048494:	56                   	push   esi
 8048495:	53                   	push   ebx
 8048496:	e8 4f 00 00 00       	call   80484ea <__i686.get_pc_thunk.bx>
 804849b:	81 c3 e1 11 00 00    	add    ebx,0x11e1
 80484a1:	83 ec 1c             	sub    esp,0x1c
 80484a4:	e8 37 fe ff ff       	call   80482e0 <_init>
 80484a9:	8d bb 18 ff ff ff    	lea    edi,[ebx-0xe8]
 80484af:	8d 83 18 ff ff ff    	lea    eax,[ebx-0xe8]
 80484b5:	29 c7                	sub    edi,eax
 80484b7:	c1 ff 02             	sar    edi,0x2
 80484ba:	85 ff                	test   edi,edi
 80484bc:	74 24                	je     80484e2 <__libc_csu_init+0x52>
 80484be:	31 f6                	xor    esi,esi
 80484c0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 80484c3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80484c7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80484ca:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80484d1:	89 04 24             	mov    DWORD PTR [esp],eax
 80484d4:	ff 94 b3 18 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe8]
 80484db:	83 c6 01             	add    esi,0x1
 80484de:	39 fe                	cmp    esi,edi
 80484e0:	72 de                	jb     80484c0 <__libc_csu_init+0x30>
 80484e2:	83 c4 1c             	add    esp,0x1c
 80484e5:	5b                   	pop    ebx
 80484e6:	5e                   	pop    esi
 80484e7:	5f                   	pop    edi
 80484e8:	5d                   	pop    ebp
 80484e9:	c3                   	ret

080484ea <__i686.get_pc_thunk.bx>:
 80484ea:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80484ed:	c3                   	ret
 80484ee:	90                   	nop
 80484ef:	90                   	nop

080484f0 <__do_global_ctors_aux>:
 80484f0:	55                   	push   ebp
 80484f1:	89 e5                	mov    ebp,esp
 80484f3:	53                   	push   ebx
 80484f4:	83 ec 04             	sub    esp,0x4
 80484f7:	a1 94 95 04 08       	mov    eax,ds:0x8049594
 80484fc:	83 f8 ff             	cmp    eax,0xffffffff
 80484ff:	74 13                	je     8048514 <__do_global_ctors_aux+0x24>
 8048501:	bb 94 95 04 08       	mov    ebx,0x8049594
 8048506:	66 90                	xchg   ax,ax
 8048508:	83 eb 04             	sub    ebx,0x4
 804850b:	ff d0                	call   eax
 804850d:	8b 03                	mov    eax,DWORD PTR [ebx]
 804850f:	83 f8 ff             	cmp    eax,0xffffffff
 8048512:	75 f4                	jne    8048508 <__do_global_ctors_aux+0x18>
 8048514:	83 c4 04             	add    esp,0x4
 8048517:	5b                   	pop    ebx
 8048518:	5d                   	pop    ebp
 8048519:	c3                   	ret
 804851a:	90                   	nop
 804851b:	90                   	nop

Disassembly of section .fini:

0804851c <_fini>:
 804851c:	55                   	push   ebp
 804851d:	89 e5                	mov    ebp,esp
 804851f:	53                   	push   ebx
 8048520:	83 ec 04             	sub    esp,0x4
 8048523:	e8 00 00 00 00       	call   8048528 <_fini+0xc>
 8048528:	5b                   	pop    ebx
 8048529:	81 c3 54 11 00 00    	add    ebx,0x1154
 804852f:	e8 6c fe ff ff       	call   80483a0 <__do_global_dtors_aux>
 8048534:	59                   	pop    ecx
 8048535:	5b                   	pop    ebx
 8048536:	c9                   	leave
 8048537:	c3                   	ret
