
stack2:     file format elf32-i386


Disassembly of section .init:

0804832c <_init>:
 804832c:	55                   	push   ebp
 804832d:	89 e5                	mov    ebp,esp
 804832f:	53                   	push   ebx
 8048330:	83 ec 04             	sub    esp,0x4
 8048333:	e8 00 00 00 00       	call   8048338 <_init+0xc>
 8048338:	5b                   	pop    ebx
 8048339:	81 c3 10 14 00 00    	add    ebx,0x1410
 804833f:	8b 93 fc ff ff ff    	mov    edx,DWORD PTR [ebx-0x4]
 8048345:	85 d2                	test   edx,edx
 8048347:	74 05                	je     804834e <_init+0x22>
 8048349:	e8 1e 00 00 00       	call   804836c <__gmon_start__@plt>
 804834e:	e8 1d 01 00 00       	call   8048470 <frame_dummy>
 8048353:	e8 38 02 00 00       	call   8048590 <__do_global_ctors_aux>
 8048358:	58                   	pop    eax
 8048359:	5b                   	pop    ebx
 804835a:	c9                   	leave  
 804835b:	c3                   	ret    

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
 804840f:	90                   	nop

08048410 <__do_global_dtors_aux>:
 8048410:	55                   	push   ebp
 8048411:	89 e5                	mov    ebp,esp
 8048413:	53                   	push   ebx
 8048414:	83 ec 04             	sub    esp,0x4
 8048417:	80 3d 78 97 04 08 00 	cmp    BYTE PTR ds:0x8049778,0x0
 804841e:	75 3f                	jne    804845f <__do_global_dtors_aux+0x4f>
 8048420:	a1 7c 97 04 08       	mov    eax,ds:0x804977c
 8048425:	bb 6c 96 04 08       	mov    ebx,0x804966c
 804842a:	81 eb 68 96 04 08    	sub    ebx,0x8049668
 8048430:	c1 fb 02             	sar    ebx,0x2
 8048433:	83 eb 01             	sub    ebx,0x1
 8048436:	39 d8                	cmp    eax,ebx
 8048438:	73 1e                	jae    8048458 <__do_global_dtors_aux+0x48>
 804843a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048440:	83 c0 01             	add    eax,0x1
 8048443:	a3 7c 97 04 08       	mov    ds:0x804977c,eax
 8048448:	ff 14 85 68 96 04 08 	call   DWORD PTR [eax*4+0x8049668]
 804844f:	a1 7c 97 04 08       	mov    eax,ds:0x804977c
 8048454:	39 d8                	cmp    eax,ebx
 8048456:	72 e8                	jb     8048440 <__do_global_dtors_aux+0x30>
 8048458:	c6 05 78 97 04 08 01 	mov    BYTE PTR ds:0x8049778,0x1
 804845f:	83 c4 04             	add    esp,0x4
 8048462:	5b                   	pop    ebx
 8048463:	5d                   	pop    ebp
 8048464:	c3                   	ret    
 8048465:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048469:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048470 <frame_dummy>:
 8048470:	55                   	push   ebp
 8048471:	89 e5                	mov    ebp,esp
 8048473:	83 ec 18             	sub    esp,0x18
 8048476:	a1 70 96 04 08       	mov    eax,ds:0x8049670
 804847b:	85 c0                	test   eax,eax
 804847d:	74 12                	je     8048491 <frame_dummy+0x21>
 804847f:	b8 00 00 00 00       	mov    eax,0x0
 8048484:	85 c0                	test   eax,eax
 8048486:	74 09                	je     8048491 <frame_dummy+0x21>
 8048488:	c7 04 24 70 96 04 08 	mov    DWORD PTR [esp],0x8049670
 804848f:	ff d0                	call   eax
 8048491:	c9                   	leave  
 8048492:	c3                   	ret    
 8048493:	90                   	nop

08048494 <main>:
 8048494:	55                   	push   ebp
 8048495:	89 e5                	mov    ebp,esp
 8048497:	83 e4 f0             	and    esp,0xfffffff0
 804849a:	83 ec 60             	sub    esp,0x60

//80485e0 global var on heap

 804849d:	c7 04 24 e0 85 04 08 	mov    DWORD PTR [esp],0x80485e0
 80484a4:	e8 d3 fe ff ff       	call   804837c <getenv@plt>
 80484a9:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax



/*
	c1 = 80485e0
	c2 = 8048618

	var1 = esp+0x5c
	var2 = esp+0x4
	var3 = esp+0x18
	var4 = esp+0x58
*/
//compar esp-x5c 0
//possible canary?

 80484ad:	83 7c 24 5c 00       	cmp    DWORD PTR [esp+0x5c],0x0
 80484b2:	75 14                	jne    80484c8 <main+0x34>
 80484b4:	c7 44 24 04 e8 85 04 	mov    DWORD PTR [esp+0x4],0x80485e8
 80484bb:	08 
 
 80484bc:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80484c3:	e8 f4 fe ff ff       	call   80483bc <errx@plt>
 80484c8:	c7 44 24 58 00 00 00 	mov    DWORD PTR [esp+0x58],0x0
 
 80484cf:	00 
 80484d0:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]//var1
 80484d4:	89 44 24 04          	mov    DWORD PTR [esp+0x4]/*var2*/,eax

 80484d8:	8d 44 24 18          	lea    eax,[esp+0x18] //var3
 80484dc:	89 04 24             	mov    DWORD PTR [esp],eax

 //strcpy vuln
 80484df:	e8 b8 fe ff ff       	call   804839c <strcpy@plt>

 80484e4:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]//var 4

//compare var4 and canary
 80484e8:	3d 0a 0d 0a 0d       	cmp    eax,0xd0a0d0a //possible cnaray


 80484ed:	75 0e                	jne    80484fd <main+0x69>//jmp2

								//c2
 80484ef:	c7 04 24 18 86 04 08 	mov    DWORD PTR [esp],0x8048618 


 80484f6:	e8 d1 fe ff ff       	call   80483cc <puts@plt>
 80484fb:	eb 15                	jmp    8048512 <main+0x7e>


			//jump2
 80484fd:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]

 8048501:	b8 41 86 04 08       	mov    eax,0x8048641 //global variable
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

08048520 <__libc_csu_fini>:
 8048520:	55                   	push   ebp
 8048521:	89 e5                	mov    ebp,esp
 8048523:	5d                   	pop    ebp
 8048524:	c3                   	ret    
 8048525:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048529:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048530 <__libc_csu_init>:
 8048530:	55                   	push   ebp
 8048531:	89 e5                	mov    ebp,esp
 8048533:	57                   	push   edi
 8048534:	56                   	push   esi
 8048535:	53                   	push   ebx
 8048536:	e8 4f 00 00 00       	call   804858a <__i686.get_pc_thunk.bx>
 804853b:	81 c3 0d 12 00 00    	add    ebx,0x120d
 8048541:	83 ec 1c             	sub    esp,0x1c
 8048544:	e8 e3 fd ff ff       	call   804832c <_init>
 8048549:	8d bb 18 ff ff ff    	lea    edi,[ebx-0xe8]
 804854f:	8d 83 18 ff ff ff    	lea    eax,[ebx-0xe8]
 8048555:	29 c7                	sub    edi,eax
 8048557:	c1 ff 02             	sar    edi,0x2
 804855a:	85 ff                	test   edi,edi
 804855c:	74 24                	je     8048582 <__libc_csu_init+0x52>
 804855e:	31 f6                	xor    esi,esi
 8048560:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048563:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048567:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804856a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804856e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048571:	89 04 24             	mov    DWORD PTR [esp],eax
 8048574:	ff 94 b3 18 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe8]
 804857b:	83 c6 01             	add    esi,0x1
 804857e:	39 fe                	cmp    esi,edi
 8048580:	72 de                	jb     8048560 <__libc_csu_init+0x30>
 8048582:	83 c4 1c             	add    esp,0x1c
 8048585:	5b                   	pop    ebx
 8048586:	5e                   	pop    esi
 8048587:	5f                   	pop    edi
 8048588:	5d                   	pop    ebp
 8048589:	c3                   	ret    

0804858a <__i686.get_pc_thunk.bx>:
 804858a:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 804858d:	c3                   	ret    
 804858e:	90                   	nop
 804858f:	90                   	nop

08048590 <__do_global_ctors_aux>:
 8048590:	55                   	push   ebp
 8048591:	89 e5                	mov    ebp,esp
 8048593:	53                   	push   ebx
 8048594:	83 ec 04             	sub    esp,0x4
 8048597:	a1 60 96 04 08       	mov    eax,ds:0x8049660
 804859c:	83 f8 ff             	cmp    eax,0xffffffff
 804859f:	74 13                	je     80485b4 <__do_global_ctors_aux+0x24>
 80485a1:	bb 60 96 04 08       	mov    ebx,0x8049660
 80485a6:	66 90                	xchg   ax,ax
 80485a8:	83 eb 04             	sub    ebx,0x4
 80485ab:	ff d0                	call   eax
 80485ad:	8b 03                	mov    eax,DWORD PTR [ebx]
 80485af:	83 f8 ff             	cmp    eax,0xffffffff
 80485b2:	75 f4                	jne    80485a8 <__do_global_ctors_aux+0x18>
 80485b4:	83 c4 04             	add    esp,0x4
 80485b7:	5b                   	pop    ebx
 80485b8:	5d                   	pop    ebp
 80485b9:	c3                   	ret    
 80485ba:	90                   	nop
 80485bb:	90                   	nop

Disassembly of section .fini:

080485bc <_fini>:
 80485bc:	55                   	push   ebp
 80485bd:	89 e5                	mov    ebp,esp
 80485bf:	53                   	push   ebx
 80485c0:	83 ec 04             	sub    esp,0x4
 80485c3:	e8 00 00 00 00       	call   80485c8 <_fini+0xc>
 80485c8:	5b                   	pop    ebx
 80485c9:	81 c3 80 11 00 00    	add    ebx,0x1180
 80485cf:	e8 3c fe ff ff       	call   8048410 <__do_global_dtors_aux>
 80485d4:	59                   	pop    ecx
 80485d5:	5b                   	pop    ebx
 80485d6:	c9                   	leave  
 80485d7:	c3                   	ret    
