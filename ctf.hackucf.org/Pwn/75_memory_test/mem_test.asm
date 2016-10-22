
mem_test:     file format elf32-i386


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
 8048177:	00 4b 64             	add    BYTE PTR [ebx+0x64],cl
 804817a:	7a c0                	jp     804813c <_init-0x3dc>
 804817c:	b4 4b                	mov    ah,0x4b
 804817e:	0d 58 59 56 e9       	or     eax,0xe9565958
 8048183:	0e                   	push   cs
 8048184:	d4 1c                	aam    0x1c
 8048186:	5e                   	pop    esi
 8048187:	88 ef                	mov    bh,ch
 8048189:	be                   	.byte 0xbe
 804818a:	77 b7                	ja     8048143 <_init-0x3d5>

Disassembly of section .gnu.hash:

0804818c <.gnu.hash>:
 804818c:	03 00                	add    eax,DWORD PTR [eax]
 804818e:	00 00                	add    BYTE PTR [eax],al
 8048190:	10 00                	adc    BYTE PTR [eax],al
 8048192:	00 00                	add    BYTE PTR [eax],al
 8048194:	02 00                	add    al,BYTE PTR [eax]
 8048196:	00 00                	add    BYTE PTR [eax],al
 8048198:	06                   	push   es
 8048199:	00 00                	add    BYTE PTR [eax],al
 804819b:	00 88 00 20 01 00    	add    BYTE PTR [eax+0x12000],cl
 80481a1:	e4 40                	in     al,0x40
 80481a3:	09 10                	or     DWORD PTR [eax],edx
 80481a5:	00 00                	add    BYTE PTR [eax],al
 80481a7:	00 12                	add    BYTE PTR [edx],dl
 80481a9:	00 00                	add    BYTE PTR [eax],al
 80481ab:	00 15 00 00 00 42    	add    BYTE PTR ds:0x42000000,dl
 80481b1:	45                   	inc    ebp
 80481b2:	d5 ec                	aad    0xec
 80481b4:	bb e3 92 7c ac       	mov    ebx,0xac7c92e3
 80481b9:	4b                   	dec    ebx
 80481ba:	e3 c0                	jecxz  804817c <_init-0x39c>
 80481bc:	d8 71 58             	fdiv   DWORD PTR [ecx+0x58]
 80481bf:	1c b9                	sbb    al,0xb9
 80481c1:	8d                   	(bad)
 80481c2:	f1                   	icebp
 80481c3:	0e                   	push   cs
 80481c4:	eb d3                	jmp    8048199 <_init-0x37f>
 80481c6:	ef                   	out    dx,eax
 80481c7:	0e                   	push   cs

Disassembly of section .dynsym:

080481c8 <.dynsym>:
	...
 80481d8:	18 00                	sbb    BYTE PTR [eax],al
	...
 80481e2:	00 00                	add    BYTE PTR [eax],al
 80481e4:	20 00                	and    BYTE PTR [eax],al
 80481e6:	00 00                	add    BYTE PTR [eax],al
 80481e8:	c9                   	leave
	...
 80481f1:	00 00                	add    BYTE PTR [eax],al
 80481f3:	00 12                	add    BYTE PTR [edx],dl
 80481f5:	00 00                	add    BYTE PTR [eax],al
 80481f7:	00 c4                	add    ah,al
	...
 8048201:	00 00                	add    BYTE PTR [eax],al
 8048203:	00 12                	add    BYTE PTR [edx],dl
 8048205:	00 00                	add    BYTE PTR [eax],al
 8048207:	00 bf 00 00 00 00    	add    BYTE PTR [edi+0x0],bh
 804820d:	00 00                	add    BYTE PTR [eax],al
 804820f:	00 00                	add    BYTE PTR [eax],al
 8048211:	00 00                	add    BYTE PTR [eax],al
 8048213:	00 12                	add    BYTE PTR [edx],dl
 8048215:	00 00                	add    BYTE PTR [eax],al
 8048217:	00 d7                	add    bh,dl
	...
 8048221:	00 00                	add    BYTE PTR [eax],al
 8048223:	00 12                	add    BYTE PTR [edx],dl
 8048225:	00 00                	add    BYTE PTR [eax],al
 8048227:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
	...
 8048232:	00 00                	add    BYTE PTR [eax],al
 8048234:	20 00                	and    BYTE PTR [eax],al
 8048236:	00 00                	add    BYTE PTR [eax],al
 8048238:	a2 00 00 00 00       	mov    ds:0x0,al
 804823d:	00 00                	add    BYTE PTR [eax],al
 804823f:	00 00                	add    BYTE PTR [eax],al
 8048241:	00 00                	add    BYTE PTR [eax],al
 8048243:	00 12                	add    BYTE PTR [edx],dl
 8048245:	00 00                	add    BYTE PTR [eax],al
 8048247:	00 de                	add    dh,bl
	...
 8048251:	00 00                	add    BYTE PTR [eax],al
 8048253:	00 12                	add    BYTE PTR [edx],dl
 8048255:	00 00                	add    BYTE PTR [eax],al
 8048257:	00 d0                	add    al,dl
	...
 8048261:	00 00                	add    BYTE PTR [eax],al
 8048263:	00 12                	add    BYTE PTR [edx],dl
 8048265:	00 00                	add    BYTE PTR [eax],al
 8048267:	00 71 00             	add    BYTE PTR [ecx+0x0],dh
	...
 8048272:	00 00                	add    BYTE PTR [eax],al
 8048274:	12 00                	adc    al,BYTE PTR [eax]
 8048276:	00 00                	add    BYTE PTR [eax],al
 8048278:	a3 00 00 00 00       	mov    ds:0x0,eax
 804827d:	00 00                	add    BYTE PTR [eax],al
 804827f:	00 00                	add    BYTE PTR [eax],al
 8048281:	00 00                	add    BYTE PTR [eax],al
 8048283:	00 12                	add    BYTE PTR [edx],dl
 8048285:	00 00                	add    BYTE PTR [eax],al
 8048287:	00 43 00             	add    BYTE PTR [ebx+0x0],al
	...
 8048292:	00 00                	add    BYTE PTR [eax],al
 8048294:	20 00                	and    BYTE PTR [eax],al
 8048296:	00 00                	add    BYTE PTR [eax],al
 8048298:	b0 00                	mov    al,0x0
	...
 80482a2:	00 00                	add    BYTE PTR [eax],al
 80482a4:	12 00                	adc    al,BYTE PTR [eax]
 80482a6:	00 00                	add    BYTE PTR [eax],al
 80482a8:	57                   	push   edi
	...
 80482b1:	00 00                	add    BYTE PTR [eax],al
 80482b3:	00 20                	add    BYTE PTR [eax],ah
 80482b5:	00 00                	add    BYTE PTR [eax],al
 80482b7:	00 a8 00 00 00 00    	add    BYTE PTR [eax+0x0],ch
 80482bd:	00 00                	add    BYTE PTR [eax],al
 80482bf:	00 00                	add    BYTE PTR [eax],al
 80482c1:	00 00                	add    BYTE PTR [eax],al
 80482c3:	00 12                	add    BYTE PTR [edx],dl
 80482c5:	00 00                	add    BYTE PTR [eax],al
 80482c7:	00 f0                	add    al,dh
 80482c9:	00 00                	add    BYTE PTR [eax],al
 80482cb:	00 3c 9d 04 08 00 00 	add    BYTE PTR [ebx*4+0x804],bh
 80482d2:	00 00                	add    BYTE PTR [eax],al
 80482d4:	10 00                	adc    BYTE PTR [eax],al
 80482d6:	19 00                	sbb    DWORD PTR [eax],eax
 80482d8:	03 01                	add    eax,DWORD PTR [ecx]
 80482da:	00 00                	add    BYTE PTR [eax],al
 80482dc:	40                   	inc    eax
 80482dd:	9d                   	popf
 80482de:	04 08                	add    al,0x8
 80482e0:	00 00                	add    BYTE PTR [eax],al
 80482e2:	00 00                	add    BYTE PTR [eax],al
 80482e4:	10 00                	adc    BYTE PTR [eax],al
 80482e6:	1a 00                	sbb    al,BYTE PTR [eax]
 80482e8:	93                   	xchg   ebx,eax
 80482e9:	00 00                	add    BYTE PTR [eax],al
 80482eb:	00 64 89 04          	add    BYTE PTR [ecx+ecx*4+0x4],ah
 80482ef:	08 04 00             	or     BYTE PTR [eax+eax*1],al
 80482f2:	00 00                	add    BYTE PTR [eax],al
 80482f4:	11 00                	adc    DWORD PTR [eax],eax
 80482f6:	10 00                	adc    BYTE PTR [eax],al
 80482f8:	f7 00 00 00 3c 9d    	test   DWORD PTR [eax],0x9d3c0000
 80482fe:	04 08                	add    al,0x8
 8048300:	00 00                	add    BYTE PTR [eax],al
 8048302:	00 00                	add    BYTE PTR [eax],al
 8048304:	10 00                	adc    BYTE PTR [eax],al
 8048306:	1a 00                	sbb    al,BYTE PTR [eax]
 8048308:	7d 00                	jge    804830a <_init-0x20e>
 804830a:	00 00                	add    BYTE PTR [eax],al
 804830c:	18 85 04 08 00 00    	sbb    BYTE PTR [ebp+0x804],al
 8048312:	00 00                	add    BYTE PTR [eax],al
 8048314:	12 00                	adc    al,BYTE PTR [eax]
 8048316:	0b 00                	or     eax,DWORD PTR [eax]
 8048318:	83 00 00             	add    DWORD PTR [eax],0x0
 804831b:	00 34 89             	add    BYTE PTR [ecx+ecx*4],dh
 804831e:	04 08                	add    al,0x8
 8048320:	00 00                	add    BYTE PTR [eax],al
 8048322:	00 00                	add    BYTE PTR [eax],al
 8048324:	12 00                	adc    al,BYTE PTR [eax]
 8048326:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

08048328 <.dynstr>:
 8048328:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
 804832c:	70 77                	jo     80483a5 <_init-0x173>
 804832e:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804832f:	61                   	popa
 8048330:	62 6c 65 68          	bound  ebp,QWORD PTR [ebp+eiz*2+0x68]
 8048334:	61                   	popa
 8048335:	72 6e                	jb     80483a5 <_init-0x173>
 8048337:	65 73 73             	gs jae 80483ad <_init-0x16b>
 804833a:	33 32                	xor    esi,DWORD PTR [edx]
 804833c:	2e 73 6f             	cs jae 80483ae <_init-0x16a>
 804833f:	00 5f 49             	add    BYTE PTR [edi+0x49],bl
 8048342:	54                   	push   esp
 8048343:	4d                   	dec    ebp
 8048344:	5f                   	pop    edi
 8048345:	64 65 72 65          	fs gs jb 80483ae <_init-0x16a>
 8048349:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [bp+di+0x74],0x4d547265
 8048350:	4d
 8048351:	43                   	inc    ebx
 8048352:	6c                   	ins    BYTE PTR es:[edi],dx
 8048353:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048354:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048355:	65 54                	gs push esp
 8048357:	61                   	popa
 8048358:	62 6c 65 00          	bound  ebp,QWORD PTR [ebp+eiz*2+0x0]
 804835c:	5f                   	pop    edi
 804835d:	5f                   	pop    edi
 804835e:	67 6d                	ins    DWORD PTR es:[di],dx
 8048360:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048361:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048362:	5f                   	pop    edi
 8048363:	73 74                	jae    80483d9 <_init-0x13f>
 8048365:	61                   	popa
 8048366:	72 74                	jb     80483dc <_init-0x13c>
 8048368:	5f                   	pop    edi
 8048369:	5f                   	pop    edi
 804836a:	00 5f 4a             	add    BYTE PTR [edi+0x4a],bl
 804836d:	76 5f                	jbe    80483ce <_init-0x14a>
 804836f:	52                   	push   edx
 8048370:	65 67 69 73 74 65 72 	imul   esi,DWORD PTR gs:[bp+di+0x74],0x6c437265
 8048377:	43 6c
 8048379:	61                   	popa
 804837a:	73 73                	jae    80483ef <_init-0x129>
 804837c:	65 73 00             	gs jae 804837f <_init-0x199>
 804837f:	5f                   	pop    edi
 8048380:	49                   	dec    ecx
 8048381:	54                   	push   esp
 8048382:	4d                   	dec    ebp
 8048383:	5f                   	pop    edi
 8048384:	72 65                	jb     80483eb <_init-0x12d>
 8048386:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [bp+di+0x74],0x4d547265
 804838d:	4d
 804838e:	43                   	inc    ebx
 804838f:	6c                   	ins    BYTE PTR es:[edi],dx
 8048390:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048391:	6e                   	outs   dx,BYTE PTR ds:[esi]
 8048392:	65 54                	gs push esp
 8048394:	61                   	popa
 8048395:	62 6c 65 00          	bound  ebp,QWORD PTR [ebp+eiz*2+0x0]
 8048399:	73 65                	jae    8048400 <_init-0x118>
 804839b:	72 76                	jb     8048413 <_init-0x105>
 804839d:	65 72 5f             	gs jb  80483ff <_init-0x119>
 80483a0:	6d                   	ins    DWORD PTR es:[edi],dx
 80483a1:	61                   	popa
 80483a2:	69 6e 00 5f 69 6e 69 	imul   ebp,DWORD PTR [esi+0x0],0x696e695f
 80483a9:	74 00                	je     80483ab <_init-0x16d>
 80483ab:	5f                   	pop    edi
 80483ac:	66 69 6e 69 00 6c    	imul   bp,WORD PTR [esi+0x69],0x6c00
 80483b2:	69 62 63 2e 73 6f 2e 	imul   esp,DWORD PTR [edx+0x63],0x2e6f732e
 80483b9:	36 00 5f 49          	add    BYTE PTR ss:[edi+0x49],bl
 80483bd:	4f                   	dec    edi
 80483be:	5f                   	pop    edi
 80483bf:	73 74                	jae    8048435 <_init-0xe3>
 80483c1:	64 69 6e 5f 75 73 65 	imul   ebp,DWORD PTR fs:[esi+0x5f],0x64657375
 80483c8:	64
 80483c9:	00 73 72             	add    BYTE PTR [ebx+0x72],dh
 80483cc:	61                   	popa
 80483cd:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80483ce:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
 80483d2:	72 6e                	jb     8048442 <_init-0xd6>
 80483d4:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
 80483d7:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 80483da:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [ebx+0x6f],0x5f393963
 80483e1:	73 63                	jae    8048446 <_init-0xd2>
 80483e3:	61                   	popa
 80483e4:	6e                   	outs   dx,BYTE PTR ds:[esi]
 80483e5:	66 00 70 75          	data16 add BYTE PTR [eax+0x75],dh
 80483e9:	74 73                	je     804845e <_init-0xba>
 80483eb:	00 74 69 6d          	add    BYTE PTR [ecx+ebp*2+0x6d],dh
 80483ef:	65 00 70 72          	add    BYTE PTR gs:[eax+0x72],dh
 80483f3:	69 6e 74 66 00 6d 65 	imul   ebp,DWORD PTR [esi+0x74],0x656d0066
 80483fa:	6d                   	ins    DWORD PTR es:[edi],dx
 80483fb:	73 65                	jae    8048462 <_init-0xb6>
 80483fd:	74 00                	je     80483ff <_init-0x119>
 80483ff:	73 79                	jae    804847a <_init-0x9e>
 8048401:	73 74                	jae    8048477 <_init-0xa1>
 8048403:	65 6d                	gs ins DWORD PTR es:[edi],dx
 8048405:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 8048408:	6c                   	ins    BYTE PTR es:[edi],dx
 8048409:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [edx+0x63],0x6174735f
 8048410:	72 74                	jb     8048486 <_init-0x92>
 8048412:	5f                   	pop    edi
 8048413:	6d                   	ins    DWORD PTR es:[edi],dx
 8048414:	61                   	popa
 8048415:	69 6e 00 5f 65 64 61 	imul   ebp,DWORD PTR [esi+0x0],0x6164655f
 804841c:	74 61                	je     804847f <_init-0x99>
 804841e:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 8048421:	62 73 73             	bound  esi,QWORD PTR [ebx+0x73]
 8048424:	5f                   	pop    edi
 8048425:	73 74                	jae    804849b <_init-0x7d>
 8048427:	61                   	popa
 8048428:	72 74                	jb     804849e <_init-0x7a>
 804842a:	00 5f 65             	add    BYTE PTR [edi+0x65],bl
 804842d:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804842e:	64 00 2f             	add    BYTE PTR fs:[edi],ch
 8048431:	75 73                	jne    80484a6 <_init-0x72>
 8048433:	72 2f                	jb     8048464 <_init-0xb4>
 8048435:	6c                   	ins    BYTE PTR es:[edi],dx
 8048436:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048437:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
 804843a:	2f                   	das
 804843b:	6c                   	ins    BYTE PTR es:[edi],dx
 804843c:	69 62 3a 24 4f 52 49 	imul   esp,DWORD PTR [edx+0x3a],0x49524f24
 8048443:	47                   	inc    edi
 8048444:	49                   	dec    ecx
 8048445:	4e                   	dec    esi
 8048446:	00 47 4c             	add    BYTE PTR [edi+0x4c],al
 8048449:	49                   	dec    ecx
 804844a:	42                   	inc    edx
 804844b:	43                   	inc    ebx
 804844c:	5f                   	pop    edi
 804844d:	32 2e                	xor    ch,BYTE PTR [esi]
 804844f:	37                   	aaa
 8048450:	00 47 4c             	add    BYTE PTR [edi+0x4c],al
 8048453:	49                   	dec    ecx
 8048454:	42                   	inc    edx
 8048455:	43                   	inc    ebx
 8048456:	5f                   	pop    edi
 8048457:	32 2e                	xor    ch,BYTE PTR [esi]
 8048459:	30 00                	xor    BYTE PTR [eax],al

Disassembly of section .gnu.version:

0804845c <.gnu.version>:
 804845c:	00 00                	add    BYTE PTR [eax],al
 804845e:	00 00                	add    BYTE PTR [eax],al
 8048460:	02 00                	add    al,BYTE PTR [eax]
 8048462:	02 00                	add    al,BYTE PTR [eax]
 8048464:	02 00                	add    al,BYTE PTR [eax]
 8048466:	02 00                	add    al,BYTE PTR [eax]
 8048468:	00 00                	add    BYTE PTR [eax],al
 804846a:	02 00                	add    al,BYTE PTR [eax]
 804846c:	02 00                	add    al,BYTE PTR [eax]
 804846e:	02 00                	add    al,BYTE PTR [eax]
 8048470:	00 00                	add    BYTE PTR [eax],al
 8048472:	02 00                	add    al,BYTE PTR [eax]
 8048474:	00 00                	add    BYTE PTR [eax],al
 8048476:	03 00                	add    eax,DWORD PTR [eax]
 8048478:	00 00                	add    BYTE PTR [eax],al
 804847a:	02 00                	add    al,BYTE PTR [eax]
 804847c:	01 00                	add    DWORD PTR [eax],eax
 804847e:	01 00                	add    DWORD PTR [eax],eax
 8048480:	01 00                	add    DWORD PTR [eax],eax
 8048482:	01 00                	add    DWORD PTR [eax],eax
 8048484:	01 00                	add    DWORD PTR [eax],eax
 8048486:	01 00                	add    DWORD PTR [eax],eax

Disassembly of section .gnu.version_r:

08048488 <.gnu.version_r>:
 8048488:	01 00                	add    DWORD PTR [eax],eax
 804848a:	02 00                	add    al,BYTE PTR [eax]
 804848c:	89 00                	mov    DWORD PTR [eax],eax
 804848e:	00 00                	add    BYTE PTR [eax],al
 8048490:	10 00                	adc    BYTE PTR [eax],al
 8048492:	00 00                	add    BYTE PTR [eax],al
 8048494:	00 00                	add    BYTE PTR [eax],al
 8048496:	00 00                	add    BYTE PTR [eax],al
 8048498:	17                   	pop    ss
 8048499:	69 69 0d 00 00 03 00 	imul   ebp,DWORD PTR [ecx+0xd],0x30000
 80484a0:	1f                   	pop    ds
 80484a1:	01 00                	add    DWORD PTR [eax],eax
 80484a3:	00 10                	add    BYTE PTR [eax],dl
 80484a5:	00 00                	add    BYTE PTR [eax],al
 80484a7:	00 10                	add    BYTE PTR [eax],dl
 80484a9:	69 69 0d 00 00 02 00 	imul   ebp,DWORD PTR [ecx+0xd],0x20000
 80484b0:	29 01                	sub    DWORD PTR [ecx],eax
 80484b2:	00 00                	add    BYTE PTR [eax],al
 80484b4:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .rel.dyn:

080484b8 <.rel.dyn>:
 80484b8:	f4                   	hlt
 80484b9:	9c                   	pushf
 80484ba:	04 08                	add    al,0x8
 80484bc:	06                   	push   es
 80484bd:	06                   	push   es
	...

Disassembly of section .rel.plt:

080484c0 <.rel.plt>:
 80484c0:	04 9d                	add    al,0x9d
 80484c2:	04 08                	add    al,0x8
 80484c4:	07                   	pop    es
 80484c5:	02 00                	add    al,BYTE PTR [eax]
 80484c7:	00 08                	add    BYTE PTR [eax],cl
 80484c9:	9d                   	popf
 80484ca:	04 08                	add    al,0x8
 80484cc:	07                   	pop    es
 80484cd:	03 00                	add    eax,DWORD PTR [eax]
 80484cf:	00 0c 9d 04 08 07 04 	add    BYTE PTR [ebx*4+0x4070804],cl
 80484d6:	00 00                	add    BYTE PTR [eax],al
 80484d8:	10 9d 04 08 07 05    	adc    BYTE PTR [ebp+0x5070804],bl
 80484de:	00 00                	add    BYTE PTR [eax],al
 80484e0:	14 9d                	adc    al,0x9d
 80484e2:	04 08                	add    al,0x8
 80484e4:	07                   	pop    es
 80484e5:	07                   	pop    es
 80484e6:	00 00                	add    BYTE PTR [eax],al
 80484e8:	18 9d 04 08 07 08    	sbb    BYTE PTR [ebp+0x8070804],bl
 80484ee:	00 00                	add    BYTE PTR [eax],al
 80484f0:	1c 9d                	sbb    al,0x9d
 80484f2:	04 08                	add    al,0x8
 80484f4:	07                   	pop    es
 80484f5:	09 00                	or     DWORD PTR [eax],eax
 80484f7:	00 20                	add    BYTE PTR [eax],ah
 80484f9:	9d                   	popf
 80484fa:	04 08                	add    al,0x8
 80484fc:	07                   	pop    es
 80484fd:	0a 00                	or     al,BYTE PTR [eax]
 80484ff:	00 24 9d 04 08 07 0b 	add    BYTE PTR [ebx*4+0xb070804],ah
 8048506:	00 00                	add    BYTE PTR [eax],al
 8048508:	28 9d 04 08 07 0d    	sub    BYTE PTR [ebp+0xd070804],bl
 804850e:	00 00                	add    BYTE PTR [eax],al
 8048510:	2c 9d                	sub    al,0x9d
 8048512:	04 08                	add    al,0x8
 8048514:	07                   	pop    es
 8048515:	0f 00 00             	sldt   WORD PTR [eax]

Disassembly of section .init:

08048518 <_init>:
 8048518:	53                   	push   ebx
 8048519:	83 ec 08             	sub    esp,0x8
 804851c:	e8 1f 01 00 00       	call   8048640 <__x86.get_pc_thunk.bx>
 8048521:	81 c3 d7 17 00 00    	add    ebx,0x17d7
 8048527:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 804852d:	85 c0                	test   eax,eax
 804852f:	74 05                	je     8048536 <_init+0x1e>
 8048531:	e8 ca 00 00 00       	call   8048600 <strncmp@plt+0x10>
 8048536:	83 c4 08             	add    esp,0x8
 8048539:	5b                   	pop    ebx
 804853a:	c3                   	ret

Disassembly of section .plt:

08048540 <printf@plt-0x10>:
 8048540:	ff 35 fc 9c 04 08    	push   DWORD PTR ds:0x8049cfc
 8048546:	ff 25 00 9d 04 08    	jmp    DWORD PTR ds:0x8049d00
 804854c:	00 00                	add    BYTE PTR [eax],al
	...

08048550 <printf@plt>:
 8048550:	ff 25 04 9d 04 08    	jmp    DWORD PTR ds:0x8049d04
 8048556:	68 00 00 00 00       	push   0x0
 804855b:	e9 e0 ff ff ff       	jmp    8048540 <_init+0x28>

08048560 <time@plt>:
 8048560:	ff 25 08 9d 04 08    	jmp    DWORD PTR ds:0x8049d08
 8048566:	68 08 00 00 00       	push   0x8
 804856b:	e9 d0 ff ff ff       	jmp    8048540 <_init+0x28>

08048570 <puts@plt>:
 8048570:	ff 25 0c 9d 04 08    	jmp    DWORD PTR ds:0x8049d0c
 8048576:	68 10 00 00 00       	push   0x10
 804857b:	e9 c0 ff ff ff       	jmp    8048540 <_init+0x28>

08048580 <system@plt>:
 8048580:	ff 25 10 9d 04 08    	jmp    DWORD PTR ds:0x8049d10
 8048586:	68 18 00 00 00       	push   0x18
 804858b:	e9 b0 ff ff ff       	jmp    8048540 <_init+0x28>

08048590 <srand@plt>:
 8048590:	ff 25 14 9d 04 08    	jmp    DWORD PTR ds:0x8049d14
 8048596:	68 20 00 00 00       	push   0x20
 804859b:	e9 a0 ff ff ff       	jmp    8048540 <_init+0x28>

080485a0 <__libc_start_main@plt>:
 80485a0:	ff 25 18 9d 04 08    	jmp    DWORD PTR ds:0x8049d18
 80485a6:	68 28 00 00 00       	push   0x28
 80485ab:	e9 90 ff ff ff       	jmp    8048540 <_init+0x28>

080485b0 <memset@plt>:
 80485b0:	ff 25 1c 9d 04 08    	jmp    DWORD PTR ds:0x8049d1c
 80485b6:	68 30 00 00 00       	push   0x30
 80485bb:	e9 80 ff ff ff       	jmp    8048540 <_init+0x28>

080485c0 <server_main@plt>:
 80485c0:	ff 25 20 9d 04 08    	jmp    DWORD PTR ds:0x8049d20
 80485c6:	68 38 00 00 00       	push   0x38
 80485cb:	e9 70 ff ff ff       	jmp    8048540 <_init+0x28>

080485d0 <rand@plt>:
 80485d0:	ff 25 24 9d 04 08    	jmp    DWORD PTR ds:0x8049d24
 80485d6:	68 40 00 00 00       	push   0x40
 80485db:	e9 60 ff ff ff       	jmp    8048540 <_init+0x28>

080485e0 <__isoc99_scanf@plt>:
 80485e0:	ff 25 28 9d 04 08    	jmp    DWORD PTR ds:0x8049d28
 80485e6:	68 48 00 00 00       	push   0x48
 80485eb:	e9 50 ff ff ff       	jmp    8048540 <_init+0x28>

080485f0 <strncmp@plt>:
 80485f0:	ff 25 2c 9d 04 08    	jmp    DWORD PTR ds:0x8049d2c
 80485f6:	68 50 00 00 00       	push   0x50
 80485fb:	e9 40 ff ff ff       	jmp    8048540 <_init+0x28>

Disassembly of section .plt.got:

08048600 <.plt.got>:
 8048600:	ff 25 f4 9c 04 08    	jmp    DWORD PTR ds:0x8049cf4
 8048606:	66 90                	xchg   ax,ax

Disassembly of section .text:

08048610 <_start>:
 8048610:	31 ed                	xor    ebp,ebp
 8048612:	5e                   	pop    esi
 8048613:	89 e1                	mov    ecx,esp
 8048615:	83 e4 f0             	and    esp,0xfffffff0
 8048618:	50                   	push   eax
 8048619:	54                   	push   esp
 804861a:	52                   	push   edx
 804861b:	68 30 89 04 08       	push   0x8048930
 8048620:	68 d0 88 04 08       	push   0x80488d0
 8048625:	51                   	push   ecx
 8048626:	56                   	push   esi
 8048627:	68 7d 88 04 08       	push   0x804887d
 804862c:	e8 6f ff ff ff       	call   80485a0 <__libc_start_main@plt>
 8048631:	f4                   	hlt
 8048632:	66 90                	xchg   ax,ax
 8048634:	66 90                	xchg   ax,ax
 8048636:	66 90                	xchg   ax,ax
 8048638:	66 90                	xchg   ax,ax
 804863a:	66 90                	xchg   ax,ax
 804863c:	66 90                	xchg   ax,ax
 804863e:	66 90                	xchg   ax,ax

08048640 <__x86.get_pc_thunk.bx>:
 8048640:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048643:	c3                   	ret
 8048644:	66 90                	xchg   ax,ax
 8048646:	66 90                	xchg   ax,ax
 8048648:	66 90                	xchg   ax,ax
 804864a:	66 90                	xchg   ax,ax
 804864c:	66 90                	xchg   ax,ax
 804864e:	66 90                	xchg   ax,ax

08048650 <deregister_tm_clones>:
 8048650:	b8 3f 9d 04 08       	mov    eax,0x8049d3f
 8048655:	2d 3c 9d 04 08       	sub    eax,0x8049d3c
 804865a:	83 f8 06             	cmp    eax,0x6
 804865d:	76 1a                	jbe    8048679 <deregister_tm_clones+0x29>
 804865f:	b8 00 00 00 00       	mov    eax,0x0
 8048664:	85 c0                	test   eax,eax
 8048666:	74 11                	je     8048679 <deregister_tm_clones+0x29>
 8048668:	55                   	push   ebp
 8048669:	89 e5                	mov    ebp,esp
 804866b:	83 ec 14             	sub    esp,0x14
 804866e:	68 3c 9d 04 08       	push   0x8049d3c
 8048673:	ff d0                	call   eax
 8048675:	83 c4 10             	add    esp,0x10
 8048678:	c9                   	leave
 8048679:	f3 c3                	repz ret
 804867b:	90                   	nop
 804867c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

08048680 <register_tm_clones>:
 8048680:	b8 3c 9d 04 08       	mov    eax,0x8049d3c
 8048685:	2d 3c 9d 04 08       	sub    eax,0x8049d3c
 804868a:	c1 f8 02             	sar    eax,0x2
 804868d:	89 c2                	mov    edx,eax
 804868f:	c1 ea 1f             	shr    edx,0x1f
 8048692:	01 d0                	add    eax,edx
 8048694:	d1 f8                	sar    eax,1
 8048696:	74 1b                	je     80486b3 <register_tm_clones+0x33>
 8048698:	ba 00 00 00 00       	mov    edx,0x0
 804869d:	85 d2                	test   edx,edx
 804869f:	74 12                	je     80486b3 <register_tm_clones+0x33>
 80486a1:	55                   	push   ebp
 80486a2:	89 e5                	mov    ebp,esp
 80486a4:	83 ec 10             	sub    esp,0x10
 80486a7:	50                   	push   eax
 80486a8:	68 3c 9d 04 08       	push   0x8049d3c
 80486ad:	ff d2                	call   edx
 80486af:	83 c4 10             	add    esp,0x10
 80486b2:	c9                   	leave
 80486b3:	f3 c3                	repz ret
 80486b5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80486b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080486c0 <__do_global_dtors_aux>:
 80486c0:	80 3d 3c 9d 04 08 00 	cmp    BYTE PTR ds:0x8049d3c,0x0
 80486c7:	75 13                	jne    80486dc <__do_global_dtors_aux+0x1c>
 80486c9:	55                   	push   ebp
 80486ca:	89 e5                	mov    ebp,esp
 80486cc:	83 ec 08             	sub    esp,0x8
 80486cf:	e8 7c ff ff ff       	call   8048650 <deregister_tm_clones>
 80486d4:	c6 05 3c 9d 04 08 01 	mov    BYTE PTR ds:0x8049d3c,0x1
 80486db:	c9                   	leave
 80486dc:	f3 c3                	repz ret
 80486de:	66 90                	xchg   ax,ax

080486e0 <frame_dummy>:
 80486e0:	b8 f8 9b 04 08       	mov    eax,0x8049bf8
 80486e5:	8b 10                	mov    edx,DWORD PTR [eax]
 80486e7:	85 d2                	test   edx,edx
 80486e9:	75 05                	jne    80486f0 <frame_dummy+0x10>
 80486eb:	eb 93                	jmp    8048680 <register_tm_clones>
 80486ed:	8d 76 00             	lea    esi,[esi+0x0]
 80486f0:	ba 00 00 00 00       	mov    edx,0x0
 80486f5:	85 d2                	test   edx,edx
 80486f7:	74 f2                	je     80486eb <frame_dummy+0xb>
 80486f9:	55                   	push   ebp
 80486fa:	89 e5                	mov    ebp,esp
 80486fc:	83 ec 14             	sub    esp,0x14
 80486ff:	50                   	push   eax
 8048700:	ff d2                	call   edx
 8048702:	83 c4 10             	add    esp,0x10
 8048705:	c9                   	leave
 8048706:	e9 75 ff ff ff       	jmp    8048680 <register_tm_clones>

0804870b <mem_test>:
 804870b:	55                   	push   ebp
 804870c:	89 e5                	mov    ebp,esp
 804870e:	83 ec 18             	sub    esp,0x18
 8048711:	83 ec 04             	sub    esp,0x4
 8048714:	6a 0b                	push   0xb
 8048716:	6a 00                	push   0x0
 8048718:	8d 45 ed             	lea    eax,[ebp-0x13]
 804871b:	50                   	push   eax
 804871c:	e8 8f fe ff ff       	call   80485b0 <memset@plt>
 8048721:	83 c4 10             	add    esp,0x10
 8048724:	83 ec 0c             	sub    esp,0xc
 8048727:	68 88 89 04 08       	push   0x8048988
 804872c:	e8 1f fe ff ff       	call   8048550 <printf@plt>
 8048731:	83 c4 10             	add    esp,0x10
 8048734:	a1 38 9d 04 08       	mov    eax,ds:0x8049d38
 8048739:	83 ec 08             	sub    esp,0x8
 804873c:	50                   	push   eax
 804873d:	68 ac 89 04 08       	push   0x80489ac
 8048742:	e8 09 fe ff ff       	call   8048550 <printf@plt>
 8048747:	83 c4 10             	add    esp,0x10
 804874a:	83 ec 0c             	sub    esp,0xc
 804874d:	68 b4 89 04 08       	push   0x80489b4
 8048752:	e8 19 fe ff ff       	call   8048570 <puts@plt>
 8048757:	83 c4 10             	add    esp,0x10
 804875a:	83 ec 0c             	sub    esp,0xc
 804875d:	68 da 89 04 08       	push   0x80489da
 8048762:	e8 e9 fd ff ff       	call   8048550 <printf@plt>
 8048767:	83 c4 10             	add    esp,0x10
 804876a:	83 ec 08             	sub    esp,0x8
 804876d:	8d 45 ed             	lea    eax,[ebp-0x13]
 8048770:	50                   	push   eax
 8048771:	68 dd 89 04 08       	push   0x80489dd
 8048776:	e8 65 fe ff ff       	call   80485e0 <__isoc99_scanf@plt>
 804877b:	83 c4 10             	add    esp,0x10
 804877e:	83 ec 04             	sub    esp,0x4
 8048781:	6a 04                	push   0x4
 8048783:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 8048786:	8d 45 ed             	lea    eax,[ebp-0x13]
 8048789:	50                   	push   eax
 804878a:	e8 61 fe ff ff       	call   80485f0 <strncmp@plt>
 804878f:	83 c4 10             	add    esp,0x10
 8048792:	85 c0                	test   eax,eax
 8048794:	74 12                	je     80487a8 <mem_test+0x9d>
 8048796:	83 ec 0c             	sub    esp,0xc
 8048799:	68 e0 89 04 08       	push   0x80489e0
 804879e:	e8 cd fd ff ff       	call   8048570 <puts@plt>
 80487a3:	83 c4 10             	add    esp,0x10
 80487a6:	eb 10                	jmp    80487b8 <mem_test+0xad>
 80487a8:	83 ec 0c             	sub    esp,0xc
 80487ab:	68 fa 89 04 08       	push   0x80489fa
 80487b0:	e8 bb fd ff ff       	call   8048570 <puts@plt>
 80487b5:	83 c4 10             	add    esp,0x10
 80487b8:	90                   	nop
 80487b9:	c9                   	leave
 80487ba:	c3                   	ret

080487bb <handle_connection>:
 80487bb:	55                   	push   ebp
 80487bc:	89 e5                	mov    ebp,esp
 80487be:	83 ec 28             	sub    esp,0x28
 80487c1:	c7 45 f0 0a 00 00 00 	mov    DWORD PTR [ebp-0x10],0xa
 80487c8:	83 ec 0c             	sub    esp,0xc
 80487cb:	68 08 8a 04 08       	push   0x8048a08
 80487d0:	e8 9b fd ff ff       	call   8048570 <puts@plt>
 80487d5:	83 c4 10             	add    esp,0x10
 80487d8:	83 ec 0c             	sub    esp,0xc
 80487db:	6a 00                	push   0x0
 80487dd:	e8 7e fd ff ff       	call   8048560 <time@plt>
 80487e2:	83 c4 10             	add    esp,0x10
 80487e5:	83 ec 0c             	sub    esp,0xc
 80487e8:	50                   	push   eax
 80487e9:	e8 a2 fd ff ff       	call   8048590 <srand@plt>
 80487ee:	83 c4 10             	add    esp,0x10
 80487f1:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80487f8:	eb 3e                	jmp    8048838 <handle_connection+0x7d>
 80487fa:	e8 d1 fd ff ff       	call   80485d0 <rand@plt>
 80487ff:	89 c1                	mov    ecx,eax
 8048801:	89 c8                	mov    eax,ecx
 8048803:	d1 e8                	shr    eax,1
 8048805:	ba 43 08 21 84       	mov    edx,0x84210843
 804880a:	f7 e2                	mul    edx
 804880c:	89 d0                	mov    eax,edx
 804880e:	c1 e8 04             	shr    eax,0x4
 8048811:	89 c2                	mov    edx,eax
 8048813:	8d 04 12             	lea    eax,[edx+edx*1]
 8048816:	89 c2                	mov    edx,eax
 8048818:	89 d0                	mov    eax,edx
 804881a:	c1 e0 05             	shl    eax,0x5
 804881d:	29 d0                	sub    eax,edx
 804881f:	29 c1                	sub    ecx,eax
 8048821:	89 c8                	mov    eax,ecx
 8048823:	0f b6 80 40 8a 04 08 	movzx  eax,BYTE PTR [eax+0x8048a40]
 804882a:	8d 4d e5             	lea    ecx,[ebp-0x1b]
 804882d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 8048830:	01 ca                	add    edx,ecx
 8048832:	88 02                	mov    BYTE PTR [edx],al
 8048834:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
 8048838:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804883b:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
 804883e:	7c ba                	jl     80487fa <handle_connection+0x3f>
 8048840:	83 ec 08             	sub    esp,0x8
 8048843:	8d 45 e5             	lea    eax,[ebp-0x1b]
 8048846:	50                   	push   eax
 8048847:	68 dd 89 04 08       	push   0x80489dd
 804884c:	e8 ff fc ff ff       	call   8048550 <printf@plt>
 8048851:	83 c4 10             	add    esp,0x10
 8048854:	83 ec 0c             	sub    esp,0xc
 8048857:	8d 45 e5             	lea    eax,[ebp-0x1b]
 804885a:	50                   	push   eax
 804885b:	e8 ab fe ff ff       	call   804870b <mem_test>
 8048860:	83 c4 10             	add    esp,0x10
 8048863:	90                   	nop
 8048864:	c9                   	leave
 8048865:	c3                   	ret

08048866 <win_func>:
 8048866:	55                   	push   ebp
 8048867:	89 e5                	mov    ebp,esp
 8048869:	83 ec 08             	sub    esp,0x8
 804886c:	83 ec 0c             	sub    esp,0xc
 804886f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 8048872:	e8 09 fd ff ff       	call   8048580 <system@plt>
 8048877:	83 c4 10             	add    esp,0x10
 804887a:	90                   	nop
 804887b:	c9                   	leave
 804887c:	c3                   	ret

0804887d <main>:
 804887d:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 8048881:	83 e4 f0             	and    esp,0xfffffff0
 8048884:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 8048887:	55                   	push   ebp
 8048888:	89 e5                	mov    ebp,esp
 804888a:	51                   	push   ecx
 804888b:	83 ec 14             	sub    esp,0x14
 804888e:	89 c8                	mov    eax,ecx
 8048890:	c7 45 ec 2b 8a 04 08 	mov    DWORD PTR [ebp-0x14],0x8048a2b
 8048897:	c6 45 f0 01          	mov    BYTE PTR [ebp-0x10],0x1
 804889b:	66 c7 45 f2 2c 23    	mov    WORD PTR [ebp-0xe],0x232c
 80488a1:	c7 45 f4 1e 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1e
 80488a8:	83 ec 08             	sub    esp,0x8
 80488ab:	68 bb 87 04 08       	push   0x80487bb
 80488b0:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
 80488b3:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
 80488b6:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
 80488b9:	ff 70 04             	push   DWORD PTR [eax+0x4]
 80488bc:	ff 30                	push   DWORD PTR [eax]
 80488be:	e8 fd fc ff ff       	call   80485c0 <server_main@plt>
 80488c3:	83 c4 20             	add    esp,0x20
 80488c6:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
 80488c9:	c9                   	leave
 80488ca:	8d 61 fc             	lea    esp,[ecx-0x4]
 80488cd:	c3                   	ret
 80488ce:	66 90                	xchg   ax,ax

080488d0 <__libc_csu_init>:
 80488d0:	55                   	push   ebp
 80488d1:	57                   	push   edi
 80488d2:	56                   	push   esi
 80488d3:	53                   	push   ebx
 80488d4:	e8 67 fd ff ff       	call   8048640 <__x86.get_pc_thunk.bx>
 80488d9:	81 c3 1f 14 00 00    	add    ebx,0x141f
 80488df:	83 ec 0c             	sub    esp,0xc
 80488e2:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 80488e6:	8d b3 fc fe ff ff    	lea    esi,[ebx-0x104]
 80488ec:	e8 27 fc ff ff       	call   8048518 <_init>
 80488f1:	8d 83 f8 fe ff ff    	lea    eax,[ebx-0x108]
 80488f7:	29 c6                	sub    esi,eax
 80488f9:	c1 fe 02             	sar    esi,0x2
 80488fc:	85 f6                	test   esi,esi
 80488fe:	74 25                	je     8048925 <__libc_csu_init+0x55>
 8048900:	31 ff                	xor    edi,edi
 8048902:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048908:	83 ec 04             	sub    esp,0x4
 804890b:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 804890f:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 8048913:	55                   	push   ebp
 8048914:	ff 94 bb f8 fe ff ff 	call   DWORD PTR [ebx+edi*4-0x108]
 804891b:	83 c7 01             	add    edi,0x1
 804891e:	83 c4 10             	add    esp,0x10
 8048921:	39 f7                	cmp    edi,esi
 8048923:	75 e3                	jne    8048908 <__libc_csu_init+0x38>
 8048925:	83 c4 0c             	add    esp,0xc
 8048928:	5b                   	pop    ebx
 8048929:	5e                   	pop    esi
 804892a:	5f                   	pop    edi
 804892b:	5d                   	pop    ebp
 804892c:	c3                   	ret
 804892d:	8d 76 00             	lea    esi,[esi+0x0]

08048930 <__libc_csu_fini>:
 8048930:	f3 c3                	repz ret

Disassembly of section .fini:

08048934 <_fini>:
 8048934:	53                   	push   ebx
 8048935:	83 ec 08             	sub    esp,0x8
 8048938:	e8 03 fd ff ff       	call   8048640 <__x86.get_pc_thunk.bx>
 804893d:	81 c3 bb 13 00 00    	add    ebx,0x13bb
 8048943:	83 c4 08             	add    esp,0x8
 8048946:	5b                   	pop    ebx
 8048947:	c3                   	ret

Disassembly of section .rodata:

08048960 <_fp_hw>:
 8048960:	03 00                	add    eax,DWORD PTR [eax]
	...

08048964 <_IO_stdin_used>:
 8048964:	01 00                	add    DWORD PTR [eax],eax
 8048966:	02 00                	add    al,BYTE PTR [eax]
	...
 8048980:	2f                   	das
 8048981:	62 69 6e             	bound  ebp,QWORD PTR [ecx+0x6e]
 8048984:	2f                   	das
 8048985:	73 68                	jae    80489ef <_IO_stdin_used+0x8b>
 8048987:	00 0a                	add    BYTE PTR [edx],cl
 8048989:	49                   	dec    ecx
 804898a:	20 6b 6e             	and    BYTE PTR [ebx+0x6e],ch
 804898d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804898e:	77 20                	ja     80489b0 <_IO_stdin_used+0x4c>
 8048990:	74 68                	je     80489fa <_IO_stdin_used+0x96>
 8048992:	61                   	popa
 8048993:	74 20                	je     80489b5 <_IO_stdin_used+0x51>
 8048995:	6d                   	ins    DWORD PTR es:[edi],dx
 8048996:	69 6e 65 20 69 73 20 	imul   ebp,DWORD PTR [esi+0x65],0x20736920
 804899d:	66 69 6e 65 2e 2e    	imul   bp,WORD PTR [esi+0x65],0x2e2e
 80489a3:	2e 73 65             	cs jae 8048a0b <_IO_stdin_used+0xa7>
 80489a6:	65 3f                	gs aas
 80489a8:	20 3a                	and    BYTE PTR [edx],bh
 80489aa:	20 00                	and    BYTE PTR [eax],al
 80489ac:	25 70 20 0a 00       	and    eax,0xa2070
 80489b1:	00 00                	add    BYTE PTR [eax],al
 80489b3:	00 4c 65 74          	add    BYTE PTR [ebp+eiz*2+0x74],cl
 80489b7:	27                   	daa
 80489b8:	73 20                	jae    80489da <_IO_stdin_used+0x76>
 80489ba:	73 65                	jae    8048a21 <_IO_stdin_used+0xbd>
 80489bc:	65 20 68 6f          	and    BYTE PTR gs:[eax+0x6f],ch
 80489c0:	77 20                	ja     80489e2 <_IO_stdin_used+0x7e>
 80489c2:	67 6f                	outs   dx,DWORD PTR ds:[si]
 80489c4:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80489c5:	64 20 79 6f          	and    BYTE PTR fs:[ecx+0x6f],bh
 80489c9:	75 72                	jne    8048a3d <_IO_stdin_used+0xd9>
 80489cb:	20 6d 65             	and    BYTE PTR [ebp+0x65],ch
 80489ce:	6d                   	ins    DWORD PTR es:[edi],dx
 80489cf:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80489d0:	72 79                	jb     8048a4b <alphanum.2760+0xb>
 80489d2:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
 80489d5:	2e 2e 2e 0a 00       	cs cs or al,BYTE PTR cs:[eax]
 80489da:	3e 20 00             	and    BYTE PTR ds:[eax],al
 80489dd:	25 73 00 73 6f       	and    eax,0x6f730073
 80489e2:	72 72                	jb     8048a56 <alphanum.2760+0x16>
 80489e4:	79 2c                	jns    8048a12 <_IO_stdin_used+0xae>
 80489e6:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
 80489e9:	75 72                	jne    8048a5d <alphanum.2760+0x1d>
 80489eb:	20 6d 65             	and    BYTE PTR [ebp+0x65],ch
 80489ee:	6d                   	ins    DWORD PTR es:[edi],dx
 80489ef:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80489f0:	72 79                	jb     8048a6b <alphanum.2760+0x2b>
 80489f2:	20 73 75             	and    BYTE PTR [ebx+0x75],dh
 80489f5:	63 6b 73             	arpl   WORD PTR [ebx+0x73],bp
 80489f8:	0a 00                	or     al,BYTE PTR [eax]
 80489fa:	67 6f                	outs   dx,DWORD PTR ds:[si]
 80489fc:	6f                   	outs   dx,DWORD PTR ds:[esi]
 80489fd:	64 20 6a 6f          	and    BYTE PTR fs:[edx+0x6f],ch
 8048a01:	62 21                	bound  esp,QWORD PTR [ecx]
 8048a03:	21 0a                	and    DWORD PTR [edx],ecx
 8048a05:	00 00                	add    BYTE PTR [eax],al
 8048a07:	00 0a                	add    BYTE PTR [edx],cl
 8048a09:	0a 0a                	or     cl,BYTE PTR [edx]
 8048a0b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
 8048a10:	2d 54 65 73 74       	sub    eax,0x74736554
 8048a15:	20 59 6f             	and    BYTE PTR [ecx+0x6f],bl
 8048a18:	75 72                	jne    8048a8c <__GNU_EH_FRAME_HDR+0xc>
 8048a1a:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
 8048a1d:	6d                   	ins    DWORD PTR es:[edi],dx
 8048a1e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 8048a1f:	72 79                	jb     8048a9a <__GNU_EH_FRAME_HDR+0x1a>
 8048a21:	21 2d 2d 2d 2d 2d    	and    DWORD PTR ds:0x2d2d2d2d,ebp
 8048a27:	2d 2d 0a 00 63       	sub    eax,0x63000a2d
 8048a2c:	74 66                	je     8048a94 <__GNU_EH_FRAME_HDR+0x14>
 8048a2e:	5f                   	pop    edi
 8048a2f:	6d                   	ins    DWORD PTR es:[edi],dx
 8048a30:	65 6d                	gs ins DWORD PTR es:[edi],dx
 8048a32:	5f                   	pop    edi
 8048a33:	74 65                	je     8048a9a <__GNU_EH_FRAME_HDR+0x1a>
 8048a35:	73 74                	jae    8048aab <__GNU_EH_FRAME_HDR+0x2b>
	...

08048a40 <alphanum.2760>:
 8048a40:	30 31                	xor    BYTE PTR [ecx],dh
 8048a42:	32 33                	xor    dh,BYTE PTR [ebx]
 8048a44:	34 35                	xor    al,0x35
 8048a46:	36 37                	ss aaa
 8048a48:	38 39                	cmp    BYTE PTR [ecx],bh
 8048a4a:	41                   	inc    ecx
 8048a4b:	42                   	inc    edx
 8048a4c:	43                   	inc    ebx
 8048a4d:	44                   	inc    esp
 8048a4e:	45                   	inc    ebp
 8048a4f:	46                   	inc    esi
 8048a50:	47                   	inc    edi
 8048a51:	48                   	dec    eax
 8048a52:	49                   	dec    ecx
 8048a53:	4a                   	dec    edx
 8048a54:	4b                   	dec    ebx
 8048a55:	4c                   	dec    esp
 8048a56:	4d                   	dec    ebp
 8048a57:	4e                   	dec    esi
 8048a58:	4f                   	dec    edi
 8048a59:	50                   	push   eax
 8048a5a:	51                   	push   ecx
 8048a5b:	52                   	push   edx
 8048a5c:	53                   	push   ebx
 8048a5d:	54                   	push   esp
 8048a5e:	55                   	push   ebp
 8048a5f:	56                   	push   esi
 8048a60:	57                   	push   edi
 8048a61:	58                   	pop    eax
 8048a62:	59                   	pop    ecx
 8048a63:	5a                   	pop    edx
 8048a64:	61                   	popa
 8048a65:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
 8048a68:	65 66 67 68 69 6a    	gs addr16 pushw 0x6a69
 8048a6e:	6b 6c 6d 6e 6f       	imul   ebp,DWORD PTR [ebp+ebp*2+0x6e],0x6f
 8048a73:	70 71                	jo     8048ae6 <__GNU_EH_FRAME_HDR+0x66>
 8048a75:	72 73                	jb     8048aea <__GNU_EH_FRAME_HDR+0x6a>
 8048a77:	74 75                	je     8048aee <__GNU_EH_FRAME_HDR+0x6e>
 8048a79:	76 77                	jbe    8048af2 <__GNU_EH_FRAME_HDR+0x72>
 8048a7b:	78 79                	js     8048af6 <__GNU_EH_FRAME_HDR+0x76>
 8048a7d:	7a 00                	jp     8048a7f <alphanum.2760+0x3f>

Disassembly of section .eh_frame_hdr:

08048a80 <__GNU_EH_FRAME_HDR>:
 8048a80:	01 1b                	add    DWORD PTR [ebx],ebx
 8048a82:	03 3b                	add    edi,DWORD PTR [ebx]
 8048a84:	40                   	inc    eax
 8048a85:	00 00                	add    BYTE PTR [eax],al
 8048a87:	00 07                	add    BYTE PTR [edi],al
 8048a89:	00 00                	add    BYTE PTR [eax],al
 8048a8b:	00 c0                	add    al,al
 8048a8d:	fa                   	cli
 8048a8e:	ff                   	(bad)
 8048a8f:	ff 5c 00 00          	call   FWORD PTR [eax+eax*1+0x0]
 8048a93:	00 8b fc ff ff 80    	add    BYTE PTR [ebx-0x7f000004],cl
 8048a99:	00 00                	add    BYTE PTR [eax],al
 8048a9b:	00 3b                	add    BYTE PTR [ebx],bh
 8048a9d:	fd                   	std
 8048a9e:	ff                   	(bad)
 8048a9f:	ff a0 00 00 00 e6    	jmp    DWORD PTR [eax-0x1a000000]
 8048aa5:	fd                   	std
 8048aa6:	ff                   	(bad)
 8048aa7:	ff c0                	inc    eax
 8048aa9:	00 00                	add    BYTE PTR [eax],al
 8048aab:	00 fd                	add    ch,bh
 8048aad:	fd                   	std
 8048aae:	ff                   	(bad)
 8048aaf:	ff e0                	jmp    eax
 8048ab1:	00 00                	add    BYTE PTR [eax],al
 8048ab3:	00 50 fe             	add    BYTE PTR [eax-0x2],dl
 8048ab6:	ff                   	(bad)
 8048ab7:	ff 0c 01             	dec    DWORD PTR [ecx+eax*1]
 8048aba:	00 00                	add    BYTE PTR [eax],al
 8048abc:	b0 fe                	mov    al,0xfe
 8048abe:	ff                   	(bad)
 8048abf:	ff 58 01             	call   FWORD PTR [eax+0x1]
	...

Disassembly of section .eh_frame:

08048ac4 <__FRAME_END__-0x128>:
 8048ac4:	14 00                	adc    al,0x0
 8048ac6:	00 00                	add    BYTE PTR [eax],al
 8048ac8:	00 00                	add    BYTE PTR [eax],al
 8048aca:	00 00                	add    BYTE PTR [eax],al
 8048acc:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
 8048acf:	00 01                	add    BYTE PTR [ecx],al
 8048ad1:	7c 08                	jl     8048adb <__GNU_EH_FRAME_HDR+0x5b>
 8048ad3:	01 1b                	add    DWORD PTR [ebx],ebx
 8048ad5:	0c 04                	or     al,0x4
 8048ad7:	04 88                	add    al,0x88
 8048ad9:	01 00                	add    DWORD PTR [eax],eax
 8048adb:	00 20                	add    BYTE PTR [eax],ah
 8048add:	00 00                	add    BYTE PTR [eax],al
 8048adf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 8048ae2:	00 00                	add    BYTE PTR [eax],al
 8048ae4:	5c                   	pop    esp
 8048ae5:	fa                   	cli
 8048ae6:	ff                   	(bad)
 8048ae7:	ff c0                	inc    eax
 8048ae9:	00 00                	add    BYTE PTR [eax],al
 8048aeb:	00 00                	add    BYTE PTR [eax],al
 8048aed:	0e                   	push   cs
 8048aee:	08 46 0e             	or     BYTE PTR [esi+0xe],al
 8048af1:	0c 4a                	or     al,0x4a
 8048af3:	0f 0b                	ud2
 8048af5:	74 04                	je     8048afb <__GNU_EH_FRAME_HDR+0x7b>
 8048af7:	78 00                	js     8048af9 <__GNU_EH_FRAME_HDR+0x79>
 8048af9:	3f                   	aas
 8048afa:	1a 3b                	sbb    bh,BYTE PTR [ebx]
 8048afc:	2a 32                	sub    dh,BYTE PTR [edx]
 8048afe:	24 22                	and    al,0x22
 8048b00:	1c 00                	sbb    al,0x0
 8048b02:	00 00                	add    BYTE PTR [eax],al
 8048b04:	40                   	inc    eax
 8048b05:	00 00                	add    BYTE PTR [eax],al
 8048b07:	00 03                	add    BYTE PTR [ebx],al
 8048b09:	fc                   	cld
 8048b0a:	ff                   	(bad)
 8048b0b:	ff b0 00 00 00 00    	push   DWORD PTR [eax+0x0]
 8048b11:	41                   	inc    ecx
 8048b12:	0e                   	push   cs
 8048b13:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048b19:	02 ac c5 0c 04 04 00 	add    ch,BYTE PTR [ebp+eax*8+0x4040c]
 8048b20:	1c 00                	sbb    al,0x0
 8048b22:	00 00                	add    BYTE PTR [eax],al
 8048b24:	60                   	pusha
 8048b25:	00 00                	add    BYTE PTR [eax],al
 8048b27:	00 93 fc ff ff ab    	add    BYTE PTR [ebx-0x54000004],dl
 8048b2d:	00 00                	add    BYTE PTR [eax],al
 8048b2f:	00 00                	add    BYTE PTR [eax],al
 8048b31:	41                   	inc    ecx
 8048b32:	0e                   	push   cs
 8048b33:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048b39:	02 a7 c5 0c 04 04    	add    ah,BYTE PTR [edi+0x4040cc5]
 8048b3f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 8048b42:	00 00                	add    BYTE PTR [eax],al
 8048b44:	80 00 00             	add    BYTE PTR [eax],0x0
 8048b47:	00 1e                	add    BYTE PTR [esi],bl
 8048b49:	fd                   	std
 8048b4a:	ff                   	(bad)
 8048b4b:	ff 17                	call   DWORD PTR [edi]
 8048b4d:	00 00                	add    BYTE PTR [eax],al
 8048b4f:	00 00                	add    BYTE PTR [eax],al
 8048b51:	41                   	inc    ecx
 8048b52:	0e                   	push   cs
 8048b53:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
 8048b59:	53                   	push   ebx
 8048b5a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
 8048b5d:	04 00                	add    al,0x0
 8048b5f:	00 28                	add    BYTE PTR [eax],ch
 8048b61:	00 00                	add    BYTE PTR [eax],al
 8048b63:	00 a0 00 00 00 15    	add    BYTE PTR [eax+0x15000000],ah
 8048b69:	fd                   	std
 8048b6a:	ff                   	(bad)
 8048b6b:	ff 51 00             	call   DWORD PTR [ecx+0x0]
 8048b6e:	00 00                	add    BYTE PTR [eax],al
 8048b70:	00 44 0c 01          	add    BYTE PTR [esp+ecx*1+0x1],al
 8048b74:	00 47 10             	add    BYTE PTR [edi+0x10],al
 8048b77:	05 02 75 00 43       	add    eax,0x43007502
 8048b7c:	0f 03 75 7c          	lsl    esi,WORD PTR [ebp+0x7c]
 8048b80:	06                   	push   es
 8048b81:	7e 0c                	jle    8048b8f <__GNU_EH_FRAME_HDR+0x10f>
 8048b83:	01 00                	add    DWORD PTR [eax],eax
 8048b85:	41                   	inc    ecx
 8048b86:	c5 43 0c             	lds    eax,FWORD PTR [ebx+0xc]
 8048b89:	04 04                	add    al,0x4
 8048b8b:	00 48 00             	add    BYTE PTR [eax+0x0],cl
 8048b8e:	00 00                	add    BYTE PTR [eax],al
 8048b90:	cc                   	int3
 8048b91:	00 00                	add    BYTE PTR [eax],al
 8048b93:	00 3c fd ff ff 5d 00 	add    BYTE PTR [edi*8+0x5dffff],bh
 8048b9a:	00 00                	add    BYTE PTR [eax],al
 8048b9c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 8048b9f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 8048ba5:	87 03                	xchg   DWORD PTR [ebx],eax
 8048ba7:	41                   	inc    ecx
 8048ba8:	0e                   	push   cs
 8048ba9:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 8048baf:	83 05 4e 0e 20 69 0e 	add    DWORD PTR ds:0x69200e4e,0xe
 8048bb6:	24 44                	and    al,0x44
 8048bb8:	0e                   	push   cs
 8048bb9:	28 44 0e 2c          	sub    BYTE PTR [esi+ecx*1+0x2c],al
 8048bbd:	41                   	inc    ecx
 8048bbe:	0e                   	push   cs
 8048bbf:	30 4d 0e             	xor    BYTE PTR [ebp+0xe],cl
 8048bc2:	20 47 0e             	and    BYTE PTR [edi+0xe],al
 8048bc5:	14 41                	adc    al,0x41
 8048bc7:	c3                   	ret
 8048bc8:	0e                   	push   cs
 8048bc9:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 8048bcc:	0e                   	push   cs
 8048bcd:	0c 41                	or     al,0x41
 8048bcf:	c7                   	(bad)
 8048bd0:	0e                   	push   cs
 8048bd1:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 8048bd4:	0e                   	push   cs
 8048bd5:	04 00                	add    al,0x0
 8048bd7:	00 10                	add    BYTE PTR [eax],dl
 8048bd9:	00 00                	add    BYTE PTR [eax],al
 8048bdb:	00 18                	add    BYTE PTR [eax],bl
 8048bdd:	01 00                	add    DWORD PTR [eax],eax
 8048bdf:	00 50 fd             	add    BYTE PTR [eax-0x3],dl
 8048be2:	ff                   	(bad)
 8048be3:	ff 02                	inc    DWORD PTR [edx]
 8048be5:	00 00                	add    BYTE PTR [eax],al
 8048be7:	00 00                	add    BYTE PTR [eax],al
 8048be9:	00 00                	add    BYTE PTR [eax],al
	...

08048bec <__FRAME_END__>:
 8048bec:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .init_array:

08049bf0 <__frame_dummy_init_array_entry>:
 8049bf0:	e0 86                	loopne 8049b78 <__FRAME_END__+0xf8c>
 8049bf2:	04 08                	add    al,0x8

Disassembly of section .fini_array:

08049bf4 <__do_global_dtors_aux_fini_array_entry>:
 8049bf4:	c0                   	.byte 0xc0
 8049bf5:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al

Disassembly of section .jcr:

08049bf8 <__JCR_END__>:
 8049bf8:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .dynamic:

08049bfc <_DYNAMIC>:
 8049bfc:	01 00                	add    DWORD PTR [eax],eax
 8049bfe:	00 00                	add    BYTE PTR [eax],al
 8049c00:	01 00                	add    DWORD PTR [eax],eax
 8049c02:	00 00                	add    BYTE PTR [eax],al
 8049c04:	01 00                	add    DWORD PTR [eax],eax
 8049c06:	00 00                	add    BYTE PTR [eax],al
 8049c08:	89 00                	mov    DWORD PTR [eax],eax
 8049c0a:	00 00                	add    BYTE PTR [eax],al
 8049c0c:	0f 00 00             	sldt   WORD PTR [eax]
 8049c0f:	00 08                	add    BYTE PTR [eax],cl
 8049c11:	01 00                	add    DWORD PTR [eax],eax
 8049c13:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
 8049c16:	00 00                	add    BYTE PTR [eax],al
 8049c18:	18 85 04 08 0d 00    	sbb    BYTE PTR [ebp+0xd0804],al
 8049c1e:	00 00                	add    BYTE PTR [eax],al
 8049c20:	34 89                	xor    al,0x89
 8049c22:	04 08                	add    al,0x8
 8049c24:	19 00                	sbb    DWORD PTR [eax],eax
 8049c26:	00 00                	add    BYTE PTR [eax],al
 8049c28:	f0 9b                	lock fwait
 8049c2a:	04 08                	add    al,0x8
 8049c2c:	1b 00                	sbb    eax,DWORD PTR [eax]
 8049c2e:	00 00                	add    BYTE PTR [eax],al
 8049c30:	04 00                	add    al,0x0
 8049c32:	00 00                	add    BYTE PTR [eax],al
 8049c34:	1a 00                	sbb    al,BYTE PTR [eax]
 8049c36:	00 00                	add    BYTE PTR [eax],al
 8049c38:	f4                   	hlt
 8049c39:	9b                   	fwait
 8049c3a:	04 08                	add    al,0x8
 8049c3c:	1c 00                	sbb    al,0x0
 8049c3e:	00 00                	add    BYTE PTR [eax],al
 8049c40:	04 00                	add    al,0x0
 8049c42:	00 00                	add    BYTE PTR [eax],al
 8049c44:	f5                   	cmc
 8049c45:	fe                   	(bad)
 8049c46:	ff 6f 8c             	jmp    FWORD PTR [edi-0x74]
 8049c49:	81 04 08 05 00 00 00 	add    DWORD PTR [eax+ecx*1],0x5
 8049c50:	28 83 04 08 06 00    	sub    BYTE PTR [ebx+0x60804],al
 8049c56:	00 00                	add    BYTE PTR [eax],al
 8049c58:	c8 81 04 08          	enter  0x481,0x8
 8049c5c:	0a 00                	or     al,BYTE PTR [eax]
 8049c5e:	00 00                	add    BYTE PTR [eax],al
 8049c60:	33 01                	xor    eax,DWORD PTR [ecx]
 8049c62:	00 00                	add    BYTE PTR [eax],al
 8049c64:	0b 00                	or     eax,DWORD PTR [eax]
 8049c66:	00 00                	add    BYTE PTR [eax],al
 8049c68:	10 00                	adc    BYTE PTR [eax],al
 8049c6a:	00 00                	add    BYTE PTR [eax],al
 8049c6c:	15 00 00 00 00       	adc    eax,0x0
 8049c71:	00 00                	add    BYTE PTR [eax],al
 8049c73:	00 03                	add    BYTE PTR [ebx],al
 8049c75:	00 00                	add    BYTE PTR [eax],al
 8049c77:	00 f8                	add    al,bh
 8049c79:	9c                   	pushf
 8049c7a:	04 08                	add    al,0x8
 8049c7c:	02 00                	add    al,BYTE PTR [eax]
 8049c7e:	00 00                	add    BYTE PTR [eax],al
 8049c80:	58                   	pop    eax
 8049c81:	00 00                	add    BYTE PTR [eax],al
 8049c83:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
 8049c86:	00 00                	add    BYTE PTR [eax],al
 8049c88:	11 00                	adc    DWORD PTR [eax],eax
 8049c8a:	00 00                	add    BYTE PTR [eax],al
 8049c8c:	17                   	pop    ss
 8049c8d:	00 00                	add    BYTE PTR [eax],al
 8049c8f:	00 c0                	add    al,al
 8049c91:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
 8049c94:	11 00                	adc    DWORD PTR [eax],eax
 8049c96:	00 00                	add    BYTE PTR [eax],al
 8049c98:	b8 84 04 08 12       	mov    eax,0x12080484
 8049c9d:	00 00                	add    BYTE PTR [eax],al
 8049c9f:	00 08                	add    BYTE PTR [eax],cl
 8049ca1:	00 00                	add    BYTE PTR [eax],al
 8049ca3:	00 13                	add    BYTE PTR [ebx],dl
 8049ca5:	00 00                	add    BYTE PTR [eax],al
 8049ca7:	00 08                	add    BYTE PTR [eax],cl
 8049ca9:	00 00                	add    BYTE PTR [eax],al
 8049cab:	00 fe                	add    dh,bh
 8049cad:	ff                   	(bad)
 8049cae:	ff 6f 88             	jmp    FWORD PTR [edi-0x78]
 8049cb1:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
 8049cb4:	ff                   	(bad)
 8049cb5:	ff                   	(bad)
 8049cb6:	ff 6f 01             	jmp    FWORD PTR [edi+0x1]
 8049cb9:	00 00                	add    BYTE PTR [eax],al
 8049cbb:	00 f0                	add    al,dh
 8049cbd:	ff                   	(bad)
 8049cbe:	ff 6f 5c             	jmp    FWORD PTR [edi+0x5c]
 8049cc1:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
	...

Disassembly of section .got:

08049cf4 <.got>:
 8049cf4:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .got.plt:

08049cf8 <_GLOBAL_OFFSET_TABLE_>:
 8049cf8:	fc                   	cld
 8049cf9:	9b                   	fwait
 8049cfa:	04 08                	add    al,0x8
	...
 8049d04:	56                   	push   esi
 8049d05:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
 8049d08:	66 85 04 08          	test   WORD PTR [eax+ecx*1],ax
 8049d0c:	76 85                	jbe    8049c93 <_DYNAMIC+0x97>
 8049d0e:	04 08                	add    al,0x8
 8049d10:	86 85 04 08 96 85    	xchg   BYTE PTR [ebp-0x7a69f7fc],al
 8049d16:	04 08                	add    al,0x8
 8049d18:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
 8049d19:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
 8049d1c:	b6 85                	mov    dh,0x85
 8049d1e:	04 08                	add    al,0x8
 8049d20:	c6 85 04 08 d6 85 04 	mov    BYTE PTR [ebp-0x7a29f7fc],0x4
 8049d27:	08 e6                	or     dh,ah
 8049d29:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
 8049d2c:	f6                   	.byte 0xf6
 8049d2d:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax

Disassembly of section .data:

08049d30 <__data_start>:
 8049d30:	00 00                	add    BYTE PTR [eax],al
	...

08049d34 <__dso_handle>:
 8049d34:	00 00                	add    BYTE PTR [eax],al
	...

08049d38 <hint>:
 8049d38:	80                   	.byte 0x80
 8049d39:	89 04 08             	mov    DWORD PTR [eax+ecx*1],eax

Disassembly of section .bss:

08049d3c <__bss_start>:
 8049d3c:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 55 62             	sub    BYTE PTR [ebp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x80484a0>
   a:	74 75                	je     81 <_init-0x8048497>
   c:	20 35 2e 34 2e 30    	and    BYTE PTR ds:0x302e342e,dh
  12:	2d 36 75 62 75       	sub    eax,0x75627536
  17:	6e                   	outs   dx,BYTE PTR ds:[esi]
  18:	74 75                	je     8f <_init-0x8048489>
  1a:	31 7e 31             	xor    DWORD PTR [esi+0x31],edi
  1d:	36 2e 30 34 2e       	ss xor BYTE PTR cs:[esi+ebp*1],dh
  22:	32 29                	xor    ch,BYTE PTR [ecx]
  24:	20 35 2e 34 2e 30    	and    BYTE PTR ds:0x302e342e,dh
  2a:	20 32                	and    BYTE PTR [edx],dh
  2c:	30 31                	xor    BYTE PTR [ecx],dh
  2e:	36 30 36             	xor    BYTE PTR ss:[esi],dh
  31:	30 39                	xor    BYTE PTR [ecx],bh
	...
