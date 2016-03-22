
opcode:     file format elf32-i386


Disassembly of section .interp:

08048134 <.interp>:
 8048134:	2f                   	das
 8048135:	6c                   	ins    BYTE PTR es:[edi],dx
 8048136:	69 62 2f 6c 64 2d 6c 	imul   esp,DWORD PTR [edx+0x2f],0x6c2d646c
 804813d:	69 6e 75 78 2e 73 6f 	imul   ebp,DWORD PTR [esi+0x75],0x6f732e78
 8048144:	2e 32 00             	xor    al,BYTE PTR cs:[eax]

Disassembly of section .note.ABI-tag:

08048148 <.note.ABI-tag>:
 8048148:	04 00                	add    al,0x0
 804814a:	00 00                	add    BYTE PTR [eax],al
 804814c:	10 00                	adc    BYTE PTR [eax],al
 804814e:	00 00                	add    BYTE PTR [eax],al
 8048150:	01 00                	add    DWORD PTR [eax],eax
 8048152:	00 00                	add    BYTE PTR [eax],al
 8048154:	47                   	inc    edi
 8048155:	4e                   	dec    esi
 8048156:	55                   	push   ebp
 8048157:	00 00                	add    BYTE PTR [eax],al
 8048159:	00 00                	add    BYTE PTR [eax],al
 804815b:	00 02                	add    BYTE PTR [edx],al
 804815d:	00 00                	add    BYTE PTR [eax],al
 804815f:	00 06                	add    BYTE PTR [esi],al
 8048161:	00 00                	add    BYTE PTR [eax],al
 8048163:	00 20                	add    BYTE PTR [eax],ah
 8048165:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .note.gnu.build-id:

08048168 <.note.gnu.build-id>:
 8048168:	04 00                	add    al,0x0
 804816a:	00 00                	add    BYTE PTR [eax],al
 804816c:	14 00                	adc    al,0x0
 804816e:	00 00                	add    BYTE PTR [eax],al
 8048170:	03 00                	add    eax,DWORD PTR [eax]
 8048172:	00 00                	add    BYTE PTR [eax],al
 8048174:	47                   	inc    edi
 8048175:	4e                   	dec    esi
 8048176:	55                   	push   ebp
 8048177:	00 58 97             	add    BYTE PTR [eax-0x69],bl
 804817a:	5c                   	pop    esp
 804817b:	87 8a 68 0a 06 48    	xchg   DWORD PTR [edx+0x48060a68],ecx
 8048181:	10 6b 63             	adc    BYTE PTR [ebx+0x63],ch
 8048184:	0b 5c e1 29          	or     ebx,DWORD PTR [ecx+eiz*8+0x29]
 8048188:	fe                   	(bad)
 8048189:	7e fa                	jle    8048185 <_init-0x16f>
 804818b:	42                   	inc    edx

Disassembly of section .gnu.hash:

0804818c <.gnu.hash>:
 804818c:	02 00                	add    al,BYTE PTR [eax]
 804818e:	00 00                	add    BYTE PTR [eax],al
 8048190:	06                   	push   es
 8048191:	00 00                	add    BYTE PTR [eax],al
 8048193:	00 01                	add    BYTE PTR [ecx],al
 8048195:	00 00                	add    BYTE PTR [eax],al
 8048197:	00 05 00 00 00 00    	add    BYTE PTR ds:0x0,al
 804819d:	20 00                	and    BYTE PTR [eax],al
 804819f:	20 00                	and    BYTE PTR [eax],al
 80481a1:	00 00                	add    BYTE PTR [eax],al
 80481a3:	00 06                	add    BYTE PTR [esi],al
 80481a5:	00 00                	add    BYTE PTR [eax],al
 80481a7:	00                   	.byte 0x0
 80481a8:	ad                   	lods   eax,DWORD PTR ds:[esi]
 80481a9:	4b                   	dec    ebx
 80481aa:	e3 c0                	jecxz  804816c <_init-0x188>

Disassembly of section .dynsym:

080481ac <.dynsym>:
	...
 80481bc:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
 80481c7:	00 12                	add    BYTE PTR [edx],dl
 80481c9:	00 00                	add    BYTE PTR [eax],al
 80481cb:	00 29                	add    BYTE PTR [ecx],ch
	...
 80481d5:	00 00                	add    BYTE PTR [eax],al
 80481d7:	00 12                	add    BYTE PTR [edx],dl
 80481d9:	00 00                	add    BYTE PTR [eax],al
 80481db:	00 47 00             	add    BYTE PTR [edi+0x0],al
	...
 80481e6:	00 00                	add    BYTE PTR [eax],al
 80481e8:	20 00                	and    BYTE PTR [eax],al
 80481ea:	00 00                	add    BYTE PTR [eax],al
 80481ec:	35 00 00 00 00       	xor    eax,0x0
 80481f1:	00 00                	add    BYTE PTR [eax],al
 80481f3:	00 00                	add    BYTE PTR [eax],al
 80481f5:	00 00                	add    BYTE PTR [eax],al
 80481f7:	00 12                	add    BYTE PTR [edx],dl
 80481f9:	00 00                	add    BYTE PTR [eax],al
 80481fb:	00 1a                	add    BYTE PTR [edx],bl
	...
 8048205:	00 00                	add    BYTE PTR [eax],al
 8048207:	00 12                	add    BYTE PTR [edx],dl
 8048209:	00 00                	add    BYTE PTR [eax],al
 804820b:	00 0b                	add    BYTE PTR [ebx],cl
 804820d:	00 00                	add    BYTE PTR [eax],al
 804820f:	00 8c 85 04 08 04 00 	add    BYTE PTR [ebp+eax*4+0x40804],cl
 8048216:	00 00                	add    BYTE PTR [eax],al
 8048218:	11 00                	adc    DWORD PTR [eax],eax
 804821a:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

0804821c <.dynstr>:
 804821c:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
 8048220:	63 2e                	arpl   WORD PTR [esi],bp
 8048222:	73 6f                	jae    8048293 <_init-0x61>
 8048224:	2e 36 00 5f 49       	cs add BYTE PTR cs:ss:[edi+0x49],bl
 8048229:	4f                   	dec    edi
 804822a:	5f                   	pop    edi
 804822b:	73 74                	jae    80482a1 <_init-0x53>
 804822d:	64 69 6e 5f 75 73 65 	imul   ebp,DWORD PTR fs:[esi+0x5f],0x64657375
 8048234:	64
 8048235:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 8048238:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [ebx+0x6f],0x5f393963
 804823f:	73 63                	jae    80482a4 <_init-0x50>
 8048241:	61                   	popa
 8048242:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048243:	66                   	data16
 8048244:	00 70 75             	add    BYTE PTR [eax+0x75],dh
 8048247:	74 73                	je     80482bc <_init-0x38>
 8048249:	00 70 72             	add    BYTE PTR [eax+0x72],dh
 804824c:	69 6e 74 66 00 5f 5f 	imul   ebp,DWORD PTR [esi+0x74],0x5f5f0066
 8048253:	6c                   	ins    BYTE PTR es:[edi],dx
 8048254:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [edx+0x63],0x6174735f
 804825b:	72 74                	jb     80482d1 <_init-0x23>
 804825d:	5f                   	pop    edi
 804825e:	6d                   	ins    DWORD PTR es:[edi],dx
 804825f:	61                   	popa
 8048260:	69 6e 00 5f 5f 67 6d 	imul   ebp,DWORD PTR [esi+0x0],0x6d675f5f
 8048267:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048268:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048269:	5f                   	pop    edi
 804826a:	73 74                	jae    80482e0 <_init-0x14>
 804826c:	61                   	popa
 804826d:	72 74                	jb     80482e3 <_init-0x11>
 804826f:	5f                   	pop    edi
 8048270:	5f                   	pop    edi
 8048271:	00 47 4c             	add    BYTE PTR [edi+0x4c],al
 8048274:	49                   	dec    ecx
 8048275:	42                   	inc    edx
 8048276:	43                   	inc    ebx
 8048277:	5f                   	pop    edi
 8048278:	32 2e                	xor    ch,BYTE PTR [esi]
 804827a:	37                   	aaa
 804827b:	00 47 4c             	add    BYTE PTR [edi+0x4c],al
 804827e:	49                   	dec    ecx
 804827f:	42                   	inc    edx
 8048280:	43                   	inc    ebx
 8048281:	5f                   	pop    edi
 8048282:	32 2e                	xor    ch,BYTE PTR [esi]
 8048284:	30 00                	xor    BYTE PTR [eax],al

Disassembly of section .gnu.version:

08048286 <.gnu.version>:
 8048286:	00 00                	add    BYTE PTR [eax],al
 8048288:	02 00                	add    al,BYTE PTR [eax]
 804828a:	02 00                	add    al,BYTE PTR [eax]
 804828c:	00 00                	add    BYTE PTR [eax],al
 804828e:	02 00                	add    al,BYTE PTR [eax]
 8048290:	03 00                	add    eax,DWORD PTR [eax]
 8048292:	01 00                	add    DWORD PTR [eax],eax

Disassembly of section .gnu.version_r:

08048294 <.gnu.version_r>:
 8048294:	01 00                	add    DWORD PTR [eax],eax
 8048296:	02 00                	add    al,BYTE PTR [eax]
 8048298:	01 00                	add    DWORD PTR [eax],eax
 804829a:	00 00                	add    BYTE PTR [eax],al
 804829c:	10 00                	adc    BYTE PTR [eax],al
 804829e:	00 00                	add    BYTE PTR [eax],al
 80482a0:	00 00                	add    BYTE PTR [eax],al
 80482a2:	00 00                	add    BYTE PTR [eax],al
 80482a4:	17                   	pop    ss
 80482a5:	69 69 0d 00 00 03 00 	imul   ebp,DWORD PTR [ecx+0xd],0x30000
 80482ac:	56                   	push   esi
 80482ad:	00 00                	add    BYTE PTR [eax],al
 80482af:	00 10                	add    BYTE PTR [eax],dl
 80482b1:	00 00                	add    BYTE PTR [eax],al
 80482b3:	00 10                	add    BYTE PTR [eax],dl
 80482b5:	69 69 0d 00 00 02 00 	imul   ebp,DWORD PTR [ecx+0xd],0x20000
 80482bc:	60                   	pusha
 80482bd:	00 00                	add    BYTE PTR [eax],al
 80482bf:	00 00                	add    BYTE PTR [eax],al
 80482c1:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .rel.dyn:

080482c4 <.rel.dyn>:
 80482c4:	f4                   	hlt
 80482c5:	97                   	xchg   edi,eax
 80482c6:	04 08                	add    al,0x8
 80482c8:	06                   	push   es
 80482c9:	03 00                	add    eax,DWORD PTR [eax]
	...

Disassembly of section .rel.plt:

080482cc <.rel.plt>:
 80482cc:	04 98                	add    al,0x98
 80482ce:	04 08                	add    al,0x8
 80482d0:	07                   	pop    es
 80482d1:	01 00                	add    DWORD PTR [eax],eax
 80482d3:	00 08                	add    BYTE PTR [eax],cl
 80482d5:	98                   	cwde
 80482d6:	04 08                	add    al,0x8
 80482d8:	07                   	pop    es
 80482d9:	02 00                	add    al,BYTE PTR [eax]
 80482db:	00 0c 98             	add    BYTE PTR [eax+ebx*4],cl
 80482de:	04 08                	add    al,0x8
 80482e0:	07                   	pop    es
 80482e1:	03 00                	add    eax,DWORD PTR [eax]
 80482e3:	00 10                	add    BYTE PTR [eax],dl
 80482e5:	98                   	cwde
 80482e6:	04 08                	add    al,0x8
 80482e8:	07                   	pop    es
 80482e9:	04 00                	add    al,0x0
 80482eb:	00 14 98             	add    BYTE PTR [eax+ebx*4],dl
 80482ee:	04 08                	add    al,0x8
 80482f0:	07                   	pop    es
 80482f1:	05                   	.byte 0x5
	...

Disassembly of section .init:

080482f4 <_init>:
 80482f4:	53                   	push   ebx
 80482f5:	83 ec 08             	sub    esp,0x8
 80482f8:	e8 b3 00 00 00       	call   80483b0 <__x86.get_pc_thunk.bx>
 80482fd:	81 c3 fb 14 00 00    	add    ebx,0x14fb
 8048303:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048309:	85 c0                	test   eax,eax
 804830b:	74 05                	je     8048312 <_init+0x1e>
 804830d:	e8 3e 00 00 00       	call   8048350 <__gmon_start__@plt>
 8048312:	83 c4 08             	add    esp,0x8
 8048315:	5b                   	pop    ebx
 8048316:	c3                   	ret

Disassembly of section .plt:

08048320 <printf@plt-0x10>:
 8048320:	ff 35 fc 97 04 08    	push   DWORD PTR ds:0x80497fc
 8048326:	ff 25 00 98 04 08    	jmp    DWORD PTR ds:0x8049800
 804832c:	00 00                	add    BYTE PTR [eax],al
	...

08048330 <printf@plt>:
 8048330:	ff 25 04 98 04 08    	jmp    DWORD PTR ds:0x8049804
 8048336:	68 00 00 00 00       	push   0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048340 <puts@plt>:
 8048340:	ff 25 08 98 04 08    	jmp    DWORD PTR ds:0x8049808
 8048346:	68 08 00 00 00       	push   0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048350 <__gmon_start__@plt>:
 8048350:	ff 25 0c 98 04 08    	jmp    DWORD PTR ds:0x804980c
 8048356:	68 10 00 00 00       	push   0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048360 <__libc_start_main@plt>:
 8048360:	ff 25 10 98 04 08    	jmp    DWORD PTR ds:0x8049810
 8048366:	68 18 00 00 00       	push   0x18
 804836b:	e9 b0 ff ff ff       	jmp    8048320 <_init+0x2c>

08048370 <__isoc99_scanf@plt>:
 8048370:	ff 25 14 98 04 08    	jmp    DWORD PTR ds:0x8049814
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
 804838b:	68 70 85 04 08       	push   0x8048570
 8048390:	68 10 85 04 08       	push   0x8048510
 8048395:	51                   	push   ecx
 8048396:	56                   	push   esi
 8048397:	68 c2 84 04 08       	push   0x80484c2
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
 80483c0:	b8 23 98 04 08       	mov    eax,0x8049823
 80483c5:	2d 20 98 04 08       	sub    eax,0x8049820
 80483ca:	83 f8 06             	cmp    eax,0x6
 80483cd:	76 1a                	jbe    80483e9 <deregister_tm_clones+0x29>
 80483cf:	b8 00 00 00 00       	mov    eax,0x0
 80483d4:	85 c0                	test   eax,eax
 80483d6:	74 11                	je     80483e9 <deregister_tm_clones+0x29>
 80483d8:	55                   	push   ebp
 80483d9:	89 e5                	mov    ebp,esp
 80483db:	83 ec 14             	sub    esp,0x14
 80483de:	68 20 98 04 08       	push   0x8049820
 80483e3:	ff d0                	call   eax
 80483e5:	83 c4 10             	add    esp,0x10
 80483e8:	c9                   	leave
 80483e9:	f3 c3                	repz ret
 80483eb:	90                   	nop
 80483ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

080483f0 <register_tm_clones>:
 80483f0:	b8 20 98 04 08       	mov    eax,0x8049820
 80483f5:	2d 20 98 04 08       	sub    eax,0x8049820
 80483fa:	c1 f8 02             	sar    eax,0x2
 80483fd:	89 c2                	mov    edx,eax
 80483ff:	c1 ea 1f             	shr    edx,0x1f
 8048402:	01 d0                	add    eax,edx
 8048404:	d1 f8                	sar    eax,1
 8048406:	74 1b                	je     8048423 <register_tm_clones+0x33>
 8048408:	ba 00 00 00 00       	mov    edx,0x0
 804840d:	85 d2                	test   edx,edx
 804840f:	74 12                	je     8048423 <register_tm_clones+0x33>
 8048411:	55                   	push   ebp
 8048412:	89 e5                	mov    ebp,esp
 8048414:	83 ec 10             	sub    esp,0x10
 8048417:	50                   	push   eax
 8048418:	68 20 98 04 08       	push   0x8049820
 804841d:	ff d2                	call   edx
 804841f:	83 c4 10             	add    esp,0x10
 8048422:	c9                   	leave
 8048423:	f3 c3                	repz ret
 8048425:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048429:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048430 <__do_global_dtors_aux>:
 8048430:	80 3d 20 98 04 08 00 	cmp    BYTE PTR ds:0x8049820,0x0
 8048437:	75 13                	jne    804844c <__do_global_dtors_aux+0x1c>
 8048439:	55                   	push   ebp
 804843a:	89 e5                	mov    ebp,esp
 804843c:	83 ec 08             	sub    esp,0x8
 804843f:	e8 7c ff ff ff       	call   80483c0 <deregister_tm_clones>
 8048444:	c6 05 20 98 04 08 01 	mov    BYTE PTR ds:0x8049820,0x1
 804844b:	c9                   	leave
 804844c:	f3 c3                 ret
 804844e:	66 90                	xchg   ax,ax

08048450 <frame_dummy>:
 8048450:	b8 08 97 04 08       	mov    eax,0x8049708
 8048455:	8b 10                	mov    edx,DWORD PTR [eax]
 8048457:	85 d2                	test   edx,edx
 8048459:	75 05                	jne    8048460 <frame_dummy+0x10>
 804845b:	eb 93                	jmp    80483f0 <register_tm_clones>
 804845d:	8d 76 00             	lea    esi,[esi+0x0]
 8048460:	ba 00 00 00 00       	mov    edx,0x0
 8048465:	85 d2                	test   edx,edx
 8048467:	74 f2                	je     804845b <frame_dummy+0xb>
 8048469:	55                   	push   ebp
 804846a:	89 e5                	mov    ebp,esp
 804846c:	83 ec 14             	sub    esp0x14
 804846f:	50                   	push   ea
 8048470:	ff d2                	call   edx
 8048472:	83 c4 10             	add    esp,0x10
 8048475:	c9                   	leave
 8048476:	e9 75 ff ff ff       	jmp    80483f0 <register_tm_clones>

0804847b <func>:
 804847b:	55                   	push   ebp
 804847c:	89 e5                	mov    ebp,esp
 804847e:	83 ec 18             	sub    esp,0x18
 8048481:	83 ec 0c             	sub    esp,0xc
 8048484:	68 90 85 04 08       	push   0x8048590
 8048489:	e8 b2 fe ff ff       	call   8048340 <puts@plt>
 804848e:	83 c4 10             	add    esp,0x10
 8048491:	83 ec 08             	sub    esp,0x8
 8048494:	8d 45 ee             	lea    eax,[ebp-0x12]
 8048497:	50                   	push   eax
 8048498:	68 a2 85 04 08       	push   0x80485a2			//posible return address
 804849d:	e8 ce fe ff ff       	call   8048370 <__isoc99_scanf@plt>
 80484a2:	83 c4 10             	add    esp,0x10
 80484a5:	a1 24 98 04 08       	mov    eax,ds:0x8049824 #
 80484aa:	83 ec 04             	sub    esp,0x4
 80484ad:	50                   	push   eax
 80484ae:	8d 45 ee             	lea    eax,[ebp-0x12]
 80484b1:	50                   	push   eax
 80484b2:	68 a8 85 04 08       	push   0x80485a8
 80484b7:	e8 74 fe ff ff       	call   8048330 <printf@plt>
 80484bc:	83 c4 10             	add    esp,0x10
 80484bf:	90                   	nop
 80484c0:	c9                   	leave
 80484c1:	c3                   	ret

080484c2 <`main`>:
 80484c2:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 80484c6:	83 e4 f0             	and    esp,0xfffffff0
 80484c9:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 80484cc:	55                   	push   ebp
 80484cd:	89 e5                	mov    ebp,esp
 80484cf:	51                   	push   ecx
 80484d0:	83 ec 04             	sub    esp,0x4
 80484d3:	83 ec 0c             	sub    esp,0xc
 80484d6:	68 ca 85 04 08       	push   0x80485ca
 80484db:	e8 60 fe ff ff       	call   8048340 <puts@plt>
 80484e0:	83 c4 10             	add    esp,0x10
 80484e3:	83 ec 08             	sub    esp,0x8
 80484e6:	68 24 98 04 08       	push   0x8049824
 80484eb:	68 db 85 04 08       	push   0x80485db
 80484f0:	e8 7b fe ff ff       	call   8048370 <__isoc99_scanf@plt>
 80484f5:	83 c4 10             	add    esp,0x10
 80484f8:	e8 7e ff ff ff       	call   804847b <func>
 80484fd:	b8 00 00 00 00       	mov    eax,0x0
 8048502:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
 8048505:	c9                   	leave
 8048506:	8d 61 fc             	lea    esp,[ecx-0x4]
 8048509:	c3                   	ret
 804850a:	66 90                	xchg   ax,ax
 804850c:	66 90                	xchg   ax,ax
 804850e:	66 90                	xchg   ax,ax

08048510 <__libc_csu_init>:
 8048510:	55                   	push   ebp
 8048511:	57                   	push   edi
 8048512:	56                   	push   esi
 8048513:	53                   	push   ebx
 8048514:	e8 97 fe ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 8048519:	81 c3 df 12 00 00    	add    ebx,0x12df
 804851f:	83 ec 0c             	sub    esp,0xc
 8048522:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 8048526:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804852c:	e8 c3 fd ff ff       	call   80482f4 <_init>
 8048531:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048537:	29 c6                	sub    esi,eax
 8048539:	c1 fe 02             	sar    esi,0x2
 804853c:	85 f6                	test   esi,esi
 804853e:	74 25                	je     8048565 <__libc_csu_init+0x55>
 8048540:	31 ff                	xor    edi,edi
 8048542:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048548:	83 ec 04             	sub    esp,0x4
 804854b:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 804854f:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048553:	55                   	push   ebp
 8048554:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 804855b:	83 c7 01             	add    edi,0x1
 804855e:	83 c4 10             	add    esp,0x10
 8048561:	39 f7                	cmp    edi,esi
 8048563:	75 e3                	jne    8048548 <__libc_csu_init+0x38>
 8048565:	83 c4 0c             	add    esp,0xc
 8048568:	5b                   	pop    ebx
 8048569:	5e                   	pop    esi
 804856a:	5f                   	pop    edi
 804856b:	5d                   	pop    ebp
 804856c:	c3                   	ret
 804856d:	8d 76 00             	lea    esi,[esi+0x0]

08048570 <__libc_csu_fini>:
 8048570:	f3 c3                	repz ret

Disassembly of section .fini:

08048574 <_fini>:
 8048574:	53                   	push   ebx
 8048575:	83 ec 08             	sub    esp,0x8
 8048578:	e8 33 fe ff ff       	call   80483b0 <__x86.get_pc_thunk.bx>
 804857d:	81 c3 7b 12 00 00    	add    ebx,0x127b
 8048583:	83 c4 08             	add    esp,0x8
 8048586:	5b                   	pop    ebx
 8048587:	c3                   	ret

Disassembly of section .rodata:

08048588 <_fp_hw>:
 8048588:	03 00                	add    eax,DWORD PTR [eax]
	...

0804858c <_IO_stdin_used>:
 804858c:	01 00                	add    DWORD PTR [eax],eax
 804858e:	02 00                	add    al,BYTE PTR [eax]
 8048590:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 8048592:	74 65                	je     80485f9 <_IO_stdin_used+0x6d>
 8048594:	72 20                	jb     80485b6 <_IO_stdin_used+0x2a>
 8048596:	79 6f                	jns    8048607 <_IO_stdin_used+0x7b>
 8048598:	75 72                	jne    804860c <_IO_stdin_used+0x80>
 804859a:	20 6e 61             	and    BYTE PTR [esi+0x61],ch
 804859d:	6d                   	ins    DWORD PTR es:[edi],dx
 804859e:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
 80485a1:	00 25 73 00 00 00    	add    BYTE PTR ds:0x73,ah
 80485a7:	00 77 65             	add    BYTE PTR [edi+0x65],dh
 80485aa:	6c                   	ins    BYTE PTR es:[edi],dx
 80485ab:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],bp
 80485ae:	65 20 25 73 2c 20 79 	and    BYTE PTR gs:0x79202c73,ah
 80485b5:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80485b6:	75 20                	jne    80485d8 <_IO_stdin_used+0x4c>
 80485b8:	61                   	popa
 80485b9:	72 65                	jb     8048620 <_IO_stdin_used+0x94>
 80485bb:	20 25 64 20 79 65    	and    BYTE PTR ds:0x65792064,ah
 80485c1:	61                   	popa
 80485c2:	72 73                	jb     8048637 <_IO_stdin_used+0xab>
 80485c4:	20 6f 6c             	and    BYTE PTR [edi+0x6c],ch
 80485c7:	64 0a 00             	or     al,BYTE PTR fs:[eax]
 80485ca:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 80485cc:	74 65                	je     8048633 <_IO_stdin_used+0xa7>
 80485ce:	72 20                	jb     80485f0 <_IO_stdin_used+0x64>
 80485d0:	79 6f                	jns    8048641 <_IO_stdin_used+0xb5>
 80485d2:	75 72                	jne    8048646 <_IO_stdin_used+0xba>
 80485d4:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
 80485d7:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
 80485da:	00                   	.byte 0x0
 80485db:	25                   	.byte 0x25
 80485dc:	64                   	fs
	...

Disassembly of section .eh_frame_hdr:

080485e0 <.eh_frame_hdr>:
 80485e0:	01 1b                	add    DWORD PTR [ebx],ebx
 80485e2:	03 3b                	add    edi,DWORD PTR [ebx]
 80485e4:	30 00                	xor    BYTE PTR [eax],al
 80485e6:	00 00                	add    BYTE PTR [eax],al
 80485e8:	05 00 00 00 40       	add    eax,0x40000000
 80485ed:	fd                   	std
 80485ee:	ff                   	(bad)
 80485ef:	ff 4c 00 00          	dec    DWORD PTR [eax+eax*1+0x0]
 80485f3:	00 9b fe ff ff 70    	add    BYTE PTR [ebx+0x70fffffe],bl
 80485f9:	00 00                	add    BYTE PTR [eax],al
 80485fb:	00 e2                	add    dl,ah
 80485fd:	fe                   	(bad)
 80485fe:	ff                   	(bad)
 80485ff:	ff 90 00 00 00 30    	call   DWORD PTR [eax+0x30000000]
 8048605:	ff                   	(bad)
 8048606:	ff                   	(bad)
 8048607:	ff                   	(bad)
 8048608:	bc 00 00 00 90       	mov    esp,0x90000000
 804860d:	ff                   	(bad)
 804860e:	ff                   	(bad)
 804860f:	ff 08                	dec    DWORD PTR [eax]
 8048611:	01 00                	add    DWORD PTR [eax],eax
	...

Disassembly of section .eh_frame:

08048614 <__FRAME_END__-0xe8>:
 8048614:	14 00                	adc    al,0x0
 8048616:	00 00                	add    BYTE PTR [eax],al
 8048618:	00 00                	add    BYTE PTR [eax],al
 804861a:	00 00                	add    BYTE PTR [eax],al
 804861c:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
 804861f:	00 01                	add    BYTE PTR [ecx],al
 8048621:	7c 08                	jl     804862b <_IO_stdin_used+0x9f>
 8048623:	01 1b                	add    DWORD PTR [ebx],ebx
 8048625:	0c 04                	or     al,0x4
 8048627:	04 88                	add    al,0x88
 8048629:	01 00                	add    DWORD PTR [eax],eax
 804862b:	00 20                	add    BYTE PTR [eax],ah
 804862d:	00 00                	add    BYTE PTR [eax],al
 804862f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 8048632:	00 00                	add    BYTE PTR [eax],al
 8048634:	ec                   	in     al,dx
 8048635:	fc                   	cld
 8048636:	ff                   	(bad)
 8048637:	ff 60 00             	jmp    DWORD PTR [eax+0x0]
 804863a:	00 00                	add    BYTE PTR [eax],al
 804863c:	00 0e                	add    BYTE PTR [esi],cl
 804863e:	08 46 0e             	or     BYTE PTR [esi+0xe],al
 8048641:	0c 4a                	or     al,0x4a
 8048643:	0f 0b                	ud2
 8048645:	74 04                	je     804864b <_IO_stdin_used+0xbf>
 8048647:	78 00                	js     8048649 <_IO_stdin_used+0xbd>
 8048649:	3f                   	aas
 804864a:	1a 3b                	sbb    bh,BYTE PTR [ebx]
 804864c:	2a 32                	sub    dh,BYTE PTR [edx]
 804864e:	24 22                	and    al,0x22
 8048650:	1c 00                	sbb    al,0x0
 8048652:	00 00                	add    BYTE PTR [eax],al
 8048654:	40                   	inc    eax
 8048655:	00 00                	add    BYTE PTR [eax],al
 8048657:	00 23                	add    BYTE PTR [ebx],ah
 8048659:	fe                   	(bad)
 804865a:	ff                   	(bad)
 804865b:	ff 47 00             	inc    DWORD PTR [edi+0x0]
 804865e:	00 00                	add    BYTE PTR [eax],al
 8048660:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 8048663:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048669:	02 43 c5             	add    al,BYTE PTR [ebx-0x3b]
 804866c:	0c 04                	or     al,0x4
 804866e:	04 00                	add    al,0x0
 8048670:	28 00                	sub    BYTE PTR [eax],al
 8048672:	00 00                	add    BYTE PTR [eax],al
 8048674:	60                   	pusha
 8048675:	00 00                	add    BYTE PTR [eax],al
 8048677:	00 4a fe             	add    BYTE PTR [edx-0x2],cl
 804867a:	ff                   	(bad)
 804867b:	ff 48 00             	dec    DWORD PTR [eax+0x0]
 804867e:	00 00                	add    BYTE PTR [eax],al
 8048680:	00 44 0c 01          	add    BYTE PTR [esp+ecx*1+0x1],al
 8048684:	00 47 10             	add    BYTE PTR [edi+0x10],al
 8048687:	05 02 75 00 43       	add    eax,0x43007502
 804868c:	0f 03 75 7c          	lsl    esi,WORD PTR [ebp+0x7c]
 8048690:	06                   	push   es
 8048691:	75 0c                	jne    804869f <_IO_stdin_used+0x113>
 8048693:	01 00                	add    DWORD PTR [eax],eax
 8048695:	41                   	inc    ecx
 8048696:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
 8048699:	04 04                	add    al,0x4
 804869b:	00 48 00             	add    BYTE PTR [eax+0x0],cl
 804869e:	00 00                	add    BYTE PTR [eax],al
 80486a0:	8c 00                	mov    WORD PTR [eax],es
 80486a2:	00 00                	add    BYTE PTR [eax],al
 80486a4:	6c                   	ins    BYTE PTR es:[edi],dx
 80486a5:	fe                   	(bad)
 80486a6:	ff                   	(bad)
 80486a7:	ff 5d 00             	call   FWORD PTR [ebp+0x0]
 80486aa:	00 00                	add    BYTE PTR [eax],al
 80486ac:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 80486af:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 80486b5:	87 03                	xchg   DWORD PTR [ebx],eax
 80486b7:	41                   	inc    ecx
 80486b8:	0e                   	push   cs
 80486b9:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 80486bf:	83 05 4e 0e 20 69 0e 	add    DWORD PTR ds:0x69200e4e,0xe
 80486c6:	24 44                	and    al,0x44
 80486c8:	0e                   	push   cs
 80486c9:	28 44 0e 2c          	sub    BYTE PTR [esi+ecx*1+0x2c],al
 80486cd:	41                   	inc    ecx
 80486ce:	0e                   	push   cs
 80486cf:	30 4d 0e             	xor    BYTE PTR [ebp+0xe],cl
 80486d2:	20 47 0e             	and    BYTE PTR [edi+0xe],al
 80486d5:	14 41                	adc    al,0x41
 80486d7:	c3                   	ret
 80486d8:	0e                   	push   cs
 80486d9:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 80486dc:	0e                   	push   cs
 80486dd:	0c 41                	or     al,0x41
 80486df:	c7                   	(bad)
 80486e0:	0e                   	push   cs
 80486e1:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 80486e4:	0e                   	push   cs
 80486e5:	04 00                	add    al,0x0
 80486e7:	00 10                	add    BYTE PTR [eax],dl
 80486e9:	00 00                	add    BYTE PTR [eax],al
 80486eb:	00 d8                	add    al,bl
 80486ed:	00 00                	add    BYTE PTR [eax],al
 80486ef:	00 80 fe ff ff 02    	add    BYTE PTR [eax+0x2fffffe],al
 80486f5:	00 00                	add    BYTE PTR [eax],al
 80486f7:	00 00                	add    BYTE PTR [eax],al
 80486f9:	00 00                	add    BYTE PTR [eax],al
	...

080486fc <__FRAME_END__>:
 80486fc:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .init_array:

08049700 <__frame_dummy_init_array_entry>:
 8049700:	50                   	push   eax
 8049701:	84 04 08             	test   BYTE PTR [eax+ecx*1],al

Disassembly of section .fini_array:

08049704 <__do_global_dtors_aux_fini_array_entry>:
 8049704:	30                   	.byte 0x30
 8049705:	84 04 08             	test   BYTE PTR [eax+ecx*1],al

Disassembly of section .jcr:

08049708 <__JCR_END__>:
 8049708:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .dynamic:

0804970c <_DYNAMIC>:
 804970c:	01 00                	add    DWORD PTR [eax],eax
 804970e:	00 00                	add    BYTE PTR [eax],al
 8049710:	01 00                	add    DWORD PTR [eax],eax
 8049712:	00 00                	add    BYTE PTR [eax],al
 8049714:	0c 00                	or     al,0x0
 8049716:	00 00                	add    BYTE PTR [eax],al
 8049718:	f4                   	hlt
 8049719:	82                   	(bad)
 804971a:	04 08                	add    al,0x8
 804971c:	0d 00 00 00 74       	or     eax,0x74000000
 8049721:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
 8049724:	19 00                	sbb    DWORD PTR [eax],eax
 8049726:	00 00                	add    BYTE PTR [eax],al
 8049728:	00 97 04 08 1b 00    	add    BYTE PTR [edi+0x1b0804],dl
 804972e:	00 00                	add    BYTE PTR [eax],al
 8049730:	04 00                	add    al,0x0
 8049732:	00 00                	add    BYTE PTR [eax],al
 8049734:	1a 00                	sbb    al,BYTE PTR [eax]
 8049736:	00 00                	add    BYTE PTR [eax],al
 8049738:	04 97                	add    al,0x97
 804973a:	04 08                	add    al,0x8
 804973c:	1c 00                	sbb    al,0x0
 804973e:	00 00                	add    BYTE PTR [eax],al
 8049740:	04 00                	add    al,0x0
 8049742:	00 00                	add    BYTE PTR [eax],al
 8049744:	f5                   	cmc
 8049745:	fe                   	(bad)
 8049746:	ff 6f 8c             	jmp    FWORD PTR [edi-0x74]
 8049749:	81 04 08 05 00 00 00 	add    DWORD PTR [eax+ecx*1],0x5
 8049750:	1c 82                	sbb    al,0x82
 8049752:	04 08                	add    al,0x8
 8049754:	06                   	push   es
 8049755:	00 00                	add    BYTE PTR [eax],al
 8049757:	00 ac 81 04 08 0a 00 	add    BYTE PTR [ecx+eax*4+0xa0804],ch
 804975e:	00 00                	add    BYTE PTR [eax],al
 8049760:	6a 00                	push   0x0
 8049762:	00 00                	add    BYTE PTR [eax],al
 8049764:	0b 00                	or     eax,DWORD PTR [eax]
 8049766:	00 00                	add    BYTE PTR [eax],al
 8049768:	10 00                	adc    BYTE PTR [eax],al
 804976a:	00 00                	add    BYTE PTR [eax],al
 804976c:	15 00 00 00 00       	adc    eax,0x0
 8049771:	00 00                	add    BYTE PTR [eax],al
 8049773:	00 03                	add    BYTE PTR [ebx],al
 8049775:	00 00                	add    BYTE PTR [eax],al
 8049777:	00 f8                	add    al,bh
 8049779:	97                   	xchg   edi,eax
 804977a:	04 08                	add    al,0x8
 804977c:	02 00                	add    al,BYTE PTR [eax]
 804977e:	00 00                	add    BYTE PTR [eax],al
 8049780:	28 00                	sub    BYTE PTR [eax],al
 8049782:	00 00                	add    BYTE PTR [eax],al
 8049784:	14 00                	adc    al,0x0
 8049786:	00 00                	add    BYTE PTR [eax],al
 8049788:	11 00                	adc    DWORD PTR [eax],eax
 804978a:	00 00                	add    BYTE PTR [eax],al
 804978c:	17                   	pop    ss
 804978d:	00 00                	add    BYTE PTR [eax],al
 804978f:	00 cc                	add    ah,cl
 8049791:	82                   	(bad)
 8049792:	04 08                	add    al,0x8
 8049794:	11 00                	adc    DWORD PTR [eax],eax
 8049796:	00 00                	add    BYTE PTR [eax],al
 8049798:	c4 82 04 08 12 00    	les    eax,FWORD PTR [edx+0x120804]
 804979e:	00 00                	add    BYTE PTR [eax],al
 80497a0:	08 00                	or     BYTE PTR [eax],al
 80497a2:	00 00                	add    BYTE PTR [eax],al
 80497a4:	13 00                	adc    eax,DWORD PTR [eax]
 80497a6:	00 00                	add    BYTE PTR [eax],al
 80497a8:	08 00                	or     BYTE PTR [eax],al
 80497aa:	00 00                	add    BYTE PTR [eax],al
 80497ac:	fe                   	(bad)
 80497ad:	ff                   	(bad)
 80497ae:	ff 6f 94             	jmp    FWORD PTR [edi-0x6c]
 80497b1:	82                   	(bad)
 80497b2:	04 08                	add    al,0x8
 80497b4:	ff                   	(bad)
 80497b5:	ff                   	(bad)
 80497b6:	ff 6f 01             	jmp    FWORD PTR [edi+0x1]
 80497b9:	00 00                	add    BYTE PTR [eax],al
 80497bb:	00 f0                	add    al,dh
 80497bd:	ff                   	(bad)
 80497be:	ff 6f 86             	jmp    FWORD PTR [edi-0x7a]
 80497c1:	82                   	(bad)
 80497c2:	04 08                	add    al,0x8
	...

Disassembly of section .got:

080497f4 <.got>:
 80497f4:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .got.plt:

080497f8 <_GLOBAL_OFFSET_TABLE_>:
 80497f8:	0c 97                	or     al,0x97
 80497fa:	04 08                	add    al,0x8
	...
 8049804:	36 83 04 08 46       	add    DWORD PTR ss:[eax+ecx*1],0x46
 8049809:	83 04 08 56          	add    DWORD PTR [eax+ecx*1],0x56
 804980d:	83 04 08 66          	add    DWORD PTR [eax+ecx*1],0x66
 8049811:	83 04 08 76          	add    DWORD PTR [eax+ecx*1],0x76
 8049815:	83                   	.byte 0x83
 8049816:	04 08                	add    al,0x8

Disassembly of section .data:

08049818 <__data_start>:
 8049818:	00 00                	add    BYTE PTR [eax],al
	...

0804981c <__dso_handle>:
 804981c:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .bss:

08049820 <__bss_start>:
 8049820:	00 00                	add    BYTE PTR [eax],al
	...

08049824 <x>:
 8049824:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 47 4e             	sub    BYTE PTR [edi+0x4e],al
   8:	55                   	push   ebp
   9:	29 20                	sub    DWORD PTR [eax],esp
   b:	35 2e 33 2e 30       	xor    eax,0x302e332e
	...
