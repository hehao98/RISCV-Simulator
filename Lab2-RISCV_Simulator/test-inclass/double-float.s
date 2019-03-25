
double-float.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	f2018193          	addi	gp,gp,-224 # 12fd0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 127e8 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 12838 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	4cc010ef          	jal	ra,11594 <memset>
   100cc:	00001517          	auipc	a0,0x1
   100d0:	3a850513          	addi	a0,a0,936 # 11474 <__libc_fini_array>
   100d4:	00001097          	auipc	ra,0x1
   100d8:	34c080e7          	jalr	844(ra) # 11420 <atexit>
   100dc:	00001097          	auipc	ra,0x1
   100e0:	410080e7          	jalr	1040(ra) # 114ec <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00001317          	auipc	t1,0x1
   100fc:	34030067          	jr	832(t1) # 11438 <exit>

0000000000010100 <_fini>:
   10100:	00008067          	ret

0000000000010104 <deregister_tm_clones>:
   10104:	00012537          	lui	a0,0x12
   10108:	000127b7          	lui	a5,0x12
   1010c:	7d050713          	addi	a4,a0,2000 # 127d0 <__TMC_END__>
   10110:	7d078793          	addi	a5,a5,2000 # 127d0 <__TMC_END__>
   10114:	00e78c63          	beq	a5,a4,1012c <deregister_tm_clones+0x28>
   10118:	00000337          	lui	t1,0x0
   1011c:	00030313          	mv	t1,t1
   10120:	00030663          	beqz	t1,1012c <deregister_tm_clones+0x28>
   10124:	7d050513          	addi	a0,a0,2000
   10128:	00030067          	jr	t1
   1012c:	00008067          	ret

0000000000010130 <register_tm_clones>:
   10130:	000127b7          	lui	a5,0x12
   10134:	00012537          	lui	a0,0x12
   10138:	7d078593          	addi	a1,a5,2000 # 127d0 <__TMC_END__>
   1013c:	7d050793          	addi	a5,a0,2000 # 127d0 <__TMC_END__>
   10140:	40f585b3          	sub	a1,a1,a5
   10144:	4035d593          	srai	a1,a1,0x3
   10148:	03f5d793          	srli	a5,a1,0x3f
   1014c:	00b785b3          	add	a1,a5,a1
   10150:	4015d593          	srai	a1,a1,0x1
   10154:	00058c63          	beqz	a1,1016c <register_tm_clones+0x3c>
   10158:	00000337          	lui	t1,0x0
   1015c:	00030313          	mv	t1,t1
   10160:	00030663          	beqz	t1,1016c <register_tm_clones+0x3c>
   10164:	7d050513          	addi	a0,a0,2000
   10168:	00030067          	jr	t1
   1016c:	00008067          	ret

0000000000010170 <__do_global_dtors_aux>:
   10170:	8201c703          	lbu	a4,-2016(gp) # 127f0 <completed.5182>
   10174:	04071663          	bnez	a4,101c0 <__do_global_dtors_aux+0x50>
   10178:	ff010113          	addi	sp,sp,-16
   1017c:	00813023          	sd	s0,0(sp)
   10180:	00113423          	sd	ra,8(sp)
   10184:	00078413          	mv	s0,a5
   10188:	f7dff0ef          	jal	ra,10104 <deregister_tm_clones>
   1018c:	000007b7          	lui	a5,0x0
   10190:	00078793          	mv	a5,a5
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x38>
   10198:	00012537          	lui	a0,0x12
   1019c:	fe050513          	addi	a0,a0,-32 # 11fe0 <__EH_FRAME_BEGIN__>
   101a0:	ffff0097          	auipc	ra,0xffff0
   101a4:	e60080e7          	jalr	-416(ra) # 0 <_start-0x100b0>
   101a8:	00100793          	li	a5,1
   101ac:	82f18023          	sb	a5,-2016(gp) # 127f0 <completed.5182>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	addi	sp,sp,16
   101bc:	00008067          	ret
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	000007b7          	lui	a5,0x0
   101c8:	00078793          	mv	a5,a5
   101cc:	02078663          	beqz	a5,101f8 <frame_dummy+0x34>
   101d0:	000125b7          	lui	a1,0x12
   101d4:	00012537          	lui	a0,0x12
   101d8:	ff010113          	addi	sp,sp,-16
   101dc:	7f858593          	addi	a1,a1,2040 # 127f8 <object.5187>
   101e0:	fe050513          	addi	a0,a0,-32 # 11fe0 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	fd010113          	addi	sp,sp,-48
   10200:	02113423          	sd	ra,40(sp)
   10204:	02813023          	sd	s0,32(sp)
   10208:	00913c23          	sd	s1,24(sp)
   1020c:	03010413          	addi	s0,sp,48
   10210:	fc042e23          	sw	zero,-36(s0)
   10214:	00400793          	li	a5,4
   10218:	fcf42e23          	sw	a5,-36(s0)
   1021c:	0740006f          	j	10290 <main+0x94>
   10220:	000127b7          	lui	a5,0x12
   10224:	fdc42703          	lw	a4,-36(s0)
   10228:	00371713          	slli	a4,a4,0x3
   1022c:	01078793          	addi	a5,a5,16 # 12010 <__fini_array_end>
   10230:	00f707b3          	add	a5,a4,a5
   10234:	0007b483          	ld	s1,0(a5)
   10238:	fdc42503          	lw	a0,-36(s0)
   1023c:	6d1000ef          	jal	ra,1110c <__floatsidf>
   10240:	00050713          	mv	a4,a0
   10244:	000127b7          	lui	a5,0x12
   10248:	e987b583          	ld	a1,-360(a5) # 11e98 <__errno+0xc>
   1024c:	00070513          	mv	a0,a4
   10250:	6b4000ef          	jal	ra,10904 <__muldf3>
   10254:	00050793          	mv	a5,a0
   10258:	00078593          	mv	a1,a5
   1025c:	00048513          	mv	a0,s1
   10260:	224000ef          	jal	ra,10484 <__adddf3>
   10264:	00050793          	mv	a5,a0
   10268:	00078693          	mv	a3,a5
   1026c:	000127b7          	lui	a5,0x12
   10270:	fdc42703          	lw	a4,-36(s0)
   10274:	00371713          	slli	a4,a4,0x3
   10278:	01078793          	addi	a5,a5,16 # 12010 <__fini_array_end>
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	00d7b023          	sd	a3,0(a5)
   10284:	fdc42783          	lw	a5,-36(s0)
   10288:	fff7879b          	addiw	a5,a5,-1
   1028c:	fcf42e23          	sw	a5,-36(s0)
   10290:	fdc42783          	lw	a5,-36(s0)
   10294:	0007879b          	sext.w	a5,a5
   10298:	f807d4e3          	bgez	a5,10220 <main+0x24>
   1029c:	00500793          	li	a5,5
   102a0:	fcf42e23          	sw	a5,-36(s0)
   102a4:	0740006f          	j	10318 <main+0x11c>
   102a8:	000127b7          	lui	a5,0x12
   102ac:	fdc42703          	lw	a4,-36(s0)
   102b0:	00371713          	slli	a4,a4,0x3
   102b4:	01078793          	addi	a5,a5,16 # 12010 <__fini_array_end>
   102b8:	00f707b3          	add	a5,a4,a5
   102bc:	0007b483          	ld	s1,0(a5)
   102c0:	fdc42503          	lw	a0,-36(s0)
   102c4:	649000ef          	jal	ra,1110c <__floatsidf>
   102c8:	00050713          	mv	a4,a0
   102cc:	000127b7          	lui	a5,0x12
   102d0:	e987b583          	ld	a1,-360(a5) # 11e98 <__errno+0xc>
   102d4:	00070513          	mv	a0,a4
   102d8:	62c000ef          	jal	ra,10904 <__muldf3>
   102dc:	00050793          	mv	a5,a0
   102e0:	00078593          	mv	a1,a5
   102e4:	00048513          	mv	a0,s1
   102e8:	1a9000ef          	jal	ra,10c90 <__subdf3>
   102ec:	00050793          	mv	a5,a0
   102f0:	00078693          	mv	a3,a5
   102f4:	000127b7          	lui	a5,0x12
   102f8:	fdc42703          	lw	a4,-36(s0)
   102fc:	00371713          	slli	a4,a4,0x3
   10300:	01078793          	addi	a5,a5,16 # 12010 <__fini_array_end>
   10304:	00f707b3          	add	a5,a4,a5
   10308:	00d7b023          	sd	a3,0(a5)
   1030c:	fdc42783          	lw	a5,-36(s0)
   10310:	0017879b          	addiw	a5,a5,1
   10314:	fcf42e23          	sw	a5,-36(s0)
   10318:	fdc42783          	lw	a5,-36(s0)
   1031c:	0007871b          	sext.w	a4,a5
   10320:	00900793          	li	a5,9
   10324:	f8e7d2e3          	ble	a4,a5,102a8 <main+0xac>
   10328:	00400793          	li	a5,4
   1032c:	fcf42e23          	sw	a5,-36(s0)
   10330:	0880006f          	j	103b8 <main+0x1bc>
   10334:	000127b7          	lui	a5,0x12
   10338:	fdc42703          	lw	a4,-36(s0)
   1033c:	00271713          	slli	a4,a4,0x2
   10340:	06078793          	addi	a5,a5,96 # 12060 <result_float>
   10344:	00f707b3          	add	a5,a4,a5
   10348:	0007a783          	lw	a5,0(a5)
   1034c:	00078513          	mv	a0,a5
   10350:	64d000ef          	jal	ra,1119c <__extendsfdf2>
   10354:	00050493          	mv	s1,a0
   10358:	fdc42503          	lw	a0,-36(s0)
   1035c:	5b1000ef          	jal	ra,1110c <__floatsidf>
   10360:	00050713          	mv	a4,a0
   10364:	000127b7          	lui	a5,0x12
   10368:	e987b583          	ld	a1,-360(a5) # 11e98 <__errno+0xc>
   1036c:	00070513          	mv	a0,a4
   10370:	594000ef          	jal	ra,10904 <__muldf3>
   10374:	00050793          	mv	a5,a0
   10378:	00078593          	mv	a1,a5
   1037c:	00048513          	mv	a0,s1
   10380:	104000ef          	jal	ra,10484 <__adddf3>
   10384:	00050793          	mv	a5,a0
   10388:	00078513          	mv	a0,a5
   1038c:	6d5000ef          	jal	ra,11260 <__truncdfsf2>
   10390:	00050693          	mv	a3,a0
   10394:	000127b7          	lui	a5,0x12
   10398:	fdc42703          	lw	a4,-36(s0)
   1039c:	00271713          	slli	a4,a4,0x2
   103a0:	06078793          	addi	a5,a5,96 # 12060 <result_float>
   103a4:	00f707b3          	add	a5,a4,a5
   103a8:	00d7a023          	sw	a3,0(a5)
   103ac:	fdc42783          	lw	a5,-36(s0)
   103b0:	fff7879b          	addiw	a5,a5,-1
   103b4:	fcf42e23          	sw	a5,-36(s0)
   103b8:	fdc42783          	lw	a5,-36(s0)
   103bc:	0007879b          	sext.w	a5,a5
   103c0:	f607dae3          	bgez	a5,10334 <main+0x138>
   103c4:	00500793          	li	a5,5
   103c8:	fcf42e23          	sw	a5,-36(s0)
   103cc:	0880006f          	j	10454 <main+0x258>
   103d0:	000127b7          	lui	a5,0x12
   103d4:	fdc42703          	lw	a4,-36(s0)
   103d8:	00271713          	slli	a4,a4,0x2
   103dc:	06078793          	addi	a5,a5,96 # 12060 <result_float>
   103e0:	00f707b3          	add	a5,a4,a5
   103e4:	0007a783          	lw	a5,0(a5)
   103e8:	00078513          	mv	a0,a5
   103ec:	5b1000ef          	jal	ra,1119c <__extendsfdf2>
   103f0:	00050493          	mv	s1,a0
   103f4:	fdc42503          	lw	a0,-36(s0)
   103f8:	515000ef          	jal	ra,1110c <__floatsidf>
   103fc:	00050713          	mv	a4,a0
   10400:	000127b7          	lui	a5,0x12
   10404:	e987b583          	ld	a1,-360(a5) # 11e98 <__errno+0xc>
   10408:	00070513          	mv	a0,a4
   1040c:	4f8000ef          	jal	ra,10904 <__muldf3>
   10410:	00050793          	mv	a5,a0
   10414:	00078593          	mv	a1,a5
   10418:	00048513          	mv	a0,s1
   1041c:	075000ef          	jal	ra,10c90 <__subdf3>
   10420:	00050793          	mv	a5,a0
   10424:	00078513          	mv	a0,a5
   10428:	639000ef          	jal	ra,11260 <__truncdfsf2>
   1042c:	00050693          	mv	a3,a0
   10430:	000127b7          	lui	a5,0x12
   10434:	fdc42703          	lw	a4,-36(s0)
   10438:	00271713          	slli	a4,a4,0x2
   1043c:	06078793          	addi	a5,a5,96 # 12060 <result_float>
   10440:	00f707b3          	add	a5,a4,a5
   10444:	00d7a023          	sw	a3,0(a5)
   10448:	fdc42783          	lw	a5,-36(s0)
   1044c:	0017879b          	addiw	a5,a5,1
   10450:	fcf42e23          	sw	a5,-36(s0)
   10454:	fdc42783          	lw	a5,-36(s0)
   10458:	0007871b          	sext.w	a4,a5
   1045c:	00900793          	li	a5,9
   10460:	f6e7d8e3          	ble	a4,a5,103d0 <main+0x1d4>
   10464:	00000793          	li	a5,0
   10468:	00078513          	mv	a0,a5
   1046c:	02813083          	ld	ra,40(sp)
   10470:	02013403          	ld	s0,32(sp)
   10474:	01813483          	ld	s1,24(sp)
   10478:	03010113          	addi	sp,sp,48
   1047c:	00008067          	ret
   10480:	0000                	unimp
	...

0000000000010484 <__adddf3>:
   10484:	fe010113          	addi	sp,sp,-32
   10488:	fff00813          	li	a6,-1
   1048c:	00c85713          	srli	a4,a6,0xc
   10490:	0345d613          	srli	a2,a1,0x34
   10494:	00813823          	sd	s0,16(sp)
   10498:	03455413          	srli	s0,a0,0x34
   1049c:	00a777b3          	and	a5,a4,a0
   104a0:	01213023          	sd	s2,0(sp)
   104a4:	00b77733          	and	a4,a4,a1
   104a8:	7ff47413          	andi	s0,s0,2047
   104ac:	7ff67613          	andi	a2,a2,2047
   104b0:	00113c23          	sd	ra,24(sp)
   104b4:	00913423          	sd	s1,8(sp)
   104b8:	03f55913          	srli	s2,a0,0x3f
   104bc:	03f5d593          	srli	a1,a1,0x3f
   104c0:	00379793          	slli	a5,a5,0x3
   104c4:	00371713          	slli	a4,a4,0x3
   104c8:	40c406bb          	subw	a3,s0,a2
   104cc:	18b91a63          	bne	s2,a1,10660 <__adddf3+0x1dc>
   104d0:	0006859b          	sext.w	a1,a3
   104d4:	0ab05863          	blez	a1,10584 <__adddf3+0x100>
   104d8:	06061663          	bnez	a2,10544 <__adddf3+0xc0>
   104dc:	04070663          	beqz	a4,10528 <__adddf3+0xa4>
   104e0:	fff6859b          	addiw	a1,a3,-1
   104e4:	02059e63          	bnez	a1,10520 <__adddf3+0x9c>
   104e8:	00e787b3          	add	a5,a5,a4
   104ec:	00879713          	slli	a4,a5,0x8
   104f0:	02075c63          	bgez	a4,10528 <__adddf3+0xa4>
   104f4:	00140413          	addi	s0,s0,1
   104f8:	7ff00713          	li	a4,2047
   104fc:	34e40c63          	beq	s0,a4,10854 <__adddf3+0x3d0>
   10500:	1ff00713          	li	a4,511
   10504:	03671713          	slli	a4,a4,0x36
   10508:	0017f693          	andi	a3,a5,1
   1050c:	fff70713          	addi	a4,a4,-1
   10510:	0017d793          	srli	a5,a5,0x1
   10514:	00e7f7b3          	and	a5,a5,a4
   10518:	00d7e7b3          	or	a5,a5,a3
   1051c:	00c0006f          	j	10528 <__adddf3+0xa4>
   10520:	7ff00693          	li	a3,2047
   10524:	02d41a63          	bne	s0,a3,10558 <__adddf3+0xd4>
   10528:	0077f713          	andi	a4,a5,7
   1052c:	32070663          	beqz	a4,10858 <__adddf3+0x3d4>
   10530:	00f7f713          	andi	a4,a5,15
   10534:	00400693          	li	a3,4
   10538:	32d70063          	beq	a4,a3,10858 <__adddf3+0x3d4>
   1053c:	00478793          	addi	a5,a5,4
   10540:	3180006f          	j	10858 <__adddf3+0x3d4>
   10544:	7ff00693          	li	a3,2047
   10548:	fed400e3          	beq	s0,a3,10528 <__adddf3+0xa4>
   1054c:	00100693          	li	a3,1
   10550:	03769693          	slli	a3,a3,0x37
   10554:	00d76733          	or	a4,a4,a3
   10558:	03800693          	li	a3,56
   1055c:	00b6d663          	ble	a1,a3,10568 <__adddf3+0xe4>
   10560:	00100713          	li	a4,1
   10564:	f85ff06f          	j	104e8 <__adddf3+0x64>
   10568:	04000693          	li	a3,64
   1056c:	00b75633          	srl	a2,a4,a1
   10570:	40b685bb          	subw	a1,a3,a1
   10574:	00b71733          	sll	a4,a4,a1
   10578:	00e03733          	snez	a4,a4
   1057c:	00e66733          	or	a4,a2,a4
   10580:	f69ff06f          	j	104e8 <__adddf3+0x64>
   10584:	06058863          	beqz	a1,105f4 <__adddf3+0x170>
   10588:	02041463          	bnez	s0,105b0 <__adddf3+0x12c>
   1058c:	2a078a63          	beqz	a5,10840 <__adddf3+0x3bc>
   10590:	01059863          	bne	a1,a6,105a0 <__adddf3+0x11c>
   10594:	00e787b3          	add	a5,a5,a4
   10598:	00060413          	mv	s0,a2
   1059c:	f51ff06f          	j	104ec <__adddf3+0x68>
   105a0:	7ff00593          	li	a1,2047
   105a4:	34b61263          	bne	a2,a1,108e8 <__adddf3+0x464>
   105a8:	00070793          	mv	a5,a4
   105ac:	2100006f          	j	107bc <__adddf3+0x338>
   105b0:	7ff00593          	li	a1,2047
   105b4:	feb60ae3          	beq	a2,a1,105a8 <__adddf3+0x124>
   105b8:	00100593          	li	a1,1
   105bc:	03759593          	slli	a1,a1,0x37
   105c0:	40d006bb          	negw	a3,a3
   105c4:	00b7e7b3          	or	a5,a5,a1
   105c8:	03800593          	li	a1,56
   105cc:	00d5d663          	ble	a3,a1,105d8 <__adddf3+0x154>
   105d0:	00100793          	li	a5,1
   105d4:	fc1ff06f          	j	10594 <__adddf3+0x110>
   105d8:	04000593          	li	a1,64
   105dc:	00d7d533          	srl	a0,a5,a3
   105e0:	40d586bb          	subw	a3,a1,a3
   105e4:	00d797b3          	sll	a5,a5,a3
   105e8:	00f037b3          	snez	a5,a5
   105ec:	00f567b3          	or	a5,a0,a5
   105f0:	fa5ff06f          	j	10594 <__adddf3+0x110>
   105f4:	00140613          	addi	a2,s0,1
   105f8:	7ff67593          	andi	a1,a2,2047
   105fc:	00100693          	li	a3,1
   10600:	04b6c463          	blt	a3,a1,10648 <__adddf3+0x1c4>
   10604:	02041863          	bnez	s0,10634 <__adddf3+0x1b0>
   10608:	24078063          	beqz	a5,10848 <__adddf3+0x3c4>
   1060c:	f0070ee3          	beqz	a4,10528 <__adddf3+0xa4>
   10610:	00e787b3          	add	a5,a5,a4
   10614:	03769693          	slli	a3,a3,0x37
   10618:	00d7f6b3          	and	a3,a5,a3
   1061c:	f00686e3          	beqz	a3,10528 <__adddf3+0xa4>
   10620:	03781813          	slli	a6,a6,0x37
   10624:	fff80813          	addi	a6,a6,-1
   10628:	0107f7b3          	and	a5,a5,a6
   1062c:	00100413          	li	s0,1
   10630:	ef9ff06f          	j	10528 <__adddf3+0xa4>
   10634:	f6078ae3          	beqz	a5,105a8 <__adddf3+0x124>
   10638:	18070263          	beqz	a4,107bc <__adddf3+0x338>
   1063c:	03669793          	slli	a5,a3,0x36
   10640:	7ff00413          	li	s0,2047
   10644:	13c0006f          	j	10780 <__adddf3+0x2fc>
   10648:	7ff00693          	li	a3,2047
   1064c:	20d60263          	beq	a2,a3,10850 <__adddf3+0x3cc>
   10650:	00e787b3          	add	a5,a5,a4
   10654:	0017d793          	srli	a5,a5,0x1
   10658:	00060413          	mv	s0,a2
   1065c:	ecdff06f          	j	10528 <__adddf3+0xa4>
   10660:	0006851b          	sext.w	a0,a3
   10664:	08a05263          	blez	a0,106e8 <__adddf3+0x264>
   10668:	04061663          	bnez	a2,106b4 <__adddf3+0x230>
   1066c:	ea070ee3          	beqz	a4,10528 <__adddf3+0xa4>
   10670:	fff6851b          	addiw	a0,a3,-1
   10674:	02051463          	bnez	a0,1069c <__adddf3+0x218>
   10678:	40e787b3          	sub	a5,a5,a4
   1067c:	00090593          	mv	a1,s2
   10680:	00879713          	slli	a4,a5,0x8
   10684:	00058913          	mv	s2,a1
   10688:	ea0750e3          	bgez	a4,10528 <__adddf3+0xa4>
   1068c:	fff00493          	li	s1,-1
   10690:	0094d493          	srli	s1,s1,0x9
   10694:	0097f4b3          	and	s1,a5,s1
   10698:	1440006f          	j	107dc <__adddf3+0x358>
   1069c:	7ff00693          	li	a3,2047
   106a0:	e8d404e3          	beq	s0,a3,10528 <__adddf3+0xa4>
   106a4:	03800693          	li	a3,56
   106a8:	02a6d263          	ble	a0,a3,106cc <__adddf3+0x248>
   106ac:	00100713          	li	a4,1
   106b0:	fc9ff06f          	j	10678 <__adddf3+0x1f4>
   106b4:	7ff00693          	li	a3,2047
   106b8:	e6d408e3          	beq	s0,a3,10528 <__adddf3+0xa4>
   106bc:	00100693          	li	a3,1
   106c0:	03769693          	slli	a3,a3,0x37
   106c4:	00d76733          	or	a4,a4,a3
   106c8:	fddff06f          	j	106a4 <__adddf3+0x220>
   106cc:	04000693          	li	a3,64
   106d0:	00a75633          	srl	a2,a4,a0
   106d4:	40a6853b          	subw	a0,a3,a0
   106d8:	00a71733          	sll	a4,a4,a0
   106dc:	00e03733          	snez	a4,a4
   106e0:	00e66733          	or	a4,a2,a4
   106e4:	f95ff06f          	j	10678 <__adddf3+0x1f4>
   106e8:	06050a63          	beqz	a0,1075c <__adddf3+0x2d8>
   106ec:	02041663          	bnez	s0,10718 <__adddf3+0x294>
   106f0:	1e078063          	beqz	a5,108d0 <__adddf3+0x44c>
   106f4:	01051863          	bne	a0,a6,10704 <__adddf3+0x280>
   106f8:	40f707b3          	sub	a5,a4,a5
   106fc:	00060413          	mv	s0,a2
   10700:	f81ff06f          	j	10680 <__adddf3+0x1fc>
   10704:	7ff00513          	li	a0,2047
   10708:	1ea61663          	bne	a2,a0,108f4 <__adddf3+0x470>
   1070c:	00070793          	mv	a5,a4
   10710:	7ff00413          	li	s0,2047
   10714:	1c40006f          	j	108d8 <__adddf3+0x454>
   10718:	7ff00513          	li	a0,2047
   1071c:	fea608e3          	beq	a2,a0,1070c <__adddf3+0x288>
   10720:	00100513          	li	a0,1
   10724:	03751513          	slli	a0,a0,0x37
   10728:	40d006bb          	negw	a3,a3
   1072c:	00a7e7b3          	or	a5,a5,a0
   10730:	03800513          	li	a0,56
   10734:	00d55663          	ble	a3,a0,10740 <__adddf3+0x2bc>
   10738:	00100793          	li	a5,1
   1073c:	fbdff06f          	j	106f8 <__adddf3+0x274>
   10740:	04000513          	li	a0,64
   10744:	00d7d833          	srl	a6,a5,a3
   10748:	40d506bb          	subw	a3,a0,a3
   1074c:	00d797b3          	sll	a5,a5,a3
   10750:	00f037b3          	snez	a5,a5
   10754:	00f867b3          	or	a5,a6,a5
   10758:	fa1ff06f          	j	106f8 <__adddf3+0x274>
   1075c:	00140613          	addi	a2,s0,1
   10760:	7ff67613          	andi	a2,a2,2047
   10764:	00100693          	li	a3,1
   10768:	04c6ce63          	blt	a3,a2,107c4 <__adddf3+0x340>
   1076c:	04041063          	bnez	s0,107ac <__adddf3+0x328>
   10770:	00079c63          	bnez	a5,10788 <__adddf3+0x304>
   10774:	00070793          	mv	a5,a4
   10778:	16071063          	bnez	a4,108d8 <__adddf3+0x454>
   1077c:	00000793          	li	a5,0
   10780:	00000913          	li	s2,0
   10784:	0d40006f          	j	10858 <__adddf3+0x3d4>
   10788:	da0700e3          	beqz	a4,10528 <__adddf3+0xa4>
   1078c:	40e78633          	sub	a2,a5,a4
   10790:	03769693          	slli	a3,a3,0x37
   10794:	00d676b3          	and	a3,a2,a3
   10798:	40f707b3          	sub	a5,a4,a5
   1079c:	12069e63          	bnez	a3,108d8 <__adddf3+0x454>
   107a0:	fc060ee3          	beqz	a2,1077c <__adddf3+0x2f8>
   107a4:	00060793          	mv	a5,a2
   107a8:	d81ff06f          	j	10528 <__adddf3+0xa4>
   107ac:	e80796e3          	bnez	a5,10638 <__adddf3+0x1b4>
   107b0:	e80706e3          	beqz	a4,1063c <__adddf3+0x1b8>
   107b4:	00070793          	mv	a5,a4
   107b8:	00058913          	mv	s2,a1
   107bc:	7ff00413          	li	s0,2047
   107c0:	d69ff06f          	j	10528 <__adddf3+0xa4>
   107c4:	40e784b3          	sub	s1,a5,a4
   107c8:	03769693          	slli	a3,a3,0x37
   107cc:	00d4f6b3          	and	a3,s1,a3
   107d0:	04068463          	beqz	a3,10818 <__adddf3+0x394>
   107d4:	40f704b3          	sub	s1,a4,a5
   107d8:	00058913          	mv	s2,a1
   107dc:	00048513          	mv	a0,s1
   107e0:	401000ef          	jal	ra,113e0 <__clzdi2>
   107e4:	ff85079b          	addiw	a5,a0,-8
   107e8:	00f494b3          	sll	s1,s1,a5
   107ec:	0287ce63          	blt	a5,s0,10828 <__adddf3+0x3a4>
   107f0:	4087843b          	subw	s0,a5,s0
   107f4:	0014041b          	addiw	s0,s0,1
   107f8:	04000513          	li	a0,64
   107fc:	0084d7b3          	srl	a5,s1,s0
   10800:	4085043b          	subw	s0,a0,s0
   10804:	008494b3          	sll	s1,s1,s0
   10808:	009034b3          	snez	s1,s1
   1080c:	0097e7b3          	or	a5,a5,s1
   10810:	00000413          	li	s0,0
   10814:	d15ff06f          	j	10528 <__adddf3+0xa4>
   10818:	fc0492e3          	bnez	s1,107dc <__adddf3+0x358>
   1081c:	00000793          	li	a5,0
   10820:	00000413          	li	s0,0
   10824:	f5dff06f          	j	10780 <__adddf3+0x2fc>
   10828:	40f40433          	sub	s0,s0,a5
   1082c:	fff00793          	li	a5,-1
   10830:	03779793          	slli	a5,a5,0x37
   10834:	fff78793          	addi	a5,a5,-1
   10838:	00f4f7b3          	and	a5,s1,a5
   1083c:	cedff06f          	j	10528 <__adddf3+0xa4>
   10840:	00070793          	mv	a5,a4
   10844:	e15ff06f          	j	10658 <__adddf3+0x1d4>
   10848:	00070793          	mv	a5,a4
   1084c:	cddff06f          	j	10528 <__adddf3+0xa4>
   10850:	7ff00413          	li	s0,2047
   10854:	00000793          	li	a5,0
   10858:	00879713          	slli	a4,a5,0x8
   1085c:	02075063          	bgez	a4,1087c <__adddf3+0x3f8>
   10860:	00140413          	addi	s0,s0,1
   10864:	7ff00713          	li	a4,2047
   10868:	06e40c63          	beq	s0,a4,108e0 <__adddf3+0x45c>
   1086c:	fff00713          	li	a4,-1
   10870:	03771713          	slli	a4,a4,0x37
   10874:	fff70713          	addi	a4,a4,-1
   10878:	00e7f7b3          	and	a5,a5,a4
   1087c:	7ff00713          	li	a4,2047
   10880:	0037d793          	srli	a5,a5,0x3
   10884:	00e41a63          	bne	s0,a4,10898 <__adddf3+0x414>
   10888:	00078863          	beqz	a5,10898 <__adddf3+0x414>
   1088c:	00100793          	li	a5,1
   10890:	03379793          	slli	a5,a5,0x33
   10894:	00000913          	li	s2,0
   10898:	7ff47513          	andi	a0,s0,2047
   1089c:	fff00413          	li	s0,-1
   108a0:	00c45413          	srli	s0,s0,0xc
   108a4:	0087f7b3          	and	a5,a5,s0
   108a8:	01813083          	ld	ra,24(sp)
   108ac:	01013403          	ld	s0,16(sp)
   108b0:	03451513          	slli	a0,a0,0x34
   108b4:	03f91913          	slli	s2,s2,0x3f
   108b8:	00a7e533          	or	a0,a5,a0
   108bc:	01256533          	or	a0,a0,s2
   108c0:	00813483          	ld	s1,8(sp)
   108c4:	00013903          	ld	s2,0(sp)
   108c8:	02010113          	addi	sp,sp,32
   108cc:	00008067          	ret
   108d0:	00070793          	mv	a5,a4
   108d4:	00060413          	mv	s0,a2
   108d8:	00058913          	mv	s2,a1
   108dc:	c4dff06f          	j	10528 <__adddf3+0xa4>
   108e0:	00000793          	li	a5,0
   108e4:	f99ff06f          	j	1087c <__adddf3+0x3f8>
   108e8:	fff6c693          	not	a3,a3
   108ec:	0006869b          	sext.w	a3,a3
   108f0:	cd9ff06f          	j	105c8 <__adddf3+0x144>
   108f4:	fff6c693          	not	a3,a3
   108f8:	0006869b          	sext.w	a3,a3
   108fc:	e35ff06f          	j	10730 <__adddf3+0x2ac>
   10900:	0000                	unimp
	...

0000000000010904 <__muldf3>:
   10904:	fb010113          	addi	sp,sp,-80
   10908:	03213823          	sd	s2,48(sp)
   1090c:	03455913          	srli	s2,a0,0x34
   10910:	02913c23          	sd	s1,56(sp)
   10914:	7ff97913          	andi	s2,s2,2047
   10918:	fff00493          	li	s1,-1
   1091c:	03313423          	sd	s3,40(sp)
   10920:	01713423          	sd	s7,8(sp)
   10924:	00c4d493          	srli	s1,s1,0xc
   10928:	04113423          	sd	ra,72(sp)
   1092c:	04813023          	sd	s0,64(sp)
   10930:	03413023          	sd	s4,32(sp)
   10934:	01513c23          	sd	s5,24(sp)
   10938:	01613823          	sd	s6,16(sp)
   1093c:	0009079b          	sext.w	a5,s2
   10940:	00058b93          	mv	s7,a1
   10944:	00a4f4b3          	and	s1,s1,a0
   10948:	03f55993          	srli	s3,a0,0x3f
   1094c:	08078e63          	beqz	a5,109e8 <__muldf3+0xe4>
   10950:	7ff00713          	li	a4,2047
   10954:	0ae78c63          	beq	a5,a4,10a0c <__muldf3+0x108>
   10958:	00100793          	li	a5,1
   1095c:	00349493          	slli	s1,s1,0x3
   10960:	03779793          	slli	a5,a5,0x37
   10964:	00f4e4b3          	or	s1,s1,a5
   10968:	c0190913          	addi	s2,s2,-1023
   1096c:	00000a93          	li	s5,0
   10970:	034bd513          	srli	a0,s7,0x34
   10974:	fff00413          	li	s0,-1
   10978:	7ff57513          	andi	a0,a0,2047
   1097c:	00c45413          	srli	s0,s0,0xc
   10980:	0005079b          	sext.w	a5,a0
   10984:	01747433          	and	s0,s0,s7
   10988:	03fbdb93          	srli	s7,s7,0x3f
   1098c:	0a078063          	beqz	a5,10a2c <__muldf3+0x128>
   10990:	7ff00713          	li	a4,2047
   10994:	0ae78e63          	beq	a5,a4,10a50 <__muldf3+0x14c>
   10998:	00100793          	li	a5,1
   1099c:	00341413          	slli	s0,s0,0x3
   109a0:	03779793          	slli	a5,a5,0x37
   109a4:	00f46433          	or	s0,s0,a5
   109a8:	c0150513          	addi	a0,a0,-1023
   109ac:	00000693          	li	a3,0
   109b0:	002a9793          	slli	a5,s5,0x2
   109b4:	00d7e7b3          	or	a5,a5,a3
   109b8:	00a90933          	add	s2,s2,a0
   109bc:	fff78793          	addi	a5,a5,-1
   109c0:	00e00713          	li	a4,14
   109c4:	0179ca33          	xor	s4,s3,s7
   109c8:	00190b13          	addi	s6,s2,1
   109cc:	0af76263          	bltu	a4,a5,10a70 <__muldf3+0x16c>
   109d0:	00012737          	lui	a4,0x12
   109d4:	00279793          	slli	a5,a5,0x2
   109d8:	ea070713          	addi	a4,a4,-352 # 11ea0 <__errno+0x14>
   109dc:	00e787b3          	add	a5,a5,a4
   109e0:	0007a783          	lw	a5,0(a5)
   109e4:	00078067          	jr	a5
   109e8:	02048c63          	beqz	s1,10a20 <__muldf3+0x11c>
   109ec:	00048513          	mv	a0,s1
   109f0:	1f1000ef          	jal	ra,113e0 <__clzdi2>
   109f4:	0005051b          	sext.w	a0,a0
   109f8:	ff85079b          	addiw	a5,a0,-8
   109fc:	c0d00913          	li	s2,-1011
   10a00:	00f494b3          	sll	s1,s1,a5
   10a04:	40a90933          	sub	s2,s2,a0
   10a08:	f65ff06f          	j	1096c <__muldf3+0x68>
   10a0c:	7ff00913          	li	s2,2047
   10a10:	00200a93          	li	s5,2
   10a14:	f4048ee3          	beqz	s1,10970 <__muldf3+0x6c>
   10a18:	00300a93          	li	s5,3
   10a1c:	f55ff06f          	j	10970 <__muldf3+0x6c>
   10a20:	00000913          	li	s2,0
   10a24:	00100a93          	li	s5,1
   10a28:	f49ff06f          	j	10970 <__muldf3+0x6c>
   10a2c:	02040c63          	beqz	s0,10a64 <__muldf3+0x160>
   10a30:	00040513          	mv	a0,s0
   10a34:	1ad000ef          	jal	ra,113e0 <__clzdi2>
   10a38:	0005051b          	sext.w	a0,a0
   10a3c:	ff85079b          	addiw	a5,a0,-8
   10a40:	00f41433          	sll	s0,s0,a5
   10a44:	c0d00793          	li	a5,-1011
   10a48:	40a78533          	sub	a0,a5,a0
   10a4c:	f61ff06f          	j	109ac <__muldf3+0xa8>
   10a50:	7ff00513          	li	a0,2047
   10a54:	00200693          	li	a3,2
   10a58:	f4040ce3          	beqz	s0,109b0 <__muldf3+0xac>
   10a5c:	00300693          	li	a3,3
   10a60:	f51ff06f          	j	109b0 <__muldf3+0xac>
   10a64:	00000513          	li	a0,0
   10a68:	00100693          	li	a3,1
   10a6c:	f45ff06f          	j	109b0 <__muldf3+0xac>
   10a70:	fff00793          	li	a5,-1
   10a74:	0207d793          	srli	a5,a5,0x20
   10a78:	0204da93          	srli	s5,s1,0x20
   10a7c:	02045b93          	srli	s7,s0,0x20
   10a80:	00f4f4b3          	and	s1,s1,a5
   10a84:	00f47433          	and	s0,s0,a5
   10a88:	00040593          	mv	a1,s0
   10a8c:	00048513          	mv	a0,s1
   10a90:	129000ef          	jal	ra,113b8 <__muldi3>
   10a94:	00040593          	mv	a1,s0
   10a98:	00050993          	mv	s3,a0
   10a9c:	000a8513          	mv	a0,s5
   10aa0:	119000ef          	jal	ra,113b8 <__muldi3>
   10aa4:	00050413          	mv	s0,a0
   10aa8:	000b8593          	mv	a1,s7
   10aac:	000a8513          	mv	a0,s5
   10ab0:	109000ef          	jal	ra,113b8 <__muldi3>
   10ab4:	00050a93          	mv	s5,a0
   10ab8:	00048593          	mv	a1,s1
   10abc:	000b8513          	mv	a0,s7
   10ac0:	0f9000ef          	jal	ra,113b8 <__muldi3>
   10ac4:	00850533          	add	a0,a0,s0
   10ac8:	0209d793          	srli	a5,s3,0x20
   10acc:	00a78533          	add	a0,a5,a0
   10ad0:	00857863          	bleu	s0,a0,10ae0 <__muldf3+0x1dc>
   10ad4:	00100793          	li	a5,1
   10ad8:	02079793          	slli	a5,a5,0x20
   10adc:	00fa8ab3          	add	s5,s5,a5
   10ae0:	fff00713          	li	a4,-1
   10ae4:	02075713          	srli	a4,a4,0x20
   10ae8:	00e577b3          	and	a5,a0,a4
   10aec:	02079793          	slli	a5,a5,0x20
   10af0:	00e9f9b3          	and	s3,s3,a4
   10af4:	013787b3          	add	a5,a5,s3
   10af8:	00979413          	slli	s0,a5,0x9
   10afc:	00803433          	snez	s0,s0
   10b00:	0377d793          	srli	a5,a5,0x37
   10b04:	00f467b3          	or	a5,s0,a5
   10b08:	02055413          	srli	s0,a0,0x20
   10b0c:	01540433          	add	s0,s0,s5
   10b10:	00941413          	slli	s0,s0,0x9
   10b14:	00f46433          	or	s0,s0,a5
   10b18:	00741793          	slli	a5,s0,0x7
   10b1c:	0c07de63          	bgez	a5,10bf8 <__muldf3+0x2f4>
   10b20:	00145793          	srli	a5,s0,0x1
   10b24:	00147413          	andi	s0,s0,1
   10b28:	0087e433          	or	s0,a5,s0
   10b2c:	3ffb0713          	addi	a4,s6,1023
   10b30:	0ce05863          	blez	a4,10c00 <__muldf3+0x2fc>
   10b34:	00747793          	andi	a5,s0,7
   10b38:	00078a63          	beqz	a5,10b4c <__muldf3+0x248>
   10b3c:	00f47793          	andi	a5,s0,15
   10b40:	00400693          	li	a3,4
   10b44:	00d78463          	beq	a5,a3,10b4c <__muldf3+0x248>
   10b48:	00440413          	addi	s0,s0,4
   10b4c:	00741793          	slli	a5,s0,0x7
   10b50:	0007dc63          	bgez	a5,10b68 <__muldf3+0x264>
   10b54:	fff00793          	li	a5,-1
   10b58:	03879793          	slli	a5,a5,0x38
   10b5c:	fff78793          	addi	a5,a5,-1
   10b60:	00f47433          	and	s0,s0,a5
   10b64:	400b0713          	addi	a4,s6,1024
   10b68:	7fe00793          	li	a5,2046
   10b6c:	10e7c063          	blt	a5,a4,10c6c <__muldf3+0x368>
   10b70:	00345793          	srli	a5,s0,0x3
   10b74:	0300006f          	j	10ba4 <__muldf3+0x2a0>
   10b78:	00098a13          	mv	s4,s3
   10b7c:	00048413          	mv	s0,s1
   10b80:	000a8693          	mv	a3,s5
   10b84:	00200793          	li	a5,2
   10b88:	0ef68263          	beq	a3,a5,10c6c <__muldf3+0x368>
   10b8c:	00300793          	li	a5,3
   10b90:	0cf68463          	beq	a3,a5,10c58 <__muldf3+0x354>
   10b94:	00100613          	li	a2,1
   10b98:	00000793          	li	a5,0
   10b9c:	00000713          	li	a4,0
   10ba0:	f8c696e3          	bne	a3,a2,10b2c <__muldf3+0x228>
   10ba4:	fff00513          	li	a0,-1
   10ba8:	00c55513          	srli	a0,a0,0xc
   10bac:	04813083          	ld	ra,72(sp)
   10bb0:	04013403          	ld	s0,64(sp)
   10bb4:	7ff77713          	andi	a4,a4,2047
   10bb8:	00a7f7b3          	and	a5,a5,a0
   10bbc:	03471713          	slli	a4,a4,0x34
   10bc0:	03fa1513          	slli	a0,s4,0x3f
   10bc4:	00e7e7b3          	or	a5,a5,a4
   10bc8:	03813483          	ld	s1,56(sp)
   10bcc:	03013903          	ld	s2,48(sp)
   10bd0:	02813983          	ld	s3,40(sp)
   10bd4:	02013a03          	ld	s4,32(sp)
   10bd8:	01813a83          	ld	s5,24(sp)
   10bdc:	01013b03          	ld	s6,16(sp)
   10be0:	00813b83          	ld	s7,8(sp)
   10be4:	00a7e533          	or	a0,a5,a0
   10be8:	05010113          	addi	sp,sp,80
   10bec:	00008067          	ret
   10bf0:	000b8a13          	mv	s4,s7
   10bf4:	f91ff06f          	j	10b84 <__muldf3+0x280>
   10bf8:	00090b13          	mv	s6,s2
   10bfc:	f31ff06f          	j	10b2c <__muldf3+0x228>
   10c00:	00100793          	li	a5,1
   10c04:	40e78733          	sub	a4,a5,a4
   10c08:	03800793          	li	a5,56
   10c0c:	06e7c663          	blt	a5,a4,10c78 <__muldf3+0x374>
   10c10:	0007071b          	sext.w	a4,a4
   10c14:	04000693          	li	a3,64
   10c18:	00e457b3          	srl	a5,s0,a4
   10c1c:	40e6873b          	subw	a4,a3,a4
   10c20:	00e41433          	sll	s0,s0,a4
   10c24:	00803433          	snez	s0,s0
   10c28:	0087e433          	or	s0,a5,s0
   10c2c:	00747793          	andi	a5,s0,7
   10c30:	00078a63          	beqz	a5,10c44 <__muldf3+0x340>
   10c34:	00f47793          	andi	a5,s0,15
   10c38:	00400713          	li	a4,4
   10c3c:	00e78463          	beq	a5,a4,10c44 <__muldf3+0x340>
   10c40:	00440413          	addi	s0,s0,4
   10c44:	00841793          	slli	a5,s0,0x8
   10c48:	0207cc63          	bltz	a5,10c80 <__muldf3+0x37c>
   10c4c:	00345793          	srli	a5,s0,0x3
   10c50:	00000713          	li	a4,0
   10c54:	f51ff06f          	j	10ba4 <__muldf3+0x2a0>
   10c58:	00100793          	li	a5,1
   10c5c:	03379793          	slli	a5,a5,0x33
   10c60:	7ff00713          	li	a4,2047
   10c64:	00000a13          	li	s4,0
   10c68:	f3dff06f          	j	10ba4 <__muldf3+0x2a0>
   10c6c:	00000793          	li	a5,0
   10c70:	7ff00713          	li	a4,2047
   10c74:	f31ff06f          	j	10ba4 <__muldf3+0x2a0>
   10c78:	00000793          	li	a5,0
   10c7c:	fd5ff06f          	j	10c50 <__muldf3+0x34c>
   10c80:	00000793          	li	a5,0
   10c84:	00100713          	li	a4,1
   10c88:	f1dff06f          	j	10ba4 <__muldf3+0x2a0>
   10c8c:	0000                	unimp
	...

0000000000010c90 <__subdf3>:
   10c90:	fff00693          	li	a3,-1
   10c94:	fe010113          	addi	sp,sp,-32
   10c98:	00c6d693          	srli	a3,a3,0xc
   10c9c:	00a6f733          	and	a4,a3,a0
   10ca0:	03455813          	srli	a6,a0,0x34
   10ca4:	01213023          	sd	s2,0(sp)
   10ca8:	03f55913          	srli	s2,a0,0x3f
   10cac:	0345d513          	srli	a0,a1,0x34
   10cb0:	00b6f7b3          	and	a5,a3,a1
   10cb4:	00813823          	sd	s0,16(sp)
   10cb8:	7ff87813          	andi	a6,a6,2047
   10cbc:	00113c23          	sd	ra,24(sp)
   10cc0:	00913423          	sd	s1,8(sp)
   10cc4:	7ff57513          	andi	a0,a0,2047
   10cc8:	7ff00693          	li	a3,2047
   10ccc:	00080413          	mv	s0,a6
   10cd0:	00371713          	slli	a4,a4,0x3
   10cd4:	03f5d593          	srli	a1,a1,0x3f
   10cd8:	00379793          	slli	a5,a5,0x3
   10cdc:	00d51463          	bne	a0,a3,10ce4 <__subdf3+0x54>
   10ce0:	00079463          	bnez	a5,10ce8 <__subdf3+0x58>
   10ce4:	0015c593          	xori	a1,a1,1
   10ce8:	40a806bb          	subw	a3,a6,a0
   10cec:	0006861b          	sext.w	a2,a3
   10cf0:	19259e63          	bne	a1,s2,10e8c <__subdf3+0x1fc>
   10cf4:	08c05e63          	blez	a2,10d90 <__subdf3+0x100>
   10cf8:	04051c63          	bnez	a0,10d50 <__subdf3+0xc0>
   10cfc:	04078663          	beqz	a5,10d48 <__subdf3+0xb8>
   10d00:	fff6861b          	addiw	a2,a3,-1
   10d04:	02061e63          	bnez	a2,10d40 <__subdf3+0xb0>
   10d08:	00e787b3          	add	a5,a5,a4
   10d0c:	00879713          	slli	a4,a5,0x8
   10d10:	12075c63          	bgez	a4,10e48 <__subdf3+0x1b8>
   10d14:	00140413          	addi	s0,s0,1
   10d18:	7ff00713          	li	a4,2047
   10d1c:	34e40a63          	beq	s0,a4,11070 <__subdf3+0x3e0>
   10d20:	1ff00713          	li	a4,511
   10d24:	03671713          	slli	a4,a4,0x36
   10d28:	0017f693          	andi	a3,a5,1
   10d2c:	fff70713          	addi	a4,a4,-1
   10d30:	0017d793          	srli	a5,a5,0x1
   10d34:	00e7f7b3          	and	a5,a5,a4
   10d38:	00d7e7b3          	or	a5,a5,a3
   10d3c:	10c0006f          	j	10e48 <__subdf3+0x1b8>
   10d40:	7ff00693          	li	a3,2047
   10d44:	02d81063          	bne	a6,a3,10d64 <__subdf3+0xd4>
   10d48:	00070793          	mv	a5,a4
   10d4c:	0fc0006f          	j	10e48 <__subdf3+0x1b8>
   10d50:	7ff00693          	li	a3,2047
   10d54:	fed80ae3          	beq	a6,a3,10d48 <__subdf3+0xb8>
   10d58:	00100693          	li	a3,1
   10d5c:	03769693          	slli	a3,a3,0x37
   10d60:	00d7e7b3          	or	a5,a5,a3
   10d64:	03800693          	li	a3,56
   10d68:	00c6d663          	ble	a2,a3,10d74 <__subdf3+0xe4>
   10d6c:	00100793          	li	a5,1
   10d70:	f99ff06f          	j	10d08 <__subdf3+0x78>
   10d74:	04000693          	li	a3,64
   10d78:	00c7d5b3          	srl	a1,a5,a2
   10d7c:	40c6863b          	subw	a2,a3,a2
   10d80:	00c797b3          	sll	a5,a5,a2
   10d84:	00f037b3          	snez	a5,a5
   10d88:	00f5e7b3          	or	a5,a1,a5
   10d8c:	f7dff06f          	j	10d08 <__subdf3+0x78>
   10d90:	06060c63          	beqz	a2,10e08 <__subdf3+0x178>
   10d94:	02081863          	bnez	a6,10dc4 <__subdf3+0x134>
   10d98:	2c070663          	beqz	a4,11064 <__subdf3+0x3d4>
   10d9c:	fff00593          	li	a1,-1
   10da0:	00b61863          	bne	a2,a1,10db0 <__subdf3+0x120>
   10da4:	00e787b3          	add	a5,a5,a4
   10da8:	00050413          	mv	s0,a0
   10dac:	f61ff06f          	j	10d0c <__subdf3+0x7c>
   10db0:	7ff00613          	li	a2,2047
   10db4:	fff6c693          	not	a3,a3
   10db8:	02c51263          	bne	a0,a2,10ddc <__subdf3+0x14c>
   10dbc:	7ff00413          	li	s0,2047
   10dc0:	0880006f          	j	10e48 <__subdf3+0x1b8>
   10dc4:	7ff00613          	li	a2,2047
   10dc8:	fec50ae3          	beq	a0,a2,10dbc <__subdf3+0x12c>
   10dcc:	00100613          	li	a2,1
   10dd0:	03761613          	slli	a2,a2,0x37
   10dd4:	40d006bb          	negw	a3,a3
   10dd8:	00c76733          	or	a4,a4,a2
   10ddc:	03800613          	li	a2,56
   10de0:	00d65663          	ble	a3,a2,10dec <__subdf3+0x15c>
   10de4:	00100713          	li	a4,1
   10de8:	fbdff06f          	j	10da4 <__subdf3+0x114>
   10dec:	04000613          	li	a2,64
   10df0:	00d755b3          	srl	a1,a4,a3
   10df4:	40d606bb          	subw	a3,a2,a3
   10df8:	00d71733          	sll	a4,a4,a3
   10dfc:	00e03733          	snez	a4,a4
   10e00:	00e5e733          	or	a4,a1,a4
   10e04:	fa1ff06f          	j	10da4 <__subdf3+0x114>
   10e08:	00180613          	addi	a2,a6,1
   10e0c:	7ff67593          	andi	a1,a2,2047
   10e10:	00100693          	li	a3,1
   10e14:	06b6c063          	blt	a3,a1,10e74 <__subdf3+0x1e4>
   10e18:	04081663          	bnez	a6,10e64 <__subdf3+0x1d4>
   10e1c:	02070663          	beqz	a4,10e48 <__subdf3+0x1b8>
   10e20:	f20784e3          	beqz	a5,10d48 <__subdf3+0xb8>
   10e24:	00e787b3          	add	a5,a5,a4
   10e28:	03769693          	slli	a3,a3,0x37
   10e2c:	00d7f6b3          	and	a3,a5,a3
   10e30:	00068c63          	beqz	a3,10e48 <__subdf3+0x1b8>
   10e34:	fff00713          	li	a4,-1
   10e38:	03771713          	slli	a4,a4,0x37
   10e3c:	fff70713          	addi	a4,a4,-1
   10e40:	00e7f7b3          	and	a5,a5,a4
   10e44:	00100413          	li	s0,1
   10e48:	0077f713          	andi	a4,a5,7
   10e4c:	22070463          	beqz	a4,11074 <__subdf3+0x3e4>
   10e50:	00f7f713          	andi	a4,a5,15
   10e54:	00400693          	li	a3,4
   10e58:	20d70e63          	beq	a4,a3,11074 <__subdf3+0x3e4>
   10e5c:	00478793          	addi	a5,a5,4
   10e60:	2140006f          	j	11074 <__subdf3+0x3e4>
   10e64:	f4070ce3          	beqz	a4,10dbc <__subdf3+0x12c>
   10e68:	16079a63          	bnez	a5,10fdc <__subdf3+0x34c>
   10e6c:	00070793          	mv	a5,a4
   10e70:	f4dff06f          	j	10dbc <__subdf3+0x12c>
   10e74:	7ff00693          	li	a3,2047
   10e78:	1ed60a63          	beq	a2,a3,1106c <__subdf3+0x3dc>
   10e7c:	00f707b3          	add	a5,a4,a5
   10e80:	0017d793          	srli	a5,a5,0x1
   10e84:	00060413          	mv	s0,a2
   10e88:	fc1ff06f          	j	10e48 <__subdf3+0x1b8>
   10e8c:	08c05263          	blez	a2,10f10 <__subdf3+0x280>
   10e90:	04051663          	bnez	a0,10edc <__subdf3+0x24c>
   10e94:	ea078ae3          	beqz	a5,10d48 <__subdf3+0xb8>
   10e98:	fff6861b          	addiw	a2,a3,-1
   10e9c:	02061463          	bnez	a2,10ec4 <__subdf3+0x234>
   10ea0:	40f707b3          	sub	a5,a4,a5
   10ea4:	00090593          	mv	a1,s2
   10ea8:	00879713          	slli	a4,a5,0x8
   10eac:	00058913          	mv	s2,a1
   10eb0:	f8075ce3          	bgez	a4,10e48 <__subdf3+0x1b8>
   10eb4:	fff00493          	li	s1,-1
   10eb8:	0094d493          	srli	s1,s1,0x9
   10ebc:	0097f4b3          	and	s1,a5,s1
   10ec0:	1400006f          	j	11000 <__subdf3+0x370>
   10ec4:	7ff00693          	li	a3,2047
   10ec8:	e8d800e3          	beq	a6,a3,10d48 <__subdf3+0xb8>
   10ecc:	03800693          	li	a3,56
   10ed0:	02c6d263          	ble	a2,a3,10ef4 <__subdf3+0x264>
   10ed4:	00100793          	li	a5,1
   10ed8:	fc9ff06f          	j	10ea0 <__subdf3+0x210>
   10edc:	7ff00693          	li	a3,2047
   10ee0:	e6d804e3          	beq	a6,a3,10d48 <__subdf3+0xb8>
   10ee4:	00100693          	li	a3,1
   10ee8:	03769693          	slli	a3,a3,0x37
   10eec:	00d7e7b3          	or	a5,a5,a3
   10ef0:	fddff06f          	j	10ecc <__subdf3+0x23c>
   10ef4:	04000693          	li	a3,64
   10ef8:	00c7d5b3          	srl	a1,a5,a2
   10efc:	40c6863b          	subw	a2,a3,a2
   10f00:	00c797b3          	sll	a5,a5,a2
   10f04:	00f037b3          	snez	a5,a5
   10f08:	00f5e7b3          	or	a5,a1,a5
   10f0c:	f95ff06f          	j	10ea0 <__subdf3+0x210>
   10f10:	06060c63          	beqz	a2,10f88 <__subdf3+0x2f8>
   10f14:	02081863          	bnez	a6,10f44 <__subdf3+0x2b4>
   10f18:	1c070a63          	beqz	a4,110ec <__subdf3+0x45c>
   10f1c:	fff00813          	li	a6,-1
   10f20:	01061863          	bne	a2,a6,10f30 <__subdf3+0x2a0>
   10f24:	40e787b3          	sub	a5,a5,a4
   10f28:	00050413          	mv	s0,a0
   10f2c:	f7dff06f          	j	10ea8 <__subdf3+0x218>
   10f30:	7ff00613          	li	a2,2047
   10f34:	fff6c693          	not	a3,a3
   10f38:	02c51263          	bne	a0,a2,10f5c <__subdf3+0x2cc>
   10f3c:	7ff00413          	li	s0,2047
   10f40:	1b00006f          	j	110f0 <__subdf3+0x460>
   10f44:	7ff00613          	li	a2,2047
   10f48:	fec50ae3          	beq	a0,a2,10f3c <__subdf3+0x2ac>
   10f4c:	00100613          	li	a2,1
   10f50:	03761613          	slli	a2,a2,0x37
   10f54:	40d006bb          	negw	a3,a3
   10f58:	00c76733          	or	a4,a4,a2
   10f5c:	03800613          	li	a2,56
   10f60:	00d65663          	ble	a3,a2,10f6c <__subdf3+0x2dc>
   10f64:	00100713          	li	a4,1
   10f68:	fbdff06f          	j	10f24 <__subdf3+0x294>
   10f6c:	04000613          	li	a2,64
   10f70:	00d75833          	srl	a6,a4,a3
   10f74:	40d606bb          	subw	a3,a2,a3
   10f78:	00d71733          	sll	a4,a4,a3
   10f7c:	00e03733          	snez	a4,a4
   10f80:	00e86733          	or	a4,a6,a4
   10f84:	fa1ff06f          	j	10f24 <__subdf3+0x294>
   10f88:	00180613          	addi	a2,a6,1
   10f8c:	7ff67613          	andi	a2,a2,2047
   10f90:	00100693          	li	a3,1
   10f94:	04c6ca63          	blt	a3,a2,10fe8 <__subdf3+0x358>
   10f98:	02081e63          	bnez	a6,10fd4 <__subdf3+0x344>
   10f9c:	00071863          	bnez	a4,10fac <__subdf3+0x31c>
   10fa0:	14079863          	bnez	a5,110f0 <__subdf3+0x460>
   10fa4:	00000913          	li	s2,0
   10fa8:	0cc0006f          	j	11074 <__subdf3+0x3e4>
   10fac:	d8078ee3          	beqz	a5,10d48 <__subdf3+0xb8>
   10fb0:	40f70633          	sub	a2,a4,a5
   10fb4:	03769693          	slli	a3,a3,0x37
   10fb8:	00d676b3          	and	a3,a2,a3
   10fbc:	40e787b3          	sub	a5,a5,a4
   10fc0:	12069863          	bnez	a3,110f0 <__subdf3+0x460>
   10fc4:	00060793          	mv	a5,a2
   10fc8:	e80610e3          	bnez	a2,10e48 <__subdf3+0x1b8>
   10fcc:	00000793          	li	a5,0
   10fd0:	fd5ff06f          	j	10fa4 <__subdf3+0x314>
   10fd4:	e8071ae3          	bnez	a4,10e68 <__subdf3+0x1d8>
   10fd8:	12079063          	bnez	a5,110f8 <__subdf3+0x468>
   10fdc:	03669793          	slli	a5,a3,0x36
   10fe0:	7ff00413          	li	s0,2047
   10fe4:	fc1ff06f          	j	10fa4 <__subdf3+0x314>
   10fe8:	40f704b3          	sub	s1,a4,a5
   10fec:	03769693          	slli	a3,a3,0x37
   10ff0:	00d4f6b3          	and	a3,s1,a3
   10ff4:	04068463          	beqz	a3,1103c <__subdf3+0x3ac>
   10ff8:	40e784b3          	sub	s1,a5,a4
   10ffc:	00058913          	mv	s2,a1
   11000:	00048513          	mv	a0,s1
   11004:	3dc000ef          	jal	ra,113e0 <__clzdi2>
   11008:	ff85079b          	addiw	a5,a0,-8
   1100c:	00f494b3          	sll	s1,s1,a5
   11010:	0287ce63          	blt	a5,s0,1104c <__subdf3+0x3bc>
   11014:	4087843b          	subw	s0,a5,s0
   11018:	0014041b          	addiw	s0,s0,1
   1101c:	04000513          	li	a0,64
   11020:	0084d7b3          	srl	a5,s1,s0
   11024:	4085043b          	subw	s0,a0,s0
   11028:	008494b3          	sll	s1,s1,s0
   1102c:	009034b3          	snez	s1,s1
   11030:	0097e7b3          	or	a5,a5,s1
   11034:	00000413          	li	s0,0
   11038:	e11ff06f          	j	10e48 <__subdf3+0x1b8>
   1103c:	fc0492e3          	bnez	s1,11000 <__subdf3+0x370>
   11040:	00000793          	li	a5,0
   11044:	00000413          	li	s0,0
   11048:	f5dff06f          	j	10fa4 <__subdf3+0x314>
   1104c:	40f40433          	sub	s0,s0,a5
   11050:	fff00793          	li	a5,-1
   11054:	03779793          	slli	a5,a5,0x37
   11058:	fff78793          	addi	a5,a5,-1
   1105c:	00f4f7b3          	and	a5,s1,a5
   11060:	de9ff06f          	j	10e48 <__subdf3+0x1b8>
   11064:	00050413          	mv	s0,a0
   11068:	de1ff06f          	j	10e48 <__subdf3+0x1b8>
   1106c:	7ff00413          	li	s0,2047
   11070:	00000793          	li	a5,0
   11074:	00879713          	slli	a4,a5,0x8
   11078:	02075063          	bgez	a4,11098 <__subdf3+0x408>
   1107c:	00140413          	addi	s0,s0,1
   11080:	7ff00713          	li	a4,2047
   11084:	06e40e63          	beq	s0,a4,11100 <__subdf3+0x470>
   11088:	fff00713          	li	a4,-1
   1108c:	03771713          	slli	a4,a4,0x37
   11090:	fff70713          	addi	a4,a4,-1
   11094:	00e7f7b3          	and	a5,a5,a4
   11098:	7ff00713          	li	a4,2047
   1109c:	0037d793          	srli	a5,a5,0x3
   110a0:	00e41a63          	bne	s0,a4,110b4 <__subdf3+0x424>
   110a4:	00078863          	beqz	a5,110b4 <__subdf3+0x424>
   110a8:	00100793          	li	a5,1
   110ac:	03379793          	slli	a5,a5,0x33
   110b0:	00000913          	li	s2,0
   110b4:	7ff47513          	andi	a0,s0,2047
   110b8:	fff00413          	li	s0,-1
   110bc:	00c45413          	srli	s0,s0,0xc
   110c0:	0087f7b3          	and	a5,a5,s0
   110c4:	01813083          	ld	ra,24(sp)
   110c8:	01013403          	ld	s0,16(sp)
   110cc:	03451513          	slli	a0,a0,0x34
   110d0:	03f91913          	slli	s2,s2,0x3f
   110d4:	00a7e533          	or	a0,a5,a0
   110d8:	01256533          	or	a0,a0,s2
   110dc:	00813483          	ld	s1,8(sp)
   110e0:	00013903          	ld	s2,0(sp)
   110e4:	02010113          	addi	sp,sp,32
   110e8:	00008067          	ret
   110ec:	00050413          	mv	s0,a0
   110f0:	00058913          	mv	s2,a1
   110f4:	d55ff06f          	j	10e48 <__subdf3+0x1b8>
   110f8:	00058913          	mv	s2,a1
   110fc:	cc1ff06f          	j	10dbc <__subdf3+0x12c>
   11100:	00000793          	li	a5,0
   11104:	f95ff06f          	j	11098 <__subdf3+0x408>
   11108:	0000                	unimp
	...

000000000001110c <__floatsidf>:
   1110c:	fe010113          	addi	sp,sp,-32
   11110:	00113c23          	sd	ra,24(sp)
   11114:	00813823          	sd	s0,16(sp)
   11118:	00913423          	sd	s1,8(sp)
   1111c:	06050663          	beqz	a0,11188 <__floatsidf+0x7c>
   11120:	0005079b          	sext.w	a5,a0
   11124:	03f55493          	srli	s1,a0,0x3f
   11128:	00055463          	bgez	a0,11130 <__floatsidf+0x24>
   1112c:	40f007bb          	negw	a5,a5
   11130:	02079413          	slli	s0,a5,0x20
   11134:	02045413          	srli	s0,s0,0x20
   11138:	00040513          	mv	a0,s0
   1113c:	2a4000ef          	jal	ra,113e0 <__clzdi2>
   11140:	43e00793          	li	a5,1086
   11144:	40a7873b          	subw	a4,a5,a0
   11148:	43300793          	li	a5,1075
   1114c:	40e787bb          	subw	a5,a5,a4
   11150:	00f417b3          	sll	a5,s0,a5
   11154:	fff00413          	li	s0,-1
   11158:	00c45413          	srli	s0,s0,0xc
   1115c:	0087f7b3          	and	a5,a5,s0
   11160:	01813083          	ld	ra,24(sp)
   11164:	01013403          	ld	s0,16(sp)
   11168:	7ff77713          	andi	a4,a4,2047
   1116c:	03471713          	slli	a4,a4,0x34
   11170:	03f49513          	slli	a0,s1,0x3f
   11174:	00e7e7b3          	or	a5,a5,a4
   11178:	00813483          	ld	s1,8(sp)
   1117c:	00a7e533          	or	a0,a5,a0
   11180:	02010113          	addi	sp,sp,32
   11184:	00008067          	ret
   11188:	00000793          	li	a5,0
   1118c:	00000713          	li	a4,0
   11190:	00000493          	li	s1,0
   11194:	fc1ff06f          	j	11154 <__floatsidf+0x48>
   11198:	0000                	unimp
	...

000000000001119c <__extendsfdf2>:
   1119c:	fe010113          	addi	sp,sp,-32
   111a0:	0175579b          	srliw	a5,a0,0x17
   111a4:	00813823          	sd	s0,16(sp)
   111a8:	00800437          	lui	s0,0x800
   111ac:	fff40413          	addi	s0,s0,-1 # 7fffff <__global_pointer$+0x7ed02f>
   111b0:	0ff7f793          	andi	a5,a5,255
   111b4:	00a47433          	and	s0,s0,a0
   111b8:	00178693          	addi	a3,a5,1
   111bc:	00913423          	sd	s1,8(sp)
   111c0:	02041413          	slli	s0,s0,0x20
   111c4:	01f5551b          	srliw	a0,a0,0x1f
   111c8:	00113c23          	sd	ra,24(sp)
   111cc:	0ff6f693          	andi	a3,a3,255
   111d0:	00100713          	li	a4,1
   111d4:	02045413          	srli	s0,s0,0x20
   111d8:	0ff57493          	andi	s1,a0,255
   111dc:	04d75063          	ble	a3,a4,1121c <__extendsfdf2+0x80>
   111e0:	38078513          	addi	a0,a5,896
   111e4:	01d41413          	slli	s0,s0,0x1d
   111e8:	7ff57513          	andi	a0,a0,2047
   111ec:	03451793          	slli	a5,a0,0x34
   111f0:	fff00513          	li	a0,-1
   111f4:	00c55513          	srli	a0,a0,0xc
   111f8:	00a47433          	and	s0,s0,a0
   111fc:	00f46433          	or	s0,s0,a5
   11200:	03f49513          	slli	a0,s1,0x3f
   11204:	00a46533          	or	a0,s0,a0
   11208:	01813083          	ld	ra,24(sp)
   1120c:	01013403          	ld	s0,16(sp)
   11210:	00813483          	ld	s1,8(sp)
   11214:	02010113          	addi	sp,sp,32
   11218:	00008067          	ret
   1121c:	02079463          	bnez	a5,11244 <__extendsfdf2+0xa8>
   11220:	00000513          	li	a0,0
   11224:	fc0402e3          	beqz	s0,111e8 <__extendsfdf2+0x4c>
   11228:	00040513          	mv	a0,s0
   1122c:	1b4000ef          	jal	ra,113e0 <__clzdi2>
   11230:	ff55079b          	addiw	a5,a0,-11
   11234:	00f41433          	sll	s0,s0,a5
   11238:	3a900793          	li	a5,937
   1123c:	40a7853b          	subw	a0,a5,a0
   11240:	fa9ff06f          	j	111e8 <__extendsfdf2+0x4c>
   11244:	7ff00513          	li	a0,2047
   11248:	fa0400e3          	beqz	s0,111e8 <__extendsfdf2+0x4c>
   1124c:	01d41413          	slli	s0,s0,0x1d
   11250:	03371713          	slli	a4,a4,0x33
   11254:	00e46433          	or	s0,s0,a4
   11258:	f91ff06f          	j	111e8 <__extendsfdf2+0x4c>
   1125c:	0000                	unimp
	...

0000000000011260 <__truncdfsf2>:
   11260:	03455713          	srli	a4,a0,0x34
   11264:	fff00693          	li	a3,-1
   11268:	7ff77713          	andi	a4,a4,2047
   1126c:	00c6d693          	srli	a3,a3,0xc
   11270:	00170593          	addi	a1,a4,1
   11274:	00a6f6b3          	and	a3,a3,a0
   11278:	7ff5f593          	andi	a1,a1,2047
   1127c:	00100613          	li	a2,1
   11280:	03f55513          	srli	a0,a0,0x3f
   11284:	00369793          	slli	a5,a3,0x3
   11288:	06b65463          	ble	a1,a2,112f0 <__truncdfsf2+0x90>
   1128c:	c8070713          	addi	a4,a4,-896
   11290:	0fe00593          	li	a1,254
   11294:	08e5c063          	blt	a1,a4,11314 <__truncdfsf2+0xb4>
   11298:	04e04263          	bgtz	a4,112dc <__truncdfsf2+0x7c>
   1129c:	fe900693          	li	a3,-23
   112a0:	0ed74863          	blt	a4,a3,11390 <__truncdfsf2+0x130>
   112a4:	0007071b          	sext.w	a4,a4
   112a8:	03761613          	slli	a2,a2,0x37
   112ac:	01e00693          	li	a3,30
   112b0:	00c7e7b3          	or	a5,a5,a2
   112b4:	40e686bb          	subw	a3,a3,a4
   112b8:	0227071b          	addiw	a4,a4,34
   112bc:	00d7d6b3          	srl	a3,a5,a3
   112c0:	00e797b3          	sll	a5,a5,a4
   112c4:	00f037b3          	snez	a5,a5
   112c8:	00f6e7b3          	or	a5,a3,a5
   112cc:	00000713          	li	a4,0
   112d0:	0077f693          	andi	a3,a5,7
   112d4:	04068463          	beqz	a3,1131c <__truncdfsf2+0xbc>
   112d8:	0c00006f          	j	11398 <__truncdfsf2+0x138>
   112dc:	02669693          	slli	a3,a3,0x26
   112e0:	01d7d793          	srli	a5,a5,0x1d
   112e4:	00d036b3          	snez	a3,a3
   112e8:	00d7e7b3          	or	a5,a5,a3
   112ec:	fe5ff06f          	j	112d0 <__truncdfsf2+0x70>
   112f0:	00071663          	bnez	a4,112fc <__truncdfsf2+0x9c>
   112f4:	00f037b3          	snez	a5,a5
   112f8:	fd9ff06f          	j	112d0 <__truncdfsf2+0x70>
   112fc:	0ff00713          	li	a4,255
   11300:	00078e63          	beqz	a5,1131c <__truncdfsf2+0xbc>
   11304:	01d7d793          	srli	a5,a5,0x1d
   11308:	ff87f793          	andi	a5,a5,-8
   1130c:	020006b7          	lui	a3,0x2000
   11310:	fd9ff06f          	j	112e8 <__truncdfsf2+0x88>
   11314:	00000793          	li	a5,0
   11318:	0ff00713          	li	a4,255
   1131c:	02579693          	slli	a3,a5,0x25
   11320:	0006de63          	bgez	a3,1133c <__truncdfsf2+0xdc>
   11324:	00170713          	addi	a4,a4,1
   11328:	0ff00693          	li	a3,255
   1132c:	08d70063          	beq	a4,a3,113ac <__truncdfsf2+0x14c>
   11330:	fc0006b7          	lui	a3,0xfc000
   11334:	fff68693          	addi	a3,a3,-1 # fffffffffbffffff <__global_pointer$+0xfffffffffbfed02f>
   11338:	00d7f7b3          	and	a5,a5,a3
   1133c:	0ff00693          	li	a3,255
   11340:	0037d793          	srli	a5,a5,0x3
   11344:	00d71863          	bne	a4,a3,11354 <__truncdfsf2+0xf4>
   11348:	00078663          	beqz	a5,11354 <__truncdfsf2+0xf4>
   1134c:	004007b7          	lui	a5,0x400
   11350:	00000513          	li	a0,0
   11354:	008006b7          	lui	a3,0x800
   11358:	fff68693          	addi	a3,a3,-1 # 7fffff <__global_pointer$+0x7ed02f>
   1135c:	00d7f7b3          	and	a5,a5,a3
   11360:	808006b7          	lui	a3,0x80800
   11364:	fff68693          	addi	a3,a3,-1 # ffffffff807fffff <__global_pointer$+0xffffffff807ed02f>
   11368:	0ff77713          	andi	a4,a4,255
   1136c:	0177171b          	slliw	a4,a4,0x17
   11370:	00d7f7b3          	and	a5,a5,a3
   11374:	00e7e7b3          	or	a5,a5,a4
   11378:	80000737          	lui	a4,0x80000
   1137c:	fff74713          	not	a4,a4
   11380:	00e7f7b3          	and	a5,a5,a4
   11384:	01f5151b          	slliw	a0,a0,0x1f
   11388:	00a7e533          	or	a0,a5,a0
   1138c:	00008067          	ret
   11390:	00100793          	li	a5,1
   11394:	00000713          	li	a4,0
   11398:	00f7f693          	andi	a3,a5,15
   1139c:	00400613          	li	a2,4
   113a0:	f6c68ee3          	beq	a3,a2,1131c <__truncdfsf2+0xbc>
   113a4:	00478793          	addi	a5,a5,4 # 400004 <__global_pointer$+0x3ed034>
   113a8:	f75ff06f          	j	1131c <__truncdfsf2+0xbc>
   113ac:	00000793          	li	a5,0
   113b0:	f8dff06f          	j	1133c <__truncdfsf2+0xdc>
   113b4:	0000                	unimp
	...

00000000000113b8 <__muldi3>:
   113b8:	00050613          	mv	a2,a0
   113bc:	00000513          	li	a0,0
   113c0:	0015f693          	andi	a3,a1,1
   113c4:	00068463          	beqz	a3,113cc <__muldi3+0x14>
   113c8:	00c50533          	add	a0,a0,a2
   113cc:	0015d593          	srli	a1,a1,0x1
   113d0:	00161613          	slli	a2,a2,0x1
   113d4:	fe0596e3          	bnez	a1,113c0 <__muldi3+0x8>
   113d8:	00008067          	ret
   113dc:	0000                	unimp
	...

00000000000113e0 <__clzdi2>:
   113e0:	03800793          	li	a5,56
   113e4:	00f55733          	srl	a4,a0,a5
   113e8:	0ff77713          	andi	a4,a4,255
   113ec:	00071663          	bnez	a4,113f8 <__clzdi2+0x18>
   113f0:	ff878793          	addi	a5,a5,-8
   113f4:	fe0798e3          	bnez	a5,113e4 <__clzdi2+0x4>
   113f8:	04000713          	li	a4,64
   113fc:	40f70733          	sub	a4,a4,a5
   11400:	00f557b3          	srl	a5,a0,a5
   11404:	00012537          	lui	a0,0x12
   11408:	ee050513          	addi	a0,a0,-288 # 11ee0 <__clz_tab>
   1140c:	00a787b3          	add	a5,a5,a0
   11410:	0007c503          	lbu	a0,0(a5)
   11414:	40a7053b          	subw	a0,a4,a0
   11418:	00008067          	ret
   1141c:	0000                	unimp
	...

0000000000011420 <atexit>:
   11420:	00050593          	mv	a1,a0
   11424:	00000693          	li	a3,0
   11428:	00000613          	li	a2,0
   1142c:	00000513          	li	a0,0
   11430:	2400006f          	j	11670 <__register_exitproc>
   11434:	0000                	unimp
	...

0000000000011438 <exit>:
   11438:	ff010113          	addi	sp,sp,-16
   1143c:	00000593          	li	a1,0
   11440:	00813023          	sd	s0,0(sp)
   11444:	00113423          	sd	ra,8(sp)
   11448:	00050413          	mv	s0,a0
   1144c:	2b0000ef          	jal	ra,116fc <__call_exitprocs>
   11450:	000127b7          	lui	a5,0x12
   11454:	7d87b503          	ld	a0,2008(a5) # 127d8 <_global_impure_ptr>
   11458:	05853783          	ld	a5,88(a0)
   1145c:	00078463          	beqz	a5,11464 <exit+0x2c>
   11460:	000780e7          	jalr	a5
   11464:	00040513          	mv	a0,s0
   11468:	00001097          	auipc	ra,0x1
   1146c:	9f8080e7          	jalr	-1544(ra) # 11e60 <_exit>
   11470:	0000                	unimp
	...

0000000000011474 <__libc_fini_array>:
   11474:	fe010113          	addi	sp,sp,-32
   11478:	000127b7          	lui	a5,0x12
   1147c:	00012737          	lui	a4,0x12
   11480:	00813823          	sd	s0,16(sp)
   11484:	00870713          	addi	a4,a4,8 # 12008 <__init_array_end>
   11488:	01078413          	addi	s0,a5,16 # 12010 <__fini_array_end>
   1148c:	40e40433          	sub	s0,s0,a4
   11490:	00913423          	sd	s1,8(sp)
   11494:	01213023          	sd	s2,0(sp)
   11498:	00113c23          	sd	ra,24(sp)
   1149c:	40345413          	srai	s0,s0,0x3
   114a0:	00000493          	li	s1,0
   114a4:	01078913          	addi	s2,a5,16
   114a8:	02941063          	bne	s0,s1,114c8 <__libc_fini_array+0x54>
   114ac:	01013403          	ld	s0,16(sp)
   114b0:	01813083          	ld	ra,24(sp)
   114b4:	00813483          	ld	s1,8(sp)
   114b8:	00013903          	ld	s2,0(sp)
   114bc:	02010113          	addi	sp,sp,32
   114c0:	fffff317          	auipc	t1,0xfffff
   114c4:	c4030067          	jr	-960(t1) # 10100 <_fini>
   114c8:	ff800593          	li	a1,-8
   114cc:	00048513          	mv	a0,s1
   114d0:	ee9ff0ef          	jal	ra,113b8 <__muldi3>
   114d4:	00a90533          	add	a0,s2,a0
   114d8:	ff853783          	ld	a5,-8(a0)
   114dc:	00148493          	addi	s1,s1,1
   114e0:	000780e7          	jalr	a5
   114e4:	fc5ff06f          	j	114a8 <__libc_fini_array+0x34>
   114e8:	0000                	unimp
	...

00000000000114ec <__libc_init_array>:
   114ec:	fe010113          	addi	sp,sp,-32
   114f0:	00813823          	sd	s0,16(sp)
   114f4:	00913423          	sd	s1,8(sp)
   114f8:	00012437          	lui	s0,0x12
   114fc:	000124b7          	lui	s1,0x12
   11500:	00048793          	mv	a5,s1
   11504:	00040413          	mv	s0,s0
   11508:	40f40433          	sub	s0,s0,a5
   1150c:	01213023          	sd	s2,0(sp)
   11510:	00113c23          	sd	ra,24(sp)
   11514:	40345413          	srai	s0,s0,0x3
   11518:	00048493          	mv	s1,s1
   1151c:	00000913          	li	s2,0
   11520:	04891463          	bne	s2,s0,11568 <__libc_init_array+0x7c>
   11524:	000124b7          	lui	s1,0x12
   11528:	fffff097          	auipc	ra,0xfffff
   1152c:	bd8080e7          	jalr	-1064(ra) # 10100 <_fini>
   11530:	00012437          	lui	s0,0x12
   11534:	00048793          	mv	a5,s1
   11538:	00840413          	addi	s0,s0,8 # 12008 <__init_array_end>
   1153c:	40f40433          	sub	s0,s0,a5
   11540:	40345413          	srai	s0,s0,0x3
   11544:	00048493          	mv	s1,s1
   11548:	00000913          	li	s2,0
   1154c:	02891863          	bne	s2,s0,1157c <__libc_init_array+0x90>
   11550:	01813083          	ld	ra,24(sp)
   11554:	01013403          	ld	s0,16(sp)
   11558:	00813483          	ld	s1,8(sp)
   1155c:	00013903          	ld	s2,0(sp)
   11560:	02010113          	addi	sp,sp,32
   11564:	00008067          	ret
   11568:	0004b783          	ld	a5,0(s1) # 12000 <__frame_dummy_init_array_entry>
   1156c:	00190913          	addi	s2,s2,1
   11570:	00848493          	addi	s1,s1,8
   11574:	000780e7          	jalr	a5
   11578:	fa9ff06f          	j	11520 <__libc_init_array+0x34>
   1157c:	0004b783          	ld	a5,0(s1)
   11580:	00190913          	addi	s2,s2,1
   11584:	00848493          	addi	s1,s1,8
   11588:	000780e7          	jalr	a5
   1158c:	fc1ff06f          	j	1154c <__libc_init_array+0x60>
   11590:	0000                	unimp
	...

0000000000011594 <memset>:
   11594:	00f00813          	li	a6,15
   11598:	00050713          	mv	a4,a0
   1159c:	02c87a63          	bleu	a2,a6,115d0 <memset+0x3c>
   115a0:	00f77793          	andi	a5,a4,15
   115a4:	0a079063          	bnez	a5,11644 <memset+0xb0>
   115a8:	06059e63          	bnez	a1,11624 <memset+0x90>
   115ac:	ff067693          	andi	a3,a2,-16
   115b0:	00f67613          	andi	a2,a2,15
   115b4:	00e686b3          	add	a3,a3,a4
   115b8:	00b73023          	sd	a1,0(a4)
   115bc:	00b73423          	sd	a1,8(a4)
   115c0:	01070713          	addi	a4,a4,16
   115c4:	fed76ae3          	bltu	a4,a3,115b8 <memset+0x24>
   115c8:	00061463          	bnez	a2,115d0 <memset+0x3c>
   115cc:	00008067          	ret
   115d0:	40c806b3          	sub	a3,a6,a2
   115d4:	00269693          	slli	a3,a3,0x2
   115d8:	00000297          	auipc	t0,0x0
   115dc:	005686b3          	add	a3,a3,t0
   115e0:	00c68067          	jr	12(a3)
   115e4:	00b70723          	sb	a1,14(a4)
   115e8:	00b706a3          	sb	a1,13(a4)
   115ec:	00b70623          	sb	a1,12(a4)
   115f0:	00b705a3          	sb	a1,11(a4)
   115f4:	00b70523          	sb	a1,10(a4)
   115f8:	00b704a3          	sb	a1,9(a4)
   115fc:	00b70423          	sb	a1,8(a4)
   11600:	00b703a3          	sb	a1,7(a4)
   11604:	00b70323          	sb	a1,6(a4)
   11608:	00b702a3          	sb	a1,5(a4)
   1160c:	00b70223          	sb	a1,4(a4)
   11610:	00b701a3          	sb	a1,3(a4)
   11614:	00b70123          	sb	a1,2(a4)
   11618:	00b700a3          	sb	a1,1(a4)
   1161c:	00b70023          	sb	a1,0(a4)
   11620:	00008067          	ret
   11624:	0ff5f593          	andi	a1,a1,255
   11628:	00859693          	slli	a3,a1,0x8
   1162c:	00d5e5b3          	or	a1,a1,a3
   11630:	01059693          	slli	a3,a1,0x10
   11634:	00d5e5b3          	or	a1,a1,a3
   11638:	02059693          	slli	a3,a1,0x20
   1163c:	00d5e5b3          	or	a1,a1,a3
   11640:	f6dff06f          	j	115ac <memset+0x18>
   11644:	00279693          	slli	a3,a5,0x2
   11648:	00000297          	auipc	t0,0x0
   1164c:	005686b3          	add	a3,a3,t0
   11650:	00008293          	mv	t0,ra
   11654:	f98680e7          	jalr	-104(a3)
   11658:	00028093          	mv	ra,t0
   1165c:	ff078793          	addi	a5,a5,-16
   11660:	40f70733          	sub	a4,a4,a5
   11664:	00f60633          	add	a2,a2,a5
   11668:	f6c874e3          	bleu	a2,a6,115d0 <memset+0x3c>
   1166c:	f3dff06f          	j	115a8 <memset+0x14>

0000000000011670 <__register_exitproc>:
   11670:	000127b7          	lui	a5,0x12
   11674:	7d87b703          	ld	a4,2008(a5) # 127d8 <_global_impure_ptr>
   11678:	00050313          	mv	t1,a0
   1167c:	1f873783          	ld	a5,504(a4)
   11680:	00079663          	bnez	a5,1168c <__register_exitproc+0x1c>
   11684:	20070793          	addi	a5,a4,512
   11688:	1ef73c23          	sd	a5,504(a4)
   1168c:	0087a703          	lw	a4,8(a5)
   11690:	01f00813          	li	a6,31
   11694:	fff00513          	li	a0,-1
   11698:	04e84e63          	blt	a6,a4,116f4 <__register_exitproc+0x84>
   1169c:	02030e63          	beqz	t1,116d8 <__register_exitproc+0x68>
   116a0:	00371813          	slli	a6,a4,0x3
   116a4:	01078833          	add	a6,a5,a6
   116a8:	10c83823          	sd	a2,272(a6)
   116ac:	3107a883          	lw	a7,784(a5)
   116b0:	00100613          	li	a2,1
   116b4:	00e6163b          	sllw	a2,a2,a4
   116b8:	00c8e8b3          	or	a7,a7,a2
   116bc:	3117a823          	sw	a7,784(a5)
   116c0:	20d83823          	sd	a3,528(a6)
   116c4:	00200693          	li	a3,2
   116c8:	00d31863          	bne	t1,a3,116d8 <__register_exitproc+0x68>
   116cc:	3147a683          	lw	a3,788(a5)
   116d0:	00c6e633          	or	a2,a3,a2
   116d4:	30c7aa23          	sw	a2,788(a5)
   116d8:	0017069b          	addiw	a3,a4,1
   116dc:	00270713          	addi	a4,a4,2
   116e0:	00371713          	slli	a4,a4,0x3
   116e4:	00d7a423          	sw	a3,8(a5)
   116e8:	00e787b3          	add	a5,a5,a4
   116ec:	00b7b023          	sd	a1,0(a5)
   116f0:	00000513          	li	a0,0
   116f4:	00008067          	ret
   116f8:	0000                	unimp
	...

00000000000116fc <__call_exitprocs>:
   116fc:	fb010113          	addi	sp,sp,-80
   11700:	000127b7          	lui	a5,0x12
   11704:	03313423          	sd	s3,40(sp)
   11708:	7d87b983          	ld	s3,2008(a5) # 127d8 <_global_impure_ptr>
   1170c:	03413023          	sd	s4,32(sp)
   11710:	01513c23          	sd	s5,24(sp)
   11714:	01613823          	sd	s6,16(sp)
   11718:	04113423          	sd	ra,72(sp)
   1171c:	04813023          	sd	s0,64(sp)
   11720:	02913c23          	sd	s1,56(sp)
   11724:	03213823          	sd	s2,48(sp)
   11728:	01713423          	sd	s7,8(sp)
   1172c:	00050a93          	mv	s5,a0
   11730:	00058a13          	mv	s4,a1
   11734:	00100b13          	li	s6,1
   11738:	1f89b403          	ld	s0,504(s3)
   1173c:	00040c63          	beqz	s0,11754 <__call_exitprocs+0x58>
   11740:	00842483          	lw	s1,8(s0)
   11744:	fff4849b          	addiw	s1,s1,-1
   11748:	00349913          	slli	s2,s1,0x3
   1174c:	01240933          	add	s2,s0,s2
   11750:	0204d863          	bgez	s1,11780 <__call_exitprocs+0x84>
   11754:	04813083          	ld	ra,72(sp)
   11758:	04013403          	ld	s0,64(sp)
   1175c:	03813483          	ld	s1,56(sp)
   11760:	03013903          	ld	s2,48(sp)
   11764:	02813983          	ld	s3,40(sp)
   11768:	02013a03          	ld	s4,32(sp)
   1176c:	01813a83          	ld	s5,24(sp)
   11770:	01013b03          	ld	s6,16(sp)
   11774:	00813b83          	ld	s7,8(sp)
   11778:	05010113          	addi	sp,sp,80
   1177c:	00008067          	ret
   11780:	000a0c63          	beqz	s4,11798 <__call_exitprocs+0x9c>
   11784:	21093783          	ld	a5,528(s2)
   11788:	01478863          	beq	a5,s4,11798 <__call_exitprocs+0x9c>
   1178c:	fff4849b          	addiw	s1,s1,-1
   11790:	ff890913          	addi	s2,s2,-8
   11794:	fbdff06f          	j	11750 <__call_exitprocs+0x54>
   11798:	00842783          	lw	a5,8(s0)
   1179c:	01093683          	ld	a3,16(s2)
   117a0:	fff7879b          	addiw	a5,a5,-1
   117a4:	02979e63          	bne	a5,s1,117e0 <__call_exitprocs+0xe4>
   117a8:	00942423          	sw	s1,8(s0)
   117ac:	fe0680e3          	beqz	a3,1178c <__call_exitprocs+0x90>
   117b0:	31042703          	lw	a4,784(s0)
   117b4:	009b163b          	sllw	a2,s6,s1
   117b8:	00842b83          	lw	s7,8(s0)
   117bc:	00c77733          	and	a4,a4,a2
   117c0:	0007071b          	sext.w	a4,a4
   117c4:	02071263          	bnez	a4,117e8 <__call_exitprocs+0xec>
   117c8:	000680e7          	jalr	a3
   117cc:	00842703          	lw	a4,8(s0)
   117d0:	1f89b783          	ld	a5,504(s3)
   117d4:	f77712e3          	bne	a4,s7,11738 <__call_exitprocs+0x3c>
   117d8:	faf40ae3          	beq	s0,a5,1178c <__call_exitprocs+0x90>
   117dc:	f5dff06f          	j	11738 <__call_exitprocs+0x3c>
   117e0:	00093823          	sd	zero,16(s2)
   117e4:	fc9ff06f          	j	117ac <__call_exitprocs+0xb0>
   117e8:	31442783          	lw	a5,788(s0)
   117ec:	11093583          	ld	a1,272(s2)
   117f0:	00c7f7b3          	and	a5,a5,a2
   117f4:	0007879b          	sext.w	a5,a5
   117f8:	00079863          	bnez	a5,11808 <__call_exitprocs+0x10c>
   117fc:	000a8513          	mv	a0,s5
   11800:	000680e7          	jalr	a3
   11804:	fc9ff06f          	j	117cc <__call_exitprocs+0xd0>
   11808:	00058513          	mv	a0,a1
   1180c:	000680e7          	jalr	a3
   11810:	fbdff06f          	j	117cc <__call_exitprocs+0xd0>
   11814:	0000                	unimp
	...

0000000000011818 <conv_stat>:
   11818:	0005b783          	ld	a5,0(a1)
   1181c:	00f51023          	sh	a5,0(a0)
   11820:	0085b783          	ld	a5,8(a1)
   11824:	00f51123          	sh	a5,2(a0)
   11828:	0105a783          	lw	a5,16(a1)
   1182c:	00f52223          	sw	a5,4(a0)
   11830:	0145a783          	lw	a5,20(a1)
   11834:	00f51423          	sh	a5,8(a0)
   11838:	0185a783          	lw	a5,24(a1)
   1183c:	00f51523          	sh	a5,10(a0)
   11840:	01c5a783          	lw	a5,28(a1)
   11844:	00f51623          	sh	a5,12(a0)
   11848:	0205b783          	ld	a5,32(a1)
   1184c:	00f51723          	sh	a5,14(a0)
   11850:	0305b783          	ld	a5,48(a1)
   11854:	00f53823          	sd	a5,16(a0)
   11858:	0405b783          	ld	a5,64(a1)
   1185c:	04f53823          	sd	a5,80(a0)
   11860:	0385a783          	lw	a5,56(a1)
   11864:	04f53423          	sd	a5,72(a0)
   11868:	0485b783          	ld	a5,72(a1)
   1186c:	00f53c23          	sd	a5,24(a0)
   11870:	0585b783          	ld	a5,88(a1)
   11874:	02f53423          	sd	a5,40(a0)
   11878:	0685b783          	ld	a5,104(a1)
   1187c:	02f53c23          	sd	a5,56(a0)
   11880:	00008067          	ret

0000000000011884 <__syscall_error>:
   11884:	ff010113          	addi	sp,sp,-16
   11888:	00813023          	sd	s0,0(sp)
   1188c:	00113423          	sd	ra,8(sp)
   11890:	00050413          	mv	s0,a0
   11894:	00000097          	auipc	ra,0x0
   11898:	5f8080e7          	jalr	1528(ra) # 11e8c <__errno>
   1189c:	408007bb          	negw	a5,s0
   118a0:	00813083          	ld	ra,8(sp)
   118a4:	00013403          	ld	s0,0(sp)
   118a8:	00f52023          	sw	a5,0(a0)
   118ac:	fff00513          	li	a0,-1
   118b0:	01010113          	addi	sp,sp,16
   118b4:	00008067          	ret

00000000000118b8 <__internal_syscall>:
   118b8:	00050893          	mv	a7,a0
   118bc:	00058513          	mv	a0,a1
   118c0:	00060593          	mv	a1,a2
   118c4:	00068613          	mv	a2,a3
   118c8:	00070693          	mv	a3,a4
   118cc:	00000073          	ecall
   118d0:	00055663          	bgez	a0,118dc <__internal_syscall+0x24>
   118d4:	00000317          	auipc	t1,0x0
   118d8:	fb030067          	jr	-80(t1) # 11884 <__syscall_error>
   118dc:	00008067          	ret

00000000000118e0 <open>:
   118e0:	ff010113          	addi	sp,sp,-16
   118e4:	00060693          	mv	a3,a2
   118e8:	00000713          	li	a4,0
   118ec:	00058613          	mv	a2,a1
   118f0:	00050593          	mv	a1,a0
   118f4:	40000513          	li	a0,1024
   118f8:	00113423          	sd	ra,8(sp)
   118fc:	00000097          	auipc	ra,0x0
   11900:	fbc080e7          	jalr	-68(ra) # 118b8 <__internal_syscall>
   11904:	00813083          	ld	ra,8(sp)
   11908:	0005051b          	sext.w	a0,a0
   1190c:	01010113          	addi	sp,sp,16
   11910:	00008067          	ret

0000000000011914 <openat>:
   11914:	ff010113          	addi	sp,sp,-16
   11918:	00068713          	mv	a4,a3
   1191c:	00060693          	mv	a3,a2
   11920:	00058613          	mv	a2,a1
   11924:	00050593          	mv	a1,a0
   11928:	03800513          	li	a0,56
   1192c:	00113423          	sd	ra,8(sp)
   11930:	f89ff0ef          	jal	ra,118b8 <__internal_syscall>
   11934:	00813083          	ld	ra,8(sp)
   11938:	0005051b          	sext.w	a0,a0
   1193c:	01010113          	addi	sp,sp,16
   11940:	00008067          	ret

0000000000011944 <lseek>:
   11944:	00060693          	mv	a3,a2
   11948:	00000713          	li	a4,0
   1194c:	00058613          	mv	a2,a1
   11950:	00050593          	mv	a1,a0
   11954:	03e00513          	li	a0,62
   11958:	00000317          	auipc	t1,0x0
   1195c:	f6030067          	jr	-160(t1) # 118b8 <__internal_syscall>

0000000000011960 <read>:
   11960:	00060693          	mv	a3,a2
   11964:	00000713          	li	a4,0
   11968:	00058613          	mv	a2,a1
   1196c:	00050593          	mv	a1,a0
   11970:	03f00513          	li	a0,63
   11974:	f45ff06f          	j	118b8 <__internal_syscall>

0000000000011978 <write>:
   11978:	00060693          	mv	a3,a2
   1197c:	00000713          	li	a4,0
   11980:	00058613          	mv	a2,a1
   11984:	00050593          	mv	a1,a0
   11988:	04000513          	li	a0,64
   1198c:	00000317          	auipc	t1,0x0
   11990:	f2c30067          	jr	-212(t1) # 118b8 <__internal_syscall>

0000000000011994 <fstat>:
   11994:	f6010113          	addi	sp,sp,-160
   11998:	08913423          	sd	s1,136(sp)
   1199c:	00010613          	mv	a2,sp
   119a0:	00058493          	mv	s1,a1
   119a4:	00000713          	li	a4,0
   119a8:	00050593          	mv	a1,a0
   119ac:	00000693          	li	a3,0
   119b0:	05000513          	li	a0,80
   119b4:	08113c23          	sd	ra,152(sp)
   119b8:	08813823          	sd	s0,144(sp)
   119bc:	efdff0ef          	jal	ra,118b8 <__internal_syscall>
   119c0:	00050413          	mv	s0,a0
   119c4:	00010593          	mv	a1,sp
   119c8:	00048513          	mv	a0,s1
   119cc:	e4dff0ef          	jal	ra,11818 <conv_stat>
   119d0:	0004051b          	sext.w	a0,s0
   119d4:	09813083          	ld	ra,152(sp)
   119d8:	09013403          	ld	s0,144(sp)
   119dc:	08813483          	ld	s1,136(sp)
   119e0:	0a010113          	addi	sp,sp,160
   119e4:	00008067          	ret

00000000000119e8 <stat>:
   119e8:	f6010113          	addi	sp,sp,-160
   119ec:	08913423          	sd	s1,136(sp)
   119f0:	00010613          	mv	a2,sp
   119f4:	00058493          	mv	s1,a1
   119f8:	00000713          	li	a4,0
   119fc:	00050593          	mv	a1,a0
   11a00:	00000693          	li	a3,0
   11a04:	40e00513          	li	a0,1038
   11a08:	08113c23          	sd	ra,152(sp)
   11a0c:	08813823          	sd	s0,144(sp)
   11a10:	00000097          	auipc	ra,0x0
   11a14:	ea8080e7          	jalr	-344(ra) # 118b8 <__internal_syscall>
   11a18:	00050413          	mv	s0,a0
   11a1c:	00010593          	mv	a1,sp
   11a20:	00048513          	mv	a0,s1
   11a24:	00000097          	auipc	ra,0x0
   11a28:	df4080e7          	jalr	-524(ra) # 11818 <conv_stat>
   11a2c:	0004051b          	sext.w	a0,s0
   11a30:	09813083          	ld	ra,152(sp)
   11a34:	09013403          	ld	s0,144(sp)
   11a38:	08813483          	ld	s1,136(sp)
   11a3c:	0a010113          	addi	sp,sp,160
   11a40:	00008067          	ret

0000000000011a44 <lstat>:
   11a44:	f6010113          	addi	sp,sp,-160
   11a48:	08913423          	sd	s1,136(sp)
   11a4c:	00010613          	mv	a2,sp
   11a50:	00058493          	mv	s1,a1
   11a54:	00000713          	li	a4,0
   11a58:	00050593          	mv	a1,a0
   11a5c:	00000693          	li	a3,0
   11a60:	40f00513          	li	a0,1039
   11a64:	08113c23          	sd	ra,152(sp)
   11a68:	08813823          	sd	s0,144(sp)
   11a6c:	e4dff0ef          	jal	ra,118b8 <__internal_syscall>
   11a70:	00050413          	mv	s0,a0
   11a74:	00010593          	mv	a1,sp
   11a78:	00048513          	mv	a0,s1
   11a7c:	d9dff0ef          	jal	ra,11818 <conv_stat>
   11a80:	0004051b          	sext.w	a0,s0
   11a84:	09813083          	ld	ra,152(sp)
   11a88:	09013403          	ld	s0,144(sp)
   11a8c:	08813483          	ld	s1,136(sp)
   11a90:	0a010113          	addi	sp,sp,160
   11a94:	00008067          	ret

0000000000011a98 <fstatat>:
   11a98:	f6010113          	addi	sp,sp,-160
   11a9c:	08913423          	sd	s1,136(sp)
   11aa0:	00068713          	mv	a4,a3
   11aa4:	00060493          	mv	s1,a2
   11aa8:	00010693          	mv	a3,sp
   11aac:	00058613          	mv	a2,a1
   11ab0:	00050593          	mv	a1,a0
   11ab4:	04f00513          	li	a0,79
   11ab8:	08113c23          	sd	ra,152(sp)
   11abc:	08813823          	sd	s0,144(sp)
   11ac0:	00000097          	auipc	ra,0x0
   11ac4:	df8080e7          	jalr	-520(ra) # 118b8 <__internal_syscall>
   11ac8:	00050413          	mv	s0,a0
   11acc:	00010593          	mv	a1,sp
   11ad0:	00048513          	mv	a0,s1
   11ad4:	00000097          	auipc	ra,0x0
   11ad8:	d44080e7          	jalr	-700(ra) # 11818 <conv_stat>
   11adc:	0004051b          	sext.w	a0,s0
   11ae0:	09813083          	ld	ra,152(sp)
   11ae4:	09013403          	ld	s0,144(sp)
   11ae8:	08813483          	ld	s1,136(sp)
   11aec:	0a010113          	addi	sp,sp,160
   11af0:	00008067          	ret

0000000000011af4 <access>:
   11af4:	ff010113          	addi	sp,sp,-16
   11af8:	00058613          	mv	a2,a1
   11afc:	00000713          	li	a4,0
   11b00:	00050593          	mv	a1,a0
   11b04:	00000693          	li	a3,0
   11b08:	40900513          	li	a0,1033
   11b0c:	00113423          	sd	ra,8(sp)
   11b10:	da9ff0ef          	jal	ra,118b8 <__internal_syscall>
   11b14:	00813083          	ld	ra,8(sp)
   11b18:	0005051b          	sext.w	a0,a0
   11b1c:	01010113          	addi	sp,sp,16
   11b20:	00008067          	ret

0000000000011b24 <faccessat>:
   11b24:	ff010113          	addi	sp,sp,-16
   11b28:	00068713          	mv	a4,a3
   11b2c:	00060693          	mv	a3,a2
   11b30:	00058613          	mv	a2,a1
   11b34:	00050593          	mv	a1,a0
   11b38:	03000513          	li	a0,48
   11b3c:	00113423          	sd	ra,8(sp)
   11b40:	00000097          	auipc	ra,0x0
   11b44:	d78080e7          	jalr	-648(ra) # 118b8 <__internal_syscall>
   11b48:	00813083          	ld	ra,8(sp)
   11b4c:	0005051b          	sext.w	a0,a0
   11b50:	01010113          	addi	sp,sp,16
   11b54:	00008067          	ret

0000000000011b58 <close>:
   11b58:	ff010113          	addi	sp,sp,-16
   11b5c:	00050593          	mv	a1,a0
   11b60:	00000713          	li	a4,0
   11b64:	00000693          	li	a3,0
   11b68:	00000613          	li	a2,0
   11b6c:	03900513          	li	a0,57
   11b70:	00113423          	sd	ra,8(sp)
   11b74:	d45ff0ef          	jal	ra,118b8 <__internal_syscall>
   11b78:	00813083          	ld	ra,8(sp)
   11b7c:	0005051b          	sext.w	a0,a0
   11b80:	01010113          	addi	sp,sp,16
   11b84:	00008067          	ret

0000000000011b88 <link>:
   11b88:	ff010113          	addi	sp,sp,-16
   11b8c:	00058613          	mv	a2,a1
   11b90:	00000713          	li	a4,0
   11b94:	00050593          	mv	a1,a0
   11b98:	00000693          	li	a3,0
   11b9c:	40100513          	li	a0,1025
   11ba0:	00113423          	sd	ra,8(sp)
   11ba4:	00000097          	auipc	ra,0x0
   11ba8:	d14080e7          	jalr	-748(ra) # 118b8 <__internal_syscall>
   11bac:	00813083          	ld	ra,8(sp)
   11bb0:	0005051b          	sext.w	a0,a0
   11bb4:	01010113          	addi	sp,sp,16
   11bb8:	00008067          	ret

0000000000011bbc <unlink>:
   11bbc:	ff010113          	addi	sp,sp,-16
   11bc0:	00050593          	mv	a1,a0
   11bc4:	00000713          	li	a4,0
   11bc8:	00000693          	li	a3,0
   11bcc:	00000613          	li	a2,0
   11bd0:	40200513          	li	a0,1026
   11bd4:	00113423          	sd	ra,8(sp)
   11bd8:	ce1ff0ef          	jal	ra,118b8 <__internal_syscall>
   11bdc:	00813083          	ld	ra,8(sp)
   11be0:	0005051b          	sext.w	a0,a0
   11be4:	01010113          	addi	sp,sp,16
   11be8:	00008067          	ret

0000000000011bec <execve>:
   11bec:	ff010113          	addi	sp,sp,-16
   11bf0:	00113423          	sd	ra,8(sp)
   11bf4:	00000097          	auipc	ra,0x0
   11bf8:	298080e7          	jalr	664(ra) # 11e8c <__errno>
   11bfc:	00813083          	ld	ra,8(sp)
   11c00:	00c00793          	li	a5,12
   11c04:	00f52023          	sw	a5,0(a0)
   11c08:	fff00513          	li	a0,-1
   11c0c:	01010113          	addi	sp,sp,16
   11c10:	00008067          	ret

0000000000011c14 <fork>:
   11c14:	ff010113          	addi	sp,sp,-16
   11c18:	00113423          	sd	ra,8(sp)
   11c1c:	270000ef          	jal	ra,11e8c <__errno>
   11c20:	00813083          	ld	ra,8(sp)
   11c24:	00b00793          	li	a5,11
   11c28:	00f52023          	sw	a5,0(a0)
   11c2c:	fff00513          	li	a0,-1
   11c30:	01010113          	addi	sp,sp,16
   11c34:	00008067          	ret

0000000000011c38 <getpid>:
   11c38:	00100513          	li	a0,1
   11c3c:	00008067          	ret

0000000000011c40 <kill>:
   11c40:	ff010113          	addi	sp,sp,-16
   11c44:	00113423          	sd	ra,8(sp)
   11c48:	244000ef          	jal	ra,11e8c <__errno>
   11c4c:	00813083          	ld	ra,8(sp)
   11c50:	01600793          	li	a5,22
   11c54:	00f52023          	sw	a5,0(a0)
   11c58:	fff00513          	li	a0,-1
   11c5c:	01010113          	addi	sp,sp,16
   11c60:	00008067          	ret

0000000000011c64 <wait>:
   11c64:	ff010113          	addi	sp,sp,-16
   11c68:	00113423          	sd	ra,8(sp)
   11c6c:	00000097          	auipc	ra,0x0
   11c70:	220080e7          	jalr	544(ra) # 11e8c <__errno>
   11c74:	00813083          	ld	ra,8(sp)
   11c78:	00a00793          	li	a5,10
   11c7c:	00f52023          	sw	a5,0(a0)
   11c80:	fff00513          	li	a0,-1
   11c84:	01010113          	addi	sp,sp,16
   11c88:	00008067          	ret

0000000000011c8c <isatty>:
   11c8c:	f8010113          	addi	sp,sp,-128
   11c90:	00810593          	addi	a1,sp,8
   11c94:	06113c23          	sd	ra,120(sp)
   11c98:	cfdff0ef          	jal	ra,11994 <fstat>
   11c9c:	fff00793          	li	a5,-1
   11ca0:	00f50863          	beq	a0,a5,11cb0 <isatty+0x24>
   11ca4:	00c12503          	lw	a0,12(sp)
   11ca8:	40d5551b          	sraiw	a0,a0,0xd
   11cac:	00157513          	andi	a0,a0,1
   11cb0:	07813083          	ld	ra,120(sp)
   11cb4:	08010113          	addi	sp,sp,128
   11cb8:	00008067          	ret

0000000000011cbc <gettimeofday>:
   11cbc:	ff010113          	addi	sp,sp,-16
   11cc0:	00050593          	mv	a1,a0
   11cc4:	00000713          	li	a4,0
   11cc8:	00000693          	li	a3,0
   11ccc:	00000613          	li	a2,0
   11cd0:	0a900513          	li	a0,169
   11cd4:	00113423          	sd	ra,8(sp)
   11cd8:	00000097          	auipc	ra,0x0
   11cdc:	be0080e7          	jalr	-1056(ra) # 118b8 <__internal_syscall>
   11ce0:	00813083          	ld	ra,8(sp)
   11ce4:	0005051b          	sext.w	a0,a0
   11ce8:	01010113          	addi	sp,sp,16
   11cec:	00008067          	ret

0000000000011cf0 <times>:
   11cf0:	fd010113          	addi	sp,sp,-48
   11cf4:	02813023          	sd	s0,32(sp)
   11cf8:	00050413          	mv	s0,a0
   11cfc:	8581b783          	ld	a5,-1960(gp) # 12828 <t0.2572>
   11d00:	00913c23          	sd	s1,24(sp)
   11d04:	02113423          	sd	ra,40(sp)
   11d08:	85818493          	addi	s1,gp,-1960 # 12828 <t0.2572>
   11d0c:	00079a63          	bnez	a5,11d20 <times+0x30>
   11d10:	00000593          	li	a1,0
   11d14:	85818513          	addi	a0,gp,-1960 # 12828 <t0.2572>
   11d18:	00000097          	auipc	ra,0x0
   11d1c:	fa4080e7          	jalr	-92(ra) # 11cbc <gettimeofday>
   11d20:	00000593          	li	a1,0
   11d24:	00010513          	mv	a0,sp
   11d28:	00000097          	auipc	ra,0x0
   11d2c:	f94080e7          	jalr	-108(ra) # 11cbc <gettimeofday>
   11d30:	0004b783          	ld	a5,0(s1)
   11d34:	00013503          	ld	a0,0(sp)
   11d38:	000f45b7          	lui	a1,0xf4
   11d3c:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe1270>
   11d40:	40f50533          	sub	a0,a0,a5
   11d44:	e74ff0ef          	jal	ra,113b8 <__muldi3>
   11d48:	0084b703          	ld	a4,8(s1)
   11d4c:	00813783          	ld	a5,8(sp)
   11d50:	00043823          	sd	zero,16(s0)
   11d54:	00043c23          	sd	zero,24(s0)
   11d58:	40e787b3          	sub	a5,a5,a4
   11d5c:	00f50533          	add	a0,a0,a5
   11d60:	00a43023          	sd	a0,0(s0)
   11d64:	00043423          	sd	zero,8(s0)
   11d68:	02813083          	ld	ra,40(sp)
   11d6c:	02013403          	ld	s0,32(sp)
   11d70:	01813483          	ld	s1,24(sp)
   11d74:	fff00513          	li	a0,-1
   11d78:	03010113          	addi	sp,sp,48
   11d7c:	00008067          	ret

0000000000011d80 <ftime>:
   11d80:	00051423          	sh	zero,8(a0)
   11d84:	00053023          	sd	zero,0(a0)
   11d88:	00000513          	li	a0,0
   11d8c:	00008067          	ret

0000000000011d90 <utime>:
   11d90:	fff00513          	li	a0,-1
   11d94:	00008067          	ret

0000000000011d98 <chown>:
   11d98:	fff00513          	li	a0,-1
   11d9c:	00008067          	ret

0000000000011da0 <chmod>:
   11da0:	fff00513          	li	a0,-1
   11da4:	00008067          	ret

0000000000011da8 <chdir>:
   11da8:	fff00513          	li	a0,-1
   11dac:	00008067          	ret

0000000000011db0 <getcwd>:
   11db0:	00000513          	li	a0,0
   11db4:	00008067          	ret

0000000000011db8 <sysconf>:
   11db8:	00200793          	li	a5,2
   11dbc:	00f50663          	beq	a0,a5,11dc8 <sysconf+0x10>
   11dc0:	fff00513          	li	a0,-1
   11dc4:	00008067          	ret
   11dc8:	000f4537          	lui	a0,0xf4
   11dcc:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe1270>
   11dd0:	00008067          	ret

0000000000011dd4 <sbrk>:
   11dd4:	fe010113          	addi	sp,sp,-32
   11dd8:	00813823          	sd	s0,16(sp)
   11ddc:	8181b783          	ld	a5,-2024(gp) # 127e8 <_edata>
   11de0:	00913423          	sd	s1,8(sp)
   11de4:	00113c23          	sd	ra,24(sp)
   11de8:	00050493          	mv	s1,a0
   11dec:	04079063          	bnez	a5,11e2c <sbrk+0x58>
   11df0:	00000713          	li	a4,0
   11df4:	00000693          	li	a3,0
   11df8:	00000613          	li	a2,0
   11dfc:	00000593          	li	a1,0
   11e00:	0d600513          	li	a0,214
   11e04:	ab5ff0ef          	jal	ra,118b8 <__internal_syscall>
   11e08:	fff00793          	li	a5,-1
   11e0c:	00f51e63          	bne	a0,a5,11e28 <sbrk+0x54>
   11e10:	fff00513          	li	a0,-1
   11e14:	01813083          	ld	ra,24(sp)
   11e18:	01013403          	ld	s0,16(sp)
   11e1c:	00813483          	ld	s1,8(sp)
   11e20:	02010113          	addi	sp,sp,32
   11e24:	00008067          	ret
   11e28:	80a1bc23          	sd	a0,-2024(gp) # 127e8 <_edata>
   11e2c:	8181b583          	ld	a1,-2024(gp) # 127e8 <_edata>
   11e30:	00000713          	li	a4,0
   11e34:	00000693          	li	a3,0
   11e38:	00b485b3          	add	a1,s1,a1
   11e3c:	00000613          	li	a2,0
   11e40:	0d600513          	li	a0,214
   11e44:	a75ff0ef          	jal	ra,118b8 <__internal_syscall>
   11e48:	8181b783          	ld	a5,-2024(gp) # 127e8 <_edata>
   11e4c:	00f484b3          	add	s1,s1,a5
   11e50:	fc9510e3          	bne	a0,s1,11e10 <sbrk+0x3c>
   11e54:	80a1bc23          	sd	a0,-2024(gp) # 127e8 <_edata>
   11e58:	00078513          	mv	a0,a5
   11e5c:	fb9ff06f          	j	11e14 <sbrk+0x40>

0000000000011e60 <_exit>:
   11e60:	ff010113          	addi	sp,sp,-16
   11e64:	00050593          	mv	a1,a0
   11e68:	00000713          	li	a4,0
   11e6c:	00000693          	li	a3,0
   11e70:	00000613          	li	a2,0
   11e74:	05d00513          	li	a0,93
   11e78:	00113423          	sd	ra,8(sp)
   11e7c:	00000097          	auipc	ra,0x0
   11e80:	a3c080e7          	jalr	-1476(ra) # 118b8 <__internal_syscall>
   11e84:	0000006f          	j	11e84 <_exit+0x24>
   11e88:	0000                	unimp
	...

0000000000011e8c <__errno>:
   11e8c:	8101b503          	ld	a0,-2032(gp) # 127e0 <_impure_ptr>
   11e90:	00008067          	ret
   11e94:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000011e98 <__clz_tab-0x48>:
   11e98:	999a                	add	s3,s3,t1
   11e9a:	9999                	andi	a1,a1,-26
   11e9c:	9999                	andi	a1,a1,-26
   11e9e:	3ff1                	addiw	t6,t6,-4
   11ea0:	0b84                	addi	s1,sp,464
   11ea2:	0001                	nop
   11ea4:	0b84                	addi	s1,sp,464
   11ea6:	0001                	nop
   11ea8:	0bf0                	addi	a2,sp,476
   11eaa:	0001                	nop
   11eac:	0b7c                	addi	a5,sp,412
   11eae:	0001                	nop
   11eb0:	0b7c                	addi	a5,sp,412
   11eb2:	0001                	nop
   11eb4:	0c58                	addi	a4,sp,532
   11eb6:	0001                	nop
   11eb8:	0bf0                	addi	a2,sp,476
   11eba:	0001                	nop
   11ebc:	0b7c                	addi	a5,sp,412
   11ebe:	0001                	nop
   11ec0:	0c58                	addi	a4,sp,532
   11ec2:	0001                	nop
   11ec4:	0b7c                	addi	a5,sp,412
   11ec6:	0001                	nop
   11ec8:	0bf0                	addi	a2,sp,476
   11eca:	0001                	nop
   11ecc:	0b78                	addi	a4,sp,412
   11ece:	0001                	nop
   11ed0:	0b78                	addi	a4,sp,412
   11ed2:	0001                	nop
   11ed4:	0b78                	addi	a4,sp,412
   11ed6:	0001                	nop
   11ed8:	0c58                	addi	a4,sp,532
   11eda:	0001                	nop
   11edc:	0000                	unimp
	...

0000000000011ee0 <__clz_tab>:
   11ee0:	0100                	addi	s0,sp,128
   11ee2:	0202                	slli	tp,tp,0x0
   11ee4:	03030303          	lb	t1,48(t1)
   11ee8:	0404                	addi	s1,sp,512
   11eea:	0404                	addi	s1,sp,512
   11eec:	0404                	addi	s1,sp,512
   11eee:	0404                	addi	s1,sp,512
   11ef0:	0505                	addi	a0,a0,1
   11ef2:	0505                	addi	a0,a0,1
   11ef4:	0505                	addi	a0,a0,1
   11ef6:	0505                	addi	a0,a0,1
   11ef8:	0505                	addi	a0,a0,1
   11efa:	0505                	addi	a0,a0,1
   11efc:	0505                	addi	a0,a0,1
   11efe:	0505                	addi	a0,a0,1
   11f00:	0606                	slli	a2,a2,0x1
   11f02:	0606                	slli	a2,a2,0x1
   11f04:	0606                	slli	a2,a2,0x1
   11f06:	0606                	slli	a2,a2,0x1
   11f08:	0606                	slli	a2,a2,0x1
   11f0a:	0606                	slli	a2,a2,0x1
   11f0c:	0606                	slli	a2,a2,0x1
   11f0e:	0606                	slli	a2,a2,0x1
   11f10:	0606                	slli	a2,a2,0x1
   11f12:	0606                	slli	a2,a2,0x1
   11f14:	0606                	slli	a2,a2,0x1
   11f16:	0606                	slli	a2,a2,0x1
   11f18:	0606                	slli	a2,a2,0x1
   11f1a:	0606                	slli	a2,a2,0x1
   11f1c:	0606                	slli	a2,a2,0x1
   11f1e:	0606                	slli	a2,a2,0x1
   11f20:	07070707          	0x7070707
   11f24:	07070707          	0x7070707
   11f28:	07070707          	0x7070707
   11f2c:	07070707          	0x7070707
   11f30:	07070707          	0x7070707
   11f34:	07070707          	0x7070707
   11f38:	07070707          	0x7070707
   11f3c:	07070707          	0x7070707
   11f40:	07070707          	0x7070707
   11f44:	07070707          	0x7070707
   11f48:	07070707          	0x7070707
   11f4c:	07070707          	0x7070707
   11f50:	07070707          	0x7070707
   11f54:	07070707          	0x7070707
   11f58:	07070707          	0x7070707
   11f5c:	07070707          	0x7070707
   11f60:	0808                	addi	a0,sp,16
   11f62:	0808                	addi	a0,sp,16
   11f64:	0808                	addi	a0,sp,16
   11f66:	0808                	addi	a0,sp,16
   11f68:	0808                	addi	a0,sp,16
   11f6a:	0808                	addi	a0,sp,16
   11f6c:	0808                	addi	a0,sp,16
   11f6e:	0808                	addi	a0,sp,16
   11f70:	0808                	addi	a0,sp,16
   11f72:	0808                	addi	a0,sp,16
   11f74:	0808                	addi	a0,sp,16
   11f76:	0808                	addi	a0,sp,16
   11f78:	0808                	addi	a0,sp,16
   11f7a:	0808                	addi	a0,sp,16
   11f7c:	0808                	addi	a0,sp,16
   11f7e:	0808                	addi	a0,sp,16
   11f80:	0808                	addi	a0,sp,16
   11f82:	0808                	addi	a0,sp,16
   11f84:	0808                	addi	a0,sp,16
   11f86:	0808                	addi	a0,sp,16
   11f88:	0808                	addi	a0,sp,16
   11f8a:	0808                	addi	a0,sp,16
   11f8c:	0808                	addi	a0,sp,16
   11f8e:	0808                	addi	a0,sp,16
   11f90:	0808                	addi	a0,sp,16
   11f92:	0808                	addi	a0,sp,16
   11f94:	0808                	addi	a0,sp,16
   11f96:	0808                	addi	a0,sp,16
   11f98:	0808                	addi	a0,sp,16
   11f9a:	0808                	addi	a0,sp,16
   11f9c:	0808                	addi	a0,sp,16
   11f9e:	0808                	addi	a0,sp,16
   11fa0:	0808                	addi	a0,sp,16
   11fa2:	0808                	addi	a0,sp,16
   11fa4:	0808                	addi	a0,sp,16
   11fa6:	0808                	addi	a0,sp,16
   11fa8:	0808                	addi	a0,sp,16
   11faa:	0808                	addi	a0,sp,16
   11fac:	0808                	addi	a0,sp,16
   11fae:	0808                	addi	a0,sp,16
   11fb0:	0808                	addi	a0,sp,16
   11fb2:	0808                	addi	a0,sp,16
   11fb4:	0808                	addi	a0,sp,16
   11fb6:	0808                	addi	a0,sp,16
   11fb8:	0808                	addi	a0,sp,16
   11fba:	0808                	addi	a0,sp,16
   11fbc:	0808                	addi	a0,sp,16
   11fbe:	0808                	addi	a0,sp,16
   11fc0:	0808                	addi	a0,sp,16
   11fc2:	0808                	addi	a0,sp,16
   11fc4:	0808                	addi	a0,sp,16
   11fc6:	0808                	addi	a0,sp,16
   11fc8:	0808                	addi	a0,sp,16
   11fca:	0808                	addi	a0,sp,16
   11fcc:	0808                	addi	a0,sp,16
   11fce:	0808                	addi	a0,sp,16
   11fd0:	0808                	addi	a0,sp,16
   11fd2:	0808                	addi	a0,sp,16
   11fd4:	0808                	addi	a0,sp,16
   11fd6:	0808                	addi	a0,sp,16
   11fd8:	0808                	addi	a0,sp,16
   11fda:	0808                	addi	a0,sp,16
   11fdc:	0808                	addi	a0,sp,16
   11fde:	0808                	addi	a0,sp,16

Disassembly of section .eh_frame:

0000000000011fe0 <__EH_FRAME_BEGIN__>:
   11fe0:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000012000 <__frame_dummy_init_array_entry>:
   12000:	01c4                	addi	s1,sp,196
   12002:	0001                	nop
   12004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000012008 <__do_global_dtors_aux_fini_array_entry>:
   12008:	0170                	addi	a2,sp,140
   1200a:	0001                	nop
   1200c:	0000                	unimp
	...

Disassembly of section .data:

0000000000012010 <result_double>:
   12010:	999a                	add	s3,s3,t1
   12012:	9999                	andi	a1,a1,-26
   12014:	9999                	andi	a1,a1,-26
   12016:	3ff1                	addiw	t6,t6,-4
   12018:	999a                	add	s3,s3,t1
   1201a:	9999                	andi	a1,a1,-26
   1201c:	9999                	andi	a1,a1,-26
   1201e:	4001                	0x4001
   12020:	6666                	ld	a2,88(sp)
   12022:	6666                	ld	a2,88(sp)
   12024:	6666                	ld	a2,88(sp)
   12026:	400a                	0x400a
   12028:	999a                	add	s3,s3,t1
   1202a:	9999                	andi	a1,a1,-26
   1202c:	9999                	andi	a1,a1,-26
   1202e:	4011                	0x4011
   12030:	0000                	unimp
   12032:	0000                	unimp
   12034:	0000                	unimp
   12036:	4016                	0x4016
   12038:	6666                	ld	a2,88(sp)
   1203a:	6666                	ld	a2,88(sp)
   1203c:	6666                	ld	a2,88(sp)
   1203e:	401a                	0x401a
   12040:	cccd                	beqz	s1,120fa <impure_data+0x72>
   12042:	cccc                	sw	a1,28(s1)
   12044:	cccc                	sw	a1,28(s1)
   12046:	401e                	0x401e
   12048:	999a                	add	s3,s3,t1
   1204a:	9999                	andi	a1,a1,-26
   1204c:	9999                	andi	a1,a1,-26
   1204e:	4021                	0x4021
   12050:	cccd                	beqz	s1,1210a <impure_data+0x82>
   12052:	cccc                	sw	a1,28(s1)
   12054:	cccc                	sw	a1,28(s1)
   12056:	00004023          	0x4023
   1205a:	0000                	unimp
   1205c:	0000                	unimp
   1205e:	4026                	0x4026

0000000000012060 <result_float>:
   12060:	cccd                	beqz	s1,1211a <impure_data+0x92>
   12062:	3f8c                	fld	fa1,56(a5)
   12064:	cccd                	beqz	s1,1211e <impure_data+0x96>
   12066:	400c                	lw	a1,0(s0)
   12068:	40533333          	0x40533333
   1206c:	cccd                	beqz	s1,12126 <impure_data+0x9e>
   1206e:	408c                	lw	a1,0(s1)
   12070:	0000                	unimp
   12072:	40b0                	lw	a2,64(s1)
   12074:	40d33333          	0x40d33333
   12078:	6666                	ld	a2,88(sp)
   1207a:	40f6                	lw	ra,92(sp)
   1207c:	cccd                	beqz	s1,12136 <impure_data+0xae>
   1207e:	410c                	lw	a1,0(a0)
   12080:	6666                	ld	a2,88(sp)
   12082:	411e                	lw	sp,196(sp)
   12084:	0000                	unimp
   12086:	4130                	lw	a2,64(a0)

0000000000012088 <impure_data>:
	...
   12090:	25c0                	fld	fs0,136(a1)
   12092:	0001                	nop
   12094:	0000                	unimp
   12096:	0000                	unimp
   12098:	2670                	fld	fa2,200(a2)
   1209a:	0001                	nop
   1209c:	0000                	unimp
   1209e:	0000                	unimp
   120a0:	2720                	fld	fs0,72(a4)
   120a2:	0001                	nop
	...
   12170:	0001                	nop
   12172:	0000                	unimp
   12174:	0000                	unimp
   12176:	0000                	unimp
   12178:	330e                	fld	ft6,224(sp)
   1217a:	abcd                	j	1276c <impure_data+0x6e4>
   1217c:	1234                	addi	a3,sp,296
   1217e:	e66d                	bnez	a2,12268 <impure_data+0x1e0>
   12180:	deec                	sw	a1,124(a3)
   12182:	0005                	c.addi	zero,1
   12184:	0000000b          	0xb
	...

Disassembly of section .sdata:

00000000000127d0 <__TMC_END__>:
	...

00000000000127d8 <_global_impure_ptr>:
   127d8:	2088                	fld	fa0,0(s1)
   127da:	0001                	nop
   127dc:	0000                	unimp
	...

00000000000127e0 <_impure_ptr>:
   127e0:	2088                	fld	fa0,0(s1)
   127e2:	0001                	nop
   127e4:	0000                	unimp
	...

Disassembly of section .sbss:

00000000000127e8 <__bss_start>:
	...

Disassembly of section .bss:

00000000000127f0 <completed.5182>:
	...

00000000000127f8 <object.5187>:
	...

0000000000012828 <t0.2572>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	fld	fs0,104(a4)
   c:	312e                	fld	ft2,232(sp)
   e:	312e                	fld	ft2,232(sp)
  10:	3220                	fld	fs0,96(a2)
  12:	3130                	fld	fa2,96(a0)
  14:	30353037          	lui	zero,0x30353
  18:	0039                	c.addi	zero,14

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	0x2
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0008                	addi	a0,sp,0
   c:	0000                	unimp
   e:	0000                	unimp
  10:	0484                	addi	s1,sp,576
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	047c                	addi	a5,sp,524
	...
  2e:	0000                	unimp
  30:	002c                	addi	a1,sp,8
  32:	0000                	unimp
  34:	0002                	0x2
  36:	034c                	addi	a1,sp,388
  38:	0000                	unimp
  3a:	0008                	addi	a0,sp,0
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	0904                	addi	s1,sp,144
  42:	0001                	nop
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0388                	addi	a0,sp,448
	...
  5e:	0000                	unimp
  60:	002c                	addi	a1,sp,8
  62:	0000                	unimp
  64:	0002                	0x2
  66:	06ee                	slli	a3,a3,0x1b
  68:	0000                	unimp
  6a:	0008                	addi	a0,sp,0
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0c90                	addi	a2,sp,592
  72:	0001                	nop
  74:	0000                	unimp
  76:	0000                	unimp
  78:	0478                	addi	a4,sp,524
	...
  8e:	0000                	unimp
  90:	002c                	addi	a1,sp,8
  92:	0000                	unimp
  94:	0002                	0x2
  96:	0a3a                	slli	s4,s4,0xe
  98:	0000                	unimp
  9a:	0008                	addi	a0,sp,0
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	110c                	addi	a1,sp,160
  a2:	0001                	nop
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	008c                	addi	a1,sp,64
	...
  be:	0000                	unimp
  c0:	002c                	addi	a1,sp,8
  c2:	0000                	unimp
  c4:	0002                	0x2
  c6:	0c79                	addi	s8,s8,30
  c8:	0000                	unimp
  ca:	0008                	addi	a0,sp,0
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	119c                	addi	a5,sp,224
  d2:	0001                	nop
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	00c0                	addi	s0,sp,68
	...
  ee:	0000                	unimp
  f0:	002c                	addi	a1,sp,8
  f2:	0000                	unimp
  f4:	0002                	0x2
  f6:	00000f0f          	0xf0f
  fa:	0008                	addi	a0,sp,0
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	1260                	addi	s0,sp,300
 102:	0001                	nop
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0154                	addi	a3,sp,132
	...
 11e:	0000                	unimp
 120:	002c                	addi	a1,sp,8
 122:	0000                	unimp
 124:	0002                	0x2
 126:	11c6                	slli	gp,gp,0x31
 128:	0000                	unimp
 12a:	0008                	addi	a0,sp,0
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	13b8                	addi	a4,sp,488
 132:	0001                	nop
 134:	0000                	unimp
 136:	0000                	unimp
 138:	0024                	addi	s1,sp,8
	...
 14e:	0000                	unimp
 150:	002c                	addi	a1,sp,8
 152:	0000                	unimp
 154:	0002                	0x2
 156:	11f4                	addi	a3,sp,236
 158:	0000                	unimp
 15a:	0008                	addi	a0,sp,0
 15c:	0000                	unimp
 15e:	0000                	unimp
 160:	13e0                	addi	s0,sp,492
 162:	0001                	nop
 164:	0000                	unimp
 166:	0000                	unimp
 168:	003c                	addi	a5,sp,8
	...
 17e:	0000                	unimp
 180:	001c                	addi	a5,sp,0
 182:	0000                	unimp
 184:	0002                	0x2
 186:	1d26                	slli	s10,s10,0x29
 188:	0000                	unimp
 18a:	0008                	addi	a0,sp,0
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	0348                	addi	a0,sp,388
       2:	0000                	unimp
       4:	0004                	addi	s1,sp,0
       6:	0000                	unimp
       8:	0000                	unimp
       a:	0108                	addi	a0,sp,128
       c:	014e                	slli	sp,sp,0x13
       e:	0000                	unimp
      10:	7b0c                	ld	a1,48(a4)
      12:	0000                	unimp
      14:	3e00                	fld	fs0,56(a2)
      16:	0002                	0x2
      18:	8400                	0x8400
      1a:	0104                	addi	s1,sp,128
      1c:	0000                	unimp
      1e:	0000                	unimp
      20:	7c00                	ld	s0,56(s0)
      22:	0004                	addi	s1,sp,0
	...
      2c:	0200                	addi	s0,sp,256
      2e:	0408                	addi	a0,sp,512
      30:	0811                	addi	a6,a6,4
      32:	0000                	unimp
      34:	1002                	0x1002
      36:	3105                	addiw	sp,sp,-31
      38:	0001                	nop
      3a:	0200                	addi	s0,sp,256
      3c:	0710                	addi	a2,sp,896
      3e:	0000                	unimp
      40:	0000                	unimp
      42:	0802                	slli	a6,a6,0x0
      44:	3505                	addiw	a0,a0,-31
      46:	0002                	0x2
      48:	0200                	addi	s0,sp,256
      4a:	0601                	addi	a2,a2,0
      4c:	000000fb          	0xfb
      50:	69050403          	lb	s0,1680(a0)
      54:	746e                	ld	s0,248(sp)
      56:	0400                	addi	s0,sp,512
      58:	000001e7          	jalr	gp,zero
      5c:	4a02                	lw	s4,0(sp)
      5e:	6801                	lui	a6,0x0
      60:	0000                	unimp
      62:	0500                	addi	s0,sp,640
      64:	00000057          	0x57
      68:	0102                	slli	sp,sp,0x0
      6a:	f908                	sd	a0,48(a0)
      6c:	0000                	unimp
      6e:	0200                	addi	s0,sp,256
      70:	0704                	addi	s1,sp,896
      72:	0208                	addi	a0,sp,256
      74:	0000                	unimp
      76:	0802                	slli	a6,a6,0x0
      78:	00020307          	0x20307
      7c:	0600                	addi	s0,sp,768
      7e:	00000063          	beqz	zero,7e <_start-0x10032>
      82:	008d                	addi	ra,ra,3
      84:	0000                	unimp
      86:	00007607          	0x7607
      8a:	ff00                	sd	s0,56(a4)
      8c:	0500                	addi	s0,sp,640
      8e:	007d                	c.addi	zero,31
      90:	0000                	unimp
      92:	ef08                	sd	a0,24(a4)
      94:	0001                	nop
      96:	0400                	addi	s0,sp,512
      98:	8d3c                	0x8d3c
      9a:	0000                	unimp
      9c:	0900                	addi	s0,sp,144
      9e:	005f 0000 4803      	0x48030000005f
      a4:	002d                	c.addi	zero,11
      a6:	0000                	unimp
      a8:	080a                	slli	a6,a6,0x2
      aa:	00deca03          	lbu	s4,13(t4)
      ae:	0000                	unimp
      b0:	0001f90b          	0x1f90b
      b4:	0300                	addi	s0,sp,384
      b6:	ded1                	beqz	a3,52 <_start-0x1005e>
      b8:	0000                	unimp
      ba:	0800                	addi	s0,sp,16
      bc:	0c34                	addi	a3,sp,536
      be:	0c00                	addi	s0,sp,528
      c0:	7865                	lui	a6,0xffff9
      c2:	0070                	addi	a2,sp,12
      c4:	006fd203          	lhu	tp,6(t6)
      c8:	0000                	unimp
      ca:	0b04                	addi	s1,sp,400
      cc:	0401                	addi	s0,s0,0
      ce:	00092e0b          	0x92e0b
      d2:	0300                	addi	s0,sp,384
      d4:	00006fd3          	fadd.s	ft11,ft0,ft0,unknown
      d8:	0400                	addi	s0,sp,512
      da:	0001                	nop
      dc:	0004                	addi	s1,sp,0
      de:	0802                	slli	a6,a6,0x0
      e0:	0001fe07          	0x1fe07
      e4:	0d00                	addi	s0,sp,656
      e6:	02c1                	addi	t0,t0,16
      e8:	0000                	unimp
      ea:	0308                	addi	a0,sp,384
      ec:	000108c7          	fmsub.s	fa7,ft2,ft0,ft0,rne
      f0:	0e00                	addi	s0,sp,784
      f2:	6c66                	ld	s8,88(sp)
      f4:	0074                	addi	a3,sp,12
      f6:	009dc903          	lbu	s2,9(s11)
      fa:	0000                	unimp
      fc:	0002f50f          	0x2f50f
     100:	0300                	addi	s0,sp,384
     102:	a8d5                	j	1f6 <_start-0xfeba>
     104:	0000                	unimp
     106:	0000                	unimp
     108:	2510                	fld	fa2,8(a0)
     10a:	0000                	unimp
     10c:	0100                	addi	s0,sp,128
     10e:	00009d23          	sh	zero,26(ra)
     112:	8400                	0x8400
     114:	0104                	addi	s1,sp,128
     116:	0000                	unimp
     118:	0000                	unimp
     11a:	7c00                	ld	s0,56(s0)
     11c:	0004                	addi	s1,sp,0
     11e:	0000                	unimp
     120:	0000                	unimp
     122:	0100                	addi	s0,sp,128
     124:	449c                	lw	a5,8(s1)
     126:	11000003          	lb	zero,272(zero) # 30353110 <__global_pointer$+0x30340140>
     12a:	0061                	c.addi	zero,24
     12c:	2301                	sext.w	t1,t1
     12e:	009d                	addi	ra,ra,7
     130:	0000                	unimp
     132:	0000                	unimp
     134:	0000                	unimp
     136:	6211                	lui	tp,0x4
     138:	0100                	addi	s0,sp,128
     13a:	00009d23          	sh	zero,26(ra)
     13e:	6800                	ld	s0,16(s0)
     140:	0001                	nop
     142:	1200                	addi	s0,sp,288
     144:	0045                	c.addi	zero,17
     146:	0000                	unimp
     148:	2501                	sext.w	a0,a0
     14a:	0050                	addi	a2,sp,4
     14c:	0000                	unimp
     14e:	000001a3          	sb	zero,3(zero) # 3 <_start-0x100ad>
     152:	00031313          	slli	t1,t1,0x0
     156:	0100                	addi	s0,sp,128
     158:	5025                	0x5025
     15a:	0000                	unimp
     15c:	0000                	unimp
     15e:	4114                	lw	a3,0(a0)
     160:	635f 0100 4426      	0x44260100635f
     166:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     16a:	5f41                	li	t5,-16
     16c:	26010073          	0x26010073
     170:	0344                	addi	s1,sp,388
     172:	0000                	unimp
     174:	00000253          	fadd.s	ft4,ft0,ft0,rne
     178:	4115                	li	sp,5
     17a:	655f 0100 4426      	0x44260100655f
     180:	0e000003          	lb	zero,224(zero) # e0 <_start-0xffd0>
     184:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     188:	5f41                	li	t5,-16
     18a:	0066                	0x66
     18c:	2601                	sext.w	a2,a2
     18e:	00de                	slli	ra,ra,0x17
     190:	0000                	unimp
     192:	047f                	0x47f
     194:	0000                	unimp
     196:	4214                	lw	a3,0(a2)
     198:	635f 0100 4427      	0x44270100635f
     19e:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     1a2:	5f42                	lw	t5,48(sp)
     1a4:	27010073          	0x27010073
     1a8:	0344                	addi	s1,sp,388
     1aa:	0000                	unimp
     1ac:	0704                	addi	s1,sp,896
     1ae:	0000                	unimp
     1b0:	4215                	li	tp,5
     1b2:	655f 0100 4427      	0x44270100655f
     1b8:	ac000003          	lb	zero,-1344(zero) # fffffffffffffac0 <__global_pointer$+0xfffffffffffecaf0>
     1bc:	15000007          	0x15000007
     1c0:	5f42                	lw	t5,48(sp)
     1c2:	0066                	0x66
     1c4:	2701                	sext.w	a4,a4
     1c6:	00de                	slli	ra,ra,0x17
     1c8:	0000                	unimp
     1ca:	088d                	addi	a7,a7,3
     1cc:	0000                	unimp
     1ce:	5214                	lw	a3,32(a2)
     1d0:	635f 0100 4428      	0x44280100635f
     1d6:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     1da:	5f52                	lw	t5,52(sp)
     1dc:	28010073          	0x28010073
     1e0:	0344                	addi	s1,sp,388
     1e2:	0000                	unimp
     1e4:	0981                	addi	s3,s3,0
     1e6:	0000                	unimp
     1e8:	5215                	li	tp,-27
     1ea:	655f 0100 4428      	0x44280100655f
     1f0:	9b000003          	lb	zero,-1616(zero) # fffffffffffff9b0 <__global_pointer$+0xfffffffffffec9e0>
     1f4:	000a                	0xa
     1f6:	1500                	addi	s0,sp,672
     1f8:	5f52                	lw	t5,52(sp)
     1fa:	0066                	0x66
     1fc:	2801                	sext.w	a6,a6
     1fe:	00de                	slli	ra,ra,0x17
     200:	0000                	unimp
     202:	0c82                	slli	s9,s9,0x0
     204:	0000                	unimp
     206:	7215                	lui	tp,0xfffe5
     208:	0100                	addi	s0,sp,128
     20a:	9d29                	addw	a0,a0,a0
     20c:	0000                	unimp
     20e:	dc00                	sw	s0,56(s0)
     210:	000e                	0xe
     212:	1600                	addi	s0,sp,800
     214:	0000                	unimp
     216:	0000                	unimp
     218:	0228                	addi	a0,sp,264
     21a:	0000                	unimp
     21c:	00010717          	auipc	a4,0x10
     220:	0100                	addi	s0,sp,128
     222:	e52c                	sd	a1,72(a0)
     224:	0000                	unimp
     226:	0000                	unimp
     228:	5016                	0x5016
     22a:	0000                	unimp
     22c:	3d00                	fld	fs0,56(a0)
     22e:	0002                	0x2
     230:	1700                	addi	s0,sp,928
     232:	00000107          	0x107
     236:	2d01                	sext.w	s10,s10
     238:	00e5                	addi	ra,ra,25
     23a:	0000                	unimp
     23c:	1600                	addi	s0,sp,800
     23e:	00e0                	addi	s0,sp,76
     240:	0000                	unimp
     242:	0282                	slli	t0,t0,0x0
     244:	0000                	unimp
     246:	eb18                	sd	a4,16(a4)
     248:	0002                	0x2
     24a:	0100                	addi	s0,sp,128
     24c:	182e                	slli	a6,a6,0x2b
     24e:	02f0                	addi	a2,sp,332
     250:	0000                	unimp
     252:	2e01                	sext.w	t3,t3
     254:	1519                	addi	a0,a0,-26
     256:	0002                	0x2
     258:	0100                	addi	s0,sp,128
     25a:	ec2e                	sd	a1,24(sp)
     25c:	0104                	addi	s1,sp,128
     25e:	0000                	unimp
     260:	0000                	unimp
     262:	1900                	addi	s0,sp,176
     264:	00f0                	addi	a2,sp,76
     266:	0000                	unimp
     268:	2e01                	sext.w	t3,t3
     26a:	0528                	addi	a0,sp,648
     26c:	0001                	nop
     26e:	0000                	unimp
     270:	0000                	unimp
     272:	2e12                	fld	ft8,256(sp)
     274:	0000                	unimp
     276:	0100                	addi	s0,sp,128
     278:	502e                	0x502e
     27a:	0000                	unimp
     27c:	ff00                	sd	s0,56(a4)
     27e:	000e                	0xe
     280:	0000                	unimp
     282:	9016                	0x9016
     284:	0001                	nop
     286:	eb00                	sd	s0,16(a4)
     288:	0002                	0x2
     28a:	1800                	addi	s0,sp,48
     28c:	013a                	slli	sp,sp,0xe
     28e:	0000                	unimp
     290:	2e01                	sext.w	t3,t3
     292:	3f18                	fld	fa4,56(a4)
     294:	0001                	nop
     296:	0100                	addi	s0,sp,128
     298:	192e                	slli	s2,s2,0x2b
     29a:	0144                	addi	s1,sp,132
     29c:	0000                	unimp
     29e:	2e01                	sext.w	t3,t3
     2a0:	0680                	addi	s0,sp,832
     2a2:	0001                	nop
     2a4:	0000                	unimp
     2a6:	0000                	unimp
     2a8:	4919                	li	s2,6
     2aa:	0001                	nop
     2ac:	0100                	addi	s0,sp,128
     2ae:	dc2e                	sw	a1,56(sp)
     2b0:	00000107          	0x107
     2b4:	0000                	unimp
     2b6:	1900                	addi	s0,sp,176
     2b8:	02cd                	addi	t0,t0,19
     2ba:	0000                	unimp
     2bc:	2e01                	sext.w	t3,t3
     2be:	0528                	addi	a0,sp,648
     2c0:	0001                	nop
     2c2:	0000                	unimp
     2c4:	0000                	unimp
     2c6:	2e12                	fld	ft8,256(sp)
     2c8:	0000                	unimp
     2ca:	0100                	addi	s0,sp,128
     2cc:	502e                	0x502e
     2ce:	0000                	unimp
     2d0:	7900                	ld	s0,48(a0)
     2d2:	0010                	addi	a2,sp,0
     2d4:	1a00                	addi	s0,sp,304
     2d6:	01f0                	addi	a2,sp,204
     2d8:	0000                	unimp
     2da:	1a12                	slli	s4,s4,0x24
     2dc:	0002                	0x2
     2de:	0100                	addi	s0,sp,128
     2e0:	502e                	0x502e
     2e2:	0000                	unimp
     2e4:	5200                	lw	s0,32(a2)
     2e6:	0012                	0x12
     2e8:	0000                	unimp
     2ea:	1600                	addi	s0,sp,800
     2ec:	0150                	addi	a2,sp,132
     2ee:	0000                	unimp
     2f0:	0332                	slli	t1,t1,0xc
     2f2:	0000                	unimp
     2f4:	fa12                	sd	tp,304(sp)
     2f6:	0002                	0x2
     2f8:	0100                	addi	s0,sp,128
     2fa:	0000502f          	0x502f
     2fe:	c300                	sw	s0,0(a4)
     300:	0012                	0x12
     302:	1b00                	addi	s0,sp,432
     304:	00004a17          	auipc	s4,0x4
     308:	0100                	addi	s0,sp,128
     30a:	0003442f          	0x3442f
     30e:	1700                	addi	s0,sp,928
     310:	011c                	addi	a5,sp,128
     312:	0000                	unimp
     314:	2f01                	sext.w	t5,t5
     316:	0344                	addi	s1,sp,388
     318:	0000                	unimp
     31a:	0002d617          	auipc	a2,0x2d
     31e:	0100                	addi	s0,sp,128
     320:	0003442f          	0x3442f
     324:	1700                	addi	s0,sp,928
     326:	0066                	0x66
     328:	0000                	unimp
     32a:	2f01                	sext.w	t5,t5
     32c:	00de                	slli	ra,ra,0x17
     32e:	0000                	unimp
     330:	0000                	unimp
     332:	301a                	fld	ft0,416(sp)
     334:	0002                	0x2
     336:	1700                	addi	s0,sp,928
     338:	0012                	0x12
     33a:	0000                	unimp
     33c:	2f01                	sext.w	t5,t5
     33e:	00e5                	addi	ra,ra,25
     340:	0000                	unimp
     342:	0000                	unimp
     344:	0802                	slli	a6,a6,0x0
     346:	3005                	0x3005
     348:	0002                	0x2
     34a:	0000                	unimp
     34c:	039e                	slli	t2,t2,0x7
     34e:	0000                	unimp
     350:	0004                	addi	s1,sp,0
     352:	016d                	addi	sp,sp,27
     354:	0000                	unimp
     356:	0108                	addi	a0,sp,128
     358:	014e                	slli	sp,sp,0x13
     35a:	0000                	unimp
     35c:	180c                	addi	a1,sp,48
     35e:	3e000003          	lb	zero,992(zero) # 3e0 <_start-0xfcd0>
     362:	0002                	0x2
     364:	0400                	addi	s0,sp,512
     366:	0109                	addi	sp,sp,2
     368:	0000                	unimp
     36a:	0000                	unimp
     36c:	8800                	0x8800
     36e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     372:	0000                	unimp
     374:	3100                	fld	fs0,32(a0)
     376:	0005                	c.addi	zero,1
     378:	0200                	addi	s0,sp,256
     37a:	0408                	addi	a0,sp,512
     37c:	0811                	addi	a6,a6,4
     37e:	0000                	unimp
     380:	1002                	0x1002
     382:	3105                	addiw	sp,sp,-31
     384:	0001                	nop
     386:	0200                	addi	s0,sp,256
     388:	0710                	addi	a2,sp,896
     38a:	0000                	unimp
     38c:	0000                	unimp
     38e:	0802                	slli	a6,a6,0x0
     390:	3505                	addiw	a0,a0,-31
     392:	0002                	0x2
     394:	0200                	addi	s0,sp,256
     396:	0601                	addi	a2,a2,0
     398:	000000fb          	0xfb
     39c:	69050403          	lb	s0,1680(a0)
     3a0:	746e                	ld	s0,248(sp)
     3a2:	0400                	addi	s0,sp,512
     3a4:	000001e7          	jalr	gp,zero
     3a8:	4a02                	lw	s4,0(sp)
     3aa:	6801                	lui	a6,0x0
     3ac:	0000                	unimp
     3ae:	0500                	addi	s0,sp,640
     3b0:	00000057          	0x57
     3b4:	0102                	slli	sp,sp,0x0
     3b6:	f908                	sd	a0,48(a0)
     3b8:	0000                	unimp
     3ba:	0400                	addi	s0,sp,512
     3bc:	03d6                	slli	t2,t2,0x15
     3be:	0000                	unimp
     3c0:	4b02                	lw	s6,0(sp)
     3c2:	7b01                	lui	s6,0xfffe0
     3c4:	0000                	unimp
     3c6:	0200                	addi	s0,sp,256
     3c8:	0704                	addi	s1,sp,896
     3ca:	0208                	addi	a0,sp,256
     3cc:	0000                	unimp
     3ce:	0802                	slli	a6,a6,0x0
     3d0:	00020307          	0x20307
     3d4:	0400                	addi	s0,sp,512
     3d6:	03c9                	addi	t2,t2,18
     3d8:	0000                	unimp
     3da:	5002                	0x5002
     3dc:	6f01                	lui	t5,0x0
     3de:	0000                	unimp
     3e0:	0600                	addi	s0,sp,768
     3e2:	00000063          	beqz	zero,3e2 <_start-0xfcce>
     3e6:	00a5                	addi	ra,ra,9
     3e8:	0000                	unimp
     3ea:	00008207          	0x8207
     3ee:	ff00                	sd	s0,56(a4)
     3f0:	0500                	addi	s0,sp,640
     3f2:	0095                	addi	ra,ra,5
     3f4:	0000                	unimp
     3f6:	ef08                	sd	a0,24(a4)
     3f8:	0001                	nop
     3fa:	0400                	addi	s0,sp,512
     3fc:	a53c                	fsd	fa5,72(a0)
     3fe:	0000                	unimp
     400:	0900                	addi	s0,sp,144
     402:	005f 0000 4803      	0x48030000005f
     408:	002d                	c.addi	zero,11
     40a:	0000                	unimp
     40c:	080a                	slli	a6,a6,0x2
     40e:	00f6ca03          	lbu	s4,15(a3)
     412:	0000                	unimp
     414:	0001f90b          	0x1f90b
     418:	0300                	addi	s0,sp,384
     41a:	f6d1                	bnez	a3,3a6 <_start-0xfd0a>
     41c:	0000                	unimp
     41e:	0800                	addi	s0,sp,16
     420:	0c34                	addi	a3,sp,536
     422:	0c00                	addi	s0,sp,528
     424:	7865                	lui	a6,0xffff9
     426:	0070                	addi	a2,sp,12
     428:	007bd203          	lhu	tp,7(s7)
     42c:	0000                	unimp
     42e:	0b04                	addi	s1,sp,400
     430:	0401                	addi	s0,s0,0
     432:	00092e0b          	0x92e0b
     436:	0300                	addi	s0,sp,384
     438:	00007bd3          	fadd.s	fs7,ft0,ft0
     43c:	0400                	addi	s0,sp,512
     43e:	0001                	nop
     440:	0004                	addi	s1,sp,0
     442:	0802                	slli	a6,a6,0x0
     444:	0001fe07          	0x1fe07
     448:	0d00                	addi	s0,sp,656
     44a:	02c1                	addi	t0,t0,16
     44c:	0000                	unimp
     44e:	0308                	addi	a0,sp,384
     450:	000120c7          	fmsub.s	ft1,ft2,ft0,ft0,rdn
     454:	0e00                	addi	s0,sp,784
     456:	6c66                	ld	s8,88(sp)
     458:	0074                	addi	a3,sp,12
     45a:	00b5c903          	lbu	s2,11(a1)
     45e:	0000                	unimp
     460:	0002f50f          	0x2f50f
     464:	0300                	addi	s0,sp,384
     466:	c0d5                	beqz	s1,50a <_start-0xfba6>
     468:	0000                	unimp
     46a:	0000                	unimp
     46c:	8410                	0x8410
     46e:	0004                	addi	s1,sp,0
     470:	0100                	addi	s0,sp,128
     472:	0000b523          	sd	zero,10(ra)
     476:	0400                	addi	s0,sp,512
     478:	0109                	addi	sp,sp,2
     47a:	0000                	unimp
     47c:	0000                	unimp
     47e:	8800                	0x8800
     480:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     484:	0000                	unimp
     486:	0100                	addi	s0,sp,128
     488:	9a9c                	0x9a9c
     48a:	11000003          	lb	zero,272(zero) # 110 <_start-0xffa0>
     48e:	0061                	c.addi	zero,24
     490:	2301                	sext.w	t1,t1
     492:	00b5                	addi	ra,ra,13
     494:	0000                	unimp
     496:	000012e7          	0x12e7
     49a:	6211                	lui	tp,0x4
     49c:	0100                	addi	s0,sp,128
     49e:	0000b523          	sd	zero,10(ra)
     4a2:	7800                	ld	s0,48(s0)
     4a4:	12000013          	li	zero,288
     4a8:	0045                	c.addi	zero,17
     4aa:	0000                	unimp
     4ac:	2501                	sext.w	a0,a0
     4ae:	0050                	addi	a2,sp,4
     4b0:	0000                	unimp
     4b2:	00001417          	auipc	s0,0x1
     4b6:	00031313          	slli	t1,t1,0x0
     4ba:	0100                	addi	s0,sp,128
     4bc:	5025                	0x5025
     4be:	0000                	unimp
     4c0:	0000                	unimp
     4c2:	4114                	lw	a3,0(a0)
     4c4:	635f 0100 9a26      	0x9a260100635f
     4ca:	4f000003          	lb	zero,1264(zero) # 4f0 <_start-0xfbc0>
     4ce:	0014                	addi	a3,sp,0
     4d0:	1400                	addi	s0,sp,544
     4d2:	5f41                	li	t5,-16
     4d4:	26010073          	0x26010073
     4d8:	039a                	slli	t2,t2,0x6
     4da:	0000                	unimp
     4dc:	14d2                	slli	s1,s1,0x34
     4de:	0000                	unimp
     4e0:	4114                	lw	a3,0(a0)
     4e2:	655f 0100 9a26      	0x9a260100655f
     4e8:	42000003          	lb	zero,1056(zero) # 420 <_start-0xfc90>
     4ec:	0015                	c.addi	zero,5
     4ee:	1400                	addi	s0,sp,544
     4f0:	5f41                	li	t5,-16
     4f2:	0066                	0x66
     4f4:	2601                	sext.w	a2,a2
     4f6:	00f6                	slli	ra,ra,0x1d
     4f8:	0000                	unimp
     4fa:	160e                	slli	a2,a2,0x23
     4fc:	0000                	unimp
     4fe:	4214                	lw	a3,0(a2)
     500:	635f 0100 9a27      	0x9a270100635f
     506:	bb000003          	lb	zero,-1104(zero) # fffffffffffffbb0 <__global_pointer$+0xfffffffffffecbe0>
     50a:	0016                	0x16
     50c:	1400                	addi	s0,sp,544
     50e:	5f42                	lw	t5,48(sp)
     510:	27010073          	0x27010073
     514:	039a                	slli	t2,t2,0x6
     516:	0000                	unimp
     518:	0000172b          	0x172b
     51c:	4214                	lw	a3,0(a2)
     51e:	655f 0100 9a27      	0x9a270100655f
     524:	b3000003          	lb	zero,-1232(zero) # fffffffffffffb30 <__global_pointer$+0xfffffffffffecb60>
     528:	14000017          	auipc	zero,0x14000
     52c:	5f42                	lw	t5,48(sp)
     52e:	0066                	0x66
     530:	2701                	sext.w	a4,a4
     532:	00f6                	slli	ra,ra,0x1d
     534:	0000                	unimp
     536:	18d1                	addi	a7,a7,-12
     538:	0000                	unimp
     53a:	5214                	lw	a3,32(a2)
     53c:	635f 0100 9a28      	0x9a280100635f
     542:	5a000003          	lb	zero,1440(zero) # 14000ac8 <__global_pointer$+0x13fedaf8>
     546:	0019                	c.addi	zero,6
     548:	1400                	addi	s0,sp,544
     54a:	5f52                	lw	t5,52(sp)
     54c:	28010073          	0x28010073
     550:	039a                	slli	t2,t2,0x6
     552:	0000                	unimp
     554:	19a5                	addi	s3,s3,-23
     556:	0000                	unimp
     558:	5214                	lw	a3,32(a2)
     55a:	655f 0100 9a28      	0x9a280100655f
     560:	57000003          	lb	zero,1392(zero) # 570 <_start-0xfb40>
     564:	001a                	0x1a
     566:	1400                	addi	s0,sp,544
     568:	5f52                	lw	t5,52(sp)
     56a:	0066                	0x66
     56c:	2801                	sext.w	a6,a6
     56e:	00f6                	slli	ra,ra,0x1d
     570:	0000                	unimp
     572:	1b89                	addi	s7,s7,-30
     574:	0000                	unimp
     576:	7214                	ld	a3,32(a2)
     578:	0100                	addi	s0,sp,128
     57a:	b529                	j	384 <_start-0xfd2c>
     57c:	0000                	unimp
     57e:	8400                	0x8400
     580:	001c                	addi	a5,sp,0
     582:	1500                	addi	s0,sp,672
     584:	0260                	addi	s0,sp,268
     586:	0000                	unimp
     588:	024c                	addi	a1,sp,260
     58a:	0000                	unimp
     58c:	0716                	slli	a4,a4,0x5
     58e:	0001                	nop
     590:	0100                	addi	s0,sp,128
     592:	fd2c                	sd	a1,120(a0)
     594:	0000                	unimp
     596:	0000                	unimp
     598:	c015                	beqz	s0,5bc <_start-0xfaf4>
     59a:	0002                	0x2
     59c:	6500                	ld	s0,8(a0)
     59e:	0002                	0x2
     5a0:	1200                	addi	s0,sp,288
     5a2:	03de                	slli	t2,t2,0x17
     5a4:	0000                	unimp
     5a6:	2c01                	sext.w	s8,s8
     5a8:	039a                	slli	t2,t2,0x6
     5aa:	0000                	unimp
     5ac:	1cc1                	addi	s9,s9,-16
     5ae:	0000                	unimp
     5b0:	1500                	addi	s0,sp,672
     5b2:	02f0                	addi	a2,sp,332
     5b4:	0000                	unimp
     5b6:	027a                	slli	tp,tp,0x1e
     5b8:	0000                	unimp
     5ba:	0716                	slli	a4,a4,0x5
     5bc:	0001                	nop
     5be:	0100                	addi	s0,sp,128
     5c0:	fd2d                	bnez	a0,53a <_start-0xfb76>
     5c2:	0000                	unimp
     5c4:	0000                	unimp
     5c6:	3015                	0x3015
     5c8:	93000003          	lb	zero,-1744(zero) # fffffffffffff930 <__global_pointer$+0xfffffffffffec960>
     5cc:	0002                	0x2
     5ce:	1200                	addi	s0,sp,288
     5d0:	03de                	slli	t2,t2,0x17
     5d2:	0000                	unimp
     5d4:	2d01                	sext.w	s10,s10
     5d6:	039a                	slli	t2,t2,0x6
     5d8:	0000                	unimp
     5da:	1ce6                	slli	s9,s9,0x39
     5dc:	0000                	unimp
     5de:	1700                	addi	s0,sp,928
     5e0:	0a78                	addi	a4,sp,284
     5e2:	0001                	nop
     5e4:	0000                	unimp
     5e6:	0000                	unimp
     5e8:	00a0                	addi	s0,sp,72
     5ea:	0000                	unimp
     5ec:	0000                	unimp
     5ee:	0000                	unimp
     5f0:	0345                	addi	t1,t1,17
     5f2:	0000                	unimp
     5f4:	8d12                	mv	s10,tp
     5f6:	01000003          	lb	zero,16(zero) # 10 <_start-0x100a0>
     5fa:	f62e                	sd	a1,296(sp)
     5fc:	0000                	unimp
     5fe:	0b00                	addi	s0,sp,400
     600:	001d                	c.addi	zero,7
     602:	1200                	addi	s0,sp,288
     604:	03a6                	slli	t2,t2,0x9
     606:	0000                	unimp
     608:	2e01                	sext.w	t3,t3
     60a:	00f6                	slli	ra,ra,0x1d
     60c:	0000                	unimp
     60e:	1dae                	slli	s11,s11,0x2b
     610:	0000                	unimp
     612:	6018                	ld	a4,0(s0)
     614:	12000003          	lb	zero,288(zero) # 120 <_start-0xff90>
     618:	03d1                	addi	t2,t2,20
     61a:	0000                	unimp
     61c:	2e01                	sext.w	t3,t3
     61e:	00f6                	slli	ra,ra,0x1d
     620:	0000                	unimp
     622:	00001e43          	fmadd.s	ft8,ft0,ft0,ft0,rtz
     626:	7012                	0x7012
     628:	0004                	addi	s1,sp,0
     62a:	0100                	addi	s0,sp,128
     62c:	f62e                	sd	a1,296(sp)
     62e:	0000                	unimp
     630:	7900                	ld	s0,48(a0)
     632:	001e                	0x1e
     634:	1200                	addi	s0,sp,288
     636:	048d                	addi	s1,s1,3
     638:	0000                	unimp
     63a:	2e01                	sext.w	t3,t3
     63c:	00f6                	slli	ra,ra,0x1d
     63e:	0000                	unimp
     640:	1ee5                	addi	t4,t4,-7
     642:	0000                	unimp
     644:	7512                	ld	a0,288(sp)
     646:	0004                	addi	s1,sp,0
     648:	0100                	addi	s0,sp,128
     64a:	f62e                	sd	a1,296(sp)
     64c:	0000                	unimp
     64e:	0800                	addi	s0,sp,16
     650:	001f 1200 03c4      	0x3c41200001f
     656:	0000                	unimp
     658:	2e01                	sext.w	t3,t3
     65a:	0089                	addi	ra,ra,2
     65c:	0000                	unimp
     65e:	1f51                	addi	t5,t5,-12
     660:	0000                	unimp
     662:	7f12                	ld	t5,288(sp)
     664:	0004                	addi	s1,sp,0
     666:	0100                	addi	s0,sp,128
     668:	892e                	mv	s2,a1
     66a:	0000                	unimp
     66c:	7400                	ld	s0,40(s0)
     66e:	001f 1200 03bf      	0x3bf1200001f
     674:	0000                	unimp
     676:	2e01                	sext.w	t3,t3
     678:	0089                	addi	ra,ra,2
     67a:	0000                	unimp
     67c:	00001f97          	auipc	t6,0x1
     680:	7a12                	ld	s4,288(sp)
     682:	0004                	addi	s1,sp,0
     684:	0100                	addi	s0,sp,128
     686:	892e                	mv	s2,a1
     688:	0000                	unimp
     68a:	ba00                	fsd	fs0,48(a2)
     68c:	001f 0000 1500      	0x15000000001f
     692:	03c0                	addi	s0,sp,452
     694:	0000                	unimp
     696:	0388                	addi	a0,sp,448
     698:	0000                	unimp
     69a:	3e16                	fld	ft8,352(sp)
     69c:	0004                	addi	s1,sp,0
     69e:	0100                	addi	s0,sp,128
     6a0:	0000502f          	0x502f
     6a4:	1900                	addi	s0,sp,176
     6a6:	5916                	lw	s2,100(sp)
     6a8:	0004                	addi	s1,sp,0
     6aa:	0100                	addi	s0,sp,128
     6ac:	00039a2f          	0x39a2f
     6b0:	1600                	addi	s0,sp,800
     6b2:	00000427          	0x427
     6b6:	2f01                	sext.w	t5,t5
     6b8:	039a                	slli	t2,t2,0x6
     6ba:	0000                	unimp
     6bc:	1016                	0x1016
     6be:	0004                	addi	s1,sp,0
     6c0:	0100                	addi	s0,sp,128
     6c2:	00039a2f          	0x39a2f
     6c6:	1600                	addi	s0,sp,800
     6c8:	03f9                	addi	t2,t2,30
     6ca:	0000                	unimp
     6cc:	2f01                	sext.w	t5,t5
     6ce:	00f6                	slli	ra,ra,0x1d
     6d0:	0000                	unimp
     6d2:	0000                	unimp
     6d4:	9018                	0x9018
     6d6:	16000003          	lb	zero,352(zero) # 160 <_start-0xff50>
     6da:	0012                	0x12
     6dc:	0000                	unimp
     6de:	2f01                	sext.w	t5,t5
     6e0:	00fd                	addi	ra,ra,31
     6e2:	0000                	unimp
     6e4:	0000                	unimp
     6e6:	0802                	slli	a6,a6,0x0
     6e8:	3005                	0x3005
     6ea:	0002                	0x2
     6ec:	0000                	unimp
     6ee:	0348                	addi	a0,sp,388
     6f0:	0000                	unimp
     6f2:	0004                	addi	s1,sp,0
     6f4:	02c0                	addi	s0,sp,324
     6f6:	0000                	unimp
     6f8:	0108                	addi	a0,sp,128
     6fa:	014e                	slli	sp,sp,0x13
     6fc:	0000                	unimp
     6fe:	9b0c                	0x9b0c
     700:	0004                	addi	s1,sp,0
     702:	3e00                	fld	fs0,56(a2)
     704:	0002                	0x2
     706:	9000                	0x9000
     708:	010c                	addi	a1,sp,128
     70a:	0000                	unimp
     70c:	0000                	unimp
     70e:	7800                	ld	s0,48(s0)
     710:	0004                	addi	s1,sp,0
     712:	0000                	unimp
     714:	0000                	unimp
     716:	2500                	fld	fs0,8(a0)
     718:	0008                	addi	a0,sp,0
     71a:	0200                	addi	s0,sp,256
     71c:	0408                	addi	a0,sp,512
     71e:	0811                	addi	a6,a6,4
     720:	0000                	unimp
     722:	1002                	0x1002
     724:	3105                	addiw	sp,sp,-31
     726:	0001                	nop
     728:	0200                	addi	s0,sp,256
     72a:	0710                	addi	a2,sp,896
     72c:	0000                	unimp
     72e:	0000                	unimp
     730:	0802                	slli	a6,a6,0x0
     732:	3505                	addiw	a0,a0,-31
     734:	0002                	0x2
     736:	0200                	addi	s0,sp,256
     738:	0601                	addi	a2,a2,0
     73a:	000000fb          	0xfb
     73e:	69050403          	lb	s0,1680(a0)
     742:	746e                	ld	s0,248(sp)
     744:	0400                	addi	s0,sp,512
     746:	000001e7          	jalr	gp,zero
     74a:	4a02                	lw	s4,0(sp)
     74c:	6801                	lui	a6,0x0
     74e:	0000                	unimp
     750:	0500                	addi	s0,sp,640
     752:	00000057          	0x57
     756:	0102                	slli	sp,sp,0x0
     758:	f908                	sd	a0,48(a0)
     75a:	0000                	unimp
     75c:	0200                	addi	s0,sp,256
     75e:	0704                	addi	s1,sp,896
     760:	0208                	addi	a0,sp,256
     762:	0000                	unimp
     764:	0802                	slli	a6,a6,0x0
     766:	00020307          	0x20307
     76a:	0600                	addi	s0,sp,768
     76c:	00000063          	beqz	zero,76c <_start-0xf944>
     770:	008d                	addi	ra,ra,3
     772:	0000                	unimp
     774:	00007607          	0x7607
     778:	ff00                	sd	s0,56(a4)
     77a:	0500                	addi	s0,sp,640
     77c:	007d                	c.addi	zero,31
     77e:	0000                	unimp
     780:	ef08                	sd	a0,24(a4)
     782:	0001                	nop
     784:	0400                	addi	s0,sp,512
     786:	8d3c                	0x8d3c
     788:	0000                	unimp
     78a:	0900                	addi	s0,sp,144
     78c:	005f 0000 4803      	0x48030000005f
     792:	002d                	c.addi	zero,11
     794:	0000                	unimp
     796:	080a                	slli	a6,a6,0x2
     798:	00deca03          	lbu	s4,13(t4)
     79c:	0000                	unimp
     79e:	0001f90b          	0x1f90b
     7a2:	0300                	addi	s0,sp,384
     7a4:	ded1                	beqz	a3,740 <_start-0xf970>
     7a6:	0000                	unimp
     7a8:	0800                	addi	s0,sp,16
     7aa:	0c34                	addi	a3,sp,536
     7ac:	0c00                	addi	s0,sp,528
     7ae:	7865                	lui	a6,0xffff9
     7b0:	0070                	addi	a2,sp,12
     7b2:	006fd203          	lhu	tp,6(t6) # 1682 <_start-0xea2e>
     7b6:	0000                	unimp
     7b8:	0b04                	addi	s1,sp,400
     7ba:	0401                	addi	s0,s0,0
     7bc:	00092e0b          	0x92e0b
     7c0:	0300                	addi	s0,sp,384
     7c2:	00006fd3          	fadd.s	ft11,ft0,ft0,unknown
     7c6:	0400                	addi	s0,sp,512
     7c8:	0001                	nop
     7ca:	0004                	addi	s1,sp,0
     7cc:	0802                	slli	a6,a6,0x0
     7ce:	0001fe07          	0x1fe07
     7d2:	0d00                	addi	s0,sp,656
     7d4:	02c1                	addi	t0,t0,16
     7d6:	0000                	unimp
     7d8:	0308                	addi	a0,sp,384
     7da:	000108c7          	fmsub.s	fa7,ft2,ft0,ft0,rne
     7de:	0e00                	addi	s0,sp,784
     7e0:	6c66                	ld	s8,88(sp)
     7e2:	0074                	addi	a3,sp,12
     7e4:	009dc903          	lbu	s2,9(s11)
     7e8:	0000                	unimp
     7ea:	0002f50f          	0x2f50f
     7ee:	0300                	addi	s0,sp,384
     7f0:	a8d5                	j	8e4 <_start-0xf7cc>
     7f2:	0000                	unimp
     7f4:	0000                	unimp
     7f6:	9210                	0x9210
     7f8:	0004                	addi	s1,sp,0
     7fa:	0100                	addi	s0,sp,128
     7fc:	00009d23          	sh	zero,26(ra)
     800:	9000                	0x9000
     802:	010c                	addi	a1,sp,128
     804:	0000                	unimp
     806:	0000                	unimp
     808:	7800                	ld	s0,48(s0)
     80a:	0004                	addi	s1,sp,0
     80c:	0000                	unimp
     80e:	0000                	unimp
     810:	0100                	addi	s0,sp,128
     812:	449c                	lw	a5,8(s1)
     814:	11000003          	lb	zero,272(zero) # 110 <_start-0xffa0>
     818:	0061                	c.addi	zero,24
     81a:	2301                	sext.w	t1,t1
     81c:	009d                	addi	ra,ra,7
     81e:	0000                	unimp
     820:	1ff0                	addi	a2,sp,1020
     822:	0000                	unimp
     824:	6211                	lui	tp,0x4
     826:	0100                	addi	s0,sp,128
     828:	00009d23          	sh	zero,26(ra)
     82c:	2b00                	fld	fs0,16(a4)
     82e:	0020                	addi	s0,sp,8
     830:	1200                	addi	s0,sp,288
     832:	0045                	c.addi	zero,17
     834:	0000                	unimp
     836:	2501                	sext.w	a0,a0
     838:	0050                	addi	a2,sp,4
     83a:	0000                	unimp
     83c:	2066                	fld	ft0,88(sp)
     83e:	0000                	unimp
     840:	00031313          	slli	t1,t1,0x0
     844:	0100                	addi	s0,sp,128
     846:	5025                	0x5025
     848:	0000                	unimp
     84a:	0000                	unimp
     84c:	4114                	lw	a3,0(a0)
     84e:	635f 0100 4426      	0x44260100635f
     854:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     858:	5f41                	li	t5,-16
     85a:	26010073          	0x26010073
     85e:	0344                	addi	s1,sp,388
     860:	0000                	unimp
     862:	20ee                	fld	ft1,216(sp)
     864:	0000                	unimp
     866:	4115                	li	sp,5
     868:	655f 0100 4426      	0x44260100655f
     86e:	a9000003          	lb	zero,-1392(zero) # fffffffffffffa90 <__global_pointer$+0xfffffffffffecac0>
     872:	0021                	c.addi	zero,8
     874:	1500                	addi	s0,sp,672
     876:	5f41                	li	t5,-16
     878:	0066                	0x66
     87a:	2601                	sext.w	a2,a2
     87c:	00de                	slli	ra,ra,0x17
     87e:	0000                	unimp
     880:	2394                	fld	fa3,0(a5)
     882:	0000                	unimp
     884:	4214                	lw	a3,0(a2)
     886:	635f 0100 4427      	0x44270100635f
     88c:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     890:	5f42                	lw	t5,48(sp)
     892:	27010073          	0x27010073
     896:	0344                	addi	s1,sp,388
     898:	0000                	unimp
     89a:	2475                	addiw	s0,s0,29
     89c:	0000                	unimp
     89e:	4215                	li	tp,5
     8a0:	655f 0100 4427      	0x44270100655f
     8a6:	a7000003          	lb	zero,-1424(zero) # fffffffffffffa70 <__global_pointer$+0xfffffffffffecaa0>
     8aa:	0025                	c.addi	zero,9
     8ac:	1500                	addi	s0,sp,672
     8ae:	5f42                	lw	t5,48(sp)
     8b0:	0066                	0x66
     8b2:	2701                	sext.w	a4,a4
     8b4:	00de                	slli	ra,ra,0x17
     8b6:	0000                	unimp
     8b8:	2616                	fld	fa2,320(sp)
     8ba:	0000                	unimp
     8bc:	5214                	lw	a3,32(a2)
     8be:	635f 0100 4428      	0x44280100635f
     8c4:	15000003          	lb	zero,336(zero) # 150 <_start-0xff60>
     8c8:	5f52                	lw	t5,52(sp)
     8ca:	28010073          	0x28010073
     8ce:	0344                	addi	s1,sp,388
     8d0:	0000                	unimp
     8d2:	27b5                	addiw	a5,a5,13
     8d4:	0000                	unimp
     8d6:	5215                	li	tp,-27
     8d8:	655f 0100 4428      	0x44280100655f
     8de:	cf000003          	lb	zero,-784(zero) # fffffffffffffcf0 <__global_pointer$+0xfffffffffffecd20>
     8e2:	0028                	addi	a0,sp,8
     8e4:	1500                	addi	s0,sp,672
     8e6:	5f52                	lw	t5,52(sp)
     8e8:	0066                	0x66
     8ea:	2801                	sext.w	a6,a6
     8ec:	00de                	slli	ra,ra,0x17
     8ee:	0000                	unimp
     8f0:	2ade                	fld	fs5,464(sp)
     8f2:	0000                	unimp
     8f4:	7215                	lui	tp,0xfffe5
     8f6:	0100                	addi	s0,sp,128
     8f8:	9d29                	addw	a0,a0,a0
     8fa:	0000                	unimp
     8fc:	2500                	fld	fs0,8(a0)
     8fe:	002d                	c.addi	zero,11
     900:	1600                	addi	s0,sp,800
     902:	03f0                	addi	a2,sp,460
     904:	0000                	unimp
     906:	0228                	addi	a0,sp,264
     908:	0000                	unimp
     90a:	00010717          	auipc	a4,0x10
     90e:	0100                	addi	s0,sp,128
     910:	e52c                	sd	a1,72(a0)
     912:	0000                	unimp
     914:	0000                	unimp
     916:	5016                	0x5016
     918:	0004                	addi	s1,sp,0
     91a:	3d00                	fld	fs0,56(a0)
     91c:	0002                	0x2
     91e:	1700                	addi	s0,sp,928
     920:	00000107          	0x107
     924:	2d01                	sext.w	s10,s10
     926:	00e5                	addi	ra,ra,25
     928:	0000                	unimp
     92a:	1600                	addi	s0,sp,800
     92c:	04d0                	addi	a2,sp,580
     92e:	0000                	unimp
     930:	0282                	slli	t0,t0,0x0
     932:	0000                	unimp
     934:	eb18                	sd	a4,16(a4)
     936:	0002                	0x2
     938:	0100                	addi	s0,sp,128
     93a:	182e                	slli	a6,a6,0x2b
     93c:	02f0                	addi	a2,sp,332
     93e:	0000                	unimp
     940:	2e01                	sext.w	t3,t3
     942:	1519                	addi	a0,a0,-26
     944:	0002                	0x2
     946:	0100                	addi	s0,sp,128
     948:	0c2e                	slli	s8,s8,0xb
     94a:	010d                	addi	sp,sp,3
     94c:	0000                	unimp
     94e:	0000                	unimp
     950:	1900                	addi	s0,sp,176
     952:	00f0                	addi	a2,sp,76
     954:	0000                	unimp
     956:	2e01                	sext.w	t3,t3
     958:	0e48                	addi	a0,sp,788
     95a:	0001                	nop
     95c:	0000                	unimp
     95e:	0000                	unimp
     960:	2e12                	fld	ft8,256(sp)
     962:	0000                	unimp
     964:	0100                	addi	s0,sp,128
     966:	502e                	0x502e
     968:	0000                	unimp
     96a:	4800                	lw	s0,16(s0)
     96c:	002d                	c.addi	zero,11
     96e:	0000                	unimp
     970:	5016                	0x5016
     972:	0005                	c.addi	zero,1
     974:	eb00                	sd	s0,16(a4)
     976:	0002                	0x2
     978:	1800                	addi	s0,sp,48
     97a:	013a                	slli	sp,sp,0xe
     97c:	0000                	unimp
     97e:	2e01                	sext.w	t3,t3
     980:	3f18                	fld	fa4,56(a4)
     982:	0001                	nop
     984:	0100                	addi	s0,sp,128
     986:	192e                	slli	s2,s2,0x2b
     988:	0144                	addi	s1,sp,132
     98a:	0000                	unimp
     98c:	2e01                	sext.w	t3,t3
     98e:	0ea8                	addi	a0,sp,856
     990:	0001                	nop
     992:	0000                	unimp
     994:	0000                	unimp
     996:	4919                	li	s2,6
     998:	0001                	nop
     99a:	0100                	addi	s0,sp,128
     99c:	002e                	0x2e
     99e:	0110                	addi	a2,sp,128
     9a0:	0000                	unimp
     9a2:	0000                	unimp
     9a4:	1900                	addi	s0,sp,176
     9a6:	02cd                	addi	t0,t0,19
     9a8:	0000                	unimp
     9aa:	2e01                	sext.w	t3,t3
     9ac:	0e48                	addi	a0,sp,788
     9ae:	0001                	nop
     9b0:	0000                	unimp
     9b2:	0000                	unimp
     9b4:	2e12                	fld	ft8,256(sp)
     9b6:	0000                	unimp
     9b8:	0100                	addi	s0,sp,128
     9ba:	502e                	0x502e
     9bc:	0000                	unimp
     9be:	6000                	ld	s0,0(s0)
     9c0:	002e                	0x2e
     9c2:	1a00                	addi	s0,sp,304
     9c4:	05c0                	addi	s0,sp,708
     9c6:	0000                	unimp
     9c8:	1a12                	slli	s4,s4,0x24
     9ca:	0002                	0x2
     9cc:	0100                	addi	s0,sp,128
     9ce:	502e                	0x502e
     9d0:	0000                	unimp
     9d2:	7200                	ld	s0,32(a2)
     9d4:	0000002f          	0x2f
     9d8:	1600                	addi	s0,sp,800
     9da:	0600                	addi	s0,sp,768
     9dc:	0000                	unimp
     9de:	0332                	slli	t1,t1,0xc
     9e0:	0000                	unimp
     9e2:	fa12                	sd	tp,304(sp)
     9e4:	0002                	0x2
     9e6:	0100                	addi	s0,sp,128
     9e8:	0000502f          	0x502f
     9ec:	e300                	sd	s0,0(a4)
     9ee:	1b00002f          	0x1b00002f
     9f2:	00004a17          	auipc	s4,0x4
     9f6:	0100                	addi	s0,sp,128
     9f8:	0003442f          	0x3442f
     9fc:	1700                	addi	s0,sp,928
     9fe:	011c                	addi	a5,sp,128
     a00:	0000                	unimp
     a02:	2f01                	sext.w	t5,t5
     a04:	0344                	addi	s1,sp,388
     a06:	0000                	unimp
     a08:	0002d617          	auipc	a2,0x2d
     a0c:	0100                	addi	s0,sp,128
     a0e:	0003442f          	0x3442f
     a12:	1700                	addi	s0,sp,928
     a14:	0066                	0x66
     a16:	0000                	unimp
     a18:	2f01                	sext.w	t5,t5
     a1a:	00de                	slli	ra,ra,0x17
     a1c:	0000                	unimp
     a1e:	0000                	unimp
     a20:	401a                	0x401a
     a22:	0006                	0x6
     a24:	1700                	addi	s0,sp,928
     a26:	0012                	0x12
     a28:	0000                	unimp
     a2a:	2f01                	sext.w	t5,t5
     a2c:	00e5                	addi	ra,ra,25
     a2e:	0000                	unimp
     a30:	0000                	unimp
     a32:	0802                	slli	a6,a6,0x0
     a34:	3005                	0x3005
     a36:	0002                	0x2
     a38:	0000                	unimp
     a3a:	0000023b          	addw	tp,zero,zero
     a3e:	0004                	addi	s1,sp,0
     a40:	042d                	addi	s0,s0,11
     a42:	0000                	unimp
     a44:	0108                	addi	a0,sp,128
     a46:	014e                	slli	sp,sp,0x13
     a48:	0000                	unimp
     a4a:	100c                	addi	a1,sp,32
     a4c:	0005                	c.addi	zero,1
     a4e:	3e00                	fld	fs0,56(a2)
     a50:	0002                	0x2
     a52:	0c00                	addi	s0,sp,528
     a54:	0111                	addi	sp,sp,4
     a56:	0000                	unimp
     a58:	0000                	unimp
     a5a:	8c00                	0x8c00
     a5c:	0000                	unimp
     a5e:	0000                	unimp
     a60:	0000                	unimp
     a62:	6c00                	ld	s0,24(s0)
     a64:	000d                	c.addi	zero,3
     a66:	0200                	addi	s0,sp,256
     a68:	0408                	addi	a0,sp,512
     a6a:	0811                	addi	a6,a6,4
     a6c:	0000                	unimp
     a6e:	1002                	0x1002
     a70:	3105                	addiw	sp,sp,-31
     a72:	0001                	nop
     a74:	0200                	addi	s0,sp,256
     a76:	0710                	addi	a2,sp,896
     a78:	0000                	unimp
     a7a:	0000                	unimp
     a7c:	0802                	slli	a6,a6,0x0
     a7e:	3505                	addiw	a0,a0,-31
     a80:	0002                	0x2
     a82:	0200                	addi	s0,sp,256
     a84:	0601                	addi	a2,a2,0
     a86:	000000fb          	0xfb
     a8a:	0003d703          	lhu	a4,0(t2)
     a8e:	0200                	addi	s0,sp,256
     a90:	0148                	addi	a0,sp,132
     a92:	005c                	addi	a5,sp,4
     a94:	0000                	unimp
     a96:	0404                	addi	s1,sp,512
     a98:	6905                	lui	s2,0x1
     a9a:	746e                	ld	s0,248(sp)
     a9c:	0300                	addi	s0,sp,384
     a9e:	000001e7          	jalr	gp,zero
     aa2:	4a02                	lw	s4,0(sp)
     aa4:	7401                	lui	s0,0xfffe0
     aa6:	0000                	unimp
     aa8:	0500                	addi	s0,sp,640
     aaa:	00000063          	beqz	zero,aaa <_start-0xf606>
     aae:	0102                	slli	sp,sp,0x0
     ab0:	f908                	sd	a0,48(a0)
     ab2:	0000                	unimp
     ab4:	0300                	addi	s0,sp,384
     ab6:	03d6                	slli	t2,t2,0x15
     ab8:	0000                	unimp
     aba:	4b02                	lw	s6,0(sp)
     abc:	8701                	srai	a4,a4,0x0
     abe:	0000                	unimp
     ac0:	0200                	addi	s0,sp,256
     ac2:	0704                	addi	s1,sp,896
     ac4:	0208                	addi	a0,sp,256
     ac6:	0000                	unimp
     ac8:	0802                	slli	a6,a6,0x0
     aca:	00020307          	0x20307
     ace:	0600                	addi	s0,sp,768
     ad0:	0000006f          	j	ad0 <_start-0xf5e0>
     ad4:	00a5                	addi	ra,ra,9
     ad6:	0000                	unimp
     ad8:	00008e07          	0x8e07
     adc:	ff00                	sd	s0,56(a4)
     ade:	0500                	addi	s0,sp,640
     ae0:	0095                	addi	ra,ra,5
     ae2:	0000                	unimp
     ae4:	ef08                	sd	a0,24(a4)
     ae6:	0001                	nop
     ae8:	0400                	addi	s0,sp,512
     aea:	a53c                	fsd	fa5,72(a0)
     aec:	0000                	unimp
     aee:	0900                	addi	s0,sp,144
     af0:	005f 0000 4803      	0x48030000005f
     af6:	002d                	c.addi	zero,11
     af8:	0000                	unimp
     afa:	080a                	slli	a6,a6,0x2
     afc:	00f6ca03          	lbu	s4,15(a3)
     b00:	0000                	unimp
     b02:	0001f90b          	0x1f90b
     b06:	0300                	addi	s0,sp,384
     b08:	f6d1                	bnez	a3,a94 <_start-0xf61c>
     b0a:	0000                	unimp
     b0c:	0800                	addi	s0,sp,16
     b0e:	0c34                	addi	a3,sp,536
     b10:	0c00                	addi	s0,sp,528
     b12:	7865                	lui	a6,0xffff9
     b14:	0070                	addi	a2,sp,12
     b16:	0087d203          	lhu	tp,8(a5)
     b1a:	0000                	unimp
     b1c:	0b04                	addi	s1,sp,400
     b1e:	0401                	addi	s0,s0,0
     b20:	00092e0b          	0x92e0b
     b24:	0300                	addi	s0,sp,384
     b26:	000087d3          	fadd.s	fa5,ft1,ft0,rne
     b2a:	0400                	addi	s0,sp,512
     b2c:	0001                	nop
     b2e:	0004                	addi	s1,sp,0
     b30:	0802                	slli	a6,a6,0x0
     b32:	0001fe07          	0x1fe07
     b36:	0d00                	addi	s0,sp,656
     b38:	02c1                	addi	t0,t0,16
     b3a:	0000                	unimp
     b3c:	0308                	addi	a0,sp,384
     b3e:	000120c7          	fmsub.s	ft1,ft2,ft0,ft0,rdn
     b42:	0e00                	addi	s0,sp,784
     b44:	6c66                	ld	s8,88(sp)
     b46:	0074                	addi	a3,sp,12
     b48:	00b5c903          	lbu	s2,11(a1)
     b4c:	0000                	unimp
     b4e:	0002f50f          	0x2f50f
     b52:	0300                	addi	s0,sp,384
     b54:	c0d5                	beqz	s1,bf8 <_start-0xf4b8>
     b56:	0000                	unimp
     b58:	0000                	unimp
     b5a:	b510                	fsd	fa2,40(a0)
     b5c:	0005                	c.addi	zero,1
     b5e:	0100                	addi	s0,sp,128
     b60:	b524                	fsd	fs1,104(a0)
     b62:	0000                	unimp
     b64:	0c00                	addi	s0,sp,528
     b66:	0111                	addi	sp,sp,4
     b68:	0000                	unimp
     b6a:	0000                	unimp
     b6c:	8c00                	0x8c00
     b6e:	0000                	unimp
     b70:	0000                	unimp
     b72:	0000                	unimp
     b74:	0100                	addi	s0,sp,128
     b76:	379c                	fld	fa5,40(a5)
     b78:	0002                	0x2
     b7a:	1100                	addi	s0,sp,160
     b7c:	0069                	c.addi	zero,26
     b7e:	2401                	sext.w	s0,s0
     b80:	0050                	addi	a2,sp,4
     b82:	0000                	unimp
     b84:	00003007          	fld	ft0,0(zero) # 0 <_start-0x100b0>
     b88:	4112                	lw	sp,4(sp)
     b8a:	635f 0100 3726      	0x37260100635f
     b90:	0002                	0x2
     b92:	1300                	addi	s0,sp,416
     b94:	5f41                	li	t5,-16
     b96:	26010073          	0x26010073
     b9a:	00000237          	lui	tp,0x0
     b9e:	00003053          	fadd.s	ft0,ft0,ft0,rup
     ba2:	655f4113          	xori	sp,t5,1621
     ba6:	0100                	addi	s0,sp,128
     ba8:	3726                	fld	fa4,104(sp)
     baa:	0002                	0x2
     bac:	7600                	ld	s0,40(a2)
     bae:	0030                	addi	a2,sp,8
     bb0:	1300                	addi	s0,sp,416
     bb2:	5f41                	li	t5,-16
     bb4:	0066                	0x66
     bb6:	2601                	sext.w	a2,a2
     bb8:	00f6                	slli	ra,ra,0x1d
     bba:	0000                	unimp
     bbc:	3099                	addiw	ra,ra,-26
     bbe:	0000                	unimp
     bc0:	01006113          	ori	sp,zero,16
     bc4:	0000b527          	fsd	ft0,10(ra)
     bc8:	cf00                	sw	s0,24(a4)
     bca:	0030                	addi	a2,sp,8
     bcc:	1400                	addi	s0,sp,544
     bce:	0670                	addi	a2,sp,780
     bd0:	0000                	unimp
     bd2:	0225                	addi	tp,tp,9
     bd4:	0000                	unimp
     bd6:	8815                	andi	s0,s0,5
     bd8:	0005                	c.addi	zero,1
     bda:	0100                	addi	s0,sp,128
     bdc:	1629                	addi	a2,a2,-22
     bde:	1120                	addi	s0,sp,168
     be0:	0001                	nop
     be2:	0000                	unimp
     be4:	0000                	unimp
     be6:	0034                	addi	a3,sp,8
     be8:	0000                	unimp
     bea:	0000                	unimp
     bec:	0000                	unimp
     bee:	00059517          	auipc	a0,0x59
     bf2:	0100                	addi	s0,sp,128
     bf4:	7b29                	lui	s6,0xfffea
     bf6:	0000                	unimp
     bf8:	0c00                	addi	s0,sp,528
     bfa:	0031                	c.addi	zero,12
     bfc:	1800                	addi	s0,sp,48
     bfe:	1130                	addi	a2,sp,168
     c00:	0001                	nop
     c02:	0000                	unimp
     c04:	0000                	unimp
     c06:	0018                	addi	a4,sp,0
     c08:	0000                	unimp
     c0a:	0000                	unimp
     c0c:	0000                	unimp
     c0e:	01e8                	addi	a0,sp,204
     c10:	0000                	unimp
     c12:	0005a517          	auipc	a0,0x5a
     c16:	0100                	addi	s0,sp,128
     c18:	5c29                	li	s8,-22
     c1a:	0000                	unimp
     c1c:	2f00                	fld	fs0,24(a4)
     c1e:	0031                	c.addi	zero,12
     c20:	0000                	unimp
     c22:	1a19                	addi	s4,s4,-26
     c24:	02fa                	slli	t0,t0,0x1e
     c26:	0000                	unimp
     c28:	2901                	sext.w	s2,s2
     c2a:	005c                	addi	a5,sp,4
     c2c:	0000                	unimp
     c2e:	1a19                	addi	s4,s4,-26
     c30:	004a                	0x4a
     c32:	0000                	unimp
     c34:	2901                	sext.w	s2,s2
     c36:	00000237          	lui	tp,0x0
     c3a:	1c1a                	slli	s8,s8,0x26
     c3c:	0001                	nop
     c3e:	0100                	addi	s0,sp,128
     c40:	3729                	addiw	a4,a4,-22
     c42:	0002                	0x2
     c44:	1a00                	addi	s0,sp,304
     c46:	02d6                	slli	t0,t0,0x15
     c48:	0000                	unimp
     c4a:	2901                	sext.w	s2,s2
     c4c:	00000237          	lui	tp,0x0
     c50:	661a                	ld	a2,384(sp)
     c52:	0000                	unimp
     c54:	0100                	addi	s0,sp,128
     c56:	f629                	bnez	a2,ba0 <_start-0xf510>
     c58:	0000                	unimp
     c5a:	0000                	unimp
     c5c:	0000                	unimp
     c5e:	1b00                	addi	s0,sp,432
     c60:	06a0                	addi	s0,sp,840
     c62:	0000                	unimp
     c64:	121a                	slli	tp,tp,0x26
     c66:	0000                	unimp
     c68:	0100                	addi	s0,sp,128
     c6a:	fd2a                	sd	a0,184(sp)
     c6c:	0000                	unimp
     c6e:	0000                	unimp
     c70:	0200                	addi	s0,sp,256
     c72:	0508                	addi	a0,sp,640
     c74:	0230                	addi	a2,sp,264
     c76:	0000                	unimp
     c78:	9200                	0x9200
     c7a:	0002                	0x2
     c7c:	0400                	addi	s0,sp,512
     c7e:	9200                	0x9200
     c80:	0005                	c.addi	zero,1
     c82:	0800                	addi	s0,sp,16
     c84:	4e01                	li	t3,0
     c86:	0001                	nop
     c88:	0c00                	addi	s0,sp,528
     c8a:	05da                	slli	a1,a1,0x16
     c8c:	0000                	unimp
     c8e:	023e                	slli	tp,tp,0xf
     c90:	0000                	unimp
     c92:	119c                	addi	a5,sp,224
     c94:	0001                	nop
     c96:	0000                	unimp
     c98:	0000                	unimp
     c9a:	00c0                	addi	s0,sp,68
     c9c:	0000                	unimp
     c9e:	0000                	unimp
     ca0:	0000                	unimp
     ca2:	0ef2                	slli	t4,t4,0x1c
     ca4:	0000                	unimp
     ca6:	0802                	slli	a6,a6,0x0
     ca8:	1104                	addi	s1,sp,160
     caa:	0008                	addi	a0,sp,0
     cac:	0200                	addi	s0,sp,256
     cae:	0404                	addi	s1,sp,512
     cb0:	0ade                	slli	s5,s5,0x17
     cb2:	0000                	unimp
     cb4:	1002                	0x1002
     cb6:	3105                	addiw	sp,sp,-31
     cb8:	0001                	nop
     cba:	0200                	addi	s0,sp,256
     cbc:	0710                	addi	a2,sp,896
     cbe:	0000                	unimp
     cc0:	0000                	unimp
     cc2:	0802                	slli	a6,a6,0x0
     cc4:	3505                	addiw	a0,a0,-31
     cc6:	0002                	0x2
     cc8:	0200                	addi	s0,sp,256
     cca:	0601                	addi	a2,a2,0
     ccc:	000000fb          	0xfb
     cd0:	69050403          	lb	s0,1680(a0) # 5b2a2 <__global_pointer$+0x482d2>
     cd4:	746e                	ld	s0,248(sp)
     cd6:	0400                	addi	s0,sp,512
     cd8:	000001e7          	jalr	gp,zero
     cdc:	4a02                	lw	s4,0(sp)
     cde:	6f01                	lui	t5,0x0
     ce0:	0000                	unimp
     ce2:	0500                	addi	s0,sp,640
     ce4:	005e                	0x5e
     ce6:	0000                	unimp
     ce8:	0102                	slli	sp,sp,0x0
     cea:	f908                	sd	a0,48(a0)
     cec:	0000                	unimp
     cee:	0200                	addi	s0,sp,256
     cf0:	0704                	addi	s1,sp,896
     cf2:	0208                	addi	a0,sp,256
     cf4:	0000                	unimp
     cf6:	0802                	slli	a6,a6,0x0
     cf8:	00020307          	0x20307
     cfc:	0600                	addi	s0,sp,768
     cfe:	006a                	0x6a
     d00:	0000                	unimp
     d02:	0094                	addi	a3,sp,64
     d04:	0000                	unimp
     d06:	00007d07          	0x7d07
     d0a:	ff00                	sd	s0,56(a4)
     d0c:	0500                	addi	s0,sp,640
     d0e:	0084                	addi	s1,sp,64
     d10:	0000                	unimp
     d12:	ef08                	sd	a0,24(a4)
     d14:	0001                	nop
     d16:	0500                	addi	s0,sp,640
     d18:	943c                	0x943c
     d1a:	0000                	unimp
     d1c:	0900                	addi	s0,sp,144
     d1e:	0654                	addi	a3,sp,772
     d20:	0000                	unimp
     d22:	00344503          	lbu	a0,3(s0) # fffffffffffe0003 <__global_pointer$+0xfffffffffffcd033>
     d26:	0000                	unimp
     d28:	040a                	slli	s0,s0,0x2
     d2a:	00e54a03          	lbu	s4,14(a0)
     d2e:	0000                	unimp
     d30:	0001f90b          	0x1f90b
     d34:	0300                	addi	s0,sp,384
     d36:	7651                	lui	a2,0xffff4
     d38:	0000                	unimp
     d3a:	0400                	addi	s0,sp,512
     d3c:	0c000917          	auipc	s2,0xc000
     d40:	7865                	lui	a6,0xffff9
     d42:	0070                	addi	a2,sp,12
     d44:	00765203          	lhu	tp,7(a2) # ffffffffffff4007 <__global_pointer$+0xfffffffffffe1037>
     d48:	0000                	unimp
     d4a:	0804                	addi	s1,sp,16
     d4c:	0001                	nop
     d4e:	00092e0b          	0x92e0b
     d52:	0300                	addi	s0,sp,384
     d54:	00007653          	fadd.s	fa2,ft0,ft0
     d58:	0400                	addi	s0,sp,512
     d5a:	0001                	nop
     d5c:	0000                	unimp
     d5e:	ce0d                	beqz	a2,d98 <_start-0xf318>
     d60:	0005                	c.addi	zero,1
     d62:	0400                	addi	s0,sp,512
     d64:	01084703          	lbu	a4,16(a6) # ffffffffffff9010 <__global_pointer$+0xfffffffffffe6040>
     d68:	0000                	unimp
     d6a:	660e                	ld	a2,192(sp)
     d6c:	746c                	ld	a1,232(s0)
     d6e:	0300                	addi	s0,sp,384
     d70:	a449                	j	ff2 <_start-0xf0be>
     d72:	0000                	unimp
     d74:	0f00                	addi	s0,sp,912
     d76:	02f5                	addi	t0,t0,29
     d78:	0000                	unimp
     d7a:	00af5503          	lhu	a0,10(t5) # a <_start-0x100a6>
     d7e:	0000                	unimp
     d80:	0900                	addi	s0,sp,144
     d82:	005f 0000 4804      	0x48040000005f
     d88:	002d                	c.addi	zero,11
     d8a:	0000                	unimp
     d8c:	080a                	slli	a6,a6,0x2
     d8e:	ca04                	sw	s1,16(a2)
     d90:	0149                	addi	sp,sp,18
     d92:	0000                	unimp
     d94:	0001f90b          	0x1f90b
     d98:	0400                	addi	s0,sp,512
     d9a:	49d1                	li	s3,20
     d9c:	0001                	nop
     d9e:	0800                	addi	s0,sp,16
     da0:	0c34                	addi	a3,sp,536
     da2:	0c00                	addi	s0,sp,528
     da4:	7865                	lui	a6,0xffff9
     da6:	0070                	addi	a2,sp,12
     da8:	d204                	sw	s1,32(a2)
     daa:	0076                	0x76
     dac:	0000                	unimp
     dae:	0b04                	addi	s1,sp,400
     db0:	0401                	addi	s0,s0,0
     db2:	00092e0b          	0x92e0b
     db6:	0400                	addi	s0,sp,512
     db8:	000076d3          	fadd.s	fa3,ft0,ft0
     dbc:	0400                	addi	s0,sp,512
     dbe:	0001                	nop
     dc0:	0004                	addi	s1,sp,0
     dc2:	0802                	slli	a6,a6,0x0
     dc4:	0001fe07          	0x1fe07
     dc8:	0d00                	addi	s0,sp,656
     dca:	02c1                	addi	t0,t0,16
     dcc:	0000                	unimp
     dce:	0408                	addi	a0,sp,512
     dd0:	000173c7          	fmsub.s	ft7,ft2,ft0,ft0
     dd4:	0e00                	addi	s0,sp,784
     dd6:	6c66                	ld	s8,88(sp)
     dd8:	0074                	addi	a3,sp,12
     dda:	c904                	sw	s1,16(a0)
     ddc:	0108                	addi	a0,sp,128
     dde:	0000                	unimp
     de0:	0002f50f          	0x2f50f
     de4:	0400                	addi	s0,sp,512
     de6:	13d5                	addi	t2,t2,-11
     de8:	0001                	nop
     dea:	0000                	unimp
     dec:	5b10                	lw	a2,48(a4)
     dee:	0006                	0x6
     df0:	0100                	addi	s0,sp,128
     df2:	0825                	addi	a6,a6,9
     df4:	0001                	nop
     df6:	9c00                	0x9c00
     df8:	0111                	addi	sp,sp,4
     dfa:	0000                	unimp
     dfc:	0000                	unimp
     dfe:	c000                	sw	s0,0(s0)
     e00:	0000                	unimp
     e02:	0000                	unimp
     e04:	0000                	unimp
     e06:	0100                	addi	s0,sp,128
     e08:	8e9c                	0x8e9c
     e0a:	0002                	0x2
     e0c:	1100                	addi	s0,sp,160
     e0e:	0061                	c.addi	zero,24
     e10:	2501                	sext.w	a0,a0
     e12:	00a4                	addi	s1,sp,72
     e14:	0000                	unimp
     e16:	3152                	fld	ft2,304(sp)
     e18:	0000                	unimp
     e1a:	4512                	lw	a0,4(sp)
     e1c:	0000                	unimp
     e1e:	0100                	addi	s0,sp,128
     e20:	00005727          	0x5727
     e24:	0000                	unimp
     e26:	1312                	slli	t1,t1,0x24
     e28:	01000003          	lb	zero,16(zero) # 10 <_start-0x100a0>
     e2c:	00005727          	0x5727
     e30:	0000                	unimp
     e32:	635f4113          	xori	sp,t5,1589
     e36:	0100                	addi	s0,sp,128
     e38:	8e28                	0x8e28
     e3a:	0002                	0x2
     e3c:	1400                	addi	s0,sp,544
     e3e:	5f41                	li	t5,-16
     e40:	28010073          	0x28010073
     e44:	028e                	slli	t0,t0,0x3
     e46:	0000                	unimp
     e48:	318d                	addiw	gp,gp,-29
     e4a:	0000                	unimp
     e4c:	4114                	lw	a3,0(a0)
     e4e:	655f 0100 8e28      	0x8e280100655f
     e54:	0002                	0x2
     e56:	cd00                	sw	s0,24(a0)
     e58:	0031                	c.addi	zero,12
     e5a:	1400                	addi	s0,sp,544
     e5c:	5f41                	li	t5,-16
     e5e:	0066                	0x66
     e60:	2801                	sext.w	a6,a6
     e62:	0149                	addi	sp,sp,18
     e64:	0000                	unimp
     e66:	3216                	fld	ft4,352(sp)
     e68:	0000                	unimp
     e6a:	635f5213          	0x635f5213
     e6e:	0100                	addi	s0,sp,128
     e70:	8e29                	xor	a2,a2,a0
     e72:	0002                	0x2
     e74:	1400                	addi	s0,sp,544
     e76:	5f52                	lw	t5,52(sp)
     e78:	29010073          	0x29010073
     e7c:	028e                	slli	t0,t0,0x3
     e7e:	0000                	unimp
     e80:	318d                	addiw	gp,gp,-29
     e82:	0000                	unimp
     e84:	5214                	lw	a3,32(a2)
     e86:	655f 0100 8e29      	0x8e290100655f
     e8c:	0002                	0x2
     e8e:	5f00                	lw	s0,56(a4)
     e90:	0032                	0x32
     e92:	1400                	addi	s0,sp,544
     e94:	5f52                	lw	t5,52(sp)
     e96:	0066                	0x66
     e98:	2901                	sext.w	s2,s2
     e9a:	0149                	addi	sp,sp,18
     e9c:	0000                	unimp
     e9e:	000032ab          	0x32ab
     ea2:	7214                	ld	a3,32(a2)
     ea4:	0100                	addi	s0,sp,128
     ea6:	082a                	slli	a6,a6,0xa
     ea8:	0001                	nop
     eaa:	e100                	sd	s0,0(a0)
     eac:	0032                	0x32
     eae:	1500                	addi	s0,sp,672
     eb0:	06d0                	addi	a2,sp,836
     eb2:	0000                	unimp
     eb4:	0000024b          	fnmsub.s	ft4,ft0,ft0,ft0,rne
     eb8:	0716                	slli	a4,a4,0x5
     eba:	0001                	nop
     ebc:	0100                	addi	s0,sp,128
     ebe:	e52d                	bnez	a0,f28 <_start-0xf188>
     ec0:	0000                	unimp
     ec2:	0000                	unimp
     ec4:	01122817          	auipc	a6,0x1122
     ec8:	0000                	unimp
     eca:	0000                	unimp
     ecc:	1c00                	addi	s0,sp,560
     ece:	0000                	unimp
     ed0:	0000                	unimp
     ed2:	0000                	unimp
     ed4:	7000                	ld	s0,32(s0)
     ed6:	0002                	0x2
     ed8:	1800                	addi	s0,sp,48
     eda:	05c1                	addi	a1,a1,16
     edc:	0000                	unimp
     ede:	3101                	addiw	sp,sp,-32
     ee0:	00000057          	0x57
     ee4:	331e                	fld	ft6,480(sp)
     ee6:	0000                	unimp
     ee8:	1900                	addi	s0,sp,176
     eea:	11e8                	addi	a0,sp,236
     eec:	0001                	nop
     eee:	0000                	unimp
     ef0:	0000                	unimp
     ef2:	001c                	addi	a5,sp,0
     ef4:	0000                	unimp
     ef6:	0000                	unimp
     ef8:	0000                	unimp
     efa:	1216                	slli	tp,tp,0x25
     efc:	0000                	unimp
     efe:	0100                	addi	s0,sp,128
     f00:	00015033          	srl	zero,sp,zero
     f04:	0000                	unimp
     f06:	0200                	addi	s0,sp,256
     f08:	0508                	addi	a0,sp,640
     f0a:	0230                	addi	a2,sp,264
     f0c:	0000                	unimp
     f0e:	b300                	fsd	fs0,32(a4)
     f10:	0002                	0x2
     f12:	0400                	addi	s0,sp,512
     f14:	ef00                	sd	s0,24(a4)
     f16:	0006                	0x6
     f18:	0800                	addi	s0,sp,16
     f1a:	4e01                	li	t3,0
     f1c:	0001                	nop
     f1e:	0c00                	addi	s0,sp,528
     f20:	0676                	slli	a2,a2,0x1d
     f22:	0000                	unimp
     f24:	023e                	slli	tp,tp,0xf
     f26:	0000                	unimp
     f28:	1260                	addi	s0,sp,300
     f2a:	0001                	nop
     f2c:	0000                	unimp
     f2e:	0000                	unimp
     f30:	0154                	addi	a3,sp,132
     f32:	0000                	unimp
     f34:	0000                	unimp
     f36:	0000                	unimp
     f38:	10bd                	addi	ra,ra,-17
     f3a:	0000                	unimp
     f3c:	0802                	slli	a6,a6,0x0
     f3e:	1104                	addi	s1,sp,160
     f40:	0008                	addi	a0,sp,0
     f42:	0200                	addi	s0,sp,256
     f44:	0510                	addi	a2,sp,640
     f46:	0131                	addi	sp,sp,12
     f48:	0000                	unimp
     f4a:	1002                	0x1002
     f4c:	00000007          	0x7
     f50:	0200                	addi	s0,sp,256
     f52:	0508                	addi	a0,sp,640
     f54:	0235                	addi	tp,tp,13
     f56:	0000                	unimp
     f58:	0102                	slli	sp,sp,0x0
     f5a:	fb06                	sd	ra,432(sp)
     f5c:	0000                	unimp
     f5e:	0300                	addi	s0,sp,384
     f60:	0504                	addi	s1,sp,640
     f62:	6e69                	lui	t3,0x1a
     f64:	0074                	addi	a3,sp,12
     f66:	e704                	sd	s1,8(a4)
     f68:	0001                	nop
     f6a:	0200                	addi	s0,sp,256
     f6c:	014a                	slli	sp,sp,0x12
     f6e:	0068                	addi	a0,sp,12
     f70:	0000                	unimp
     f72:	5705                	li	a4,-31
     f74:	0000                	unimp
     f76:	0200                	addi	s0,sp,256
     f78:	0801                	addi	a6,a6,0
     f7a:	00f9                	addi	ra,ra,30
     f7c:	0000                	unimp
     f7e:	0402                	slli	s0,s0,0x0
     f80:	00020807          	0x20807
     f84:	0200                	addi	s0,sp,256
     f86:	0708                	addi	a0,sp,896
     f88:	00000203          	lb	tp,0(zero) # 0 <_start-0x100b0>
     f8c:	6306                	ld	t1,64(sp)
     f8e:	0000                	unimp
     f90:	8d00                	0x8d00
     f92:	0000                	unimp
     f94:	0700                	addi	s0,sp,896
     f96:	0076                	0x76
     f98:	0000                	unimp
     f9a:	00ff                	0xff
     f9c:	7d05                	lui	s10,0xfffe1
     f9e:	0000                	unimp
     fa0:	0800                	addi	s0,sp,16
     fa2:	000001ef          	jal	gp,fa2 <_start-0xf10e>
     fa6:	3c05                	addiw	s8,s8,-31
     fa8:	008d                	addi	ra,ra,3
     faa:	0000                	unimp
     fac:	5409                	li	s0,-30
     fae:	0006                	0x6
     fb0:	0300                	addi	s0,sp,384
     fb2:	a845                	j	1062 <_start-0xf04e>
     fb4:	0000                	unimp
     fb6:	0200                	addi	s0,sp,256
     fb8:	0404                	addi	s1,sp,512
     fba:	0ade                	slli	s5,s5,0x17
     fbc:	0000                	unimp
     fbe:	040a                	slli	s0,s0,0x2
     fc0:	00e54a03          	lbu	s4,14(a0)
     fc4:	0000                	unimp
     fc6:	0001f90b          	0x1f90b
     fca:	0300                	addi	s0,sp,384
     fcc:	6f51                	lui	t5,0x14
     fce:	0000                	unimp
     fd0:	0400                	addi	s0,sp,512
     fd2:	0c000917          	auipc	s2,0xc000
     fd6:	7865                	lui	a6,0xffff9
     fd8:	0070                	addi	a2,sp,12
     fda:	006f5203          	lhu	tp,6(t5) # 14006 <__global_pointer$+0x1036>
     fde:	0000                	unimp
     fe0:	0804                	addi	s1,sp,16
     fe2:	0001                	nop
     fe4:	00092e0b          	0x92e0b
     fe8:	0300                	addi	s0,sp,384
     fea:	00006f53          	fadd.s	ft10,ft0,ft0,unknown
     fee:	0400                	addi	s0,sp,512
     ff0:	0001                	nop
     ff2:	0000                	unimp
     ff4:	ce0d                	beqz	a2,102e <_start-0xf082>
     ff6:	0005                	c.addi	zero,1
     ff8:	0400                	addi	s0,sp,512
     ffa:	01084703          	lbu	a4,16(a6) # ffffffffffff9010 <__global_pointer$+0xfffffffffffe6040>
     ffe:	0000                	unimp
    1000:	660e                	ld	a2,192(sp)
    1002:	746c                	ld	a1,232(s0)
    1004:	0300                	addi	s0,sp,384
    1006:	9d49                	0x9d49
    1008:	0000                	unimp
    100a:	0f00                	addi	s0,sp,912
    100c:	02f5                	addi	t0,t0,29
    100e:	0000                	unimp
    1010:	00af5503          	lhu	a0,10(t5)
    1014:	0000                	unimp
    1016:	0900                	addi	s0,sp,144
    1018:	005f 0000 4804      	0x48040000005f
    101e:	002d                	c.addi	zero,11
    1020:	0000                	unimp
    1022:	080a                	slli	a6,a6,0x2
    1024:	ca04                	sw	s1,16(a2)
    1026:	0149                	addi	sp,sp,18
    1028:	0000                	unimp
    102a:	0001f90b          	0x1f90b
    102e:	0400                	addi	s0,sp,512
    1030:	49d1                	li	s3,20
    1032:	0001                	nop
    1034:	0800                	addi	s0,sp,16
    1036:	0c34                	addi	a3,sp,536
    1038:	0c00                	addi	s0,sp,528
    103a:	7865                	lui	a6,0xffff9
    103c:	0070                	addi	a2,sp,12
    103e:	d204                	sw	s1,32(a2)
    1040:	0000006f          	j	1040 <_start-0xf070>
    1044:	0b04                	addi	s1,sp,400
    1046:	0401                	addi	s0,s0,0
    1048:	00092e0b          	0x92e0b
    104c:	0400                	addi	s0,sp,512
    104e:	00006fd3          	fadd.s	ft11,ft0,ft0,unknown
    1052:	0400                	addi	s0,sp,512
    1054:	0001                	nop
    1056:	0004                	addi	s1,sp,0
    1058:	0802                	slli	a6,a6,0x0
    105a:	0001fe07          	0x1fe07
    105e:	0d00                	addi	s0,sp,656
    1060:	02c1                	addi	t0,t0,16
    1062:	0000                	unimp
    1064:	0408                	addi	a0,sp,512
    1066:	000173c7          	fmsub.s	ft7,ft2,ft0,ft0
    106a:	0e00                	addi	s0,sp,784
    106c:	6c66                	ld	s8,88(sp)
    106e:	0074                	addi	a3,sp,12
    1070:	c904                	sw	s1,16(a0)
    1072:	0108                	addi	a0,sp,128
    1074:	0000                	unimp
    1076:	0002f50f          	0x2f50f
    107a:	0400                	addi	s0,sp,512
    107c:	13d5                	addi	t2,t2,-11
    107e:	0001                	nop
    1080:	0000                	unimp
    1082:	6910                	ld	a2,16(a0)
    1084:	0006                	0x6
    1086:	0100                	addi	s0,sp,128
    1088:	9d24                	0x9d24
    108a:	0000                	unimp
    108c:	6000                	ld	s0,0(s0)
    108e:	0112                	slli	sp,sp,0x4
    1090:	0000                	unimp
    1092:	0000                	unimp
    1094:	5400                	lw	s0,40(s0)
    1096:	0001                	nop
    1098:	0000                	unimp
    109a:	0000                	unimp
    109c:	0100                	addi	s0,sp,128
    109e:	af9c                	fsd	fa5,24(a5)
    10a0:	0002                	0x2
    10a2:	1100                	addi	s0,sp,160
    10a4:	0061                	c.addi	zero,24
    10a6:	2401                	sext.w	s0,s0
    10a8:	0108                	addi	a0,sp,128
    10aa:	0000                	unimp
    10ac:	3341                	addiw	t1,t1,-16
    10ae:	0000                	unimp
    10b0:	4512                	lw	a0,4(sp)
    10b2:	0000                	unimp
    10b4:	0100                	addi	s0,sp,128
    10b6:	5026                	0x5026
    10b8:	0000                	unimp
    10ba:	7c00                	ld	s0,56(s0)
    10bc:	13000033          	0x13000033
    10c0:	00000313          	li	t1,0
    10c4:	2601                	sext.w	a2,a2
    10c6:	0050                	addi	a2,sp,4
    10c8:	0000                	unimp
    10ca:	1400                	addi	s0,sp,544
    10cc:	5f41                	li	t5,-16
    10ce:	27010063          	beq	sp,a6,132e <_start-0xed82>
    10d2:	000002af          	0x2af
    10d6:	4115                	li	sp,5
    10d8:	735f 0100 af27      	0xaf270100735f
    10de:	0002                	0x2
    10e0:	c800                	sw	s0,16(s0)
    10e2:	15000033          	0x15000033
    10e6:	5f41                	li	t5,-16
    10e8:	0065                	c.addi	zero,25
    10ea:	2701                	sext.w	a4,a4
    10ec:	000002af          	0x2af
    10f0:	33fe                	fld	ft7,504(sp)
    10f2:	0000                	unimp
    10f4:	4115                	li	sp,5
    10f6:	665f 0100 4927      	0x49270100665f
    10fc:	0001                	nop
    10fe:	8c00                	0x8c00
    1100:	0034                	addi	a3,sp,8
    1102:	1400                	addi	s0,sp,544
    1104:	5f52                	lw	t5,52(sp)
    1106:	28010063          	beqz	sp,1386 <_start-0xed2a>
    110a:	000002af          	0x2af
    110e:	5215                	li	tp,-27
    1110:	735f 0100 af28      	0xaf280100735f
    1116:	0002                	0x2
    1118:	a500                	fsd	fs0,8(a0)
    111a:	0035                	c.addi	zero,13
    111c:	1500                	addi	s0,sp,672
    111e:	5f52                	lw	t5,52(sp)
    1120:	0065                	c.addi	zero,25
    1122:	2801                	sext.w	a6,a6
    1124:	000002af          	0x2af
    1128:	000035db          	0x35db
    112c:	5215                	li	tp,-27
    112e:	665f 0100 4928      	0x49280100665f
    1134:	0001                	nop
    1136:	8800                	0x8800
    1138:	0036                	0x36
    113a:	1400                	addi	s0,sp,544
    113c:	0072                	0x72
    113e:	2901                	sext.w	s2,s2
    1140:	009d                	addi	ra,ra,7
    1142:	0000                	unimp
    1144:	1016                	0x1016
    1146:	4a000007          	0x4a000007
    114a:	0002                	0x2
    114c:	1700                	addi	s0,sp,928
    114e:	00000107          	0x107
    1152:	2c01                	sext.w	s8,s8
    1154:	0150                	addi	a2,sp,132
    1156:	0000                	unimp
    1158:	1600                	addi	s0,sp,800
    115a:	0750                	addi	a2,sp,900
    115c:	0000                	unimp
    115e:	0291                	addi	t0,t0,4
    1160:	0000                	unimp
    1162:	fa12                	sd	tp,304(sp)
    1164:	0002                	0x2
    1166:	0100                	addi	s0,sp,128
    1168:	5032                	0x5032
    116a:	0000                	unimp
    116c:	6a00                	ld	s0,16(a2)
    116e:	18000037          	lui	zero,0x18000
    1172:	00004a17          	auipc	s4,0x4
    1176:	0100                	addi	s0,sp,128
    1178:	af32                	fsd	fa2,408(sp)
    117a:	0002                	0x2
    117c:	1700                	addi	s0,sp,928
    117e:	011c                	addi	a5,sp,128
    1180:	0000                	unimp
    1182:	3201                	addiw	tp,tp,-32
    1184:	000002af          	0x2af
    1188:	0002d617          	auipc	a2,0x2d
    118c:	0100                	addi	s0,sp,128
    118e:	af32                	fsd	fa2,408(sp)
    1190:	0002                	0x2
    1192:	1700                	addi	s0,sp,928
    1194:	0066                	0x66
    1196:	0000                	unimp
    1198:	3201                	addiw	tp,tp,-32
    119a:	0149                	addi	sp,sp,18
    119c:	0000                	unimp
    119e:	0000                	unimp
    11a0:	5419                	li	s0,-26
    11a2:	00000113          	li	sp,0
    11a6:	0000                	unimp
    11a8:	3400                	fld	fs0,40(s0)
    11aa:	0000                	unimp
    11ac:	0000                	unimp
    11ae:	0000                	unimp
    11b0:	1700                	addi	s0,sp,928
    11b2:	0012                	0x12
    11b4:	0000                	unimp
    11b6:	3201                	addiw	tp,tp,-32
    11b8:	00e5                	addi	ra,ra,25
    11ba:	0000                	unimp
    11bc:	0000                	unimp
    11be:	0802                	slli	a6,a6,0x0
    11c0:	3005                	0x3005
    11c2:	0002                	0x2
    11c4:	0000                	unimp
    11c6:	002a                	0x2a
    11c8:	0000                	unimp
    11ca:	0002                	0x2
    11cc:	0846                	slli	a6,a6,0x11
    11ce:	0000                	unimp
    11d0:	0108                	addi	a0,sp,128
    11d2:	00001303          	lh	t1,0(zero) # 18000000 <__global_pointer$+0x17fed030>
    11d6:	13b8                	addi	a4,sp,488
    11d8:	0001                	nop
    11da:	0000                	unimp
    11dc:	0000                	unimp
    11de:	13dc                	addi	a5,sp,484
    11e0:	0001                	nop
    11e2:	0000                	unimp
    11e4:	0000                	unimp
    11e6:	000006ef          	jal	a3,11e6 <_start-0xeeca>
    11ea:	023e                	slli	tp,tp,0xf
    11ec:	0000                	unimp
    11ee:	0769                	addi	a4,a4,26
    11f0:	0000                	unimp
    11f2:	8001                	srli	s0,s0,0x0
    11f4:	0b2e                	slli	s6,s6,0xb
    11f6:	0000                	unimp
    11f8:	0004                	addi	s1,sp,0
    11fa:	085a                	slli	a6,a6,0x16
    11fc:	0000                	unimp
    11fe:	0108                	addi	a0,sp,128
    1200:	014e                	slli	sp,sp,0x13
    1202:	0000                	unimp
    1204:	610c                	ld	a1,0(a0)
    1206:	000a                	0xa
    1208:	3e00                	fld	fs0,56(a2)
    120a:	0002                	0x2
    120c:	e000                	sd	s0,0(s0)
    120e:	00000113          	li	sp,0
    1212:	0000                	unimp
    1214:	3c00                	fld	fs0,56(s0)
    1216:	0000                	unimp
    1218:	0000                	unimp
    121a:	0000                	unimp
    121c:	e100                	sd	s0,0(a0)
    121e:	02000013          	li	zero,32
    1222:	0508                	addi	a0,sp,640
    1224:	0235                	addi	tp,tp,13
    1226:	0000                	unimp
    1228:	0802                	slli	a6,a6,0x0
    122a:	00020307          	0x20307
    122e:	0300                	addi	s0,sp,384
    1230:	0504                	addi	s1,sp,640
    1232:	6e69                	lui	t3,0x1a
    1234:	0074                	addi	a3,sp,12
    1236:	0802                	slli	a6,a6,0x0
    1238:	3005                	0x3005
    123a:	0002                	0x2
    123c:	0200                	addi	s0,sp,256
    123e:	0410                	addi	a2,sp,512
    1240:	080c                	addi	a1,sp,16
    1242:	0000                	unimp
    1244:	0102                	slli	sp,sp,0x0
    1246:	fb06                	sd	ra,432(sp)
    1248:	0000                	unimp
    124a:	0200                	addi	s0,sp,256
    124c:	0801                	addi	a6,a6,0
    124e:	00f9                	addi	ra,ra,30
    1250:	0000                	unimp
    1252:	0202                	slli	tp,tp,0x0
    1254:	7705                	lui	a4,0xfffe1
    1256:	02000007          	0x2000007
    125a:	0702                	slli	a4,a4,0x0
    125c:	099e                	slli	s3,s3,0x7
    125e:	0000                	unimp
    1260:	0402                	slli	s0,s0,0x0
    1262:	00020807          	0x20807
    1266:	0400                	addi	s0,sp,512
    1268:	0b30                	addi	a2,sp,408
    126a:	0000                	unimp
    126c:	0702                	slli	a4,a4,0x0
    126e:	0000003b          	addw	zero,zero,zero
    1272:	0a04                	addi	s1,sp,272
    1274:	0300000b          	0x300000b
    1278:	2d2c                	fld	fa1,88(a0)
    127a:	0000                	unimp
    127c:	0400                	addi	s0,sp,512
    127e:	0c45                	addi	s8,s8,17
    1280:	0000                	unimp
    1282:	002d7203          	0x2d7203
    1286:	0000                	unimp
    1288:	dc04                	sw	s1,56(s0)
    128a:	000c                	addi	a1,sp,0
    128c:	0300                	addi	s0,sp,384
    128e:	2d91                	addiw	s11,s11,4
    1290:	0000                	unimp
    1292:	0500                	addi	s0,sp,640
    1294:	09f4                	addi	a3,sp,220
    1296:	0000                	unimp
    1298:	6504                	ld	s1,8(a0)
    129a:	6c01                	lui	s8,0x0
    129c:	0000                	unimp
    129e:	0600                	addi	s0,sp,768
    12a0:	0304                	addi	s1,sp,384
    12a2:	caa6                	sw	s1,84(sp)
    12a4:	0000                	unimp
    12a6:	0700                	addi	s0,sp,896
    12a8:	000009db          	0x9db
    12ac:	009fa803          	lw	a6,9(t6)
    12b0:	0000                	unimp
    12b2:	00097807          	0x97807
    12b6:	0300                	addi	s0,sp,384
    12b8:	caa9                	beqz	a3,130a <_start-0xeda6>
    12ba:	0000                	unimp
    12bc:	0000                	unimp
    12be:	5708                	lw	a0,40(a4)
    12c0:	0000                	unimp
    12c2:	da00                	sw	s0,48(a2)
    12c4:	0000                	unimp
    12c6:	0900                	addi	s0,sp,144
    12c8:	0034                	addi	a3,sp,8
    12ca:	0000                	unimp
    12cc:	080a0003          	lb	zero,128(s4) # 51f2 <_start-0xaebe>
    12d0:	00fba303          	lw	t1,15(s7)
    12d4:	0000                	unimp
    12d6:	000c2f0b          	0xc2f0b
    12da:	0300                	addi	s0,sp,384
    12dc:	3ba5                	addiw	s7,s7,-23
    12de:	0000                	unimp
    12e0:	0000                	unimp
    12e2:	000c370b          	0xc370b
    12e6:	0300                	addi	s0,sp,384
    12e8:	abaa                	fsd	fa0,464(sp)
    12ea:	0000                	unimp
    12ec:	0400                	addi	s0,sp,512
    12ee:	0400                	addi	s0,sp,512
    12f0:	0b25                	addi	s6,s6,9
    12f2:	0000                	unimp
    12f4:	00daab03          	lw	s6,13(s5)
    12f8:	0000                	unimp
    12fa:	7f04                	ld	s1,56(a4)
    12fc:	0300000b          	0x300000b
    1300:	000073af          	0x73af
    1304:	0c00                	addi	s0,sp,528
    1306:	0408                	addi	a0,sp,512
    1308:	0c85                	addi	s9,s9,1
    130a:	0000                	unimp
    130c:	1905                	addi	s2,s2,-31
    130e:	006c                	addi	a1,sp,12
    1310:	0000                	unimp
    1312:	3b0d                	addiw	s6,s6,-29
    1314:	0009                	c.addi	zero,2
    1316:	2000                	fld	fs0,0(s0)
    1318:	2f05                	addiw	t5,t5,1
    131a:	0171                	addi	sp,sp,28
    131c:	0000                	unimp
    131e:	000bd20b          	0xbd20b
    1322:	0500                	addi	s0,sp,640
    1324:	7131                	addi	sp,sp,-192
    1326:	0001                	nop
    1328:	0000                	unimp
    132a:	5f0e                	lw	t5,224(sp)
    132c:	3205006b          	0x3205006b
    1330:	0000003b          	addw	zero,zero,zero
    1334:	0b08                	addi	a0,sp,400
    1336:	0c1a                	slli	s8,s8,0x6
    1338:	0000                	unimp
    133a:	3205                	addiw	tp,tp,-31
    133c:	0000003b          	addw	zero,zero,zero
    1340:	0b0c                	addi	a1,sp,400
    1342:	092d                	addi	s2,s2,11
    1344:	0000                	unimp
    1346:	3205                	addiw	tp,tp,-31
    1348:	0000003b          	addw	zero,zero,zero
    134c:	0b10                	addi	a2,sp,400
    134e:	08ba                	slli	a7,a7,0xe
    1350:	0000                	unimp
    1352:	3205                	addiw	tp,tp,-31
    1354:	0000003b          	addw	zero,zero,zero
    1358:	0e14                	addi	a3,sp,784
    135a:	785f 0500 7733      	0x77330500785f
    1360:	0001                	nop
    1362:	1800                	addi	s0,sp,48
    1364:	0f00                	addi	s0,sp,912
    1366:	1e08                	addi	a0,sp,816
    1368:	0001                	nop
    136a:	0800                	addi	s0,sp,16
    136c:	00000113          	li	sp,0
    1370:	00000187          	0x187
    1374:	3409                	addiw	s0,s0,-30
    1376:	0000                	unimp
    1378:	0000                	unimp
    137a:	0d00                	addi	s0,sp,656
    137c:	0000095b          	0x95b
    1380:	0524                	addi	s1,sp,648
    1382:	00020037          	lui	zero,0x20
    1386:	0b00                	addi	s0,sp,400
    1388:	0852                	slli	a6,a6,0x14
    138a:	0000                	unimp
    138c:	3905                	addiw	s2,s2,-31
    138e:	0000003b          	addw	zero,zero,zero
    1392:	0b00                	addi	s0,sp,400
    1394:	0d28                	addi	a0,sp,664
    1396:	0000                	unimp
    1398:	3a05                	addiw	s4,s4,-31
    139a:	0000003b          	addw	zero,zero,zero
    139e:	0b04                	addi	s1,sp,400
    13a0:	086e                	slli	a6,a6,0x1b
    13a2:	0000                	unimp
    13a4:	3b05                	addiw	s6,s6,-31
    13a6:	0000003b          	addw	zero,zero,zero
    13aa:	0b08                	addi	a0,sp,400
    13ac:	0d64                	addi	s1,sp,668
    13ae:	0000                	unimp
    13b0:	3c05                	addiw	s8,s8,-31
    13b2:	0000003b          	addw	zero,zero,zero
    13b6:	0b0c                	addi	a1,sp,400
    13b8:	0ae4                	addi	s1,sp,348
    13ba:	0000                	unimp
    13bc:	3d05                	addiw	s10,s10,-31
    13be:	0000003b          	addw	zero,zero,zero
    13c2:	0b10                	addi	a2,sp,400
    13c4:	0a31                	addi	s4,s4,12
    13c6:	0000                	unimp
    13c8:	3e05                	addiw	t3,t3,-31
    13ca:	0000003b          	addw	zero,zero,zero
    13ce:	0b14                	addi	a3,sp,400
    13d0:	0cc5                	addi	s9,s9,17
    13d2:	0000                	unimp
    13d4:	3f05                	addiw	t5,t5,-31
    13d6:	0000003b          	addw	zero,zero,zero
    13da:	0b18                	addi	a4,sp,400
    13dc:	0b88                	addi	a0,sp,464
    13de:	0000                	unimp
    13e0:	4005                	0x4005
    13e2:	0000003b          	addw	zero,zero,zero
    13e6:	0b1c                	addi	a5,sp,400
    13e8:	0d0e                	slli	s10,s10,0x3
    13ea:	0000                	unimp
    13ec:	4105                	li	sp,1
    13ee:	0000003b          	addw	zero,zero,zero
    13f2:	0020                	addi	s0,sp,8
    13f4:	8d10                	0x8d10
    13f6:	0008                	addi	a0,sp,0
    13f8:	0800                	addi	s0,sp,16
    13fa:	0502                	slli	a0,a0,0x0
    13fc:	414a                	lw	sp,144(sp)
    13fe:	0002                	0x2
    1400:	0b00                	addi	s0,sp,400
    1402:	0920                	addi	s0,sp,152
    1404:	0000                	unimp
    1406:	4b05                	li	s6,1
    1408:	0241                	addi	tp,tp,16
    140a:	0000                	unimp
    140c:	1100                	addi	s0,sp,160
    140e:	00000b5b          	0xb5b
    1412:	4c05                	li	s8,1
    1414:	0241                	addi	tp,tp,16
    1416:	0000                	unimp
    1418:	0100                	addi	s0,sp,128
    141a:	7711                	lui	a4,0xfffe4
    141c:	000c                	addi	a1,sp,0
    141e:	0500                	addi	s0,sp,640
    1420:	134e                	slli	t1,t1,0x33
    1422:	0001                	nop
    1424:	0000                	unimp
    1426:	1102                	slli	sp,sp,0x20
    1428:	08b2                	slli	a7,a7,0xc
    142a:	0000                	unimp
    142c:	5105                	li	sp,-31
    142e:	00000113          	li	sp,0
    1432:	0204                	addi	s1,sp,256
    1434:	0800                	addi	s0,sp,16
    1436:	0111                	addi	sp,sp,4
    1438:	0000                	unimp
    143a:	0251                	addi	tp,tp,20
    143c:	0000                	unimp
    143e:	3409                	addiw	s0,s0,-30
    1440:	0000                	unimp
    1442:	1f00                	addi	s0,sp,944
    1444:	1000                	addi	s0,sp,32
    1446:	0aed                	addi	s5,s5,27
    1448:	0000                	unimp
    144a:	0318                	addi	a4,sp,384
    144c:	5d05                	li	s10,-31
    144e:	0290                	addi	a2,sp,320
    1450:	0000                	unimp
    1452:	000bd20b          	0xbd20b
    1456:	0500                	addi	s0,sp,640
    1458:	905e                	0x905e
    145a:	0002                	0x2
    145c:	0000                	unimp
    145e:	000bea0b          	0xbea0b
    1462:	0500                	addi	s0,sp,640
    1464:	3b5f 0000 0800      	0x80000003b5f
    146a:	0009280b          	0x9280b
    146e:	0500                	addi	s0,sp,640
    1470:	9661                	srai	a2,a2,0x38
    1472:	0002                	0x2
    1474:	1000                	addi	s0,sp,32
    1476:	8d11                	sub	a0,a0,a2
    1478:	0008                	addi	a0,sp,0
    147a:	0500                	addi	s0,sp,640
    147c:	0062                	0x62
    147e:	0002                	0x2
    1480:	1000                	addi	s0,sp,32
    1482:	0001                	nop
    1484:	0251080f          	0x251080f
    1488:	0000                	unimp
    148a:	a608                	fsd	fa0,8(a2)
    148c:	0002                	0x2
    148e:	a600                	fsd	fs0,8(a2)
    1490:	0002                	0x2
    1492:	0900                	addi	s0,sp,144
    1494:	0034                	addi	a3,sp,8
    1496:	0000                	unimp
    1498:	001f 080f 02ac      	0x2ac080f001f
    149e:	0000                	unimp
    14a0:	0d12                	slli	s10,s10,0x4
    14a2:	0b92                	slli	s7,s7,0x4
    14a4:	0000                	unimp
    14a6:	0510                	addi	a2,sp,640
    14a8:	d275                	beqz	a2,148c <_start-0xec24>
    14aa:	0002                	0x2
    14ac:	0b00                	addi	s0,sp,400
    14ae:	0868                	addi	a0,sp,28
    14b0:	0000                	unimp
    14b2:	7605                	lui	a2,0xfffe1
    14b4:	02d2                	slli	t0,t0,0x14
    14b6:	0000                	unimp
    14b8:	0b00                	addi	s0,sp,400
    14ba:	0c56                	slli	s8,s8,0x15
    14bc:	0000                	unimp
    14be:	7705                	lui	a4,0xfffe1
    14c0:	0000003b          	addw	zero,zero,zero
    14c4:	0008                	addi	a0,sp,0
    14c6:	0057080f          	0x57080f
    14ca:	0000                	unimp
    14cc:	bb0d                	j	11fe <_start-0xeeb2>
    14ce:	b000000b          	0xb000000b
    14d2:	b505                	j	12f2 <_start-0xedbe>
    14d4:	0402                	slli	s0,s0,0x0
    14d6:	0000                	unimp
    14d8:	5f0e                	lw	t5,224(sp)
    14da:	0070                	addi	a2,sp,12
    14dc:	b605                	j	ffc <_start-0xf0b4>
    14de:	02d2                	slli	t0,t0,0x14
    14e0:	0000                	unimp
    14e2:	0e00                	addi	s0,sp,784
    14e4:	725f 0500 3bb7      	0x3bb70500725f
    14ea:	0000                	unimp
    14ec:	0800                	addi	s0,sp,16
    14ee:	5f0e                	lw	t5,224(sp)
    14f0:	b8050077          	0xb8050077
    14f4:	0000003b          	addw	zero,zero,zero
    14f8:	0b0c                	addi	a1,sp,400
    14fa:	000008ab          	0x8ab
    14fe:	b905                	j	112e <_start-0xef82>
    1500:	005e                	0x5e
    1502:	0000                	unimp
    1504:	0b10                	addi	a2,sp,400
    1506:	00000987          	0x987
    150a:	ba05                	j	e3a <_start-0xf276>
    150c:	005e                	0x5e
    150e:	0000                	unimp
    1510:	0e12                	slli	t3,t3,0x4
    1512:	625f 0066 bb05      	0xbb050066625f
    1518:	02ad                	addi	t0,t0,11
    151a:	0000                	unimp
    151c:	0b18                	addi	a4,sp,400
    151e:	000007fb          	0x7fb
    1522:	bc05                	j	f52 <_start-0xf15e>
    1524:	0000003b          	addw	zero,zero,zero
    1528:	0b28                	addi	a0,sp,408
    152a:	0000089b          	sext.w	a7,zero
    152e:	c305                	beqz	a4,154e <_start-0xeb62>
    1530:	0111                	addi	sp,sp,4
    1532:	0000                	unimp
    1534:	0b30                	addi	a2,sp,408
    1536:	0b42                	slli	s6,s6,0x10
    1538:	0000                	unimp
    153a:	c505                	beqz	a0,1562 <_start-0xeb4e>
    153c:	0000056f          	jal	a0,153c <_start-0xeb74>
    1540:	0b38                	addi	a4,sp,408
    1542:	0a2a                	slli	s4,s4,0xa
    1544:	0000                	unimp
    1546:	c705                	beqz	a4,156e <_start-0xeb42>
    1548:	059e                	slli	a1,a1,0x7
    154a:	0000                	unimp
    154c:	0b40                	addi	s0,sp,404
    154e:	00000c3f 05c2ca05 	0x5c2ca0500000c3f
    1556:	0000                	unimp
    1558:	0b48                	addi	a0,sp,404
    155a:	0000085b          	0x85b
    155e:	cb05                	beqz	a4,158e <_start-0xeb22>
    1560:	05dc                	addi	a5,sp,708
    1562:	0000                	unimp
    1564:	0e50                	addi	a2,sp,788
    1566:	755f 0062 ce05      	0xce050062755f
    156c:	02ad                	addi	t0,t0,11
    156e:	0000                	unimp
    1570:	0e58                	addi	a4,sp,788
    1572:	755f 0070 cf05      	0xcf050070755f
    1578:	02d2                	slli	t0,t0,0x14
    157a:	0000                	unimp
    157c:	0e68                	addi	a0,sp,796
    157e:	755f 0072 d005      	0xd0050072755f
    1584:	0000003b          	addw	zero,zero,zero
    1588:	0b70                	addi	a2,sp,412
    158a:	0862                	slli	a6,a6,0x18
    158c:	0000                	unimp
    158e:	d305                	beqz	a4,14ae <_start-0xec02>
    1590:	05e2                	slli	a1,a1,0x18
    1592:	0000                	unimp
    1594:	0b74                	addi	a3,sp,412
    1596:	0d00                	addi	s0,sp,656
    1598:	0000                	unimp
    159a:	d405                	beqz	s0,14c2 <_start-0xebee>
    159c:	05f2                	slli	a1,a1,0x1c
    159e:	0000                	unimp
    15a0:	6c5f0e77          	0x6c5f0e77
    15a4:	0062                	0x62
    15a6:	d705                	beqz	a4,14ce <_start-0xebe2>
    15a8:	02ad                	addi	t0,t0,11
    15aa:	0000                	unimp
    15ac:	0b78                	addi	a4,sp,412
    15ae:	0c4d                	addi	s8,s8,19
    15b0:	0000                	unimp
    15b2:	da05                	beqz	a2,14e2 <_start-0xebce>
    15b4:	0000003b          	addw	zero,zero,zero
    15b8:	0b88                	addi	a0,sp,464
    15ba:	0a59                	addi	s4,s4,22
    15bc:	0000                	unimp
    15be:	db05                	beqz	a4,14ee <_start-0xebc2>
    15c0:	007e                	0x7e
    15c2:	0000                	unimp
    15c4:	0b90                	addi	a2,sp,464
    15c6:	07cc                	addi	a1,sp,964
    15c8:	0000                	unimp
    15ca:	de05                	beqz	a2,1502 <_start-0xebae>
    15cc:	0420                	addi	s0,sp,520
    15ce:	0000                	unimp
    15d0:	0b98                	addi	a4,sp,464
    15d2:	000009fb          	0x9fb
    15d6:	e205                	bnez	a2,15f6 <_start-0xeaba>
    15d8:	0106                	slli	sp,sp,0x1
    15da:	0000                	unimp
    15dc:	0ba0                	addi	s0,sp,472
    15de:	0000096f          	jal	s2,15de <_start-0xead2>
    15e2:	e405                	bnez	s0,160a <_start-0xeaa6>
    15e4:	000000fb          	0xfb
    15e8:	0ba4                	addi	s1,sp,472
    15ea:	0b99                	addi	s7,s7,6
    15ec:	0000                	unimp
    15ee:	e505                	bnez	a0,1616 <_start-0xea9a>
    15f0:	0000003b          	addw	zero,zero,zero
    15f4:	00ac                	addi	a1,sp,72
    15f6:	00009413          	slli	s0,ra,0x0
    15fa:	2000                	fld	fs0,0(s0)
    15fc:	0004                	addi	s1,sp,0
    15fe:	1400                	addi	s0,sp,544
    1600:	0420                	addi	s0,sp,520
    1602:	0000                	unimp
    1604:	1114                	addi	a3,sp,160
    1606:	0001                	nop
    1608:	1400                	addi	s0,sp,544
    160a:	055d                	addi	a0,a0,23
    160c:	0000                	unimp
    160e:	3b14                	fld	fa3,48(a4)
    1610:	0000                	unimp
    1612:	0000                	unimp
    1614:	042b080f          	0x42b080f
    1618:	0000                	unimp
    161a:	2015                	0x2015
    161c:	0004                	addi	s1,sp,0
    161e:	1600                	addi	s0,sp,800
    1620:	0c22                	slli	s8,s8,0x8
    1622:	0000                	unimp
    1624:	0748                	addi	a0,sp,900
    1626:	3905                	addiw	s2,s2,-31
    1628:	5d02                	lw	s10,32(sp)
    162a:	0005                	c.addi	zero,1
    162c:	1700                	addi	s0,sp,928
    162e:	0b78                	addi	a4,sp,412
    1630:	0000                	unimp
    1632:	3b05                	addiw	s6,s6,-31
    1634:	3b02                	fld	fs6,32(sp)
    1636:	0000                	unimp
    1638:	0000                	unimp
    163a:	000cd517          	auipc	a0,0xcd
    163e:	0500                	addi	s0,sp,640
    1640:	0240                	addi	s0,sp,260
    1642:	0649                	addi	a2,a2,18
    1644:	0000                	unimp
    1646:	1708                	addi	a0,sp,928
    1648:	0cbd                	addi	s9,s9,15
    164a:	0000                	unimp
    164c:	4005                	0x4005
    164e:	4902                	lw	s2,0(sp)
    1650:	0006                	0x6
    1652:	1000                	addi	s0,sp,32
    1654:	00093317          	auipc	t1,0x93
    1658:	0500                	addi	s0,sp,640
    165a:	0240                	addi	s0,sp,260
    165c:	0649                	addi	a2,a2,18
    165e:	0000                	unimp
    1660:	1718                	addi	a4,sp,928
    1662:	0be5                	addi	s7,s7,25
    1664:	0000                	unimp
    1666:	4205                	li	tp,1
    1668:	3b02                	fld	fs6,32(sp)
    166a:	0000                	unimp
    166c:	2000                	fld	fs0,0(s0)
    166e:	00079b17          	auipc	s6,0x79
    1672:	0500                	addi	s0,sp,640
    1674:	08340243          	fmadd.s	ft4,fs0,ft3,ft1,rne
    1678:	0000                	unimp
    167a:	1724                	addi	s1,sp,936
    167c:	0c01                	addi	s8,s8,0
    167e:	0000                	unimp
    1680:	4605                	li	a2,1
    1682:	3b02                	fld	fs6,32(sp)
    1684:	0000                	unimp
    1686:	4000                	lw	s0,0(s0)
    1688:	000bef17          	auipc	t5,0xbe
    168c:	0500                	addi	s0,sp,640
    168e:	08490247          	fmsub.s	ft4,fs2,ft4,ft1,rne
    1692:	0000                	unimp
    1694:	1748                	addi	a0,sp,932
    1696:	0aff                	0xaff
    1698:	0000                	unimp
    169a:	4905                	li	s2,1
    169c:	3b02                	fld	fs6,32(sp)
    169e:	0000                	unimp
    16a0:	5000                	lw	s0,32(s0)
    16a2:	000bf717          	auipc	a4,0xbf
    16a6:	0500                	addi	s0,sp,640
    16a8:	085a024b          	fnmsub.s	ft4,fs4,ft5,ft1,rne
    16ac:	0000                	unimp
    16ae:	1758                	addi	a4,sp,932
    16b0:	000009d3          	fadd.s	fs3,ft0,ft0,rne
    16b4:	4e05                	li	t3,1
    16b6:	7102                	ld	sp,32(sp)
    16b8:	0001                	nop
    16ba:	6000                	ld	s0,0(s0)
    16bc:	0008c617          	auipc	a2,0x8c
    16c0:	0500                	addi	s0,sp,640
    16c2:	003b024f          	fnmadd.s	ft4,fs6,ft3,ft0,rne
    16c6:	0000                	unimp
    16c8:	1768                	addi	a0,sp,940
    16ca:	0d5f 0000 5005      	0x500500000d5f
    16d0:	7102                	ld	sp,32(sp)
    16d2:	0001                	nop
    16d4:	7000                	ld	s0,32(s0)
    16d6:	000b1117          	auipc	sp,0xb1
    16da:	0500                	addi	s0,sp,640
    16dc:	0251                	addi	tp,tp,20
    16de:	0860                	addi	s0,sp,28
    16e0:	0000                	unimp
    16e2:	1778                	addi	a4,sp,940
    16e4:	097f                	0x97f
    16e6:	0000                	unimp
    16e8:	5405                	li	s0,-31
    16ea:	3b02                	fld	fs6,32(sp)
    16ec:	0000                	unimp
    16ee:	8000                	0x8000
    16f0:	0008ec17          	auipc	s8,0x8e
    16f4:	0500                	addi	s0,sp,640
    16f6:	0255                	addi	tp,tp,21
    16f8:	055d                	addi	a0,a0,23
    16fa:	0000                	unimp
    16fc:	1788                	addi	a0,sp,992
    16fe:	0b71                	addi	s6,s6,28
    1700:	0000                	unimp
    1702:	7805                	lui	a6,0xfffe1
    1704:	1102                	slli	sp,sp,0x20
    1706:	0008                	addi	a0,sp,0
    1708:	9000                	0x9000
    170a:	ed18                	sd	a4,24(a0)
    170c:	000a                	0xa
    170e:	0500                	addi	s0,sp,640
    1710:	027c                	addi	a5,sp,268
    1712:	0290                	addi	a2,sp,320
    1714:	0000                	unimp
    1716:	01f8                	addi	a4,sp,204
    1718:	b118                	fsd	fa4,32(a0)
    171a:	0009                	c.addi	zero,2
    171c:	0500                	addi	s0,sp,640
    171e:	027d                	addi	tp,tp,31
    1720:	0251                	addi	tp,tp,20
    1722:	0000                	unimp
    1724:	0200                	addi	s0,sp,256
    1726:	f618                	sd	a4,40(a2)
    1728:	000c                	addi	a1,sp,0
    172a:	0500                	addi	s0,sp,640
    172c:	0281                	addi	t0,t0,0
    172e:	0871                	addi	a6,a6,28
    1730:	0000                	unimp
    1732:	0518                	addi	a4,sp,640
    1734:	a318                	fsd	fa4,0(a4)
    1736:	0008                	addi	a0,sp,0
    1738:	0500                	addi	s0,sp,640
    173a:	0286                	slli	t0,t0,0x1
    173c:	060e                	slli	a2,a2,0x3
    173e:	0000                	unimp
    1740:	0520                	addi	s0,sp,648
    1742:	8818                	0x8818
    1744:	0008                	addi	a0,sp,0
    1746:	0500                	addi	s0,sp,640
    1748:	087d0287          	0x87d0287
    174c:	0000                	unimp
    174e:	0538                	addi	a4,sp,648
    1750:	0f00                	addi	s0,sp,912
    1752:	6308                	ld	a0,0(a4)
    1754:	0005                	c.addi	zero,1
    1756:	0200                	addi	s0,sp,256
    1758:	0801                	addi	a6,a6,0
    175a:	0102                	slli	sp,sp,0x0
    175c:	0000                	unimp
    175e:	6315                	lui	t1,0x5
    1760:	0005                	c.addi	zero,1
    1762:	0f00                	addi	s0,sp,912
    1764:	0208                	addi	a0,sp,256
    1766:	0004                	addi	s1,sp,0
    1768:	1300                	addi	s0,sp,416
    176a:	0094                	addi	a3,sp,64
    176c:	0000                	unimp
    176e:	00000593          	li	a1,0
    1772:	2014                	fld	fa3,0(s0)
    1774:	0004                	addi	s1,sp,0
    1776:	1400                	addi	s0,sp,544
    1778:	0111                	addi	sp,sp,4
    177a:	0000                	unimp
    177c:	9314                	0x9314
    177e:	0005                	c.addi	zero,1
    1780:	1400                	addi	s0,sp,544
    1782:	0000003b          	addw	zero,zero,zero
    1786:	0f00                	addi	s0,sp,912
    1788:	6a08                	ld	a0,16(a2)
    178a:	0005                	c.addi	zero,1
    178c:	1500                	addi	s0,sp,672
    178e:	00000593          	li	a1,0
    1792:	0575080f          	0x575080f
    1796:	0000                	unimp
    1798:	00008913          	mv	s2,ra
    179c:	c200                	sw	s0,0(a2)
    179e:	0005                	c.addi	zero,1
    17a0:	1400                	addi	s0,sp,544
    17a2:	0420                	addi	s0,sp,520
    17a4:	0000                	unimp
    17a6:	1114                	addi	a3,sp,160
    17a8:	0001                	nop
    17aa:	1400                	addi	s0,sp,544
    17ac:	0089                	addi	ra,ra,2
    17ae:	0000                	unimp
    17b0:	3b14                	fld	fa3,48(a4)
    17b2:	0000                	unimp
    17b4:	0000                	unimp
    17b6:	05a4080f          	0x5a4080f
    17ba:	0000                	unimp
    17bc:	00003b13          	sltiu	s6,zero,0
    17c0:	dc00                	sw	s0,56(s0)
    17c2:	0005                	c.addi	zero,1
    17c4:	1400                	addi	s0,sp,544
    17c6:	0420                	addi	s0,sp,520
    17c8:	0000                	unimp
    17ca:	1114                	addi	a3,sp,160
    17cc:	0001                	nop
    17ce:	0000                	unimp
    17d0:	05c8080f          	0x5c8080f
    17d4:	0000                	unimp
    17d6:	5708                	lw	a0,40(a4)
    17d8:	0000                	unimp
    17da:	f200                	sd	s0,32(a2)
    17dc:	0005                	c.addi	zero,1
    17de:	0900                	addi	s0,sp,144
    17e0:	0034                	addi	a3,sp,8
    17e2:	0000                	unimp
    17e4:	0002                	0x2
    17e6:	5708                	lw	a0,40(a4)
    17e8:	0000                	unimp
    17ea:	0200                	addi	s0,sp,256
    17ec:	0006                	0x6
    17ee:	0900                	addi	s0,sp,144
    17f0:	0034                	addi	a3,sp,8
    17f2:	0000                	unimp
    17f4:	0000                	unimp
    17f6:	bf05                	j	1726 <_start-0xe98a>
    17f8:	0008                	addi	a0,sp,0
    17fa:	0500                	addi	s0,sp,640
    17fc:	011f 02d8 0000      	0x2d8011f
    1802:	cf19                	beqz	a4,1820 <_start-0xe890>
    1804:	000c                	addi	a1,sp,0
    1806:	1800                	addi	s0,sp,48
    1808:	2305                	addiw	t1,t1,1
    180a:	4301                	li	t1,0
    180c:	0006                	0x6
    180e:	1700                	addi	s0,sp,928
    1810:	0bd2                	slli	s7,s7,0x14
    1812:	0000                	unimp
    1814:	2505                	addiw	a0,a0,1
    1816:	4301                	li	t1,0
    1818:	0006                	0x6
    181a:	0000                	unimp
    181c:	00099717          	auipc	a4,0x99
    1820:	0500                	addi	s0,sp,640
    1822:	0126                	slli	sp,sp,0x9
    1824:	0000003b          	addw	zero,zero,zero
    1828:	1708                	addi	a0,sp,928
    182a:	0ba1                	addi	s7,s7,8
    182c:	0000                	unimp
    182e:	2705                	addiw	a4,a4,1
    1830:	4901                	li	s2,0
    1832:	0006                	0x6
    1834:	1000                	addi	s0,sp,32
    1836:	0f00                	addi	s0,sp,912
    1838:	0e08                	addi	a0,sp,784
    183a:	0006                	0x6
    183c:	0f00                	addi	s0,sp,912
    183e:	0208                	addi	a0,sp,256
    1840:	0006                	0x6
    1842:	1900                	addi	s0,sp,176
    1844:	00000793          	li	a5,0
    1848:	050e                	slli	a0,a0,0x3
    184a:	0684013f 29170000 	0x291700000684013f
    1852:	000c                	addi	a1,sp,0
    1854:	0500                	addi	s0,sp,640
    1856:	0140                	addi	s0,sp,132
    1858:	0684                	addi	s1,sp,832
    185a:	0000                	unimp
    185c:	1700                	addi	s0,sp,928
    185e:	0a0c                	addi	a1,sp,272
    1860:	0000                	unimp
    1862:	4105                	li	sp,1
    1864:	8401                	srai	s0,s0,0x0
    1866:	0006                	0x6
    1868:	0600                	addi	s0,sp,768
    186a:	000c8017          	auipc	zero,0xc8
    186e:	0500                	addi	s0,sp,640
    1870:	0142                	slli	sp,sp,0x10
    1872:	0065                	c.addi	zero,25
    1874:	0000                	unimp
    1876:	000c                	addi	a1,sp,0
    1878:	6508                	ld	a0,8(a0)
    187a:	0000                	unimp
    187c:	9400                	0x9400
    187e:	0006                	0x6
    1880:	0900                	addi	s0,sp,144
    1882:	0034                	addi	a3,sp,8
    1884:	0000                	unimp
    1886:	0002                	0x2
    1888:	d81a                	sw	t1,48(sp)
    188a:	5905                	li	s2,-31
    188c:	9502                	jalr	a0
    188e:	17000007          	0x17000007
    1892:	00000a3b          	addw	s4,zero,zero
    1896:	5b05                	li	s6,-31
    1898:	6c02                	ld	s8,0(sp)
    189a:	0000                	unimp
    189c:	0000                	unimp
    189e:	000c6317          	auipc	t1,0xc6
    18a2:	0500                	addi	s0,sp,640
    18a4:	025c                	addi	a5,sp,260
    18a6:	055d                	addi	a0,a0,23
    18a8:	0000                	unimp
    18aa:	1708                	addi	a0,sp,928
    18ac:	09c6                	slli	s3,s3,0x11
    18ae:	0000                	unimp
    18b0:	5d05                	li	s10,-31
    18b2:	9502                	jalr	a0
    18b4:	10000007          	0x10000007
    18b8:	000d1917          	auipc	s2,0xd1
    18bc:	0500                	addi	s0,sp,640
    18be:	025e                	slli	tp,tp,0x17
    18c0:	00000187          	0x187
    18c4:	172c                	addi	a1,sp,936
    18c6:	00000943          	fmadd.s	fs2,ft0,ft0,ft0,rne
    18ca:	5f05                	li	t5,-31
    18cc:	3b02                	fld	fs6,32(sp)
    18ce:	0000                	unimp
    18d0:	5000                	lw	s0,32(s0)
    18d2:	000bcd17          	auipc	s10,0xbc
    18d6:	0500                	addi	s0,sp,640
    18d8:	0260                	addi	s0,sp,268
    18da:	07a5                	addi	a5,a5,9
    18dc:	0000                	unimp
    18de:	1758                	addi	a4,sp,932
    18e0:	0d31                	addi	s10,s10,12
    18e2:	0000                	unimp
    18e4:	6105                	addi	sp,sp,32
    18e6:	4f02                	lw	t5,0(sp)
    18e8:	0006                	0x6
    18ea:	6000                	ld	s0,0(s0)
    18ec:	000bd817          	auipc	a6,0xbd
    18f0:	0500                	addi	s0,sp,640
    18f2:	0262                	slli	tp,tp,0x18
    18f4:	000000fb          	0xfb
    18f8:	1770                	addi	a2,sp,940
    18fa:	0d51                	addi	s10,s10,20
    18fc:	0000                	unimp
    18fe:	6305                	lui	t1,0x1
    1900:	fb02                	sd	zero,432(sp)
    1902:	0000                	unimp
    1904:	7800                	ld	s0,48(s0)
    1906:	00084417          	auipc	s0,0x84
    190a:	0500                	addi	s0,sp,640
    190c:	0264                	addi	s1,sp,268
    190e:	000000fb          	0xfb
    1912:	1780                	addi	s0,sp,992
    1914:	0ce5                	addi	s9,s9,25
    1916:	0000                	unimp
    1918:	6505                	lui	a0,0x1
    191a:	ac02                	fsd	ft0,24(sp)
    191c:	88000007          	0x88000007
    1920:	0009ba17          	auipc	s4,0x9b
    1924:	0500                	addi	s0,sp,640
    1926:	0266                	slli	tp,tp,0x19
    1928:	07bc                	addi	a5,sp,968
    192a:	0000                	unimp
    192c:	1790                	addi	a2,sp,992
    192e:	000007bf 3b026705 	0x3b026705000007bf
    1936:	0000                	unimp
    1938:	a800                	fsd	fs0,16(s0)
    193a:	00090517          	auipc	a0,0x90
    193e:	0500                	addi	s0,sp,640
    1940:	0268                	addi	a0,sp,268
    1942:	000000fb          	0xfb
    1946:	17ac                	addi	a1,sp,1000
    1948:	082d                	addi	a6,a6,11
    194a:	0000                	unimp
    194c:	6905                	lui	s2,0x1
    194e:	fb02                	sd	zero,432(sp)
    1950:	0000                	unimp
    1952:	b400                	fsd	fs0,40(s0)
    1954:	0008f417          	auipc	s0,0x8f
    1958:	0500                	addi	s0,sp,640
    195a:	026a                	slli	tp,tp,0x1a
    195c:	000000fb          	0xfb
    1960:	17bc                	addi	a5,sp,1000
    1962:	07d2                	slli	a5,a5,0x14
    1964:	0000                	unimp
    1966:	6b05                	lui	s6,0x1
    1968:	fb02                	sd	zero,432(sp)
    196a:	0000                	unimp
    196c:	c400                	sw	s0,8(s0)
    196e:	0007e117          	auipc	sp,0x7e
    1972:	0500                	addi	s0,sp,640
    1974:	026c                	addi	a1,sp,268
    1976:	000000fb          	0xfb
    197a:	17cc                	addi	a1,sp,996
    197c:	0b76                	slli	s6,s6,0x1d
    197e:	0000                	unimp
    1980:	6d05                	lui	s10,0x1
    1982:	3b02                	fld	fs6,32(sp)
    1984:	0000                	unimp
    1986:	d400                	sw	s0,40(s0)
    1988:	0800                	addi	s0,sp,16
    198a:	00000563          	beqz	zero,1994 <_start-0xe71c>
    198e:	07a5                	addi	a5,a5,9
    1990:	0000                	unimp
    1992:	3409                	addiw	s0,s0,-30
    1994:	0000                	unimp
    1996:	1900                	addi	s0,sp,176
    1998:	0200                	addi	s0,sp,256
    199a:	0708                	addi	a0,sp,896
    199c:	01fe                	slli	gp,gp,0x1f
    199e:	0000                	unimp
    19a0:	6308                	ld	a0,0(a4)
    19a2:	0005                	c.addi	zero,1
    19a4:	bc00                	fsd	fs0,56(s0)
    19a6:	09000007          	0x9000007
    19aa:	0034                	addi	a3,sp,8
    19ac:	0000                	unimp
    19ae:	63080007          	0x63080007
    19b2:	0005                	c.addi	zero,1
    19b4:	cc00                	sw	s0,24(s0)
    19b6:	09000007          	0x9000007
    19ba:	0034                	addi	a3,sp,8
    19bc:	0000                	unimp
    19be:	681b0017          	auipc	zero,0x681b0
    19c2:	0501                	addi	a0,a0,0
    19c4:	0272                	slli	tp,tp,0x1c
    19c6:	07f1                	addi	a5,a5,28
    19c8:	0000                	unimp
    19ca:	000acf17          	auipc	t5,0xac
    19ce:	0500                	addi	s0,sp,640
    19d0:	0275                	addi	tp,tp,29
    19d2:	07f1                	addi	a5,a5,28
    19d4:	0000                	unimp
    19d6:	1700                	addi	s0,sp,928
    19d8:	0952                	slli	s2,s2,0x14
    19da:	0000                	unimp
    19dc:	7605                	lui	a2,0xfffe1
    19de:	0102                	slli	sp,sp,0x0
    19e0:	0008                	addi	a0,sp,0
    19e2:	f000                	sd	s0,32(s0)
    19e4:	0800                	addi	s0,sp,16
    19e6:	02d2                	slli	t0,t0,0x14
    19e8:	0000                	unimp
    19ea:	0801                	addi	a6,a6,0
    19ec:	0000                	unimp
    19ee:	3409                	addiw	s0,s0,-30
    19f0:	0000                	unimp
    19f2:	1d00                	addi	s0,sp,688
    19f4:	0800                	addi	s0,sp,16
    19f6:	006c                	addi	a1,sp,12
    19f8:	0000                	unimp
    19fa:	0811                	addi	a6,a6,4
    19fc:	0000                	unimp
    19fe:	3409                	addiw	s0,s0,-30
    1a00:	0000                	unimp
    1a02:	1d00                	addi	s0,sp,688
    1a04:	1c00                	addi	s0,sp,560
    1a06:	0168                	addi	a0,sp,140
    1a08:	5705                	li	a4,-31
    1a0a:	3402                	fld	fs0,32(sp)
    1a0c:	0008                	addi	a0,sp,0
    1a0e:	1d00                	addi	s0,sp,688
    1a10:	0c22                	slli	s8,s8,0x8
    1a12:	0000                	unimp
    1a14:	6e05                	lui	t3,0x1
    1a16:	9402                	jalr	s0
    1a18:	0006                	0x6
    1a1a:	1d00                	addi	s0,sp,688
    1a1c:	0d06                	slli	s10,s10,0x1
    1a1e:	0000                	unimp
    1a20:	7705                	lui	a4,0xfffe1
    1a22:	cc02                	sw	zero,24(sp)
    1a24:	00000007          	0x7
    1a28:	6308                	ld	a0,0(a4)
    1a2a:	0005                	c.addi	zero,1
    1a2c:	4400                	lw	s0,8(s0)
    1a2e:	0008                	addi	a0,sp,0
    1a30:	0900                	addi	s0,sp,144
    1a32:	0034                	addi	a3,sp,8
    1a34:	0000                	unimp
    1a36:	0018                	addi	a4,sp,0
    1a38:	221e                	fld	ft4,448(sp)
    1a3a:	0008                	addi	a0,sp,0
    1a3c:	0f00                	addi	s0,sp,912
    1a3e:	4408                	lw	a0,8(s0)
    1a40:	0008                	addi	a0,sp,0
    1a42:	1f00                	addi	s0,sp,944
    1a44:	085a                	slli	a6,a6,0x16
    1a46:	0000                	unimp
    1a48:	2014                	fld	fa3,0(s0)
    1a4a:	0004                	addi	s1,sp,0
    1a4c:	0000                	unimp
    1a4e:	084f080f          	0x84f080f
    1a52:	0000                	unimp
    1a54:	0171080f          	0x171080f
    1a58:	0000                	unimp
    1a5a:	711f 0008 1400      	0x14000008711f
    1a60:	0000003b          	addw	zero,zero,zero
    1a64:	0f00                	addi	s0,sp,912
    1a66:	7708                	ld	a0,40(a4)
    1a68:	0008                	addi	a0,sp,0
    1a6a:	0f00                	addi	s0,sp,912
    1a6c:	6608                	ld	a0,8(a2)
    1a6e:	0008                	addi	a0,sp,0
    1a70:	0800                	addi	s0,sp,16
    1a72:	0602                	slli	a2,a2,0x0
    1a74:	0000                	unimp
    1a76:	088d                	addi	a7,a7,3
    1a78:	0000                	unimp
    1a7a:	3409                	addiw	s0,s0,-30
    1a7c:	0000                	unimp
    1a7e:	0200                	addi	s0,sp,256
    1a80:	2000                	fld	fs0,0(s0)
    1a82:	0ca9                	addi	s9,s9,10
    1a84:	0000                	unimp
    1a86:	fe05                	bnez	a2,19be <_start-0xe6f2>
    1a88:	2002                	fld	ft0,0(sp)
    1a8a:	0004                	addi	s1,sp,0
    1a8c:	2000                	fld	fs0,0(s0)
    1a8e:	0ca2                	slli	s9,s9,0x8
    1a90:	0000                	unimp
    1a92:	ff05                	bnez	a4,19ca <_start-0xe6e6>
    1a94:	2602                	fld	fa2,0(sp)
    1a96:	0004                	addi	s1,sp,0
    1a98:	0800                	addi	s0,sp,16
    1a9a:	0599                	addi	a1,a1,6
    1a9c:	0000                	unimp
    1a9e:	08b0                	addi	a2,sp,88
    1aa0:	0000                	unimp
    1aa2:	0021                	c.addi	zero,8
    1aa4:	a515                	j	20c8 <_start-0xdfe8>
    1aa6:	0008                	addi	a0,sp,0
    1aa8:	2200                	fld	fs0,0(a2)
    1aaa:	08df 0000 1406      	0x1406000008df
    1ab0:	08b0                	addi	a2,sp,88
    1ab2:	0000                	unimp
    1ab4:	c322                	sw	s0,132(sp)
    1ab6:	0600000b          	0x600000b
    1aba:	3b15                	addiw	s6,s6,-27
    1abc:	0000                	unimp
    1abe:	0f00                	addi	s0,sp,912
    1ac0:	d108                	sw	a0,32(a0)
    1ac2:	0008                	addi	a0,sp,0
    1ac4:	1300                	addi	s0,sp,416
    1ac6:	0000003b          	addw	zero,zero,zero
    1aca:	08e5                	addi	a7,a7,25
    1acc:	0000                	unimp
    1ace:	e514                	sd	a3,8(a0)
    1ad0:	0008                	addi	a0,sp,0
    1ad2:	1400                	addi	s0,sp,544
    1ad4:	08e5                	addi	a7,a7,25
    1ad6:	0000                	unimp
    1ad8:	0f00                	addi	s0,sp,912
    1ada:	eb08                	sd	a0,16(a4)
    1adc:	0008                	addi	a0,sp,0
    1ade:	2300                	fld	fs0,0(a4)
    1ae0:	f522                	sd	s0,168(sp)
    1ae2:	000a                	0xa
    1ae4:	0700                	addi	s0,sp,896
    1ae6:	00055d63          	bgez	a0,1b00 <_start-0xe5b0>
    1aea:	2200                	fld	fs0,0(a2)
    1aec:	09ec                	addi	a1,sp,220
    1aee:	0000                	unimp
    1af0:	1008                	addi	a0,sp,32
    1af2:	0902                	slli	s2,s2,0x0
    1af4:	0000                	unimp
    1af6:	055d080f          	0x55d080f
    1afa:	0000                	unimp
    1afc:	f822                	sd	s0,48(sp)
    1afe:	000a                	0xa
    1b00:	0800                	addi	s0,sp,16
    1b02:	5de2                	lw	s11,56(sp)
    1b04:	0005                	c.addi	zero,1
    1b06:	2200                	fld	fs0,0(a2)
    1b08:	00000cef          	jal	s9,1b08 <_start-0xe5a8>
    1b0c:	e308                	sd	a0,0(a4)
    1b0e:	0000003b          	addw	zero,zero,zero
    1b12:	5c22                	lw	s8,40(sp)
    1b14:	000c                	addi	a1,sp,0
    1b16:	0800                	addi	s0,sp,16
    1b18:	00003be3          	0x3be3
    1b1c:	2200                	fld	fs0,0(a2)
    1b1e:	0d40                	addi	s0,sp,660
    1b20:	0000                	unimp
    1b22:	e308                	sd	a0,0(a4)
    1b24:	0000003b          	addw	zero,zero,zero
    1b28:	2122                	fld	ft2,8(sp)
    1b2a:	000a                	0xa
    1b2c:	0800                	addi	s0,sp,16
    1b2e:	3be5                	addiw	s7,s7,-7
    1b30:	0000                	unimp
    1b32:	2200                	fld	fs0,0(a2)
    1b34:	00000b1b          	sext.w	s6,zero
    1b38:	9a09                	andi	a2,a2,-30
    1b3a:	002d                	c.addi	zero,11
    1b3c:	0000                	unimp
    1b3e:	a622                	fsd	fs0,264(sp)
    1b40:	09000007          	0x9000007
    1b44:	00003b9b          	0x3b9b
    1b48:	0800                	addi	s0,sp,16
    1b4a:	055d                	addi	a0,a0,23
    1b4c:	0000                	unimp
    1b4e:	0965                	addi	s2,s2,25
    1b50:	0000                	unimp
    1b52:	3409                	addiw	s0,s0,-30
    1b54:	0000                	unimp
    1b56:	0100                	addi	s0,sp,128
    1b58:	2200                	fld	fs0,0(a2)
    1b5a:	083c                	addi	a5,sp,24
    1b5c:	0000                	unimp
    1b5e:	9e09                	subw	a2,a2,a0
    1b60:	0955                	addi	s2,s2,21
    1b62:	0000                	unimp
    1b64:	8d04                	0x8d04
    1b66:	0009                	c.addi	zero,2
    1b68:	0a00                	addi	s0,sp,272
    1b6a:	6c2a                	ld	s8,136(sp)
    1b6c:	0000                	unimp
    1b6e:	0400                	addi	s0,sp,512
    1b70:	0bb1                	addi	s7,s7,12
    1b72:	0000                	unimp
    1b74:	2f0a                	fld	ft10,128(sp)
    1b76:	0986                	slli	s3,s3,0x1
    1b78:	0000                	unimp
    1b7a:	098c080f          	0x98c080f
    1b7e:	0000                	unimp
    1b80:	00097013          	andi	zero,s2,0
    1b84:	9b00                	0x9b00
    1b86:	0009                	c.addi	zero,2
    1b88:	1400                	addi	s0,sp,544
    1b8a:	08e5                	addi	a7,a7,25
    1b8c:	0000                	unimp
    1b8e:	0400                	addi	s0,sp,512
    1b90:	0d6e                	slli	s10,s10,0x1b
    1b92:	0000                	unimp
    1b94:	360a                	fld	fa2,160(sp)
    1b96:	000008cb          	fnmsub.s	fa7,ft0,ft0,ft0,rne
    1b9a:	8122                	mv	sp,s0
    1b9c:	0a000007          	0xa000007
    1ba0:	00097bbb          	0x97bbb
    1ba4:	2200                	fld	fs0,0(a2)
    1ba6:	0c8d                	addi	s9,s9,3
    1ba8:	0000                	unimp
    1baa:	be0a                	fsd	ft2,312(sp)
    1bac:	0000099b          	sext.w	s3,zero
    1bb0:	6024                	ld	s1,64(s0)
    1bb2:	0009                	c.addi	zero,2
    1bb4:	0700                	addi	s0,sp,896
    1bb6:	6c04                	ld	s1,24(s0)
    1bb8:	0000                	unimp
    1bba:	0b00                	addi	s0,sp,400
    1bbc:	f218                	sd	a4,32(a2)
    1bbe:	0009                	c.addi	zero,2
    1bc0:	2500                	fld	fs0,8(a0)
    1bc2:	0b51                	addi	s6,s6,20
    1bc4:	0000                	unimp
    1bc6:	2500                	fld	fs0,8(a0)
    1bc8:	09e1                	addi	s3,s3,24
    1bca:	0000                	unimp
    1bcc:	2501                	sext.w	a0,a0
    1bce:	0a01                	addi	s4,s4,0
    1bd0:	0000                	unimp
    1bd2:	2502                	fld	fa0,0(sp)
    1bd4:	0b48                	addi	a0,sp,404
    1bd6:	0000                	unimp
    1bd8:	0d472503          	lw	a0,212(a4) # fffffffffffe10d4 <__global_pointer$+0xfffffffffffce104>
    1bdc:	0000                	unimp
    1bde:	2504                	fld	fs1,8(a0)
    1be0:	0d36                	slli	s10,s10,0xd
    1be2:	0000                	unimp
    1be4:	0005                	c.addi	zero,1
    1be6:	1822                	slli	a6,a6,0x28
    1be8:	0008                	addi	a0,sp,0
    1bea:	0b00                	addi	s0,sp,400
    1bec:	bc20                	fsd	fs0,120(s0)
    1bee:	0009                	c.addi	zero,2
    1bf0:	2400                	fld	fs0,8(s0)
    1bf2:	0a48                	addi	a0,sp,276
    1bf4:	0000                	unimp
    1bf6:	006c0407          	0x6c0407
    1bfa:	0000                	unimp
    1bfc:	0a21220b          	0xa21220b
    1c00:	0000                	unimp
    1c02:	a725                	j	232a <_start-0xdd86>
    1c04:	0000000b          	0xb
    1c08:	6725                	lui	a4,0x9
    1c0a:	0100000b          	0x100000b
    1c0e:	7025                	0x7025
    1c10:	000c                	addi	a1,sp,0
    1c12:	0200                	addi	s0,sp,256
    1c14:	2200                	fld	fs0,0(a2)
    1c16:	00000913          	li	s2,0
    1c1a:	09fd270b          	0x9fd270b
    1c1e:	0000                	unimp
    1c20:	1222                	slli	tp,tp,0x28
    1c22:	000a                	0xa
    1c24:	0c00                	addi	s0,sp,528
    1c26:	b025                	j	144e <_start-0xec62>
    1c28:	0008                	addi	a0,sp,0
    1c2a:	2200                	fld	fs0,0(a2)
    1c2c:	0878                	addi	a4,sp,28
    1c2e:	0000                	unimp
    1c30:	310c                	fld	fa1,32(a0)
    1c32:	08b0                	addi	a2,sp,88
    1c34:	0000                	unimp
    1c36:	e704                	sd	s1,8(a4)
    1c38:	0001                	nop
    1c3a:	0d00                	addi	s0,sp,656
    1c3c:	0000577b          	0x577b
    1c40:	1500                	addi	s0,sp,672
    1c42:	0a42                	slli	s4,s4,0x10
    1c44:	0000                	unimp
    1c46:	b604                	fsd	fs1,40(a2)
    1c48:	000c                	addi	a1,sp,0
    1c4a:	0d00                	addi	s0,sp,656
    1c4c:	2d84                	fld	fs1,24(a1)
    1c4e:	0000                	unimp
    1c50:	0400                	addi	s0,sp,512
    1c52:	0cb5                	addi	s9,s9,13
    1c54:	0000                	unimp
    1c56:	850d                	srai	a0,a0,0x3
    1c58:	0034                	addi	a3,sp,8
    1c5a:	0000                	unimp
    1c5c:	1002                	0x1002
    1c5e:	3105                	addiw	sp,sp,-31
    1c60:	0001                	nop
    1c62:	0200                	addi	s0,sp,256
    1c64:	0710                	addi	a2,sp,896
    1c66:	0000                	unimp
    1c68:	0000                	unimp
    1c6a:	0402                	slli	s0,s0,0x0
    1c6c:	de04                	sw	s1,56(a2)
    1c6e:	000a                	0xa
    1c70:	0200                	addi	s0,sp,256
    1c72:	0308                	addi	a0,sp,384
    1c74:	0ad6                	slli	s5,s5,0x15
    1c76:	0000                	unimp
    1c78:	0802                	slli	a6,a6,0x0
    1c7a:	1104                	addi	s1,sp,160
    1c7c:	0008                	addi	a0,sp,0
    1c7e:	0200                	addi	s0,sp,256
    1c80:	0310                	addi	a2,sp,384
    1c82:	07b0                	addi	a2,sp,968
    1c84:	0000                	unimp
    1c86:	2002                	fld	ft0,0(sp)
    1c88:	00080403          	lb	s0,0(a6) # be8ec <__global_pointer$+0xab91c>
    1c8c:	0800                	addi	s0,sp,16
    1c8e:	0a4d                	addi	s4,s4,19
    1c90:	0000                	unimp
    1c92:	0aa9                	addi	s5,s5,10
    1c94:	0000                	unimp
    1c96:	3409                	addiw	s0,s0,-30
    1c98:	0000                	unimp
    1c9a:	ff00                	sd	s0,56(a4)
    1c9c:	1500                	addi	s0,sp,672
    1c9e:	0a99                	addi	s5,s5,6
    1ca0:	0000                	unimp
    1ca2:	d020                	sw	s0,96(s0)
    1ca4:	0008                	addi	a0,sp,0
    1ca6:	0d00                	addi	s0,sp,656
    1ca8:	01fc                	addi	a5,sp,204
    1caa:	0aa9                	addi	s5,s5,10
    1cac:	0000                	unimp
    1cae:	ef20                	sd	s0,88(a4)
    1cb0:	0001                	nop
    1cb2:	0d00                	addi	s0,sp,656
    1cb4:	0202                	slli	tp,tp,0x0
    1cb6:	0aa9                	addi	s5,s5,10
    1cb8:	0000                	unimp
    1cba:	f226                	sd	s1,288(sp)
    1cbc:	01000007          	0x1000007
    1cc0:	02c1                	addi	t0,t0,16
    1cc2:	0000003b          	addw	zero,zero,zero
    1cc6:	13e0                	addi	s0,sp,492
    1cc8:	0001                	nop
    1cca:	0000                	unimp
    1ccc:	0000                	unimp
    1cce:	003c                	addi	a5,sp,8
    1cd0:	0000                	unimp
    1cd2:	0000                	unimp
    1cd4:	0000                	unimp
    1cd6:	9c01                	subw	s0,s0,s0
    1cd8:	01007827          	0x1007827
    1cdc:	02c1                	addi	t0,t0,16
    1cde:	0a5d                	addi	s4,s4,23
    1ce0:	0000                	unimp
    1ce2:	37a2                	fld	fa5,40(sp)
    1ce4:	0000                	unimp
    1ce6:	7228                	ld	a0,96(a2)
    1ce8:	7465                	lui	s0,0xffff9
    1cea:	0100                	addi	s0,sp,128
    1cec:	0a5202c3          	fmadd.d	ft5,ft4,ft5,ft1,rne
    1cf0:	0000                	unimp
    1cf2:	e029                	bnez	s0,1d34 <_start-0xe37c>
    1cf4:	00000113          	li	sp,0
    1cf8:	0000                	unimp
    1cfa:	3400                	fld	fs0,40(s0)
    1cfc:	0000                	unimp
    1cfe:	0000                	unimp
    1d00:	0000                	unimp
    1d02:	2a00                	fld	fs0,16(a2)
    1d04:	0c9d                	addi	s9,s9,7
    1d06:	0000                	unimp
    1d08:	c501                	beqz	a0,1d10 <_start-0xe3a0>
    1d0a:	5d02                	lw	s10,32(sp)
    1d0c:	000a                	0xa
    1d0e:	db00                	sw	s0,48(a4)
    1d10:	2b000037          	lui	zero,0x2b000
    1d14:	5f5f 0061 c501      	0xc50100615f5f
    1d1a:	5d02                	lw	s10,32(sp)
    1d1c:	000a                	0xa
    1d1e:	1400                	addi	s0,sp,544
    1d20:	0038                	addi	a4,sp,8
    1d22:	0000                	unimp
    1d24:	0000                	unimp
    1d26:	00000aaf          	0xaaf
    1d2a:	0004                	addi	s1,sp,0
    1d2c:	0a79                	addi	s4,s4,30
    1d2e:	0000                	unimp
    1d30:	0108                	addi	a0,sp,128
    1d32:	014e                	slli	sp,sp,0x13
    1d34:	0000                	unimp
    1d36:	610c                	ld	a1,0(a0)
    1d38:	000a                	0xa
    1d3a:	3e00                	fld	fs0,56(a2)
    1d3c:	0002                	0x2
    1d3e:	1900                	addi	s0,sp,176
    1d40:	02000017          	auipc	zero,0x2000
    1d44:	0508                	addi	a0,sp,640
    1d46:	0235                	addi	tp,tp,13
    1d48:	0000                	unimp
    1d4a:	0802                	slli	a6,a6,0x0
    1d4c:	00020307          	0x20307
    1d50:	0300                	addi	s0,sp,384
    1d52:	0504                	addi	s1,sp,640
    1d54:	6e69                	lui	t3,0x1a
    1d56:	0074                	addi	a3,sp,12
    1d58:	0802                	slli	a6,a6,0x0
    1d5a:	3005                	0x3005
    1d5c:	0002                	0x2
    1d5e:	0200                	addi	s0,sp,256
    1d60:	0410                	addi	a2,sp,512
    1d62:	080c                	addi	a1,sp,16
    1d64:	0000                	unimp
    1d66:	0102                	slli	sp,sp,0x0
    1d68:	fb06                	sd	ra,432(sp)
    1d6a:	0000                	unimp
    1d6c:	0200                	addi	s0,sp,256
    1d6e:	0801                	addi	a6,a6,0
    1d70:	00f9                	addi	ra,ra,30
    1d72:	0000                	unimp
    1d74:	0202                	slli	tp,tp,0x0
    1d76:	7705                	lui	a4,0xfffe1
    1d78:	02000007          	0x2000007
    1d7c:	0702                	slli	a4,a4,0x0
    1d7e:	099e                	slli	s3,s3,0x7
    1d80:	0000                	unimp
    1d82:	0402                	slli	s0,s0,0x0
    1d84:	00020807          	0x20807
    1d88:	0400                	addi	s0,sp,512
    1d8a:	0b30                	addi	a2,sp,408
    1d8c:	0000                	unimp
    1d8e:	0701                	addi	a4,a4,0
    1d90:	0000002b          	0x2b
    1d94:	0a04                	addi	s1,sp,272
    1d96:	0200000b          	0x200000b
    1d9a:	1d2c                	addi	a1,sp,696
    1d9c:	0000                	unimp
    1d9e:	0400                	addi	s0,sp,512
    1da0:	0c45                	addi	s8,s8,17
    1da2:	0000                	unimp
    1da4:	7202                	ld	tp,32(sp)
    1da6:	001d                	c.addi	zero,7
    1da8:	0000                	unimp
    1daa:	dc04                	sw	s1,56(s0)
    1dac:	000c                	addi	a1,sp,0
    1dae:	0200                	addi	s0,sp,256
    1db0:	1d91                	addi	s11,s11,-28
    1db2:	0000                	unimp
    1db4:	0500                	addi	s0,sp,640
    1db6:	09f4                	addi	a3,sp,220
    1db8:	0000                	unimp
    1dba:	5c016503          	lwu	a0,1472(sp) # 7ff2e <__global_pointer$+0x6cf5e>
    1dbe:	0000                	unimp
    1dc0:	0600                	addi	s0,sp,768
    1dc2:	0204                	addi	s1,sp,256
    1dc4:	baa6                	fsd	fs1,368(sp)
    1dc6:	0000                	unimp
    1dc8:	0700                	addi	s0,sp,896
    1dca:	000009db          	0x9db
    1dce:	a802                	fsd	ft0,16(sp)
    1dd0:	0000008f          	0x8f
    1dd4:	00097807          	0x97807
    1dd8:	0200                	addi	s0,sp,256
    1dda:	baa9                	j	1734 <_start-0xe97c>
    1ddc:	0000                	unimp
    1dde:	0000                	unimp
    1de0:	4708                	lw	a0,8(a4)
    1de2:	0000                	unimp
    1de4:	ca00                	sw	s0,16(a2)
    1de6:	0000                	unimp
    1de8:	0900                	addi	s0,sp,144
    1dea:	0024                	addi	s1,sp,8
    1dec:	0000                	unimp
    1dee:	080a0003          	lb	zero,128(s4) # 9c9a0 <__global_pointer$+0x899d0>
    1df2:	a302                	fsd	ft0,384(sp)
    1df4:	000000eb          	0xeb
    1df8:	000c2f0b          	0xc2f0b
    1dfc:	0200                	addi	s0,sp,256
    1dfe:	2ba5                	addiw	s7,s7,9
    1e00:	0000                	unimp
    1e02:	0000                	unimp
    1e04:	000c370b          	0xc370b
    1e08:	0200                	addi	s0,sp,256
    1e0a:	9baa                	add	s7,s7,a0
    1e0c:	0000                	unimp
    1e0e:	0400                	addi	s0,sp,512
    1e10:	0400                	addi	s0,sp,512
    1e12:	0b25                	addi	s6,s6,9
    1e14:	0000                	unimp
    1e16:	ab02                	fsd	ft0,400(sp)
    1e18:	00ca                	slli	ra,ra,0x12
    1e1a:	0000                	unimp
    1e1c:	7f04                	ld	s1,56(a4)
    1e1e:	0200000b          	0x200000b
    1e22:	000063af          	0x63af
    1e26:	0c00                	addi	s0,sp,528
    1e28:	0408                	addi	a0,sp,512
    1e2a:	0c85                	addi	s9,s9,1
    1e2c:	0000                	unimp
    1e2e:	1904                	addi	s1,sp,176
    1e30:	005c                	addi	a5,sp,4
    1e32:	0000                	unimp
    1e34:	3b0d                	addiw	s6,s6,-29
    1e36:	0009                	c.addi	zero,2
    1e38:	2000                	fld	fs0,0(s0)
    1e3a:	2f04                	fld	fs1,24(a4)
    1e3c:	0161                	addi	sp,sp,24
    1e3e:	0000                	unimp
    1e40:	000bd20b          	0xbd20b
    1e44:	0400                	addi	s0,sp,512
    1e46:	6131                	addi	sp,sp,320
    1e48:	0001                	nop
    1e4a:	0000                	unimp
    1e4c:	5f0e                	lw	t5,224(sp)
    1e4e:	3204006b          	0x3204006b
    1e52:	0000002b          	0x2b
    1e56:	0b08                	addi	a0,sp,400
    1e58:	0c1a                	slli	s8,s8,0x6
    1e5a:	0000                	unimp
    1e5c:	3204                	fld	fs1,32(a2)
    1e5e:	0000002b          	0x2b
    1e62:	0b0c                	addi	a1,sp,400
    1e64:	092d                	addi	s2,s2,11
    1e66:	0000                	unimp
    1e68:	3204                	fld	fs1,32(a2)
    1e6a:	0000002b          	0x2b
    1e6e:	0b10                	addi	a2,sp,400
    1e70:	08ba                	slli	a7,a7,0xe
    1e72:	0000                	unimp
    1e74:	3204                	fld	fs1,32(a2)
    1e76:	0000002b          	0x2b
    1e7a:	0e14                	addi	a3,sp,784
    1e7c:	785f 0400 6733      	0x67330400785f
    1e82:	0001                	nop
    1e84:	1800                	addi	s0,sp,48
    1e86:	0f00                	addi	s0,sp,912
    1e88:	0e08                	addi	a0,sp,784
    1e8a:	0001                	nop
    1e8c:	0800                	addi	s0,sp,16
    1e8e:	00000103          	lb	sp,0(zero) # 2001d40 <__global_pointer$+0x1feed70>
    1e92:	00000177          	0x177
    1e96:	2409                	addiw	s0,s0,2
    1e98:	0000                	unimp
    1e9a:	0000                	unimp
    1e9c:	0d00                	addi	s0,sp,656
    1e9e:	0000095b          	0x95b
    1ea2:	0424                	addi	s1,sp,520
    1ea4:	0001f037          	lui	zero,0x1f
    1ea8:	0b00                	addi	s0,sp,400
    1eaa:	0852                	slli	a6,a6,0x14
    1eac:	0000                	unimp
    1eae:	3904                	fld	fs1,48(a0)
    1eb0:	0000002b          	0x2b
    1eb4:	0b00                	addi	s0,sp,400
    1eb6:	0d28                	addi	a0,sp,664
    1eb8:	0000                	unimp
    1eba:	3a04                	fld	fs1,48(a2)
    1ebc:	0000002b          	0x2b
    1ec0:	0b04                	addi	s1,sp,400
    1ec2:	086e                	slli	a6,a6,0x1b
    1ec4:	0000                	unimp
    1ec6:	3b04                	fld	fs1,48(a4)
    1ec8:	0000002b          	0x2b
    1ecc:	0b08                	addi	a0,sp,400
    1ece:	0d64                	addi	s1,sp,668
    1ed0:	0000                	unimp
    1ed2:	3c04                	fld	fs1,56(s0)
    1ed4:	0000002b          	0x2b
    1ed8:	0b0c                	addi	a1,sp,400
    1eda:	0ae4                	addi	s1,sp,348
    1edc:	0000                	unimp
    1ede:	3d04                	fld	fs1,56(a0)
    1ee0:	0000002b          	0x2b
    1ee4:	0b10                	addi	a2,sp,400
    1ee6:	0a31                	addi	s4,s4,12
    1ee8:	0000                	unimp
    1eea:	3e04                	fld	fs1,56(a2)
    1eec:	0000002b          	0x2b
    1ef0:	0b14                	addi	a3,sp,400
    1ef2:	0cc5                	addi	s9,s9,17
    1ef4:	0000                	unimp
    1ef6:	3f04                	fld	fs1,56(a4)
    1ef8:	0000002b          	0x2b
    1efc:	0b18                	addi	a4,sp,400
    1efe:	0b88                	addi	a0,sp,464
    1f00:	0000                	unimp
    1f02:	4004                	lw	s1,0(s0)
    1f04:	0000002b          	0x2b
    1f08:	0b1c                	addi	a5,sp,400
    1f0a:	0d0e                	slli	s10,s10,0x3
    1f0c:	0000                	unimp
    1f0e:	4104                	lw	s1,0(a0)
    1f10:	0000002b          	0x2b
    1f14:	0020                	addi	s0,sp,8
    1f16:	8d10                	0x8d10
    1f18:	0008                	addi	a0,sp,0
    1f1a:	0800                	addi	s0,sp,16
    1f1c:	0402                	slli	s0,s0,0x0
    1f1e:	314a                	fld	ft2,176(sp)
    1f20:	0002                	0x2
    1f22:	0b00                	addi	s0,sp,400
    1f24:	0920                	addi	s0,sp,152
    1f26:	0000                	unimp
    1f28:	4b04                	lw	s1,16(a4)
    1f2a:	0231                	addi	tp,tp,12
    1f2c:	0000                	unimp
    1f2e:	1100                	addi	s0,sp,160
    1f30:	00000b5b          	0xb5b
    1f34:	4c04                	lw	s1,24(s0)
    1f36:	0231                	addi	tp,tp,12
    1f38:	0000                	unimp
    1f3a:	0100                	addi	s0,sp,128
    1f3c:	7711                	lui	a4,0xfffe4
    1f3e:	000c                	addi	a1,sp,0
    1f40:	0400                	addi	s0,sp,512
    1f42:	034e                	slli	t1,t1,0x13
    1f44:	0001                	nop
    1f46:	0000                	unimp
    1f48:	1102                	slli	sp,sp,0x20
    1f4a:	08b2                	slli	a7,a7,0xc
    1f4c:	0000                	unimp
    1f4e:	5104                	lw	s1,32(a0)
    1f50:	00000103          	lb	sp,0(zero) # 1f000 <__global_pointer$+0xc030>
    1f54:	0204                	addi	s1,sp,256
    1f56:	0800                	addi	s0,sp,16
    1f58:	0101                	addi	sp,sp,0
    1f5a:	0000                	unimp
    1f5c:	0241                	addi	tp,tp,16
    1f5e:	0000                	unimp
    1f60:	2409                	addiw	s0,s0,2
    1f62:	0000                	unimp
    1f64:	1f00                	addi	s0,sp,944
    1f66:	1000                	addi	s0,sp,32
    1f68:	0aed                	addi	s5,s5,27
    1f6a:	0000                	unimp
    1f6c:	0318                	addi	a4,sp,384
    1f6e:	5d04                	lw	s1,56(a0)
    1f70:	0280                	addi	s0,sp,320
    1f72:	0000                	unimp
    1f74:	000bd20b          	0xbd20b
    1f78:	0400                	addi	s0,sp,512
    1f7a:	805e                	0x805e
    1f7c:	0002                	0x2
    1f7e:	0000                	unimp
    1f80:	000bea0b          	0xbea0b
    1f84:	0400                	addi	s0,sp,512
    1f86:	2b5f 0000 0800      	0x80000002b5f
    1f8c:	0009280b          	0x9280b
    1f90:	0400                	addi	s0,sp,512
    1f92:	8661                	srai	a2,a2,0x18
    1f94:	0002                	0x2
    1f96:	1000                	addi	s0,sp,32
    1f98:	8d11                	sub	a0,a0,a2
    1f9a:	0008                	addi	a0,sp,0
    1f9c:	0400                	addi	s0,sp,512
    1f9e:	f062                	sd	s8,32(sp)
    1fa0:	0001                	nop
    1fa2:	1000                	addi	s0,sp,32
    1fa4:	0001                	nop
    1fa6:	0241080f          	0x241080f
    1faa:	0000                	unimp
    1fac:	9608                	0x9608
    1fae:	0002                	0x2
    1fb0:	9600                	0x9600
    1fb2:	0002                	0x2
    1fb4:	0900                	addi	s0,sp,144
    1fb6:	0024                	addi	s1,sp,8
    1fb8:	0000                	unimp
    1fba:	001f 080f 029c      	0x29c080f001f
    1fc0:	0000                	unimp
    1fc2:	0d12                	slli	s10,s10,0x4
    1fc4:	0b92                	slli	s7,s7,0x4
    1fc6:	0000                	unimp
    1fc8:	0410                	addi	a2,sp,512
    1fca:	c275                	beqz	a2,20ae <_start-0xe002>
    1fcc:	0002                	0x2
    1fce:	0b00                	addi	s0,sp,400
    1fd0:	0868                	addi	a0,sp,28
    1fd2:	0000                	unimp
    1fd4:	7604                	ld	s1,40(a2)
    1fd6:	02c2                	slli	t0,t0,0x10
    1fd8:	0000                	unimp
    1fda:	0b00                	addi	s0,sp,400
    1fdc:	0c56                	slli	s8,s8,0x15
    1fde:	0000                	unimp
    1fe0:	7704                	ld	s1,40(a4)
    1fe2:	0000002b          	0x2b
    1fe6:	0008                	addi	a0,sp,0
    1fe8:	0047080f          	0x47080f
    1fec:	0000                	unimp
    1fee:	bb0d                	j	1d20 <_start-0xe390>
    1ff0:	b000000b          	0xb000000b
    1ff4:	b504                	fsd	fs1,40(a0)
    1ff6:	03f2                	slli	t2,t2,0x1c
    1ff8:	0000                	unimp
    1ffa:	5f0e                	lw	t5,224(sp)
    1ffc:	0070                	addi	a2,sp,12
    1ffe:	b604                	fsd	fs1,40(a2)
    2000:	02c2                	slli	t0,t0,0x10
    2002:	0000                	unimp
    2004:	0e00                	addi	s0,sp,784
    2006:	725f 0400 2bb7      	0x2bb70400725f
    200c:	0000                	unimp
    200e:	0800                	addi	s0,sp,16
    2010:	5f0e                	lw	t5,224(sp)
    2012:	b8040077          	0xb8040077
    2016:	0000002b          	0x2b
    201a:	0b0c                	addi	a1,sp,400
    201c:	000008ab          	0x8ab
    2020:	b904                	fsd	fs1,48(a0)
    2022:	004e                	0x4e
    2024:	0000                	unimp
    2026:	0b10                	addi	a2,sp,400
    2028:	00000987          	0x987
    202c:	ba04                	fsd	fs1,48(a2)
    202e:	004e                	0x4e
    2030:	0000                	unimp
    2032:	0e12                	slli	t3,t3,0x4
    2034:	625f 0066 bb04      	0xbb040066625f
    203a:	029d                	addi	t0,t0,7
    203c:	0000                	unimp
    203e:	0b18                	addi	a4,sp,400
    2040:	000007fb          	0x7fb
    2044:	bc04                	fsd	fs1,56(s0)
    2046:	0000002b          	0x2b
    204a:	0b28                	addi	a0,sp,408
    204c:	0000089b          	sext.w	a7,zero
    2050:	c304                	sw	s1,0(a4)
    2052:	0101                	addi	sp,sp,0
    2054:	0000                	unimp
    2056:	0b30                	addi	a2,sp,408
    2058:	0b42                	slli	s6,s6,0x10
    205a:	0000                	unimp
    205c:	c504                	sw	s1,8(a0)
    205e:	055f 0000 0b38      	0xb380000055f
    2064:	0a2a                	slli	s4,s4,0xa
    2066:	0000                	unimp
    2068:	c704                	sw	s1,8(a4)
    206a:	058e                	slli	a1,a1,0x3
    206c:	0000                	unimp
    206e:	0b40                	addi	s0,sp,404
    2070:	00000c3f 05b2ca04 	0x5b2ca0400000c3f
    2078:	0000                	unimp
    207a:	0b48                	addi	a0,sp,404
    207c:	0000085b          	0x85b
    2080:	cb04                	sw	s1,16(a4)
    2082:	05cc                	addi	a1,sp,708
    2084:	0000                	unimp
    2086:	0e50                	addi	a2,sp,788
    2088:	755f 0062 ce04      	0xce040062755f
    208e:	029d                	addi	t0,t0,7
    2090:	0000                	unimp
    2092:	0e58                	addi	a4,sp,788
    2094:	755f 0070 cf04      	0xcf040070755f
    209a:	02c2                	slli	t0,t0,0x10
    209c:	0000                	unimp
    209e:	0e68                	addi	a0,sp,796
    20a0:	755f 0072 d004      	0xd0040072755f
    20a6:	0000002b          	0x2b
    20aa:	0b70                	addi	a2,sp,412
    20ac:	0862                	slli	a6,a6,0x18
    20ae:	0000                	unimp
    20b0:	d304                	sw	s1,32(a4)
    20b2:	05d2                	slli	a1,a1,0x14
    20b4:	0000                	unimp
    20b6:	0b74                	addi	a3,sp,412
    20b8:	0d00                	addi	s0,sp,656
    20ba:	0000                	unimp
    20bc:	d404                	sw	s1,40(s0)
    20be:	05e2                	slli	a1,a1,0x18
    20c0:	0000                	unimp
    20c2:	6c5f0e77          	0x6c5f0e77
    20c6:	0062                	0x62
    20c8:	d704                	sw	s1,40(a4)
    20ca:	029d                	addi	t0,t0,7
    20cc:	0000                	unimp
    20ce:	0b78                	addi	a4,sp,412
    20d0:	0c4d                	addi	s8,s8,19
    20d2:	0000                	unimp
    20d4:	da04                	sw	s1,48(a2)
    20d6:	0000002b          	0x2b
    20da:	0b88                	addi	a0,sp,464
    20dc:	0a59                	addi	s4,s4,22
    20de:	0000                	unimp
    20e0:	db04                	sw	s1,48(a4)
    20e2:	006e                	0x6e
    20e4:	0000                	unimp
    20e6:	0b90                	addi	a2,sp,464
    20e8:	07cc                	addi	a1,sp,964
    20ea:	0000                	unimp
    20ec:	de04                	sw	s1,56(a2)
    20ee:	0410                	addi	a2,sp,512
    20f0:	0000                	unimp
    20f2:	0b98                	addi	a4,sp,464
    20f4:	000009fb          	0x9fb
    20f8:	e204                	sd	s1,0(a2)
    20fa:	00f6                	slli	ra,ra,0x1d
    20fc:	0000                	unimp
    20fe:	0ba0                	addi	s0,sp,472
    2100:	0000096f          	jal	s2,2100 <_start-0xdfb0>
    2104:	e404                	sd	s1,8(s0)
    2106:	000000eb          	0xeb
    210a:	0ba4                	addi	s1,sp,472
    210c:	0b99                	addi	s7,s7,6
    210e:	0000                	unimp
    2110:	e504                	sd	s1,8(a0)
    2112:	0000002b          	0x2b
    2116:	00ac                	addi	a1,sp,72
    2118:	00008413          	mv	s0,ra
    211c:	1000                	addi	s0,sp,32
    211e:	0004                	addi	s1,sp,0
    2120:	1400                	addi	s0,sp,544
    2122:	0410                	addi	a2,sp,512
    2124:	0000                	unimp
    2126:	0114                	addi	a3,sp,128
    2128:	0001                	nop
    212a:	1400                	addi	s0,sp,544
    212c:	054d                	addi	a0,a0,19
    212e:	0000                	unimp
    2130:	2b14                	fld	fa3,16(a4)
    2132:	0000                	unimp
    2134:	0000                	unimp
    2136:	041b080f          	0x41b080f
    213a:	0000                	unimp
    213c:	1015                	c.addi	zero,-27
    213e:	0004                	addi	s1,sp,0
    2140:	1600                	addi	s0,sp,800
    2142:	0c22                	slli	s8,s8,0x8
    2144:	0000                	unimp
    2146:	0748                	addi	a0,sp,900
    2148:	3904                	fld	fs1,48(a0)
    214a:	4d02                	lw	s10,0(sp)
    214c:	0005                	c.addi	zero,1
    214e:	1700                	addi	s0,sp,928
    2150:	0b78                	addi	a4,sp,412
    2152:	0000                	unimp
    2154:	3b04                	fld	fs1,48(a4)
    2156:	2b02                	fld	fs6,0(sp)
    2158:	0000                	unimp
    215a:	0000                	unimp
    215c:	000cd517          	auipc	a0,0xcd
    2160:	0400                	addi	s0,sp,512
    2162:	0240                	addi	s0,sp,260
    2164:	0639                	addi	a2,a2,14
    2166:	0000                	unimp
    2168:	1708                	addi	a0,sp,928
    216a:	0cbd                	addi	s9,s9,15
    216c:	0000                	unimp
    216e:	4004                	lw	s1,0(s0)
    2170:	3902                	fld	fs2,32(sp)
    2172:	0006                	0x6
    2174:	1000                	addi	s0,sp,32
    2176:	00093317          	auipc	t1,0x93
    217a:	0400                	addi	s0,sp,512
    217c:	0240                	addi	s0,sp,260
    217e:	0639                	addi	a2,a2,14
    2180:	0000                	unimp
    2182:	1718                	addi	a4,sp,928
    2184:	0be5                	addi	s7,s7,25
    2186:	0000                	unimp
    2188:	4204                	lw	s1,0(a2)
    218a:	2b02                	fld	fs6,0(sp)
    218c:	0000                	unimp
    218e:	2000                	fld	fs0,0(s0)
    2190:	00079b17          	auipc	s6,0x79
    2194:	0400                	addi	s0,sp,512
    2196:	08240243          	fmadd.s	ft4,fs0,ft2,ft1,rne
    219a:	0000                	unimp
    219c:	1724                	addi	s1,sp,936
    219e:	0c01                	addi	s8,s8,0
    21a0:	0000                	unimp
    21a2:	4604                	lw	s1,8(a2)
    21a4:	2b02                	fld	fs6,0(sp)
    21a6:	0000                	unimp
    21a8:	4000                	lw	s0,0(s0)
    21aa:	000bef17          	auipc	t5,0xbe
    21ae:	0400                	addi	s0,sp,512
    21b0:	08390247          	fmsub.s	ft4,fs2,ft3,ft1,rne
    21b4:	0000                	unimp
    21b6:	1748                	addi	a0,sp,932
    21b8:	0aff                	0xaff
    21ba:	0000                	unimp
    21bc:	4904                	lw	s1,16(a0)
    21be:	2b02                	fld	fs6,0(sp)
    21c0:	0000                	unimp
    21c2:	5000                	lw	s0,32(s0)
    21c4:	000bf717          	auipc	a4,0xbf
    21c8:	0400                	addi	s0,sp,512
    21ca:	084a024b          	fnmsub.s	ft4,fs4,ft4,ft1,rne
    21ce:	0000                	unimp
    21d0:	1758                	addi	a4,sp,932
    21d2:	000009d3          	fadd.s	fs3,ft0,ft0,rne
    21d6:	4e04                	lw	s1,24(a2)
    21d8:	6102                	ld	sp,0(sp)
    21da:	0001                	nop
    21dc:	6000                	ld	s0,0(s0)
    21de:	0008c617          	auipc	a2,0x8c
    21e2:	0400                	addi	s0,sp,512
    21e4:	002b024f          	fnmadd.s	ft4,fs6,ft2,ft0,rne
    21e8:	0000                	unimp
    21ea:	1768                	addi	a0,sp,940
    21ec:	0d5f 0000 5004      	0x500400000d5f
    21f2:	6102                	ld	sp,0(sp)
    21f4:	0001                	nop
    21f6:	7000                	ld	s0,32(s0)
    21f8:	000b1117          	auipc	sp,0xb1
    21fc:	0400                	addi	s0,sp,512
    21fe:	0251                	addi	tp,tp,20
    2200:	0850                	addi	a2,sp,20
    2202:	0000                	unimp
    2204:	1778                	addi	a4,sp,940
    2206:	097f                	0x97f
    2208:	0000                	unimp
    220a:	5404                	lw	s1,40(s0)
    220c:	2b02                	fld	fs6,0(sp)
    220e:	0000                	unimp
    2210:	8000                	0x8000
    2212:	0008ec17          	auipc	s8,0x8e
    2216:	0400                	addi	s0,sp,512
    2218:	0255                	addi	tp,tp,21
    221a:	054d                	addi	a0,a0,19
    221c:	0000                	unimp
    221e:	1788                	addi	a0,sp,992
    2220:	0b71                	addi	s6,s6,28
    2222:	0000                	unimp
    2224:	7804                	ld	s1,48(s0)
    2226:	0102                	slli	sp,sp,0x0
    2228:	0008                	addi	a0,sp,0
    222a:	9000                	0x9000
    222c:	ed18                	sd	a4,24(a0)
    222e:	000a                	0xa
    2230:	0400                	addi	s0,sp,512
    2232:	027c                	addi	a5,sp,268
    2234:	0280                	addi	s0,sp,320
    2236:	0000                	unimp
    2238:	01f8                	addi	a4,sp,204
    223a:	b118                	fsd	fa4,32(a0)
    223c:	0009                	c.addi	zero,2
    223e:	0400                	addi	s0,sp,512
    2240:	027d                	addi	tp,tp,31
    2242:	0241                	addi	tp,tp,16
    2244:	0000                	unimp
    2246:	0200                	addi	s0,sp,256
    2248:	f618                	sd	a4,40(a2)
    224a:	000c                	addi	a1,sp,0
    224c:	0400                	addi	s0,sp,512
    224e:	0281                	addi	t0,t0,0
    2250:	0861                	addi	a6,a6,24
    2252:	0000                	unimp
    2254:	0518                	addi	a4,sp,640
    2256:	a318                	fsd	fa4,0(a4)
    2258:	0008                	addi	a0,sp,0
    225a:	0400                	addi	s0,sp,512
    225c:	0286                	slli	t0,t0,0x1
    225e:	05fe                	slli	a1,a1,0x1f
    2260:	0000                	unimp
    2262:	0520                	addi	s0,sp,648
    2264:	8818                	0x8818
    2266:	0008                	addi	a0,sp,0
    2268:	0400                	addi	s0,sp,512
    226a:	086d0287          	0x86d0287
    226e:	0000                	unimp
    2270:	0538                	addi	a4,sp,648
    2272:	0f00                	addi	s0,sp,912
    2274:	5308                	lw	a0,32(a4)
    2276:	0005                	c.addi	zero,1
    2278:	0200                	addi	s0,sp,256
    227a:	0801                	addi	a6,a6,0
    227c:	0102                	slli	sp,sp,0x0
    227e:	0000                	unimp
    2280:	5315                	li	t1,-27
    2282:	0005                	c.addi	zero,1
    2284:	0f00                	addi	s0,sp,912
    2286:	f208                	sd	a0,32(a2)
    2288:	13000003          	lb	zero,304(zero) # 130 <_start-0xff80>
    228c:	0084                	addi	s1,sp,64
    228e:	0000                	unimp
    2290:	00000583          	lb	a1,0(zero) # 0 <_start-0x100b0>
    2294:	1014                	addi	a3,sp,32
    2296:	0004                	addi	s1,sp,0
    2298:	1400                	addi	s0,sp,544
    229a:	0101                	addi	sp,sp,0
    229c:	0000                	unimp
    229e:	8314                	0x8314
    22a0:	0005                	c.addi	zero,1
    22a2:	1400                	addi	s0,sp,544
    22a4:	0000002b          	0x2b
    22a8:	0f00                	addi	s0,sp,912
    22aa:	5a08                	lw	a0,48(a2)
    22ac:	0005                	c.addi	zero,1
    22ae:	1500                	addi	s0,sp,672
    22b0:	00000583          	lb	a1,0(zero) # 0 <_start-0x100b0>
    22b4:	0565080f          	0x565080f
    22b8:	0000                	unimp
    22ba:	00007913          	andi	s2,zero,0
    22be:	b200                	fsd	fs0,32(a2)
    22c0:	0005                	c.addi	zero,1
    22c2:	1400                	addi	s0,sp,544
    22c4:	0410                	addi	a2,sp,512
    22c6:	0000                	unimp
    22c8:	0114                	addi	a3,sp,128
    22ca:	0001                	nop
    22cc:	1400                	addi	s0,sp,544
    22ce:	0079                	c.addi	zero,30
    22d0:	0000                	unimp
    22d2:	2b14                	fld	fa3,16(a4)
    22d4:	0000                	unimp
    22d6:	0000                	unimp
    22d8:	0594080f          	0x594080f
    22dc:	0000                	unimp
    22de:	00002b13          	slti	s6,zero,0
    22e2:	cc00                	sw	s0,24(s0)
    22e4:	0005                	c.addi	zero,1
    22e6:	1400                	addi	s0,sp,544
    22e8:	0410                	addi	a2,sp,512
    22ea:	0000                	unimp
    22ec:	0114                	addi	a3,sp,128
    22ee:	0001                	nop
    22f0:	0000                	unimp
    22f2:	05b8080f          	0x5b8080f
    22f6:	0000                	unimp
    22f8:	4708                	lw	a0,8(a4)
    22fa:	0000                	unimp
    22fc:	e200                	sd	s0,0(a2)
    22fe:	0005                	c.addi	zero,1
    2300:	0900                	addi	s0,sp,144
    2302:	0024                	addi	s1,sp,8
    2304:	0000                	unimp
    2306:	0002                	0x2
    2308:	4708                	lw	a0,8(a4)
    230a:	0000                	unimp
    230c:	f200                	sd	s0,32(a2)
    230e:	0005                	c.addi	zero,1
    2310:	0900                	addi	s0,sp,144
    2312:	0024                	addi	s1,sp,8
    2314:	0000                	unimp
    2316:	0000                	unimp
    2318:	bf05                	j	2248 <_start-0xde68>
    231a:	0008                	addi	a0,sp,0
    231c:	0400                	addi	s0,sp,512
    231e:	011f 02c8 0000      	0x2c8011f
    2324:	cf19                	beqz	a4,2342 <_start-0xdd6e>
    2326:	000c                	addi	a1,sp,0
    2328:	1800                	addi	s0,sp,48
    232a:	2304                	fld	fs1,0(a4)
    232c:	3301                	addiw	t1,t1,-32
    232e:	0006                	0x6
    2330:	1700                	addi	s0,sp,928
    2332:	0bd2                	slli	s7,s7,0x14
    2334:	0000                	unimp
    2336:	2504                	fld	fs1,8(a0)
    2338:	3301                	addiw	t1,t1,-32
    233a:	0006                	0x6
    233c:	0000                	unimp
    233e:	00099717          	auipc	a4,0x99
    2342:	0400                	addi	s0,sp,512
    2344:	0126                	slli	sp,sp,0x9
    2346:	0000002b          	0x2b
    234a:	1708                	addi	a0,sp,928
    234c:	0ba1                	addi	s7,s7,8
    234e:	0000                	unimp
    2350:	2704                	fld	fs1,8(a4)
    2352:	3901                	addiw	s2,s2,-32
    2354:	0006                	0x6
    2356:	1000                	addi	s0,sp,32
    2358:	0f00                	addi	s0,sp,912
    235a:	fe08                	sd	a0,56(a2)
    235c:	0005                	c.addi	zero,1
    235e:	0f00                	addi	s0,sp,912
    2360:	f208                	sd	a0,32(a2)
    2362:	0005                	c.addi	zero,1
    2364:	1900                	addi	s0,sp,176
    2366:	00000793          	li	a5,0
    236a:	040e                	slli	s0,s0,0x3
    236c:	0674013f 29170000 	0x291700000674013f
    2374:	000c                	addi	a1,sp,0
    2376:	0400                	addi	s0,sp,512
    2378:	0140                	addi	s0,sp,132
    237a:	0674                	addi	a3,sp,780
    237c:	0000                	unimp
    237e:	1700                	addi	s0,sp,928
    2380:	0a0c                	addi	a1,sp,272
    2382:	0000                	unimp
    2384:	4104                	lw	s1,0(a0)
    2386:	7401                	lui	s0,0xfffe0
    2388:	0006                	0x6
    238a:	0600                	addi	s0,sp,768
    238c:	000c8017          	auipc	zero,0xc8
    2390:	0400                	addi	s0,sp,512
    2392:	0142                	slli	sp,sp,0x10
    2394:	0055                	c.addi	zero,21
    2396:	0000                	unimp
    2398:	000c                	addi	a1,sp,0
    239a:	5508                	lw	a0,40(a0)
    239c:	0000                	unimp
    239e:	8400                	0x8400
    23a0:	0006                	0x6
    23a2:	0900                	addi	s0,sp,144
    23a4:	0024                	addi	s1,sp,8
    23a6:	0000                	unimp
    23a8:	0002                	0x2
    23aa:	d81a                	sw	t1,48(sp)
    23ac:	5904                	lw	s1,48(a0)
    23ae:	8502                	jr	a0
    23b0:	17000007          	0x17000007
    23b4:	00000a3b          	addw	s4,zero,zero
    23b8:	5b04                	lw	s1,48(a4)
    23ba:	5c02                	lw	s8,32(sp)
    23bc:	0000                	unimp
    23be:	0000                	unimp
    23c0:	000c6317          	auipc	t1,0xc6
    23c4:	0400                	addi	s0,sp,512
    23c6:	025c                	addi	a5,sp,260
    23c8:	054d                	addi	a0,a0,19
    23ca:	0000                	unimp
    23cc:	1708                	addi	a0,sp,928
    23ce:	09c6                	slli	s3,s3,0x11
    23d0:	0000                	unimp
    23d2:	5d04                	lw	s1,56(a0)
    23d4:	8502                	jr	a0
    23d6:	10000007          	0x10000007
    23da:	000d1917          	auipc	s2,0xd1
    23de:	0400                	addi	s0,sp,512
    23e0:	025e                	slli	tp,tp,0x17
    23e2:	00000177          	0x177
    23e6:	172c                	addi	a1,sp,936
    23e8:	00000943          	fmadd.s	fs2,ft0,ft0,ft0,rne
    23ec:	5f04                	lw	s1,56(a4)
    23ee:	2b02                	fld	fs6,0(sp)
    23f0:	0000                	unimp
    23f2:	5000                	lw	s0,32(s0)
    23f4:	000bcd17          	auipc	s10,0xbc
    23f8:	0400                	addi	s0,sp,512
    23fa:	0260                	addi	s0,sp,268
    23fc:	0795                	addi	a5,a5,5
    23fe:	0000                	unimp
    2400:	1758                	addi	a4,sp,932
    2402:	0d31                	addi	s10,s10,12
    2404:	0000                	unimp
    2406:	6104                	ld	s1,0(a0)
    2408:	3f02                	fld	ft10,32(sp)
    240a:	0006                	0x6
    240c:	6000                	ld	s0,0(s0)
    240e:	000bd817          	auipc	a6,0xbd
    2412:	0400                	addi	s0,sp,512
    2414:	0262                	slli	tp,tp,0x18
    2416:	000000eb          	0xeb
    241a:	1770                	addi	a2,sp,940
    241c:	0d51                	addi	s10,s10,20
    241e:	0000                	unimp
    2420:	6304                	ld	s1,0(a4)
    2422:	eb02                	sd	zero,400(sp)
    2424:	0000                	unimp
    2426:	7800                	ld	s0,48(s0)
    2428:	00084417          	auipc	s0,0x84
    242c:	0400                	addi	s0,sp,512
    242e:	0264                	addi	s1,sp,268
    2430:	000000eb          	0xeb
    2434:	1780                	addi	s0,sp,992
    2436:	0ce5                	addi	s9,s9,25
    2438:	0000                	unimp
    243a:	6504                	ld	s1,8(a0)
    243c:	9c02                	jalr	s8
    243e:	88000007          	0x88000007
    2442:	0009ba17          	auipc	s4,0x9b
    2446:	0400                	addi	s0,sp,512
    2448:	0266                	slli	tp,tp,0x19
    244a:	07ac                	addi	a1,sp,968
    244c:	0000                	unimp
    244e:	1790                	addi	a2,sp,992
    2450:	000007bf 2b026704 	0x2b026704000007bf
    2458:	0000                	unimp
    245a:	a800                	fsd	fs0,16(s0)
    245c:	00090517          	auipc	a0,0x90
    2460:	0400                	addi	s0,sp,512
    2462:	0268                	addi	a0,sp,268
    2464:	000000eb          	0xeb
    2468:	17ac                	addi	a1,sp,1000
    246a:	082d                	addi	a6,a6,11
    246c:	0000                	unimp
    246e:	6904                	ld	s1,16(a0)
    2470:	eb02                	sd	zero,400(sp)
    2472:	0000                	unimp
    2474:	b400                	fsd	fs0,40(s0)
    2476:	0008f417          	auipc	s0,0x8f
    247a:	0400                	addi	s0,sp,512
    247c:	026a                	slli	tp,tp,0x1a
    247e:	000000eb          	0xeb
    2482:	17bc                	addi	a5,sp,1000
    2484:	07d2                	slli	a5,a5,0x14
    2486:	0000                	unimp
    2488:	6b04                	ld	s1,16(a4)
    248a:	eb02                	sd	zero,400(sp)
    248c:	0000                	unimp
    248e:	c400                	sw	s0,8(s0)
    2490:	0007e117          	auipc	sp,0x7e
    2494:	0400                	addi	s0,sp,512
    2496:	026c                	addi	a1,sp,268
    2498:	000000eb          	0xeb
    249c:	17cc                	addi	a1,sp,996
    249e:	0b76                	slli	s6,s6,0x1d
    24a0:	0000                	unimp
    24a2:	6d04                	ld	s1,24(a0)
    24a4:	2b02                	fld	fs6,0(sp)
    24a6:	0000                	unimp
    24a8:	d400                	sw	s0,40(s0)
    24aa:	0800                	addi	s0,sp,16
    24ac:	00000553          	fadd.s	fa0,ft0,ft0,rne
    24b0:	0795                	addi	a5,a5,5
    24b2:	0000                	unimp
    24b4:	2409                	addiw	s0,s0,2
    24b6:	0000                	unimp
    24b8:	1900                	addi	s0,sp,176
    24ba:	0200                	addi	s0,sp,256
    24bc:	0708                	addi	a0,sp,896
    24be:	01fe                	slli	gp,gp,0x1f
    24c0:	0000                	unimp
    24c2:	5308                	lw	a0,32(a4)
    24c4:	0005                	c.addi	zero,1
    24c6:	ac00                	fsd	fs0,24(s0)
    24c8:	09000007          	0x9000007
    24cc:	0024                	addi	s1,sp,8
    24ce:	0000                	unimp
    24d0:	53080007          	0x53080007
    24d4:	0005                	c.addi	zero,1
    24d6:	bc00                	fsd	fs0,56(s0)
    24d8:	09000007          	0x9000007
    24dc:	0024                	addi	s1,sp,8
    24de:	0000                	unimp
    24e0:	681b0017          	auipc	zero,0x681b0
    24e4:	0401                	addi	s0,s0,0
    24e6:	0272                	slli	tp,tp,0x1c
    24e8:	07e1                	addi	a5,a5,24
    24ea:	0000                	unimp
    24ec:	000acf17          	auipc	t5,0xac
    24f0:	0400                	addi	s0,sp,512
    24f2:	0275                	addi	tp,tp,29
    24f4:	07e1                	addi	a5,a5,24
    24f6:	0000                	unimp
    24f8:	1700                	addi	s0,sp,928
    24fa:	0952                	slli	s2,s2,0x14
    24fc:	0000                	unimp
    24fe:	7604                	ld	s1,40(a2)
    2500:	f102                	sd	zero,160(sp)
    2502:	f0000007          	0xf0000007
    2506:	0800                	addi	s0,sp,16
    2508:	02c2                	slli	t0,t0,0x10
    250a:	0000                	unimp
    250c:	07f1                	addi	a5,a5,28
    250e:	0000                	unimp
    2510:	2409                	addiw	s0,s0,2
    2512:	0000                	unimp
    2514:	1d00                	addi	s0,sp,688
    2516:	0800                	addi	s0,sp,16
    2518:	005c                	addi	a5,sp,4
    251a:	0000                	unimp
    251c:	0801                	addi	a6,a6,0
    251e:	0000                	unimp
    2520:	2409                	addiw	s0,s0,2
    2522:	0000                	unimp
    2524:	1d00                	addi	s0,sp,688
    2526:	1c00                	addi	s0,sp,560
    2528:	0168                	addi	a0,sp,140
    252a:	5704                	lw	s1,40(a4)
    252c:	2402                	fld	fs0,0(sp)
    252e:	0008                	addi	a0,sp,0
    2530:	1d00                	addi	s0,sp,688
    2532:	0c22                	slli	s8,s8,0x8
    2534:	0000                	unimp
    2536:	6e04                	ld	s1,24(a2)
    2538:	8402                	jr	s0
    253a:	0006                	0x6
    253c:	1d00                	addi	s0,sp,688
    253e:	0d06                	slli	s10,s10,0x1
    2540:	0000                	unimp
    2542:	7704                	ld	s1,40(a4)
    2544:	bc02                	fsd	ft0,56(sp)
    2546:	00000007          	0x7
    254a:	5308                	lw	a0,32(a4)
    254c:	0005                	c.addi	zero,1
    254e:	3400                	fld	fs0,40(s0)
    2550:	0008                	addi	a0,sp,0
    2552:	0900                	addi	s0,sp,144
    2554:	0024                	addi	s1,sp,8
    2556:	0000                	unimp
    2558:	0018                	addi	a4,sp,0
    255a:	221e                	fld	ft4,448(sp)
    255c:	0008                	addi	a0,sp,0
    255e:	0f00                	addi	s0,sp,912
    2560:	3408                	fld	fa0,40(s0)
    2562:	0008                	addi	a0,sp,0
    2564:	1f00                	addi	s0,sp,944
    2566:	084a                	slli	a6,a6,0x12
    2568:	0000                	unimp
    256a:	1014                	addi	a3,sp,32
    256c:	0004                	addi	s1,sp,0
    256e:	0000                	unimp
    2570:	083f080f          	0x83f080f
    2574:	0000                	unimp
    2576:	0161080f          	0x161080f
    257a:	0000                	unimp
    257c:	611f 0008 1400      	0x14000008611f
    2582:	0000002b          	0x2b
    2586:	0f00                	addi	s0,sp,912
    2588:	6708                	ld	a0,8(a4)
    258a:	0008                	addi	a0,sp,0
    258c:	0f00                	addi	s0,sp,912
    258e:	5608                	lw	a0,40(a2)
    2590:	0008                	addi	a0,sp,0
    2592:	0800                	addi	s0,sp,16
    2594:	05f2                	slli	a1,a1,0x1c
    2596:	0000                	unimp
    2598:	087d                	addi	a6,a6,31
    259a:	0000                	unimp
    259c:	2409                	addiw	s0,s0,2
    259e:	0000                	unimp
    25a0:	0200                	addi	s0,sp,256
    25a2:	2000                	fld	fs0,0(s0)
    25a4:	0ca9                	addi	s9,s9,10
    25a6:	0000                	unimp
    25a8:	fe04                	sd	s1,56(a2)
    25aa:	1002                	0x1002
    25ac:	0004                	addi	s1,sp,0
    25ae:	2000                	fld	fs0,0(s0)
    25b0:	0ca2                	slli	s9,s9,0x8
    25b2:	0000                	unimp
    25b4:	ff04                	sd	s1,56(a4)
    25b6:	1602                	slli	a2,a2,0x20
    25b8:	0004                	addi	s1,sp,0
    25ba:	0800                	addi	s0,sp,16
    25bc:	0589                	addi	a1,a1,2
    25be:	0000                	unimp
    25c0:	08a0                	addi	s0,sp,88
    25c2:	0000                	unimp
    25c4:	0021                	c.addi	zero,8
    25c6:	9515                	srai	a0,a0,0x25
    25c8:	0008                	addi	a0,sp,0
    25ca:	2200                	fld	fs0,0(a2)
    25cc:	08df 0000 1405      	0x1405000008df
    25d2:	08a0                	addi	s0,sp,88
    25d4:	0000                	unimp
    25d6:	c322                	sw	s0,132(sp)
    25d8:	0500000b          	0x500000b
    25dc:	2b15                	addiw	s6,s6,5
    25de:	0000                	unimp
    25e0:	0f00                	addi	s0,sp,912
    25e2:	c108                	sw	a0,0(a0)
    25e4:	0008                	addi	a0,sp,0
    25e6:	1300                	addi	s0,sp,416
    25e8:	0000002b          	0x2b
    25ec:	08d5                	addi	a7,a7,21
    25ee:	0000                	unimp
    25f0:	d514                	sw	a3,40(a0)
    25f2:	0008                	addi	a0,sp,0
    25f4:	1400                	addi	s0,sp,544
    25f6:	08d5                	addi	a7,a7,21
    25f8:	0000                	unimp
    25fa:	0f00                	addi	s0,sp,912
    25fc:	db08                	sw	a0,48(a4)
    25fe:	0008                	addi	a0,sp,0
    2600:	2300                	fld	fs0,0(a4)
    2602:	f522                	sd	s0,168(sp)
    2604:	000a                	0xa
    2606:	0600                	addi	s0,sp,768
    2608:	00054d63          	bltz	a0,2622 <_start-0xda8e>
    260c:	2200                	fld	fs0,0(a2)
    260e:	09ec                	addi	a1,sp,220
    2610:	0000                	unimp
    2612:	08f21007          	0x8f21007
    2616:	0000                	unimp
    2618:	054d080f          	0x54d080f
    261c:	0000                	unimp
    261e:	f822                	sd	s0,48(sp)
    2620:	000a                	0xa
    2622:	0700                	addi	s0,sp,896
    2624:	4de2                	lw	s11,24(sp)
    2626:	0005                	c.addi	zero,1
    2628:	2200                	fld	fs0,0(a2)
    262a:	00000cef          	jal	s9,262a <_start-0xda86>
    262e:	002be307          	0x2be307
    2632:	0000                	unimp
    2634:	5c22                	lw	s8,40(sp)
    2636:	000c                	addi	a1,sp,0
    2638:	0700                	addi	s0,sp,896
    263a:	00002be3          	0x2be3
    263e:	2200                	fld	fs0,0(a2)
    2640:	0d40                	addi	s0,sp,660
    2642:	0000                	unimp
    2644:	002be307          	0x2be307
    2648:	0000                	unimp
    264a:	2122                	fld	ft2,8(sp)
    264c:	000a                	0xa
    264e:	0700                	addi	s0,sp,896
    2650:	2be5                	addiw	s7,s7,25
    2652:	0000                	unimp
    2654:	2200                	fld	fs0,0(a2)
    2656:	00000b1b          	sext.w	s6,zero
    265a:	9a08                	0x9a08
    265c:	001d                	c.addi	zero,7
    265e:	0000                	unimp
    2660:	a622                	fsd	fs0,264(sp)
    2662:	08000007          	0x8000007
    2666:	00002b9b          	0x2b9b
    266a:	0800                	addi	s0,sp,16
    266c:	054d                	addi	a0,a0,19
    266e:	0000                	unimp
    2670:	0955                	addi	s2,s2,21
    2672:	0000                	unimp
    2674:	2409                	addiw	s0,s0,2
    2676:	0000                	unimp
    2678:	0100                	addi	s0,sp,128
    267a:	2200                	fld	fs0,0(a2)
    267c:	083c                	addi	a5,sp,24
    267e:	0000                	unimp
    2680:	9e08                	0x9e08
    2682:	0945                	addi	s2,s2,17
    2684:	0000                	unimp
    2686:	8d04                	0x8d04
    2688:	0009                	c.addi	zero,2
    268a:	0900                	addi	s0,sp,144
    268c:	5c2a                	lw	s8,168(sp)
    268e:	0000                	unimp
    2690:	0400                	addi	s0,sp,512
    2692:	0bb1                	addi	s7,s7,12
    2694:	0000                	unimp
    2696:	2f09                	addiw	t5,t5,2
    2698:	0976                	slli	s2,s2,0x1d
    269a:	0000                	unimp
    269c:	097c080f          	0x97c080f
    26a0:	0000                	unimp
    26a2:	00096013          	ori	zero,s2,0
    26a6:	8b00                	0x8b00
    26a8:	0009                	c.addi	zero,2
    26aa:	1400                	addi	s0,sp,544
    26ac:	08d5                	addi	a7,a7,21
    26ae:	0000                	unimp
    26b0:	0400                	addi	s0,sp,512
    26b2:	0d6e                	slli	s10,s10,0x1b
    26b4:	0000                	unimp
    26b6:	3609                	addiw	a2,a2,-30
    26b8:	000008bb          	addw	a7,zero,zero
    26bc:	8122                	mv	sp,s0
    26be:	09000007          	0x9000007
    26c2:	00096bbb          	0x96bbb
    26c6:	2200                	fld	fs0,0(a2)
    26c8:	0c8d                	addi	s9,s9,3
    26ca:	0000                	unimp
    26cc:	be09                	j	21de <_start-0xded2>
    26ce:	0000098b          	0x98b
    26d2:	6024                	ld	s1,64(s0)
    26d4:	0009                	c.addi	zero,2
    26d6:	0700                	addi	s0,sp,896
    26d8:	5c04                	lw	s1,56(s0)
    26da:	0000                	unimp
    26dc:	0a00                	addi	s0,sp,272
    26de:	e218                	sd	a4,0(a2)
    26e0:	0009                	c.addi	zero,2
    26e2:	2500                	fld	fs0,8(a0)
    26e4:	0b51                	addi	s6,s6,20
    26e6:	0000                	unimp
    26e8:	2500                	fld	fs0,8(a0)
    26ea:	09e1                	addi	s3,s3,24
    26ec:	0000                	unimp
    26ee:	2501                	sext.w	a0,a0
    26f0:	0a01                	addi	s4,s4,0
    26f2:	0000                	unimp
    26f4:	2502                	fld	fa0,0(sp)
    26f6:	0b48                	addi	a0,sp,404
    26f8:	0000                	unimp
    26fa:	0d472503          	lw	a0,212(a4) # 9b412 <__global_pointer$+0x88442>
    26fe:	0000                	unimp
    2700:	2504                	fld	fs1,8(a0)
    2702:	0d36                	slli	s10,s10,0xd
    2704:	0000                	unimp
    2706:	0005                	c.addi	zero,1
    2708:	1822                	slli	a6,a6,0x28
    270a:	0008                	addi	a0,sp,0
    270c:	0a00                	addi	s0,sp,272
    270e:	ac20                	fsd	fs0,88(s0)
    2710:	0009                	c.addi	zero,2
    2712:	2400                	fld	fs0,8(s0)
    2714:	0a48                	addi	a0,sp,276
    2716:	0000                	unimp
    2718:	005c0407          	0x5c0407
    271c:	0000                	unimp
    271e:	220a                	fld	ft4,128(sp)
    2720:	0a11                	addi	s4,s4,4
    2722:	0000                	unimp
    2724:	a725                	j	2e4c <_start-0xd264>
    2726:	0000000b          	0xb
    272a:	6725                	lui	a4,0x9
    272c:	0100000b          	0x100000b
    2730:	7025                	0x7025
    2732:	000c                	addi	a1,sp,0
    2734:	0200                	addi	s0,sp,256
    2736:	2200                	fld	fs0,0(a2)
    2738:	00000913          	li	s2,0
    273c:	270a                	fld	fa4,128(sp)
    273e:	09ed                	addi	s3,s3,27
    2740:	0000                	unimp
    2742:	1222                	slli	tp,tp,0x28
    2744:	000a                	0xa
    2746:	0b00                	addi	s0,sp,400
    2748:	a025                	j	2770 <_start-0xd940>
    274a:	0008                	addi	a0,sp,0
    274c:	2200                	fld	fs0,0(a2)
    274e:	0878                	addi	a4,sp,28
    2750:	0000                	unimp
    2752:	08a0310b          	0x8a0310b
    2756:	0000                	unimp
    2758:	e704                	sd	s1,8(a4)
    275a:	0001                	nop
    275c:	0c00                	addi	s0,sp,528
    275e:	0000477b          	0x477b
    2762:	1500                	addi	s0,sp,672
    2764:	0a32                	slli	s4,s4,0xc
    2766:	0000                	unimp
    2768:	1002                	0x1002
    276a:	3105                	addiw	sp,sp,-31
    276c:	0001                	nop
    276e:	0200                	addi	s0,sp,256
    2770:	0710                	addi	a2,sp,896
    2772:	0000                	unimp
    2774:	0000                	unimp
    2776:	0402                	slli	s0,s0,0x0
    2778:	de04                	sw	s1,56(a2)
    277a:	000a                	0xa
    277c:	0200                	addi	s0,sp,256
    277e:	0308                	addi	a0,sp,384
    2780:	0ad6                	slli	s5,s5,0x15
    2782:	0000                	unimp
    2784:	0802                	slli	a6,a6,0x0
    2786:	1104                	addi	s1,sp,160
    2788:	0008                	addi	a0,sp,0
    278a:	0200                	addi	s0,sp,256
    278c:	0310                	addi	a2,sp,384
    278e:	07b0                	addi	a2,sp,968
    2790:	0000                	unimp
    2792:	2002                	fld	ft0,0(sp)
    2794:	00080403          	lb	s0,0(a6) # bf40e <__global_pointer$+0xac43e>
    2798:	0800                	addi	s0,sp,16
    279a:	0a3d                	addi	s4,s4,15
    279c:	0000                	unimp
    279e:	00000a83          	lb	s5,0(zero) # 681b24e0 <__global_pointer$+0x6819f510>
    27a2:	2409                	addiw	s0,s0,2
    27a4:	0000                	unimp
    27a6:	ff00                	sd	s0,56(a4)
    27a8:	1500                	addi	s0,sp,672
    27aa:	00000a73          	0xa73
    27ae:	d020                	sw	s0,96(s0)
    27b0:	0008                	addi	a0,sp,0
    27b2:	0c00                	addi	s0,sp,528
    27b4:	01fc                	addi	a5,sp,204
    27b6:	00000a83          	lb	s5,0(zero) # 0 <_start-0x100b0>
    27ba:	ef20                	sd	s0,88(a4)
    27bc:	0001                	nop
    27be:	0c00                	addi	s0,sp,528
    27c0:	0202                	slli	tp,tp,0x0
    27c2:	00000a83          	lb	s5,0(zero) # 0 <_start-0x100b0>
    27c6:	9426                	add	s0,s0,s1
    27c8:	000a                	0xa
    27ca:	0d00                	addi	s0,sp,656
    27cc:	02b1                	addi	t0,t0,12
    27ce:	0309                	addi	t1,t1,2
    27d0:	1ee0                	addi	s0,sp,892
    27d2:	0001                	nop
    27d4:	0000                	unimp
    27d6:	0000                	unimp
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	addi	sp,sp,-32
   2:	2501                	sext.w	a0,a0
   4:	130e                	slli	t1,t1,0x23
   6:	1b0e030b          	0x1b0e030b
   a:	110e                	slli	sp,sp,0x23
   c:	1201                	addi	tp,tp,-32
   e:	00171007          	0x171007
  12:	0200                	addi	s0,sp,256
  14:	0024                	addi	s1,sp,8
  16:	0b3e0b0b          	0xb3e0b0b
  1a:	00000e03          	lb	t3,0(zero) # 0 <_start-0x100b0>
  1e:	0b002403          	lw	s0,176(zero) # b0 <_start-0x10000>
  22:	030b3e0b          	0x30b3e0b
  26:	0008                	addi	a0,sp,0
  28:	0400                	addi	s0,sp,512
  2a:	0016                	0x16
  2c:	0b3a0e03          	lb	t3,179(s4) # 9d4f5 <__global_pointer$+0x8a525>
  30:	1349053b          	0x1349053b
  34:	0000                	unimp
  36:	2605                	addiw	a2,a2,1
  38:	4900                	lw	s0,16(a0)
  3a:	06000013          	li	zero,96
  3e:	0101                	addi	sp,sp,0
  40:	1349                	addi	t1,t1,-14
  42:	1301                	addi	t1,t1,-32
  44:	0000                	unimp
  46:	49002107          	flw	ft2,1168(zero) # 490 <_start-0xfc20>
  4a:	000b2f13          	slti	t5,s6,0
  4e:	0800                	addi	s0,sp,16
  50:	0034                	addi	a3,sp,8
  52:	0b3a0e03          	lb	t3,179(s4)
  56:	13490b3b          	0x13490b3b
  5a:	193c193f 16090000 	0x16090000193c193f
  62:	0300                	addi	s0,sp,384
  64:	3a0e                	fld	fs4,224(sp)
  66:	490b3b0b          	0x490b3b0b
  6a:	0a000013          	li	zero,160
  6e:	0b0b0113          	addi	sp,s6,176 # 7b240 <__global_pointer$+0x68270>
  72:	0b3a                	slli	s6,s6,0xe
  74:	13010b3b          	0x13010b3b
  78:	0000                	unimp
  7a:	03000d0b          	0x3000d0b
  7e:	3a0e                	fld	fs4,224(sp)
  80:	490b3b0b          	0x490b3b0b
  84:	0d0b0b13          	addi	s6,s6,208
  88:	380b0c0b          	0x380b0c0b
  8c:	0c00000b          	0xc00000b
  90:	000d                	c.addi	zero,3
  92:	0b3a0803          	lb	a6,179(s4)
  96:	13490b3b          	0x13490b3b
  9a:	0b0d0b0b          	0xb0d0b0b
  9e:	0b0c                	addi	a1,sp,400
  a0:	0b38                	addi	a4,sp,408
  a2:	0000                	unimp
  a4:	170d                	addi	a4,a4,-29
  a6:	0301                	addi	t1,t1,0
  a8:	0b0e                	slli	s6,s6,0x3
  aa:	3b0b3a0b          	0x3b0b3a0b
  ae:	0013010b          	0x13010b
  b2:	0e00                	addi	s0,sp,784
  b4:	000d                	c.addi	zero,3
  b6:	0b3a0803          	lb	a6,179(s4)
  ba:	13490b3b          	0x13490b3b
  be:	0000                	unimp
  c0:	03000d0f          	0x3000d0f
  c4:	3a0e                	fld	fs4,224(sp)
  c6:	490b3b0b          	0x490b3b0b
  ca:	10000013          	li	zero,256
  ce:	012e                	slli	sp,sp,0xb
  d0:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
  d8:	13491927          	0x13491927
  dc:	0111                	addi	sp,sp,4
  de:	0712                	slli	a4,a4,0x4
  e0:	1840                	addi	s0,sp,52
  e2:	4296                	lw	t0,68(sp)
  e4:	0119                	addi	sp,sp,6
  e6:	11000013          	li	zero,272
  ea:	0005                	c.addi	zero,1
  ec:	0b3a0803          	lb	a6,179(s4)
  f0:	13490b3b          	0x13490b3b
  f4:	1702                	slli	a4,a4,0x20
  f6:	0000                	unimp
  f8:	3412                	fld	fs0,288(sp)
  fa:	0300                	addi	s0,sp,384
  fc:	3a0e                	fld	fs4,224(sp)
  fe:	490b3b0b          	0x490b3b0b
 102:	00170213          	addi	tp,a4,1 # 9001 <_start-0x70af>
 106:	1300                	addi	s0,sp,416
 108:	0034                	addi	a3,sp,8
 10a:	0b3a0e03          	lb	t3,179(s4)
 10e:	13490b3b          	0x13490b3b
 112:	0b1c                	addi	a5,sp,400
 114:	0000                	unimp
 116:	3414                	fld	fa3,40(s0)
 118:	0300                	addi	s0,sp,384
 11a:	3a08                	fld	fa0,48(a2)
 11c:	490b3b0b          	0x490b3b0b
 120:	15000013          	li	zero,336
 124:	0034                	addi	a3,sp,8
 126:	0b3a0803          	lb	a6,179(s4)
 12a:	13490b3b          	0x13490b3b
 12e:	1702                	slli	a4,a4,0x20
 130:	0000                	unimp
 132:	0b16                	slli	s6,s6,0x5
 134:	5501                	li	a0,-32
 136:	00130117          	auipc	sp,0x130
 13a:	1700                	addi	s0,sp,928
 13c:	0034                	addi	a3,sp,8
 13e:	0b3a0e03          	lb	t3,179(s4)
 142:	13490b3b          	0x13490b3b
 146:	0000                	unimp
 148:	0a18                	addi	a4,sp,272
 14a:	0300                	addi	s0,sp,384
 14c:	3a0e                	fld	fs4,224(sp)
 14e:	000b3b0b          	0xb3b0b
 152:	1900                	addi	s0,sp,176
 154:	000a                	0xa
 156:	0b3a0e03          	lb	t3,179(s4)
 15a:	01110b3b          	addw	s6,sp,a7
 15e:	0000                	unimp
 160:	0b1a                	slli	s6,s6,0x6
 162:	5501                	li	a0,-32
 164:	1b000017          	auipc	zero,0x1b000
 168:	0000010b          	0x10b
 16c:	0100                	addi	s0,sp,128
 16e:	0111                	addi	sp,sp,4
 170:	0e25                	addi	t3,t3,9
 172:	0e030b13          	addi	s6,t1,224 # c84a0 <__global_pointer$+0xb54d0>
 176:	01110e1b          	addiw	t3,sp,17
 17a:	0712                	slli	a4,a4,0x4
 17c:	1710                	addi	a2,sp,928
 17e:	0000                	unimp
 180:	2402                	fld	fs0,0(sp)
 182:	0b00                	addi	s0,sp,400
 184:	030b3e0b          	0x30b3e0b
 188:	000e                	0xe
 18a:	0300                	addi	s0,sp,384
 18c:	0024                	addi	s1,sp,8
 18e:	0b3e0b0b          	0xb3e0b0b
 192:	00000803          	lb	a6,0(zero) # 1b000164 <__global_pointer$+0x1afed194>
 196:	1604                	addi	s1,sp,800
 198:	0300                	addi	s0,sp,384
 19a:	3a0e                	fld	fs4,224(sp)
 19c:	49053b0b          	0x49053b0b
 1a0:	05000013          	li	zero,80
 1a4:	0026                	0x26
 1a6:	1349                	addi	t1,t1,-14
 1a8:	0000                	unimp
 1aa:	0106                	slli	sp,sp,0x1
 1ac:	4901                	li	s2,0
 1ae:	00130113          	addi	sp,t1,1
 1b2:	0700                	addi	s0,sp,896
 1b4:	0021                	c.addi	zero,8
 1b6:	1349                	addi	t1,t1,-14
 1b8:	00000b2f          	0xb2f
 1bc:	3408                	fld	fa0,40(s0)
 1be:	0300                	addi	s0,sp,384
 1c0:	3a0e                	fld	fs4,224(sp)
 1c2:	490b3b0b          	0x490b3b0b
 1c6:	3c193f13          	sltiu	t5,s2,961
 1ca:	0019                	c.addi	zero,6
 1cc:	0900                	addi	s0,sp,144
 1ce:	0016                	0x16
 1d0:	0b3a0e03          	lb	t3,179(s4)
 1d4:	13490b3b          	0x13490b3b
 1d8:	0000                	unimp
 1da:	130a                	slli	t1,t1,0x22
 1dc:	0b01                	addi	s6,s6,0
 1de:	3b0b3a0b          	0x3b0b3a0b
 1e2:	0013010b          	0x13010b
 1e6:	0b00                	addi	s0,sp,400
 1e8:	000d                	c.addi	zero,3
 1ea:	0b3a0e03          	lb	t3,179(s4)
 1ee:	13490b3b          	0x13490b3b
 1f2:	0b0d0b0b          	0xb0d0b0b
 1f6:	0b0c                	addi	a1,sp,400
 1f8:	0b38                	addi	a4,sp,408
 1fa:	0000                	unimp
 1fc:	0d0c                	addi	a1,sp,656
 1fe:	0300                	addi	s0,sp,384
 200:	3a08                	fld	fa0,48(a2)
 202:	490b3b0b          	0x490b3b0b
 206:	0d0b0b13          	addi	s6,s6,208
 20a:	380b0c0b          	0x380b0c0b
 20e:	0d00000b          	0xd00000b
 212:	0e030117          	auipc	sp,0xe030
 216:	0b3a0b0b          	0xb3a0b0b
 21a:	13010b3b          	0x13010b3b
 21e:	0000                	unimp
 220:	0d0e                	slli	s10,s10,0x3
 222:	0300                	addi	s0,sp,384
 224:	3a08                	fld	fa0,48(a2)
 226:	490b3b0b          	0x490b3b0b
 22a:	0f000013          	li	zero,240
 22e:	000d                	c.addi	zero,3
 230:	0b3a0e03          	lb	t3,179(s4)
 234:	13490b3b          	0x13490b3b
 238:	0000                	unimp
 23a:	2e10                	fld	fa2,24(a2)
 23c:	3f01                	addiw	t5,t5,-32
 23e:	0319                	addi	t1,t1,6
 240:	3a0e                	fld	fs4,224(sp)
 242:	270b3b0b          	0x270b3b0b
 246:	4919                	li	s2,6
 248:	12011113          	0x12011113
 24c:	96184007          	flq	ft0,-1695(a6)
 250:	1942                	slli	s2,s2,0x30
 252:	1301                	addi	t1,t1,-32
 254:	0000                	unimp
 256:	0511                	addi	a0,a0,4
 258:	0300                	addi	s0,sp,384
 25a:	3a08                	fld	fa0,48(a2)
 25c:	490b3b0b          	0x490b3b0b
 260:	00170213          	addi	tp,a4,1
 264:	1200                	addi	s0,sp,288
 266:	0034                	addi	a3,sp,8
 268:	0b3a0e03          	lb	t3,179(s4)
 26c:	13490b3b          	0x13490b3b
 270:	1702                	slli	a4,a4,0x20
 272:	0000                	unimp
 274:	03003413          	sltiu	s0,zero,48
 278:	3a0e                	fld	fs4,224(sp)
 27a:	490b3b0b          	0x490b3b0b
 27e:	000b1c13          	slli	s8,s6,0x0
 282:	1400                	addi	s0,sp,544
 284:	0034                	addi	a3,sp,8
 286:	0b3a0803          	lb	a6,179(s4)
 28a:	13490b3b          	0x13490b3b
 28e:	1702                	slli	a4,a4,0x20
 290:	0000                	unimp
 292:	0b15                	addi	s6,s6,5
 294:	5501                	li	a0,-32
 296:	00130117          	auipc	sp,0x130
 29a:	1600                	addi	s0,sp,800
 29c:	0034                	addi	a3,sp,8
 29e:	0b3a0e03          	lb	t3,179(s4)
 2a2:	13490b3b          	0x13490b3b
 2a6:	0000                	unimp
 2a8:	11010b17          	auipc	s6,0x11010
 2ac:	1201                	addi	tp,tp,-32
 2ae:	00130107          	0x130107
 2b2:	1800                	addi	s0,sp,48
 2b4:	1755010b          	0x1755010b
 2b8:	0000                	unimp
 2ba:	0b19                	addi	s6,s6,6
 2bc:	0001                	nop
 2be:	0000                	unimp
 2c0:	1101                	addi	sp,sp,-32
 2c2:	2501                	sext.w	a0,a0
 2c4:	130e                	slli	t1,t1,0x23
 2c6:	1b0e030b          	0x1b0e030b
 2ca:	110e                	slli	sp,sp,0x23
 2cc:	1201                	addi	tp,tp,-32
 2ce:	00171007          	0x171007
 2d2:	0200                	addi	s0,sp,256
 2d4:	0024                	addi	s1,sp,8
 2d6:	0b3e0b0b          	0xb3e0b0b
 2da:	00000e03          	lb	t3,0(zero) # 0 <_start-0x100b0>
 2de:	0b002403          	lw	s0,176(zero) # b0 <_start-0x10000>
 2e2:	030b3e0b          	0x30b3e0b
 2e6:	0008                	addi	a0,sp,0
 2e8:	0400                	addi	s0,sp,512
 2ea:	0016                	0x16
 2ec:	0b3a0e03          	lb	t3,179(s4)
 2f0:	1349053b          	0x1349053b
 2f4:	0000                	unimp
 2f6:	2605                	addiw	a2,a2,1
 2f8:	4900                	lw	s0,16(a0)
 2fa:	06000013          	li	zero,96
 2fe:	0101                	addi	sp,sp,0
 300:	1349                	addi	t1,t1,-14
 302:	1301                	addi	t1,t1,-32
 304:	0000                	unimp
 306:	49002107          	flw	ft2,1168(zero) # 490 <_start-0xfc20>
 30a:	000b2f13          	slti	t5,s6,0
 30e:	0800                	addi	s0,sp,16
 310:	0034                	addi	a3,sp,8
 312:	0b3a0e03          	lb	t3,179(s4)
 316:	13490b3b          	0x13490b3b
 31a:	193c193f 16090000 	0x16090000193c193f
 322:	0300                	addi	s0,sp,384
 324:	3a0e                	fld	fs4,224(sp)
 326:	490b3b0b          	0x490b3b0b
 32a:	0a000013          	li	zero,160
 32e:	0b0b0113          	addi	sp,s6,176 # 11010358 <__global_pointer$+0x10ffd388>
 332:	0b3a                	slli	s6,s6,0xe
 334:	13010b3b          	0x13010b3b
 338:	0000                	unimp
 33a:	03000d0b          	0x3000d0b
 33e:	3a0e                	fld	fs4,224(sp)
 340:	490b3b0b          	0x490b3b0b
 344:	0d0b0b13          	addi	s6,s6,208
 348:	380b0c0b          	0x380b0c0b
 34c:	0c00000b          	0xc00000b
 350:	000d                	c.addi	zero,3
 352:	0b3a0803          	lb	a6,179(s4)
 356:	13490b3b          	0x13490b3b
 35a:	0b0d0b0b          	0xb0d0b0b
 35e:	0b0c                	addi	a1,sp,400
 360:	0b38                	addi	a4,sp,408
 362:	0000                	unimp
 364:	170d                	addi	a4,a4,-29
 366:	0301                	addi	t1,t1,0
 368:	0b0e                	slli	s6,s6,0x3
 36a:	3b0b3a0b          	0x3b0b3a0b
 36e:	0013010b          	0x13010b
 372:	0e00                	addi	s0,sp,784
 374:	000d                	c.addi	zero,3
 376:	0b3a0803          	lb	a6,179(s4)
 37a:	13490b3b          	0x13490b3b
 37e:	0000                	unimp
 380:	03000d0f          	0x3000d0f
 384:	3a0e                	fld	fs4,224(sp)
 386:	490b3b0b          	0x490b3b0b
 38a:	10000013          	li	zero,256
 38e:	012e                	slli	sp,sp,0xb
 390:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 398:	13491927          	0x13491927
 39c:	0111                	addi	sp,sp,4
 39e:	0712                	slli	a4,a4,0x4
 3a0:	1840                	addi	s0,sp,52
 3a2:	4296                	lw	t0,68(sp)
 3a4:	0119                	addi	sp,sp,6
 3a6:	11000013          	li	zero,272
 3aa:	0005                	c.addi	zero,1
 3ac:	0b3a0803          	lb	a6,179(s4)
 3b0:	13490b3b          	0x13490b3b
 3b4:	1702                	slli	a4,a4,0x20
 3b6:	0000                	unimp
 3b8:	3412                	fld	fs0,288(sp)
 3ba:	0300                	addi	s0,sp,384
 3bc:	3a0e                	fld	fs4,224(sp)
 3be:	490b3b0b          	0x490b3b0b
 3c2:	00170213          	addi	tp,a4,1
 3c6:	1300                	addi	s0,sp,416
 3c8:	0034                	addi	a3,sp,8
 3ca:	0b3a0e03          	lb	t3,179(s4)
 3ce:	13490b3b          	0x13490b3b
 3d2:	0b1c                	addi	a5,sp,400
 3d4:	0000                	unimp
 3d6:	3414                	fld	fa3,40(s0)
 3d8:	0300                	addi	s0,sp,384
 3da:	3a08                	fld	fa0,48(a2)
 3dc:	490b3b0b          	0x490b3b0b
 3e0:	15000013          	li	zero,336
 3e4:	0034                	addi	a3,sp,8
 3e6:	0b3a0803          	lb	a6,179(s4)
 3ea:	13490b3b          	0x13490b3b
 3ee:	1702                	slli	a4,a4,0x20
 3f0:	0000                	unimp
 3f2:	0b16                	slli	s6,s6,0x5
 3f4:	5501                	li	a0,-32
 3f6:	00130117          	auipc	sp,0x130
 3fa:	1700                	addi	s0,sp,928
 3fc:	0034                	addi	a3,sp,8
 3fe:	0b3a0e03          	lb	t3,179(s4)
 402:	13490b3b          	0x13490b3b
 406:	0000                	unimp
 408:	0a18                	addi	a4,sp,272
 40a:	0300                	addi	s0,sp,384
 40c:	3a0e                	fld	fs4,224(sp)
 40e:	000b3b0b          	0xb3b0b
 412:	1900                	addi	s0,sp,176
 414:	000a                	0xa
 416:	0b3a0e03          	lb	t3,179(s4)
 41a:	01110b3b          	addw	s6,sp,a7
 41e:	0000                	unimp
 420:	0b1a                	slli	s6,s6,0x6
 422:	5501                	li	a0,-32
 424:	1b000017          	auipc	zero,0x1b000
 428:	0000010b          	0x10b
 42c:	0100                	addi	s0,sp,128
 42e:	0111                	addi	sp,sp,4
 430:	0e25                	addi	t3,t3,9
 432:	0e030b13          	addi	s6,t1,224
 436:	01110e1b          	addiw	t3,sp,17
 43a:	0712                	slli	a4,a4,0x4
 43c:	1710                	addi	a2,sp,928
 43e:	0000                	unimp
 440:	2402                	fld	fs0,0(sp)
 442:	0b00                	addi	s0,sp,400
 444:	030b3e0b          	0x30b3e0b
 448:	000e                	0xe
 44a:	0300                	addi	s0,sp,384
 44c:	0016                	0x16
 44e:	0b3a0e03          	lb	t3,179(s4)
 452:	1349053b          	0x1349053b
 456:	0000                	unimp
 458:	2404                	fld	fs1,8(s0)
 45a:	0b00                	addi	s0,sp,400
 45c:	030b3e0b          	0x30b3e0b
 460:	0008                	addi	a0,sp,0
 462:	0500                	addi	s0,sp,640
 464:	0026                	0x26
 466:	1349                	addi	t1,t1,-14
 468:	0000                	unimp
 46a:	0106                	slli	sp,sp,0x1
 46c:	4901                	li	s2,0
 46e:	00130113          	addi	sp,t1,1
 472:	0700                	addi	s0,sp,896
 474:	0021                	c.addi	zero,8
 476:	1349                	addi	t1,t1,-14
 478:	00000b2f          	0xb2f
 47c:	3408                	fld	fa0,40(s0)
 47e:	0300                	addi	s0,sp,384
 480:	3a0e                	fld	fs4,224(sp)
 482:	490b3b0b          	0x490b3b0b
 486:	3c193f13          	sltiu	t5,s2,961
 48a:	0019                	c.addi	zero,6
 48c:	0900                	addi	s0,sp,144
 48e:	0016                	0x16
 490:	0b3a0e03          	lb	t3,179(s4)
 494:	13490b3b          	0x13490b3b
 498:	0000                	unimp
 49a:	130a                	slli	t1,t1,0x22
 49c:	0b01                	addi	s6,s6,0
 49e:	3b0b3a0b          	0x3b0b3a0b
 4a2:	0013010b          	0x13010b
 4a6:	0b00                	addi	s0,sp,400
 4a8:	000d                	c.addi	zero,3
 4aa:	0b3a0e03          	lb	t3,179(s4)
 4ae:	13490b3b          	0x13490b3b
 4b2:	0b0d0b0b          	0xb0d0b0b
 4b6:	0b0c                	addi	a1,sp,400
 4b8:	0b38                	addi	a4,sp,408
 4ba:	0000                	unimp
 4bc:	0d0c                	addi	a1,sp,656
 4be:	0300                	addi	s0,sp,384
 4c0:	3a08                	fld	fa0,48(a2)
 4c2:	490b3b0b          	0x490b3b0b
 4c6:	0d0b0b13          	addi	s6,s6,208
 4ca:	380b0c0b          	0x380b0c0b
 4ce:	0d00000b          	0xd00000b
 4d2:	0e030117          	auipc	sp,0xe030
 4d6:	0b3a0b0b          	0xb3a0b0b
 4da:	13010b3b          	0x13010b3b
 4de:	0000                	unimp
 4e0:	0d0e                	slli	s10,s10,0x3
 4e2:	0300                	addi	s0,sp,384
 4e4:	3a08                	fld	fa0,48(a2)
 4e6:	490b3b0b          	0x490b3b0b
 4ea:	0f000013          	li	zero,240
 4ee:	000d                	c.addi	zero,3
 4f0:	0b3a0e03          	lb	t3,179(s4)
 4f4:	13490b3b          	0x13490b3b
 4f8:	0000                	unimp
 4fa:	2e10                	fld	fa2,24(a2)
 4fc:	3f01                	addiw	t5,t5,-32
 4fe:	0319                	addi	t1,t1,6
 500:	3a0e                	fld	fs4,224(sp)
 502:	270b3b0b          	0x270b3b0b
 506:	4919                	li	s2,6
 508:	12011113          	0x12011113
 50c:	96184007          	flq	ft0,-1695(a6)
 510:	1942                	slli	s2,s2,0x30
 512:	1301                	addi	t1,t1,-32
 514:	0000                	unimp
 516:	0511                	addi	a0,a0,4
 518:	0300                	addi	s0,sp,384
 51a:	3a08                	fld	fa0,48(a2)
 51c:	490b3b0b          	0x490b3b0b
 520:	00170213          	addi	tp,a4,1
 524:	1200                	addi	s0,sp,288
 526:	0034                	addi	a3,sp,8
 528:	0b3a0803          	lb	a6,179(s4)
 52c:	13490b3b          	0x13490b3b
 530:	0000                	unimp
 532:	03003413          	sltiu	s0,zero,48
 536:	3a08                	fld	fa0,48(a2)
 538:	490b3b0b          	0x490b3b0b
 53c:	00170213          	addi	tp,a4,1
 540:	1400                	addi	s0,sp,544
 542:	1755010b          	0x1755010b
 546:	1301                	addi	t1,t1,-32
 548:	0000                	unimp
 54a:	0a15                	addi	s4,s4,5
 54c:	0300                	addi	s0,sp,384
 54e:	3a0e                	fld	fs4,224(sp)
 550:	000b3b0b          	0xb3b0b
 554:	1600                	addi	s0,sp,800
 556:	0111010b          	0x111010b
 55a:	0712                	slli	a4,a4,0x4
 55c:	0000                	unimp
 55e:	03003417          	auipc	s0,0x3003
 562:	3a0e                	fld	fs4,224(sp)
 564:	490b3b0b          	0x490b3b0b
 568:	00170213          	addi	tp,a4,1
 56c:	1800                	addi	s0,sp,48
 56e:	0111010b          	0x111010b
 572:	0712                	slli	a4,a4,0x4
 574:	1301                	addi	t1,t1,-32
 576:	0000                	unimp
 578:	0b19                	addi	s6,s6,6
 57a:	0001                	nop
 57c:	1a00                	addi	s0,sp,304
 57e:	0034                	addi	a3,sp,8
 580:	0b3a0e03          	lb	t3,179(s4)
 584:	13490b3b          	0x13490b3b
 588:	0000                	unimp
 58a:	55010b1b          	addiw	s6,sp,1360
 58e:	00000017          	auipc	zero,0x0
 592:	1101                	addi	sp,sp,-32
 594:	2501                	sext.w	a0,a0
 596:	130e                	slli	t1,t1,0x23
 598:	1b0e030b          	0x1b0e030b
 59c:	110e                	slli	sp,sp,0x23
 59e:	1201                	addi	tp,tp,-32
 5a0:	00171007          	0x171007
 5a4:	0200                	addi	s0,sp,256
 5a6:	0024                	addi	s1,sp,8
 5a8:	0b3e0b0b          	0xb3e0b0b
 5ac:	00000e03          	lb	t3,0(zero) # 58e <_start-0xfb22>
 5b0:	0b002403          	lw	s0,176(zero) # b0 <_start-0x10000>
 5b4:	030b3e0b          	0x30b3e0b
 5b8:	0008                	addi	a0,sp,0
 5ba:	0400                	addi	s0,sp,512
 5bc:	0016                	0x16
 5be:	0b3a0e03          	lb	t3,179(s4)
 5c2:	1349053b          	0x1349053b
 5c6:	0000                	unimp
 5c8:	2605                	addiw	a2,a2,1
 5ca:	4900                	lw	s0,16(a0)
 5cc:	06000013          	li	zero,96
 5d0:	0101                	addi	sp,sp,0
 5d2:	1349                	addi	t1,t1,-14
 5d4:	1301                	addi	t1,t1,-32
 5d6:	0000                	unimp
 5d8:	49002107          	flw	ft2,1168(zero) # 490 <_start-0xfc20>
 5dc:	000b2f13          	slti	t5,s6,0
 5e0:	0800                	addi	s0,sp,16
 5e2:	0034                	addi	a3,sp,8
 5e4:	0b3a0e03          	lb	t3,179(s4)
 5e8:	13490b3b          	0x13490b3b
 5ec:	193c193f 16090000 	0x16090000193c193f
 5f4:	0300                	addi	s0,sp,384
 5f6:	3a0e                	fld	fs4,224(sp)
 5f8:	490b3b0b          	0x490b3b0b
 5fc:	0a000013          	li	zero,160
 600:	0b0b0113          	addi	sp,s6,176
 604:	0b3a                	slli	s6,s6,0xe
 606:	13010b3b          	0x13010b3b
 60a:	0000                	unimp
 60c:	03000d0b          	0x3000d0b
 610:	3a0e                	fld	fs4,224(sp)
 612:	490b3b0b          	0x490b3b0b
 616:	0d0b0b13          	addi	s6,s6,208
 61a:	380b0c0b          	0x380b0c0b
 61e:	0c00000b          	0xc00000b
 622:	000d                	c.addi	zero,3
 624:	0b3a0803          	lb	a6,179(s4)
 628:	13490b3b          	0x13490b3b
 62c:	0b0d0b0b          	0xb0d0b0b
 630:	0b0c                	addi	a1,sp,400
 632:	0b38                	addi	a4,sp,408
 634:	0000                	unimp
 636:	170d                	addi	a4,a4,-29
 638:	0301                	addi	t1,t1,0
 63a:	0b0e                	slli	s6,s6,0x3
 63c:	3b0b3a0b          	0x3b0b3a0b
 640:	0013010b          	0x13010b
 644:	0e00                	addi	s0,sp,784
 646:	000d                	c.addi	zero,3
 648:	0b3a0803          	lb	a6,179(s4)
 64c:	13490b3b          	0x13490b3b
 650:	0000                	unimp
 652:	03000d0f          	0x3000d0f
 656:	3a0e                	fld	fs4,224(sp)
 658:	490b3b0b          	0x490b3b0b
 65c:	10000013          	li	zero,256
 660:	012e                	slli	sp,sp,0xb
 662:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 66a:	13491927          	0x13491927
 66e:	0111                	addi	sp,sp,4
 670:	0712                	slli	a4,a4,0x4
 672:	1840                	addi	s0,sp,52
 674:	4296                	lw	t0,68(sp)
 676:	0119                	addi	sp,sp,6
 678:	11000013          	li	zero,272
 67c:	0005                	c.addi	zero,1
 67e:	0b3a0803          	lb	a6,179(s4)
 682:	13490b3b          	0x13490b3b
 686:	1702                	slli	a4,a4,0x20
 688:	0000                	unimp
 68a:	3412                	fld	fs0,288(sp)
 68c:	0300                	addi	s0,sp,384
 68e:	3a0e                	fld	fs4,224(sp)
 690:	490b3b0b          	0x490b3b0b
 694:	000b1c13          	slli	s8,s6,0x0
 698:	1300                	addi	s0,sp,416
 69a:	0034                	addi	a3,sp,8
 69c:	0b3a0803          	lb	a6,179(s4)
 6a0:	13490b3b          	0x13490b3b
 6a4:	0000                	unimp
 6a6:	3414                	fld	fa3,40(s0)
 6a8:	0300                	addi	s0,sp,384
 6aa:	3a08                	fld	fa0,48(a2)
 6ac:	490b3b0b          	0x490b3b0b
 6b0:	00170213          	addi	tp,a4,1
 6b4:	1500                	addi	s0,sp,672
 6b6:	1755010b          	0x1755010b
 6ba:	1301                	addi	t1,t1,-32
 6bc:	0000                	unimp
 6be:	3416                	fld	fs0,352(sp)
 6c0:	0300                	addi	s0,sp,384
 6c2:	3a0e                	fld	fs4,224(sp)
 6c4:	490b3b0b          	0x490b3b0b
 6c8:	17000013          	li	zero,368
 6cc:	0111010b          	0x111010b
 6d0:	0712                	slli	a4,a4,0x4
 6d2:	1301                	addi	t1,t1,-32
 6d4:	0000                	unimp
 6d6:	3418                	fld	fa4,40(s0)
 6d8:	0300                	addi	s0,sp,384
 6da:	3a0e                	fld	fs4,224(sp)
 6dc:	490b3b0b          	0x490b3b0b
 6e0:	00170213          	addi	tp,a4,1
 6e4:	1900                	addi	s0,sp,176
 6e6:	0111010b          	0x111010b
 6ea:	0712                	slli	a4,a4,0x4
 6ec:	0000                	unimp
 6ee:	0100                	addi	s0,sp,128
 6f0:	0111                	addi	sp,sp,4
 6f2:	0e25                	addi	t3,t3,9
 6f4:	0e030b13          	addi	s6,t1,224
 6f8:	01110e1b          	addiw	t3,sp,17
 6fc:	0712                	slli	a4,a4,0x4
 6fe:	1710                	addi	a2,sp,928
 700:	0000                	unimp
 702:	2402                	fld	fs0,0(sp)
 704:	0b00                	addi	s0,sp,400
 706:	030b3e0b          	0x30b3e0b
 70a:	000e                	0xe
 70c:	0300                	addi	s0,sp,384
 70e:	0024                	addi	s1,sp,8
 710:	0b3e0b0b          	0xb3e0b0b
 714:	00000803          	lb	a6,0(zero) # 0 <_start-0x100b0>
 718:	1604                	addi	s1,sp,800
 71a:	0300                	addi	s0,sp,384
 71c:	3a0e                	fld	fs4,224(sp)
 71e:	49053b0b          	0x49053b0b
 722:	05000013          	li	zero,80
 726:	0026                	0x26
 728:	1349                	addi	t1,t1,-14
 72a:	0000                	unimp
 72c:	0106                	slli	sp,sp,0x1
 72e:	4901                	li	s2,0
 730:	00130113          	addi	sp,t1,1
 734:	0700                	addi	s0,sp,896
 736:	0021                	c.addi	zero,8
 738:	1349                	addi	t1,t1,-14
 73a:	00000b2f          	0xb2f
 73e:	3408                	fld	fa0,40(s0)
 740:	0300                	addi	s0,sp,384
 742:	3a0e                	fld	fs4,224(sp)
 744:	490b3b0b          	0x490b3b0b
 748:	3c193f13          	sltiu	t5,s2,961
 74c:	0019                	c.addi	zero,6
 74e:	0900                	addi	s0,sp,144
 750:	0016                	0x16
 752:	0b3a0e03          	lb	t3,179(s4)
 756:	13490b3b          	0x13490b3b
 75a:	0000                	unimp
 75c:	130a                	slli	t1,t1,0x22
 75e:	0b01                	addi	s6,s6,0
 760:	3b0b3a0b          	0x3b0b3a0b
 764:	0013010b          	0x13010b
 768:	0b00                	addi	s0,sp,400
 76a:	000d                	c.addi	zero,3
 76c:	0b3a0e03          	lb	t3,179(s4)
 770:	13490b3b          	0x13490b3b
 774:	0b0d0b0b          	0xb0d0b0b
 778:	0b0c                	addi	a1,sp,400
 77a:	0b38                	addi	a4,sp,408
 77c:	0000                	unimp
 77e:	0d0c                	addi	a1,sp,656
 780:	0300                	addi	s0,sp,384
 782:	3a08                	fld	fa0,48(a2)
 784:	490b3b0b          	0x490b3b0b
 788:	0d0b0b13          	addi	s6,s6,208
 78c:	380b0c0b          	0x380b0c0b
 790:	0d00000b          	0xd00000b
 794:	0e030117          	auipc	sp,0xe030
 798:	0b3a0b0b          	0xb3a0b0b
 79c:	13010b3b          	0x13010b3b
 7a0:	0000                	unimp
 7a2:	0d0e                	slli	s10,s10,0x3
 7a4:	0300                	addi	s0,sp,384
 7a6:	3a08                	fld	fa0,48(a2)
 7a8:	490b3b0b          	0x490b3b0b
 7ac:	0f000013          	li	zero,240
 7b0:	000d                	c.addi	zero,3
 7b2:	0b3a0e03          	lb	t3,179(s4)
 7b6:	13490b3b          	0x13490b3b
 7ba:	0000                	unimp
 7bc:	2e10                	fld	fa2,24(a2)
 7be:	3f01                	addiw	t5,t5,-32
 7c0:	0319                	addi	t1,t1,6
 7c2:	3a0e                	fld	fs4,224(sp)
 7c4:	270b3b0b          	0x270b3b0b
 7c8:	4919                	li	s2,6
 7ca:	12011113          	0x12011113
 7ce:	97184007          	flq	ft0,-1679(a6)
 7d2:	1942                	slli	s2,s2,0x30
 7d4:	1301                	addi	t1,t1,-32
 7d6:	0000                	unimp
 7d8:	0511                	addi	a0,a0,4
 7da:	0300                	addi	s0,sp,384
 7dc:	3a08                	fld	fa0,48(a2)
 7de:	490b3b0b          	0x490b3b0b
 7e2:	00170213          	addi	tp,a4,1
 7e6:	1200                	addi	s0,sp,288
 7e8:	0034                	addi	a3,sp,8
 7ea:	0b3a0e03          	lb	t3,179(s4)
 7ee:	13490b3b          	0x13490b3b
 7f2:	1702                	slli	a4,a4,0x20
 7f4:	0000                	unimp
 7f6:	03003413          	sltiu	s0,zero,48
 7fa:	3a0e                	fld	fs4,224(sp)
 7fc:	490b3b0b          	0x490b3b0b
 800:	000b1c13          	slli	s8,s6,0x0
 804:	1400                	addi	s0,sp,544
 806:	0034                	addi	a3,sp,8
 808:	0b3a0803          	lb	a6,179(s4)
 80c:	13490b3b          	0x13490b3b
 810:	0000                	unimp
 812:	3415                	addiw	s0,s0,-27
 814:	0300                	addi	s0,sp,384
 816:	3a08                	fld	fa0,48(a2)
 818:	490b3b0b          	0x490b3b0b
 81c:	00170213          	addi	tp,a4,1
 820:	1600                	addi	s0,sp,800
 822:	1755010b          	0x1755010b
 826:	1301                	addi	t1,t1,-32
 828:	0000                	unimp
 82a:	03003417          	auipc	s0,0x3003
 82e:	3a0e                	fld	fs4,224(sp)
 830:	490b3b0b          	0x490b3b0b
 834:	18000013          	li	zero,384
 838:	0000010b          	0x10b
 83c:	0b19                	addi	s6,s6,6
 83e:	1101                	addi	sp,sp,-32
 840:	1201                	addi	tp,tp,-32
 842:	00000007          	0x7
 846:	1101                	addi	sp,sp,-32
 848:	1000                	addi	s0,sp,32
 84a:	1106                	slli	sp,sp,0x21
 84c:	1201                	addi	tp,tp,-32
 84e:	0301                	addi	t1,t1,0
 850:	1b0e                	slli	s6,s6,0x23
 852:	250e                	fld	fa0,192(sp)
 854:	130e                	slli	t1,t1,0x23
 856:	0005                	c.addi	zero,1
 858:	0000                	unimp
 85a:	1101                	addi	sp,sp,-32
 85c:	2501                	sext.w	a0,a0
 85e:	130e                	slli	t1,t1,0x23
 860:	1b0e030b          	0x1b0e030b
 864:	110e                	slli	sp,sp,0x23
 866:	1201                	addi	tp,tp,-32
 868:	00171007          	0x171007
 86c:	0200                	addi	s0,sp,256
 86e:	0024                	addi	s1,sp,8
 870:	0b3e0b0b          	0xb3e0b0b
 874:	00000e03          	lb	t3,0(zero) # 0 <_start-0x100b0>
 878:	0b002403          	lw	s0,176(zero) # b0 <_start-0x10000>
 87c:	030b3e0b          	0x30b3e0b
 880:	0008                	addi	a0,sp,0
 882:	0400                	addi	s0,sp,512
 884:	0016                	0x16
 886:	0b3a0e03          	lb	t3,179(s4)
 88a:	13490b3b          	0x13490b3b
 88e:	0000                	unimp
 890:	1605                	addi	a2,a2,-31
 892:	0300                	addi	s0,sp,384
 894:	3a0e                	fld	fs4,224(sp)
 896:	49053b0b          	0x49053b0b
 89a:	06000013          	li	zero,96
 89e:	0b0b0117          	auipc	sp,0xb0b0
 8a2:	0b3a                	slli	s6,s6,0xe
 8a4:	13010b3b          	0x13010b3b
 8a8:	0000                	unimp
 8aa:	03000d07          	0x3000d07
 8ae:	3a0e                	fld	fs4,224(sp)
 8b0:	490b3b0b          	0x490b3b0b
 8b4:	08000013          	li	zero,128
 8b8:	0101                	addi	sp,sp,0
 8ba:	1349                	addi	t1,t1,-14
 8bc:	1301                	addi	t1,t1,-32
 8be:	0000                	unimp
 8c0:	2109                	addiw	sp,sp,2
 8c2:	4900                	lw	s0,16(a0)
 8c4:	000b2f13          	slti	t5,s6,0
 8c8:	0a00                	addi	s0,sp,272
 8ca:	0b0b0113          	addi	sp,s6,176
 8ce:	0b3a                	slli	s6,s6,0xe
 8d0:	13010b3b          	0x13010b3b
 8d4:	0000                	unimp
 8d6:	03000d0b          	0x3000d0b
 8da:	3a0e                	fld	fs4,224(sp)
 8dc:	490b3b0b          	0x490b3b0b
 8e0:	000b3813          	sltiu	a6,s6,0
 8e4:	0c00                	addi	s0,sp,528
 8e6:	0b0b000f          	0xb0b000f
 8ea:	0000                	unimp
 8ec:	130d                	addi	t1,t1,-29
 8ee:	0301                	addi	t1,t1,0
 8f0:	0b0e                	slli	s6,s6,0x3
 8f2:	3b0b3a0b          	0x3b0b3a0b
 8f6:	0013010b          	0x13010b
 8fa:	0e00                	addi	s0,sp,784
 8fc:	000d                	c.addi	zero,3
 8fe:	0b3a0803          	lb	a6,179(s4)
 902:	13490b3b          	0x13490b3b
 906:	0b38                	addi	a4,sp,408
 908:	0000                	unimp
 90a:	0b000f0f          	0xb000f0f
 90e:	0013490b          	0x13490b
 912:	1000                	addi	s0,sp,32
 914:	0e030113          	addi	sp,t1,224
 918:	0b3a050b          	0xb3a050b
 91c:	13010b3b          	0x13010b3b
 920:	0000                	unimp
 922:	0d11                	addi	s10,s10,4
 924:	0300                	addi	s0,sp,384
 926:	3a0e                	fld	fs4,224(sp)
 928:	490b3b0b          	0x490b3b0b
 92c:	00053813          	sltiu	a6,a0,0
 930:	1200                	addi	s0,sp,288
 932:	0015                	c.addi	zero,5
 934:	00001927          	0x1927
 938:	27011513          	0x27011513
 93c:	4919                	li	s2,6
 93e:	00130113          	addi	sp,t1,1
 942:	1400                	addi	s0,sp,544
 944:	0005                	c.addi	zero,1
 946:	1349                	addi	t1,t1,-14
 948:	0000                	unimp
 94a:	2615                	addiw	a2,a2,5
 94c:	4900                	lw	s0,16(a0)
 94e:	16000013          	li	zero,352
 952:	0e030113          	addi	sp,t1,224
 956:	0b3a050b          	0xb3a050b
 95a:	1301053b          	0x1301053b
 95e:	0000                	unimp
 960:	03000d17          	auipc	s10,0x3000
 964:	3a0e                	fld	fs4,224(sp)
 966:	49053b0b          	0x49053b0b
 96a:	000b3813          	sltiu	a6,s6,0
 96e:	1800                	addi	s0,sp,48
 970:	000d                	c.addi	zero,3
 972:	0b3a0e03          	lb	t3,179(s4)
 976:	1349053b          	0x1349053b
 97a:	0538                	addi	a4,sp,648
 97c:	0000                	unimp
 97e:	1319                	addi	t1,t1,-26
 980:	0301                	addi	t1,t1,0
 982:	0b0e                	slli	s6,s6,0x3
 984:	3b0b3a0b          	0x3b0b3a0b
 988:	0105                	addi	sp,sp,1
 98a:	1a000013          	li	zero,416
 98e:	0b0b0113          	addi	sp,s6,176
 992:	0b3a                	slli	s6,s6,0xe
 994:	1301053b          	0x1301053b
 998:	0000                	unimp
 99a:	0b01131b          	0xb01131b
 99e:	3a05                	addiw	s4,s4,-31
 9a0:	01053b0b          	0x1053b0b
 9a4:	1c000013          	li	zero,448
 9a8:	050b0117          	auipc	sp,0x50b0
 9ac:	0b3a                	slli	s6,s6,0xe
 9ae:	1301053b          	0x1301053b
 9b2:	0000                	unimp
 9b4:	0d1d                	addi	s10,s10,7
 9b6:	0300                	addi	s0,sp,384
 9b8:	3a0e                	fld	fs4,224(sp)
 9ba:	49053b0b          	0x49053b0b
 9be:	1e000013          	li	zero,480
 9c2:	0e030013          	addi	zero,t1,224
 9c6:	193c                	addi	a5,sp,184
 9c8:	0000                	unimp
 9ca:	151f 2701 0119      	0x1192701151f
 9d0:	20000013          	li	zero,512
 9d4:	0034                	addi	a3,sp,8
 9d6:	0b3a0e03          	lb	t3,179(s4)
 9da:	1349053b          	0x1349053b
 9de:	193c193f 21210000 	0x21210000193c193f
 9e6:	0000                	unimp
 9e8:	2200                	fld	fs0,0(a2)
 9ea:	0034                	addi	a3,sp,8
 9ec:	0b3a0e03          	lb	t3,179(s4)
 9f0:	13490b3b          	0x13490b3b
 9f4:	193c193f 26230000 	0x26230000193c193f
 9fc:	0000                	unimp
 9fe:	2400                	fld	fs0,8(s0)
 a00:	0104                	addi	s1,sp,128
 a02:	0b3e0e03          	lb	t3,179(t3) # 1a0b3 <__global_pointer$+0x70e3>
 a06:	13490b0b          	0x13490b0b
 a0a:	0b3a                	slli	s6,s6,0xe
 a0c:	13010b3b          	0x13010b3b
 a10:	0000                	unimp
 a12:	2825                	addiw	a6,a6,9
 a14:	0300                	addi	s0,sp,384
 a16:	1c0e                	slli	s8,s8,0x23
 a18:	2600000b          	0x2600000b
 a1c:	012e                	slli	sp,sp,0xb
 a1e:	0e03193f 053b0b3a 	0x53b0b3a0e03193f
 a26:	13491927          	0x13491927
 a2a:	0111                	addi	sp,sp,4
 a2c:	0712                	slli	a4,a4,0x4
 a2e:	1840                	addi	s0,sp,52
 a30:	00194297          	auipc	t0,0x194
 a34:	2700                	fld	fs0,8(a4)
 a36:	0005                	c.addi	zero,1
 a38:	0b3a0803          	lb	a6,179(s4)
 a3c:	1349053b          	0x1349053b
 a40:	1702                	slli	a4,a4,0x20
 a42:	0000                	unimp
 a44:	3428                	fld	fa0,104(s0)
 a46:	0300                	addi	s0,sp,384
 a48:	3a08                	fld	fa0,48(a2)
 a4a:	49053b0b          	0x49053b0b
 a4e:	29000013          	li	zero,656
 a52:	0111010b          	0x111010b
 a56:	0712                	slli	a4,a4,0x4
 a58:	0000                	unimp
 a5a:	342a                	fld	fs0,168(sp)
 a5c:	0300                	addi	s0,sp,384
 a5e:	3a0e                	fld	fs4,224(sp)
 a60:	49053b0b          	0x49053b0b
 a64:	00170213          	addi	tp,a4,1
 a68:	2b00                	fld	fs0,16(a4)
 a6a:	0034                	addi	a3,sp,8
 a6c:	0b3a0803          	lb	a6,179(s4)
 a70:	1349053b          	0x1349053b
 a74:	1702                	slli	a4,a4,0x20
 a76:	0000                	unimp
 a78:	0100                	addi	s0,sp,128
 a7a:	0111                	addi	sp,sp,4
 a7c:	0e25                	addi	t3,t3,9
 a7e:	0e030b13          	addi	s6,t1,224
 a82:	17100e1b          	addiw	t3,zero,369
 a86:	0000                	unimp
 a88:	2402                	fld	fs0,0(sp)
 a8a:	0b00                	addi	s0,sp,400
 a8c:	030b3e0b          	0x30b3e0b
 a90:	000e                	0xe
 a92:	0300                	addi	s0,sp,384
 a94:	0024                	addi	s1,sp,8
 a96:	0b3e0b0b          	0xb3e0b0b
 a9a:	00000803          	lb	a6,0(zero) # 0 <_start-0x100b0>
 a9e:	1604                	addi	s1,sp,800
 aa0:	0300                	addi	s0,sp,384
 aa2:	3a0e                	fld	fs4,224(sp)
 aa4:	490b3b0b          	0x490b3b0b
 aa8:	05000013          	li	zero,80
 aac:	0016                	0x16
 aae:	0b3a0e03          	lb	t3,179(s4)
 ab2:	1349053b          	0x1349053b
 ab6:	0000                	unimp
 ab8:	1706                	slli	a4,a4,0x21
 aba:	0b01                	addi	s6,s6,0
 abc:	3b0b3a0b          	0x3b0b3a0b
 ac0:	0013010b          	0x13010b
 ac4:	0700                	addi	s0,sp,896
 ac6:	000d                	c.addi	zero,3
 ac8:	0b3a0e03          	lb	t3,179(s4)
 acc:	13490b3b          	0x13490b3b
 ad0:	0000                	unimp
 ad2:	0108                	addi	a0,sp,128
 ad4:	4901                	li	s2,0
 ad6:	00130113          	addi	sp,t1,1
 ada:	0900                	addi	s0,sp,144
 adc:	0021                	c.addi	zero,8
 ade:	1349                	addi	t1,t1,-14
 ae0:	00000b2f          	0xb2f
 ae4:	130a                	slli	t1,t1,0x22
 ae6:	0b01                	addi	s6,s6,0
 ae8:	3b0b3a0b          	0x3b0b3a0b
 aec:	0013010b          	0x13010b
 af0:	0b00                	addi	s0,sp,400
 af2:	000d                	c.addi	zero,3
 af4:	0b3a0e03          	lb	t3,179(s4)
 af8:	13490b3b          	0x13490b3b
 afc:	0b38                	addi	a4,sp,408
 afe:	0000                	unimp
 b00:	0f0c                	addi	a1,sp,912
 b02:	0b00                	addi	s0,sp,400
 b04:	0d00000b          	0xd00000b
 b08:	0e030113          	addi	sp,t1,224
 b0c:	0b3a0b0b          	0xb3a0b0b
 b10:	13010b3b          	0x13010b3b
 b14:	0000                	unimp
 b16:	0d0e                	slli	s10,s10,0x3
 b18:	0300                	addi	s0,sp,384
 b1a:	3a08                	fld	fa0,48(a2)
 b1c:	490b3b0b          	0x490b3b0b
 b20:	000b3813          	sltiu	a6,s6,0
 b24:	0f00                	addi	s0,sp,912
 b26:	0b0b000f          	0xb0b000f
 b2a:	1349                	addi	t1,t1,-14
 b2c:	0000                	unimp
 b2e:	1310                	addi	a2,sp,416
 b30:	0301                	addi	t1,t1,0
 b32:	0b0e                	slli	s6,s6,0x3
 b34:	3a05                	addiw	s4,s4,-31
 b36:	010b3b0b          	0x10b3b0b
 b3a:	11000013          	li	zero,272
 b3e:	000d                	c.addi	zero,3
 b40:	0b3a0e03          	lb	t3,179(s4)
 b44:	13490b3b          	0x13490b3b
 b48:	0538                	addi	a4,sp,648
 b4a:	0000                	unimp
 b4c:	1512                	slli	a0,a0,0x24
 b4e:	2700                	fld	fs0,8(a4)
 b50:	0019                	c.addi	zero,6
 b52:	1300                	addi	s0,sp,416
 b54:	0115                	addi	sp,sp,5
 b56:	13491927          	0x13491927
 b5a:	1301                	addi	t1,t1,-32
 b5c:	0000                	unimp
 b5e:	0514                	addi	a3,sp,640
 b60:	4900                	lw	s0,16(a0)
 b62:	15000013          	li	zero,336
 b66:	0026                	0x26
 b68:	1349                	addi	t1,t1,-14
 b6a:	0000                	unimp
 b6c:	1316                	slli	t1,t1,0x25
 b6e:	0301                	addi	t1,t1,0
 b70:	0b0e                	slli	s6,s6,0x3
 b72:	3a05                	addiw	s4,s4,-31
 b74:	01053b0b          	0x1053b0b
 b78:	17000013          	li	zero,368
 b7c:	000d                	c.addi	zero,3
 b7e:	0b3a0e03          	lb	t3,179(s4)
 b82:	1349053b          	0x1349053b
 b86:	0b38                	addi	a4,sp,408
 b88:	0000                	unimp
 b8a:	0d18                	addi	a4,sp,656
 b8c:	0300                	addi	s0,sp,384
 b8e:	3a0e                	fld	fs4,224(sp)
 b90:	49053b0b          	0x49053b0b
 b94:	00053813          	sltiu	a6,a0,0
 b98:	1900                	addi	s0,sp,176
 b9a:	0e030113          	addi	sp,t1,224
 b9e:	0b3a0b0b          	0xb3a0b0b
 ba2:	1301053b          	0x1301053b
 ba6:	0000                	unimp
 ba8:	131a                	slli	t1,t1,0x26
 baa:	0b01                	addi	s6,s6,0
 bac:	3b0b3a0b          	0x3b0b3a0b
 bb0:	0105                	addi	sp,sp,1
 bb2:	1b000013          	li	zero,432
 bb6:	050b0113          	addi	sp,s6,80
 bba:	0b3a                	slli	s6,s6,0xe
 bbc:	1301053b          	0x1301053b
 bc0:	0000                	unimp
 bc2:	171c                	addi	a5,sp,928
 bc4:	0b01                	addi	s6,s6,0
 bc6:	3a05                	addiw	s4,s4,-31
 bc8:	01053b0b          	0x1053b0b
 bcc:	1d000013          	li	zero,464
 bd0:	000d                	c.addi	zero,3
 bd2:	0b3a0e03          	lb	t3,179(s4)
 bd6:	1349053b          	0x1349053b
 bda:	0000                	unimp
 bdc:	131e                	slli	t1,t1,0x27
 bde:	0300                	addi	s0,sp,384
 be0:	3c0e                	fld	fs8,224(sp)
 be2:	0019                	c.addi	zero,6
 be4:	1f00                	addi	s0,sp,944
 be6:	0115                	addi	sp,sp,5
 be8:	13011927          	0x13011927
 bec:	0000                	unimp
 bee:	3420                	fld	fs0,104(s0)
 bf0:	0300                	addi	s0,sp,384
 bf2:	3a0e                	fld	fs4,224(sp)
 bf4:	49053b0b          	0x49053b0b
 bf8:	3c193f13          	sltiu	t5,s2,961
 bfc:	0019                	c.addi	zero,6
 bfe:	2100                	fld	fs0,0(a0)
 c00:	0021                	c.addi	zero,8
 c02:	0000                	unimp
 c04:	3422                	fld	fs0,40(sp)
 c06:	0300                	addi	s0,sp,384
 c08:	3a0e                	fld	fs4,224(sp)
 c0a:	490b3b0b          	0x490b3b0b
 c0e:	3c193f13          	sltiu	t5,s2,961
 c12:	0019                	c.addi	zero,6
 c14:	2300                	fld	fs0,0(a4)
 c16:	0026                	0x26
 c18:	0000                	unimp
 c1a:	0424                	addi	s1,sp,520
 c1c:	0301                	addi	t1,t1,0
 c1e:	3e0e                	fld	ft8,224(sp)
 c20:	490b0b0b          	0x490b0b0b
 c24:	3b0b3a13          	sltiu	s4,s6,944
 c28:	0013010b          	0x13010b
 c2c:	2500                	fld	fs0,8(a0)
 c2e:	0028                	addi	a0,sp,8
 c30:	0b1c0e03          	lb	t3,177(s8) # 902c3 <__global_pointer$+0x7d2f3>
 c34:	0000                	unimp
 c36:	3426                	fld	fs0,104(sp)
 c38:	4700                	lw	s0,8(a4)
 c3a:	3b0b3a13          	sltiu	s4,s6,944
 c3e:	0205                	addi	tp,tp,1
 c40:	0018                	addi	a4,sp,0
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
       0:	052d                	addi	a0,a0,11
       2:	0000                	unimp
       4:	0002                	0x2
       6:	0121                	addi	sp,sp,8
       8:	0000                	unimp
       a:	0101                	addi	sp,sp,0
       c:	000d0efb          	0xd0efb
      10:	0101                	addi	sp,sp,0
      12:	0101                	addi	sp,sp,0
      14:	0000                	unimp
      16:	0100                	addi	s0,sp,128
      18:	0000                	unimp
      1a:	2f01                	sext.w	t5,t5
      1c:	6f68                	ld	a0,216(a4)
      1e:	656d                	lui	a0,0x1b
      20:	6865682f          	0x6865682f
      24:	6f61                	lui	t5,0x18
      26:	776f442f          	0x776f442f
      2a:	6c6e                	ld	s8,216(sp)
      2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x33792>
      30:	6572662f          	0x6572662f
      34:	6465                	lui	s0,0x19
      36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe3788>
      3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa36c0>
      3e:	2d74                	fld	fa3,216(a0)
      40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
      44:	7369722f          	0x7369722f
      48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
      4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb37b2>
      50:	7369722f          	0x7369722f
      54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
      58:	756e                	ld	a0,248(sp)
      5a:	742d                	lui	s0,0xfffeb
      5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb36c2>
      60:	6168                	ld	a0,192(a0)
      62:	6e69                	lui	t3,0x1a
      64:	6975622f          	0x6975622f
      68:	646c                	ld	a1,200(s0)
      6a:	2f2e2e2f          	0x2f2e2e2f
      6e:	6972                	ld	s2,280(sp)
      70:	2d766373          	csrrsi	t1,0x2d7,12
      74:	2f636367          	0x2f636367
      78:	696c                	ld	a1,208(a0)
      7a:	6762                	ld	a4,24(sp)
      7c:	732f6363          	bltu	t5,s2,7a2 <_start-0xf90e>
      80:	2d74666f          	jal	a2,46b56 <__global_pointer$+0x33b86>
      84:	7066                	0x7066
      86:	2f00                	fld	fs0,24(a4)
      88:	6f68                	ld	a0,216(a4)
      8a:	656d                	lui	a0,0x1b
      8c:	6865682f          	0x6865682f
      90:	6f61                	lui	t5,0x18
      92:	776f442f          	0x776f442f
      96:	6c6e                	ld	s8,216(sp)
      98:	7364616f          	jal	sp,467ce <__global_pointer$+0x337fe>
      9c:	6572662f          	0x6572662f
      a0:	6465                	lui	s0,0x19
      a2:	722f6d6f          	jal	s10,f67c4 <__global_pointer$+0xe37f4>
      a6:	656b636f          	jal	t1,b66fc <__global_pointer$+0xa372c>
      aa:	2d74                	fld	fa3,216(a0)
      ac:	70696863          	bltu	s2,t1,7bc <_start-0xf8f4>
      b0:	7369722f          	0x7369722f
      b4:	742d7663          	bleu	sp,s10,800 <_start-0xf8b0>
      b8:	736c6f6f          	jal	t5,c67ee <__global_pointer$+0xb381e>
      bc:	7369722f          	0x7369722f
      c0:	672d7663          	bleu	s2,s10,72c <_start-0xf984>
      c4:	756e                	ld	a0,248(sp)
      c6:	742d                	lui	s0,0xfffeb
      c8:	636c6f6f          	jal	t5,c66fe <__global_pointer$+0xb372e>
      cc:	6168                	ld	a0,192(a0)
      ce:	6e69                	lui	t3,0x1a
      d0:	6975622f          	0x6975622f
      d4:	646c                	ld	a1,200(s0)
      d6:	2f2e2e2f          	0x2f2e2e2f
      da:	6972                	ld	s2,280(sp)
      dc:	2d766373          	csrrsi	t1,0x2d7,12
      e0:	2f636367          	0x2f636367
      e4:	696c                	ld	a1,208(a0)
      e6:	6762                	ld	a4,24(sp)
      e8:	2e2f6363          	bltu	t5,sp,3ce <_start-0xfce2>
      ec:	2f2e                	fld	ft10,200(sp)
      ee:	6e69                	lui	t3,0x1a
      f0:	64756c63          	bltu	a0,t2,748 <_start-0xf968>
      f4:	0065                	c.addi	zero,25
      f6:	6100                	ld	s0,0(a0)
      f8:	6464                	ld	s1,200(s0)
      fa:	6664                	ld	s1,200(a2)
      fc:	00632e33          	slt	t3,t1,t1
     100:	0001                	nop
     102:	7300                	ld	s0,32(a4)
     104:	2d74666f          	jal	a2,46bda <__global_pointer$+0x33c0a>
     108:	7066                	0x7066
     10a:	682e                	ld	a6,200(sp)
     10c:	0100                	addi	s0,sp,128
     10e:	0000                	unimp
     110:	6f64                	ld	s1,216(a4)
     112:	6275                	lui	tp,0x1d
     114:	656c                	ld	a1,200(a0)
     116:	682e                	ld	a6,200(sp)
     118:	0100                	addi	s0,sp,128
     11a:	0000                	unimp
     11c:	6f6c                	ld	a1,216(a4)
     11e:	676e                	ld	a4,216(sp)
     120:	6f6c                	ld	a1,216(a4)
     122:	676e                	ld	a4,216(sp)
     124:	682e                	ld	a6,200(sp)
     126:	0200                	addi	s0,sp,256
     128:	0000                	unimp
     12a:	0000                	unimp
     12c:	0209                	addi	tp,tp,2
     12e:	0484                	addi	s1,sp,576
     130:	0001                	nop
     132:	0000                	unimp
     134:	0000                	unimp
     136:	03012303          	lw	t1,48(sp) # 50b09d8 <__global_pointer$+0x509da08>
     13a:	0908                	addi	a0,sp,144
     13c:	0004                	addi	s1,sp,0
     13e:	0301                	addi	t1,t1,0
     140:	0901                	addi	s2,s2,0
     142:	0008                	addi	a0,sp,0
     144:	0301                	addi	t1,t1,0
     146:	00040977          	0x40977
     14a:	0301                	addi	t1,t1,0
     14c:	0908                	addi	a0,sp,144
     14e:	0004                	addi	s1,sp,0
     150:	0301                	addi	t1,t1,0
     152:	0978                	addi	a4,sp,156
     154:	0008                	addi	a0,sp,0
     156:	0301                	addi	t1,t1,0
     158:	0909                	addi	s2,s2,2
     15a:	0004                	addi	s1,sp,0
     15c:	0301                	addi	t1,t1,0
     15e:	097f                	0x97f
     160:	0004                	addi	s1,sp,0
     162:	0301                	addi	t1,t1,0
     164:	0901                	addi	s2,s2,0
     166:	0004                	addi	s1,sp,0
     168:	0301                	addi	t1,t1,0
     16a:	00040977          	0x40977
     16e:	0301                	addi	t1,t1,0
     170:	0908                	addi	a0,sp,144
     172:	0008                	addi	a0,sp,0
     174:	0301                	addi	t1,t1,0
     176:	0901                	addi	s2,s2,0
     178:	0004                	addi	s1,sp,0
     17a:	0301                	addi	t1,t1,0
     17c:	097f                	0x97f
     17e:	0004                	addi	s1,sp,0
     180:	0301                	addi	t1,t1,0
     182:	0901                	addi	s2,s2,0
     184:	0004                	addi	s1,sp,0
     186:	0301                	addi	t1,t1,0
     188:	0901                	addi	s2,s2,0
     18a:	0008                	addi	a0,sp,0
     18c:	0001                	nop
     18e:	0402                	slli	s0,s0,0x0
     190:	00030607          	0x30607
     194:	0409                	addi	s0,s0,2
     196:	0100                	addi	s0,sp,128
     198:	0200                	addi	s0,sp,256
     19a:	0904                	addi	s1,sp,144
     19c:	08090003          	lb	zero,128(s2) # d345a <__global_pointer$+0xc048a>
     1a0:	0100                	addi	s0,sp,128
     1a2:	0200                	addi	s0,sp,256
     1a4:	0b04                	addi	s1,sp,400
     1a6:	04090003          	lb	zero,64(s2)
     1aa:	0100                	addi	s0,sp,128
     1ac:	0200                	addi	s0,sp,256
     1ae:	0e04                	addi	s1,sp,784
     1b0:	04090003          	lb	zero,64(s2)
     1b4:	0100                	addi	s0,sp,128
     1b6:	0200                	addi	s0,sp,256
     1b8:	3904                	fld	fs1,48(a0)
     1ba:	08090003          	lb	zero,128(s2)
     1be:	0100                	addi	s0,sp,128
     1c0:	0200                	addi	s0,sp,256
     1c2:	6c04                	ld	s1,24(s0)
     1c4:	04090003          	lb	zero,64(s2)
     1c8:	0100                	addi	s0,sp,128
     1ca:	0300                	addi	s0,sp,384
     1cc:	9c04                	0x9c04
     1ce:	0301                	addi	t1,t1,0
     1d0:	0900                	addi	s0,sp,144
     1d2:	0008                	addi	a0,sp,0
     1d4:	0301                	addi	t1,t1,0
     1d6:	0900                	addi	s0,sp,144
     1d8:	000c                	addi	a1,sp,0
     1da:	0001                	nop
     1dc:	0402                	slli	s0,s0,0x0
     1de:	0318                	addi	a4,sp,384
     1e0:	0900                	addi	s0,sp,144
     1e2:	0020                	addi	s0,sp,8
     1e4:	0601                	addi	a2,a2,0
     1e6:	08090103          	lb	sp,128(s2)
     1ea:	0100                	addi	s0,sp,128
     1ec:	0200                	addi	s0,sp,256
     1ee:	1d04                	addi	s1,sp,688
     1f0:	0306                	slli	t1,t1,0x1
     1f2:	0900                	addi	s0,sp,144
     1f4:	0008                	addi	a0,sp,0
     1f6:	0001                	nop
     1f8:	0402                	slli	s0,s0,0x0
     1fa:	0324                	addi	s1,sp,392
     1fc:	0900                	addi	s0,sp,144
     1fe:	000c                	addi	a1,sp,0
     200:	0001                	nop
     202:	0402                	slli	s0,s0,0x0
     204:	060c                	addi	a1,sp,768
     206:	08097f03          	0x8097f03
     20a:	0100                	addi	s0,sp,128
     20c:	0200                	addi	s0,sp,256
     20e:	2404                	fld	fs1,8(s0)
     210:	0306                	slli	t1,t1,0x1
     212:	0900                	addi	s0,sp,144
     214:	0008                	addi	a0,sp,0
     216:	0301                	addi	t1,t1,0
     218:	0900                	addi	s0,sp,144
     21a:	000c                	addi	a1,sp,0
     21c:	0001                	nop
     21e:	0402                	slli	s0,s0,0x0
     220:	032e                	slli	t1,t1,0xb
     222:	0900                	addi	s0,sp,144
     224:	0010                	addi	a2,sp,0
     226:	0001                	nop
     228:	0402                	slli	s0,s0,0x0
     22a:	030a                	slli	t1,t1,0x2
     22c:	0900                	addi	s0,sp,144
     22e:	001c                	addi	a5,sp,0
     230:	0001                	nop
     232:	0402                	slli	s0,s0,0x0
     234:	0900033b          	0x900033b
     238:	0004                	addi	s1,sp,0
     23a:	0001                	nop
     23c:	0402                	slli	s0,s0,0x0
     23e:	033d                	addi	t1,t1,15
     240:	0900                	addi	s0,sp,144
     242:	0004                	addi	s1,sp,0
     244:	0001                	nop
     246:	0402                	slli	s0,s0,0x0
     248:	0340                	addi	s0,sp,388
     24a:	0900                	addi	s0,sp,144
     24c:	0004                	addi	s1,sp,0
     24e:	0001                	nop
     250:	0402                	slli	s0,s0,0x0
     252:	0900036b          	0x900036b
     256:	0004                	addi	s1,sp,0
     258:	0001                	nop
     25a:	0402                	slli	s0,s0,0x0
     25c:	7f03066b          	0x7f03066b
     260:	0409                	addi	s0,s0,2
     262:	0100                	addi	s0,sp,128
     264:	0200                	addi	s0,sp,256
     266:	4a04                	lw	s1,16(a2)
     268:	08090103          	lb	sp,128(s2)
     26c:	0100                	addi	s0,sp,128
     26e:	08097f03          	0x8097f03
     272:	0100                	addi	s0,sp,128
     274:	0200                	addi	s0,sp,256
     276:	3e04                	fld	fs1,56(a2)
     278:	08090103          	lb	sp,128(s2)
     27c:	0100                	addi	s0,sp,128
     27e:	0200                	addi	s0,sp,256
     280:	5604                	lw	s1,40(a2)
     282:	0306                	slli	t1,t1,0x1
     284:	0900                	addi	s0,sp,144
     286:	0008                	addi	a0,sp,0
     288:	0301                	addi	t1,t1,0
     28a:	0900                	addi	s0,sp,144
     28c:	0010                	addi	a2,sp,0
     28e:	0001                	nop
     290:	0402                	slli	s0,s0,0x0
     292:	0360                	addi	s0,sp,396
     294:	0900                	addi	s0,sp,144
     296:	0010                	addi	a2,sp,0
     298:	0001                	nop
     29a:	0402                	slli	s0,s0,0x0
     29c:	033c                	addi	a5,sp,392
     29e:	0900                	addi	s0,sp,144
     2a0:	001c                	addi	a5,sp,0
     2a2:	0001                	nop
     2a4:	0402                	slli	s0,s0,0x0
     2a6:	036d                	addi	t1,t1,27
     2a8:	0900                	addi	s0,sp,144
     2aa:	0010                	addi	a2,sp,0
     2ac:	0001                	nop
     2ae:	0402                	slli	s0,s0,0x0
     2b0:	0900036f          	jal	t1,340 <_start-0xfd70>
     2b4:	0004                	addi	s1,sp,0
     2b6:	0001                	nop
     2b8:	0402                	slli	s0,s0,0x0
     2ba:	0372                	slli	t1,t1,0x1c
     2bc:	0900                	addi	s0,sp,144
     2be:	0004                	addi	s1,sp,0
     2c0:	0001                	nop
     2c2:	0402                	slli	s0,s0,0x0
     2c4:	0378                	addi	a4,sp,396
     2c6:	0900                	addi	s0,sp,144
     2c8:	0004                	addi	s1,sp,0
     2ca:	0001                	nop
     2cc:	0402                	slli	s0,s0,0x0
     2ce:	037a                	slli	t1,t1,0x1e
     2d0:	0900                	addi	s0,sp,144
     2d2:	0010                	addi	a2,sp,0
     2d4:	0001                	nop
     2d6:	01880403          	lb	s0,24(a6)
     2da:	14090003          	lb	zero,320(s2)
     2de:	0100                	addi	s0,sp,128
     2e0:	0300                	addi	s0,sp,384
     2e2:	a704                	fsd	fs1,8(a4)
     2e4:	0302                	slli	t1,t1,0x0
     2e6:	0900                	addi	s0,sp,144
     2e8:	0004                	addi	s1,sp,0
     2ea:	0301                	addi	t1,t1,0
     2ec:	0900                	addi	s0,sp,144
     2ee:	0004                	addi	s1,sp,0
     2f0:	0001                	nop
     2f2:	0402                	slli	s0,s0,0x0
     2f4:	036e                	slli	t1,t1,0x1b
     2f6:	0900                	addi	s0,sp,144
     2f8:	000c                	addi	a1,sp,0
     2fa:	0301                	addi	t1,t1,0
     2fc:	0900                	addi	s0,sp,144
     2fe:	0008                	addi	a0,sp,0
     300:	0601                	addi	a2,a2,0
     302:	08097f03          	0x8097f03
     306:	0100                	addi	s0,sp,128
     308:	0200                	addi	s0,sp,256
     30a:	0804                	addi	s1,sp,16
     30c:	08090103          	lb	sp,128(s2)
     310:	0100                	addi	s0,sp,128
     312:	0300                	addi	s0,sp,384
     314:	ad04                	fsd	fs1,24(a0)
     316:	0601                	addi	a2,a2,0
     318:	08090003          	lb	zero,128(s2)
     31c:	0100                	addi	s0,sp,128
     31e:	0300                	addi	s0,sp,384
     320:	af04                	fsd	fs1,24(a4)
     322:	0301                	addi	t1,t1,0
     324:	0900                	addi	s0,sp,144
     326:	0004                	addi	s1,sp,0
     328:	0001                	nop
     32a:	01b20403          	lb	s0,27(tp) # 1d01b <__global_pointer$+0xa04b>
     32e:	04090003          	lb	zero,64(s2)
     332:	0100                	addi	s0,sp,128
     334:	0300                	addi	s0,sp,384
     336:	da04                	sw	s1,48(a2)
     338:	0301                	addi	t1,t1,0
     33a:	0900                	addi	s0,sp,144
     33c:	0008                	addi	a0,sp,0
     33e:	0001                	nop
     340:	028a0403          	lb	s0,40(s4)
     344:	08090003          	lb	zero,128(s2)
     348:	0100                	addi	s0,sp,128
     34a:	0300                	addi	s0,sp,384
     34c:	b504                	fsd	fs1,40(a0)
     34e:	0302                	slli	t1,t1,0x0
     350:	0900                	addi	s0,sp,144
     352:	000c                	addi	a1,sp,0
     354:	0001                	nop
     356:	01bb0403          	lb	s0,27(s6)
     35a:	10090003          	lb	zero,256(s2)
     35e:	0100                	addi	s0,sp,128
     360:	08090003          	lb	zero,128(s2)
     364:	0100                	addi	s0,sp,128
     366:	0300                	addi	s0,sp,384
     368:	b004                	fsd	fs1,32(s0)
     36a:	0301                	addi	t1,t1,0
     36c:	0900                	addi	s0,sp,144
     36e:	0010                	addi	a2,sp,0
     370:	0001                	nop
     372:	01c60403          	lb	s0,28(a2) # 8e1fa <__global_pointer$+0x7b22a>
     376:	08090003          	lb	zero,128(s2)
     37a:	0100                	addi	s0,sp,128
     37c:	0300                	addi	s0,sp,384
     37e:	cf04                	sw	s1,24(a4)
     380:	0301                	addi	t1,t1,0
     382:	0900                	addi	s0,sp,144
     384:	0010                	addi	a2,sp,0
     386:	0001                	nop
     388:	01ae0403          	lb	s0,26(t3) # 1a01a <__global_pointer$+0x704a>
     38c:	1c090003          	lb	zero,448(s2)
     390:	0100                	addi	s0,sp,128
     392:	0300                	addi	s0,sp,384
     394:	dc04                	sw	s1,56(s0)
     396:	0301                	addi	t1,t1,0
     398:	0900                	addi	s0,sp,144
     39a:	0004                	addi	s1,sp,0
     39c:	0001                	nop
     39e:	01de0403          	lb	s0,29(t3)
     3a2:	04090003          	lb	zero,64(s2)
     3a6:	0100                	addi	s0,sp,128
     3a8:	0300                	addi	s0,sp,384
     3aa:	e104                	sd	s1,0(a0)
     3ac:	0301                	addi	t1,t1,0
     3ae:	0900                	addi	s0,sp,144
     3b0:	0004                	addi	s1,sp,0
     3b2:	0001                	nop
     3b4:	02890403          	lb	s0,40(s2)
     3b8:	04090003          	lb	zero,64(s2)
     3bc:	0100                	addi	s0,sp,128
     3be:	0300                	addi	s0,sp,384
     3c0:	8904                	0x8904
     3c2:	0602                	slli	a2,a2,0x0
     3c4:	04097f03          	0x4097f03
     3c8:	0100                	addi	s0,sp,128
     3ca:	0300                	addi	s0,sp,384
     3cc:	ea04                	sd	s1,16(a2)
     3ce:	0301                	addi	t1,t1,0
     3d0:	0901                	addi	s2,s2,0
     3d2:	0008                	addi	a0,sp,0
     3d4:	0301                	addi	t1,t1,0
     3d6:	097f                	0x97f
     3d8:	0008                	addi	a0,sp,0
     3da:	0301                	addi	t1,t1,0
     3dc:	0901                	addi	s2,s2,0
     3de:	0004                	addi	s1,sp,0
     3e0:	0001                	nop
     3e2:	01df0403          	lb	s0,29(t5) # 1801d <__global_pointer$+0x504d>
     3e6:	0306                	slli	t1,t1,0x1
     3e8:	0900                	addi	s0,sp,144
     3ea:	0008                	addi	a0,sp,0
     3ec:	0001                	nop
     3ee:	01f50403          	lb	s0,31(a0) # 1b01f <__global_pointer$+0x804f>
     3f2:	08090003          	lb	zero,128(s2)
     3f6:	0100                	addi	s0,sp,128
     3f8:	10090003          	lb	zero,256(s2)
     3fc:	0100                	addi	s0,sp,128
     3fe:	0300                	addi	s0,sp,384
     400:	fe04                	sd	s1,56(a2)
     402:	0301                	addi	t1,t1,0
     404:	0900                	addi	s0,sp,144
     406:	0010                	addi	a2,sp,0
     408:	0001                	nop
     40a:	01dd0403          	lb	s0,29(s10) # 300097d <__global_pointer$+0x2fed9ad>
     40e:	1c090003          	lb	zero,448(s2)
     412:	0100                	addi	s0,sp,128
     414:	0300                	addi	s0,sp,384
     416:	8b04                	0x8b04
     418:	0302                	slli	t1,t1,0x0
     41a:	0900                	addi	s0,sp,144
     41c:	0010                	addi	a2,sp,0
     41e:	0001                	nop
     420:	028d0403          	lb	s0,40(s10)
     424:	04090003          	lb	zero,64(s2)
     428:	0100                	addi	s0,sp,128
     42a:	0300                	addi	s0,sp,384
     42c:	8f04                	0x8f04
     42e:	0302                	slli	t1,t1,0x0
     430:	0900                	addi	s0,sp,144
     432:	0004                	addi	s1,sp,0
     434:	0301                	addi	t1,t1,0
     436:	0900                	addi	s0,sp,144
     438:	0008                	addi	a0,sp,0
     43a:	0001                	nop
     43c:	02900403          	lb	s0,41(zero) # 29 <_start-0x10087>
     440:	0c090003          	lb	zero,192(s2)
     444:	0100                	addi	s0,sp,128
     446:	0300                	addi	s0,sp,384
     448:	9404                	0x9404
     44a:	0302                	slli	t1,t1,0x0
     44c:	0900                	addi	s0,sp,144
     44e:	0004                	addi	s1,sp,0
     450:	0001                	nop
     452:	02960403          	lb	s0,41(a2)
     456:	14090003          	lb	zero,320(s2)
     45a:	0100                	addi	s0,sp,128
     45c:	0300                	addi	s0,sp,384
     45e:	a504                	fsd	fs1,8(a0)
     460:	0302                	slli	t1,t1,0x0
     462:	0900                	addi	s0,sp,144
     464:	000c                	addi	a1,sp,0
     466:	0001                	nop
     468:	02a60403          	lb	s0,42(a2)
     46c:	04090003          	lb	zero,64(s2)
     470:	0100                	addi	s0,sp,128
     472:	04090003          	lb	zero,64(s2)
     476:	0100                	addi	s0,sp,128
     478:	0300                	addi	s0,sp,384
     47a:	8c04                	0x8c04
     47c:	0302                	slli	t1,t1,0x0
     47e:	0900                	addi	s0,sp,144
     480:	0010                	addi	a2,sp,0
     482:	0001                	nop
     484:	02b20403          	lb	s0,43(tp) # 2b <_start-0x10085>
     488:	10090003          	lb	zero,256(s2)
     48c:	0100                	addi	s0,sp,128
     48e:	0300                	addi	s0,sp,384
     490:	ba04                	fsd	fs1,48(a2)
     492:	0302                	slli	t1,t1,0x0
     494:	0900                	addi	s0,sp,144
     496:	0008                	addi	a0,sp,0
     498:	0001                	nop
     49a:	02c40403          	lb	s0,44(s0) # fffffffffffeb02c <__global_pointer$+0xfffffffffffd805c>
     49e:	14090003          	lb	zero,320(s2)
     4a2:	0100                	addi	s0,sp,128
     4a4:	0300                	addi	s0,sp,384
     4a6:	b304                	fsd	fs1,32(a4)
     4a8:	0302                	slli	t1,t1,0x0
     4aa:	0900                	addi	s0,sp,144
     4ac:	0028                	addi	a0,sp,8
     4ae:	0301                	addi	t1,t1,0
     4b0:	0900                	addi	s0,sp,144
     4b2:	0008                	addi	a0,sp,0
     4b4:	0001                	nop
     4b6:	02c50403          	lb	s0,44(a0)
     4ba:	08090003          	lb	zero,128(s2)
     4be:	0100                	addi	s0,sp,128
     4c0:	0306                	slli	t1,t1,0x1
     4c2:	097f                	0x97f
     4c4:	0018                	addi	a4,sp,0
     4c6:	0001                	nop
     4c8:	0402                	slli	s0,s0,0x0
     4ca:	0325                	addi	t1,t1,9
     4cc:	0902                	slli	s2,s2,0x0
     4ce:	0018                	addi	a4,sp,0
     4d0:	0001                	nop
     4d2:	0402                	slli	s0,s0,0x0
     4d4:	0003062f          	0x3062f
     4d8:	0809                	addi	a6,a6,2
     4da:	0100                	addi	s0,sp,128
     4dc:	0c090003          	lb	zero,192(s2)
     4e0:	0100                	addi	s0,sp,128
     4e2:	0200                	addi	s0,sp,256
     4e4:	3f04                	fld	fs1,56(a4)
     4e6:	10090003          	lb	zero,256(s2)
     4ea:	0100                	addi	s0,sp,128
     4ec:	0200                	addi	s0,sp,256
     4ee:	4004                	lw	s1,0(s0)
     4f0:	0c090003          	lb	zero,192(s2)
     4f4:	0100                	addi	s0,sp,128
     4f6:	04090003          	lb	zero,64(s2)
     4fa:	0100                	addi	s0,sp,128
     4fc:	0200                	addi	s0,sp,256
     4fe:	4a04                	lw	s1,16(a2)
     500:	0c090003          	lb	zero,192(s2)
     504:	0100                	addi	s0,sp,128
     506:	0200                	addi	s0,sp,256
     508:	4a04                	lw	s1,16(a2)
     50a:	0306                	slli	t1,t1,0x1
     50c:	0904                	addi	s1,sp,144
     50e:	0010                	addi	a2,sp,0
     510:	0001                	nop
     512:	0402                	slli	s0,s0,0x0
     514:	034a                	slli	t1,t1,0x12
     516:	097c                	addi	a5,sp,156
     518:	0008                	addi	a0,sp,0
     51a:	0001                	nop
     51c:	0402                	slli	s0,s0,0x0
     51e:	034a                	slli	t1,t1,0x12
     520:	0904                	addi	s1,sp,144
     522:	0010                	addi	a2,sp,0
     524:	0301                	addi	t1,t1,0
     526:	097a                	slli	s2,s2,0x1e
     528:	0010                	addi	a2,sp,0
     52a:	0901                	addi	s2,s2,0
     52c:	0030                	addi	a2,sp,8
     52e:	0100                	addi	s0,sp,128
     530:	f001                	bnez	s0,430 <_start-0xfc80>
     532:	0002                	0x2
     534:	0200                	addi	s0,sp,256
     536:	2100                	fld	fs0,0(a0)
     538:	0001                	nop
     53a:	0100                	addi	s0,sp,128
     53c:	fb01                	bnez	a4,44c <_start-0xfc64>
     53e:	0d0e                	slli	s10,s10,0x3
     540:	0100                	addi	s0,sp,128
     542:	0101                	addi	sp,sp,0
     544:	0001                	nop
     546:	0000                	unimp
     548:	0001                	nop
     54a:	0100                	addi	s0,sp,128
     54c:	6d6f682f          	0x6d6f682f
     550:	2f65                	addiw	t5,t5,25
     552:	6568                	ld	a0,200(a0)
     554:	6168                	ld	a0,192(a0)
     556:	6f442f6f          	jal	t5,42c4a <__global_pointer$+0x2fc7a>
     55a:	6f6c6e77          	0x6f6c6e77
     55e:	6461                	lui	s0,0x18
     560:	72662f73          	csrrs	t5,0x726,a2
     564:	6565                	lui	a0,0x19
     566:	6f64                	ld	s1,216(a4)
     568:	2f6d                	addiw	t5,t5,27
     56a:	6f72                	ld	t5,280(sp)
     56c:	74656b63          	bltu	a0,t1,cc2 <_start-0xf3ee>
     570:	632d                	lui	t1,0xb
     572:	6968                	ld	a0,208(a0)
     574:	2f70                	fld	fa2,216(a4)
     576:	6972                	ld	s2,280(sp)
     578:	2d766373          	csrrsi	t1,0x2d7,12
     57c:	6f74                	ld	a3,216(a4)
     57e:	2f736c6f          	jal	s8,37074 <__global_pointer$+0x240a4>
     582:	6972                	ld	s2,280(sp)
     584:	2d766373          	csrrsi	t1,0x2d7,12
     588:	2d756e67          	0x2d756e67
     58c:	6f74                	ld	a3,216(a4)
     58e:	68636c6f          	jal	s8,36c14 <__global_pointer$+0x23c44>
     592:	6961                	lui	s2,0x18
     594:	2f6e                	fld	ft10,216(sp)
     596:	7562                	ld	a0,56(sp)
     598:	6c69                	lui	s8,0x1a
     59a:	2f64                	fld	fs1,216(a4)
     59c:	2e2e                	fld	ft8,200(sp)
     59e:	7369722f          	0x7369722f
     5a2:	672d7663          	bleu	s2,s10,c0e <_start-0xf4a2>
     5a6:	6c2f6363          	bltu	t5,sp,c6c <_start-0xf444>
     5aa:	6269                	lui	tp,0x1a
     5ac:	2f636367          	0x2f636367
     5b0:	74666f73          	csrrsi	t5,0x746,12
     5b4:	662d                	lui	a2,0xb
     5b6:	0070                	addi	a2,sp,12
     5b8:	6d6f682f          	0x6d6f682f
     5bc:	2f65                	addiw	t5,t5,25
     5be:	6568                	ld	a0,200(a0)
     5c0:	6168                	ld	a0,192(a0)
     5c2:	6f442f6f          	jal	t5,42cb6 <__global_pointer$+0x2fce6>
     5c6:	6f6c6e77          	0x6f6c6e77
     5ca:	6461                	lui	s0,0x18
     5cc:	72662f73          	csrrs	t5,0x726,a2
     5d0:	6565                	lui	a0,0x19
     5d2:	6f64                	ld	s1,216(a4)
     5d4:	2f6d                	addiw	t5,t5,27
     5d6:	6f72                	ld	t5,280(sp)
     5d8:	74656b63          	bltu	a0,t1,d2e <_start-0xf382>
     5dc:	632d                	lui	t1,0xb
     5de:	6968                	ld	a0,208(a0)
     5e0:	2f70                	fld	fa2,216(a4)
     5e2:	6972                	ld	s2,280(sp)
     5e4:	2d766373          	csrrsi	t1,0x2d7,12
     5e8:	6f74                	ld	a3,216(a4)
     5ea:	2f736c6f          	jal	s8,370e0 <__global_pointer$+0x24110>
     5ee:	6972                	ld	s2,280(sp)
     5f0:	2d766373          	csrrsi	t1,0x2d7,12
     5f4:	2d756e67          	0x2d756e67
     5f8:	6f74                	ld	a3,216(a4)
     5fa:	68636c6f          	jal	s8,36c80 <__global_pointer$+0x23cb0>
     5fe:	6961                	lui	s2,0x18
     600:	2f6e                	fld	ft10,216(sp)
     602:	7562                	ld	a0,56(sp)
     604:	6c69                	lui	s8,0x1a
     606:	2f64                	fld	fs1,216(a4)
     608:	2e2e                	fld	ft8,200(sp)
     60a:	7369722f          	0x7369722f
     60e:	672d7663          	bleu	s2,s10,c7a <_start-0xf436>
     612:	6c2f6363          	bltu	t5,sp,cd8 <_start-0xf3d8>
     616:	6269                	lui	tp,0x1a
     618:	2f636367          	0x2f636367
     61c:	2e2e                	fld	ft8,200(sp)
     61e:	636e692f          	0x636e692f
     622:	756c                	ld	a1,232(a0)
     624:	6564                	ld	s1,200(a0)
     626:	0000                	unimp
     628:	756d                	lui	a0,0xffffb
     62a:	646c                	ld	a1,200(s0)
     62c:	3366                	fld	ft6,120(sp)
     62e:	632e                	ld	t1,200(sp)
     630:	0100                	addi	s0,sp,128
     632:	0000                	unimp
     634:	74666f73          	csrrsi	t5,0x746,12
     638:	662d                	lui	a2,0xb
     63a:	2e70                	fld	fa2,216(a2)
     63c:	0068                	addi	a0,sp,12
     63e:	0001                	nop
     640:	6400                	ld	s0,8(s0)
     642:	6c62756f          	jal	a0,27d08 <__global_pointer$+0x14d38>
     646:	2e65                	addiw	t3,t3,25
     648:	0068                	addi	a0,sp,12
     64a:	0001                	nop
     64c:	6c00                	ld	s0,24(s0)
     64e:	6c676e6f          	jal	t3,76d14 <__global_pointer$+0x63d44>
     652:	2e676e6f          	jal	t3,76938 <__global_pointer$+0x63968>
     656:	0068                	addi	a0,sp,12
     658:	0002                	0x2
     65a:	0000                	unimp
     65c:	0900                	addi	s0,sp,144
     65e:	0402                	slli	s0,s0,0x0
     660:	0109                	addi	sp,sp,2
     662:	0000                	unimp
     664:	0000                	unimp
     666:	0300                	addi	s0,sp,384
     668:	08030123          	sb	zero,130(t1) # b082 <_start-0x502e>
     66c:	0809                	addi	a6,a6,2
     66e:	0100                	addi	s0,sp,128
     670:	04097803          	0x4097803
     674:	0100                	addi	s0,sp,128
     676:	04090803          	lb	a6,64(s2) # 18040 <__global_pointer$+0x5070>
     67a:	0100                	addi	s0,sp,128
     67c:	08097803          	0x8097803
     680:	0100                	addi	s0,sp,128
     682:	08090803          	lb	a6,128(s2)
     686:	0100                	addi	s0,sp,128
     688:	04097803          	0x4097803
     68c:	0100                	addi	s0,sp,128
     68e:	14090803          	lb	a6,320(s2)
     692:	0100                	addi	s0,sp,128
     694:	04097803          	0x4097803
     698:	0100                	addi	s0,sp,128
     69a:	04090803          	lb	a6,64(s2)
     69e:	0100                	addi	s0,sp,128
     6a0:	0200                	addi	s0,sp,256
     6a2:	0f04                	addi	s1,sp,912
     6a4:	0306                	slli	t1,t1,0x1
     6a6:	0900                	addi	s0,sp,144
     6a8:	0028                	addi	a0,sp,8
     6aa:	0601                	addi	a2,a2,0
     6ac:	04090103          	lb	sp,64(s2)
     6b0:	0100                	addi	s0,sp,128
     6b2:	0200                	addi	s0,sp,256
     6b4:	0f04                	addi	s1,sp,912
     6b6:	0306                	slli	t1,t1,0x1
     6b8:	0900                	addi	s0,sp,144
     6ba:	003c                	addi	a5,sp,8
     6bc:	0601                	addi	a2,a2,0
     6be:	04090103          	lb	sp,64(s2)
     6c2:	0100                	addi	s0,sp,128
     6c4:	0200                	addi	s0,sp,256
     6c6:	0204                	addi	s1,sp,256
     6c8:	38097e03          	0x38097e03
     6cc:	0100                	addi	s0,sp,128
     6ce:	0200                	addi	s0,sp,256
     6d0:	0f04                	addi	s1,sp,912
     6d2:	0306                	slli	t1,t1,0x1
     6d4:	0900                	addi	s0,sp,144
     6d6:	0004                	addi	s1,sp,0
     6d8:	0001                	nop
     6da:	0402                	slli	s0,s0,0x0
     6dc:	09000303          	lb	t1,144(zero) # 90 <_start-0x10020>
     6e0:	0020                	addi	s0,sp,8
     6e2:	0301                	addi	t1,t1,0
     6e4:	0900                	addi	s0,sp,144
     6e6:	000c                	addi	a1,sp,0
     6e8:	0001                	nop
     6ea:	0402                	slli	s0,s0,0x0
     6ec:	0602                	slli	a2,a2,0x0
     6ee:	14090103          	lb	sp,320(s2)
     6f2:	0100                	addi	s0,sp,128
     6f4:	0200                	addi	s0,sp,256
     6f6:	0f04                	addi	s1,sp,912
     6f8:	0306                	slli	t1,t1,0x1
     6fa:	0900                	addi	s0,sp,144
     6fc:	0004                	addi	s1,sp,0
     6fe:	0001                	nop
     700:	0402                	slli	s0,s0,0x0
     702:	09000303          	lb	t1,144(zero) # 90 <_start-0x10020>
     706:	0020                	addi	s0,sp,8
     708:	0301                	addi	t1,t1,0
     70a:	0900                	addi	s0,sp,144
     70c:	000c                	addi	a1,sp,0
     70e:	0001                	nop
     710:	0402                	slli	s0,s0,0x0
     712:	0602                	slli	a2,a2,0x0
     714:	1c090103          	lb	sp,448(s2)
     718:	0100                	addi	s0,sp,128
     71a:	0200                	addi	s0,sp,256
     71c:	0904                	addi	s1,sp,144
     71e:	0306                	slli	t1,t1,0x1
     720:	0900                	addi	s0,sp,144
     722:	005c                	addi	a5,sp,4
     724:	0001                	nop
     726:	0402                	slli	s0,s0,0x0
     728:	0900030b          	0x900030b
     72c:	000c                	addi	a1,sp,0
     72e:	0001                	nop
     730:	0402                	slli	s0,s0,0x0
     732:	030c                	addi	a1,sp,384
     734:	0900                	addi	s0,sp,144
     736:	0040                	addi	s0,sp,4
     738:	0001                	nop
     73a:	0402                	slli	s0,s0,0x0
     73c:	0602                	slli	a2,a2,0x0
     73e:	0c090103          	lb	sp,192(s2)
     742:	0100                	addi	s0,sp,128
     744:	0200                	addi	s0,sp,256
     746:	0604                	addi	s1,sp,768
     748:	0306                	slli	t1,t1,0x1
     74a:	0900                	addi	s0,sp,144
     74c:	0008                	addi	a0,sp,0
     74e:	0001                	nop
     750:	0402                	slli	s0,s0,0x0
     752:	0308                	addi	a0,sp,384
     754:	0900                	addi	s0,sp,144
     756:	0008                	addi	a0,sp,0
     758:	0001                	nop
     75a:	0402                	slli	s0,s0,0x0
     75c:	0900030f          	0x900030f
     760:	000c                	addi	a1,sp,0
     762:	0001                	nop
     764:	0402                	slli	s0,s0,0x0
     766:	0310                	addi	a2,sp,384
     768:	0900                	addi	s0,sp,144
     76a:	0004                	addi	s1,sp,0
     76c:	0001                	nop
     76e:	0402                	slli	s0,s0,0x0
     770:	0315                	addi	t1,t1,5
     772:	0900                	addi	s0,sp,144
     774:	0008                	addi	a0,sp,0
     776:	0001                	nop
     778:	0402                	slli	s0,s0,0x0
     77a:	09000317          	auipc	t1,0x9000
     77e:	0014                	addi	a3,sp,0
     780:	0301                	addi	t1,t1,0
     782:	0900                	addi	s0,sp,144
     784:	0008                	addi	a0,sp,0
     786:	0001                	nop
     788:	0402                	slli	s0,s0,0x0
     78a:	7d030607          	0x7d030607
     78e:	0809                	addi	a6,a6,2
     790:	0100                	addi	s0,sp,128
     792:	0200                	addi	s0,sp,256
     794:	0704                	addi	s1,sp,896
     796:	04090203          	lb	tp,64(s2)
     79a:	0100                	addi	s0,sp,128
     79c:	08090103          	lb	sp,128(s2)
     7a0:	0100                	addi	s0,sp,128
     7a2:	0200                	addi	s0,sp,256
     7a4:	6404                	ld	s1,8(s0)
     7a6:	0306                	slli	t1,t1,0x1
     7a8:	0900                	addi	s0,sp,144
     7aa:	0020                	addi	s0,sp,8
     7ac:	0001                	nop
     7ae:	0402                	slli	s0,s0,0x0
     7b0:	0664                	addi	s1,sp,780
     7b2:	08090403          	lb	s0,128(s2)
     7b6:	0100                	addi	s0,sp,128
     7b8:	0200                	addi	s0,sp,256
     7ba:	6404                	ld	s1,8(s0)
     7bc:	08097c03          	0x8097c03
     7c0:	0100                	addi	s0,sp,128
     7c2:	0200                	addi	s0,sp,256
     7c4:	6404                	ld	s1,8(s0)
     7c6:	14090403          	lb	s0,320(s2)
     7ca:	0100                	addi	s0,sp,128
     7cc:	0200                	addi	s0,sp,256
     7ce:	0404                	addi	s1,sp,512
     7d0:	28097a03          	0x28097a03
     7d4:	0100                	addi	s0,sp,128
     7d6:	08090103          	lb	sp,128(s2)
     7da:	0100                	addi	s0,sp,128
     7dc:	0200                	addi	s0,sp,256
     7de:	3504                	fld	fs1,40(a0)
     7e0:	08090103          	lb	sp,128(s2)
     7e4:	0100                	addi	s0,sp,128
     7e6:	0200                	addi	s0,sp,256
     7e8:	3604                	fld	fs1,40(a2)
     7ea:	0306                	slli	t1,t1,0x1
     7ec:	0900                	addi	s0,sp,144
     7ee:	0010                	addi	a2,sp,0
     7f0:	0001                	nop
     7f2:	0402                	slli	s0,s0,0x0
     7f4:	033e                	slli	t1,t1,0xf
     7f6:	0900                	addi	s0,sp,144
     7f8:	0024                	addi	s1,sp,8
     7fa:	0001                	nop
     7fc:	0402                	slli	s0,s0,0x0
     7fe:	0345                	addi	t1,t1,17
     800:	0900                	addi	s0,sp,144
     802:	000c                	addi	a1,sp,0
     804:	0001                	nop
     806:	0402                	slli	s0,s0,0x0
     808:	0346                	slli	t1,t1,0x11
     80a:	0900                	addi	s0,sp,144
     80c:	0004                	addi	s1,sp,0
     80e:	0001                	nop
     810:	0402                	slli	s0,s0,0x0
     812:	034c                	addi	a1,sp,388
     814:	0900                	addi	s0,sp,144
     816:	0008                	addi	a0,sp,0
     818:	0301                	addi	t1,t1,0
     81a:	0900                	addi	s0,sp,144
     81c:	0004                	addi	s1,sp,0
     81e:	0901                	addi	s2,s2,0
     820:	003c                	addi	a5,sp,8
     822:	0100                	addi	s0,sp,128
     824:	4301                	li	t1,0
     826:	0005                	c.addi	zero,1
     828:	0200                	addi	s0,sp,256
     82a:	2100                	fld	fs0,0(a0)
     82c:	0001                	nop
     82e:	0100                	addi	s0,sp,128
     830:	fb01                	bnez	a4,740 <_start-0xf970>
     832:	0d0e                	slli	s10,s10,0x3
     834:	0100                	addi	s0,sp,128
     836:	0101                	addi	sp,sp,0
     838:	0001                	nop
     83a:	0000                	unimp
     83c:	0001                	nop
     83e:	0100                	addi	s0,sp,128
     840:	6d6f682f          	0x6d6f682f
     844:	2f65                	addiw	t5,t5,25
     846:	6568                	ld	a0,200(a0)
     848:	6168                	ld	a0,192(a0)
     84a:	6f442f6f          	jal	t5,42f3e <__global_pointer$+0x2ff6e>
     84e:	6f6c6e77          	0x6f6c6e77
     852:	6461                	lui	s0,0x18
     854:	72662f73          	csrrs	t5,0x726,a2
     858:	6565                	lui	a0,0x19
     85a:	6f64                	ld	s1,216(a4)
     85c:	2f6d                	addiw	t5,t5,27
     85e:	6f72                	ld	t5,280(sp)
     860:	74656b63          	bltu	a0,t1,fb6 <_start-0xf0fa>
     864:	632d                	lui	t1,0xb
     866:	6968                	ld	a0,208(a0)
     868:	2f70                	fld	fa2,216(a4)
     86a:	6972                	ld	s2,280(sp)
     86c:	2d766373          	csrrsi	t1,0x2d7,12
     870:	6f74                	ld	a3,216(a4)
     872:	2f736c6f          	jal	s8,37368 <__global_pointer$+0x24398>
     876:	6972                	ld	s2,280(sp)
     878:	2d766373          	csrrsi	t1,0x2d7,12
     87c:	2d756e67          	0x2d756e67
     880:	6f74                	ld	a3,216(a4)
     882:	68636c6f          	jal	s8,36f08 <__global_pointer$+0x23f38>
     886:	6961                	lui	s2,0x18
     888:	2f6e                	fld	ft10,216(sp)
     88a:	7562                	ld	a0,56(sp)
     88c:	6c69                	lui	s8,0x1a
     88e:	2f64                	fld	fs1,216(a4)
     890:	2e2e                	fld	ft8,200(sp)
     892:	7369722f          	0x7369722f
     896:	672d7663          	bleu	s2,s10,f02 <_start-0xf1ae>
     89a:	6c2f6363          	bltu	t5,sp,f60 <_start-0xf150>
     89e:	6269                	lui	tp,0x1a
     8a0:	2f636367          	0x2f636367
     8a4:	74666f73          	csrrsi	t5,0x746,12
     8a8:	662d                	lui	a2,0xb
     8aa:	0070                	addi	a2,sp,12
     8ac:	6d6f682f          	0x6d6f682f
     8b0:	2f65                	addiw	t5,t5,25
     8b2:	6568                	ld	a0,200(a0)
     8b4:	6168                	ld	a0,192(a0)
     8b6:	6f442f6f          	jal	t5,42faa <__global_pointer$+0x2ffda>
     8ba:	6f6c6e77          	0x6f6c6e77
     8be:	6461                	lui	s0,0x18
     8c0:	72662f73          	csrrs	t5,0x726,a2
     8c4:	6565                	lui	a0,0x19
     8c6:	6f64                	ld	s1,216(a4)
     8c8:	2f6d                	addiw	t5,t5,27
     8ca:	6f72                	ld	t5,280(sp)
     8cc:	74656b63          	bltu	a0,t1,1022 <_start-0xf08e>
     8d0:	632d                	lui	t1,0xb
     8d2:	6968                	ld	a0,208(a0)
     8d4:	2f70                	fld	fa2,216(a4)
     8d6:	6972                	ld	s2,280(sp)
     8d8:	2d766373          	csrrsi	t1,0x2d7,12
     8dc:	6f74                	ld	a3,216(a4)
     8de:	2f736c6f          	jal	s8,373d4 <__global_pointer$+0x24404>
     8e2:	6972                	ld	s2,280(sp)
     8e4:	2d766373          	csrrsi	t1,0x2d7,12
     8e8:	2d756e67          	0x2d756e67
     8ec:	6f74                	ld	a3,216(a4)
     8ee:	68636c6f          	jal	s8,36f74 <__global_pointer$+0x23fa4>
     8f2:	6961                	lui	s2,0x18
     8f4:	2f6e                	fld	ft10,216(sp)
     8f6:	7562                	ld	a0,56(sp)
     8f8:	6c69                	lui	s8,0x1a
     8fa:	2f64                	fld	fs1,216(a4)
     8fc:	2e2e                	fld	ft8,200(sp)
     8fe:	7369722f          	0x7369722f
     902:	672d7663          	bleu	s2,s10,f6e <_start-0xf142>
     906:	6c2f6363          	bltu	t5,sp,fcc <_start-0xf0e4>
     90a:	6269                	lui	tp,0x1a
     90c:	2f636367          	0x2f636367
     910:	2e2e                	fld	ft8,200(sp)
     912:	636e692f          	0x636e692f
     916:	756c                	ld	a1,232(a0)
     918:	6564                	ld	s1,200(a0)
     91a:	0000                	unimp
     91c:	64627573          	csrrci	a0,0x646,4
     920:	3366                	fld	ft6,120(sp)
     922:	632e                	ld	t1,200(sp)
     924:	0100                	addi	s0,sp,128
     926:	0000                	unimp
     928:	74666f73          	csrrsi	t5,0x746,12
     92c:	662d                	lui	a2,0xb
     92e:	2e70                	fld	fa2,216(a2)
     930:	0068                	addi	a0,sp,12
     932:	0001                	nop
     934:	6400                	ld	s0,8(s0)
     936:	6c62756f          	jal	a0,27ffc <__global_pointer$+0x1502c>
     93a:	2e65                	addiw	t3,t3,25
     93c:	0068                	addi	a0,sp,12
     93e:	0001                	nop
     940:	6c00                	ld	s0,24(s0)
     942:	6c676e6f          	jal	t3,77008 <__global_pointer$+0x64038>
     946:	2e676e6f          	jal	t3,76c2c <__global_pointer$+0x63c5c>
     94a:	0068                	addi	a0,sp,12
     94c:	0002                	0x2
     94e:	0000                	unimp
     950:	0900                	addi	s0,sp,144
     952:	9002                	ebreak
     954:	010c                	addi	a1,sp,128
     956:	0000                	unimp
     958:	0000                	unimp
     95a:	0300                	addi	s0,sp,384
     95c:	08030123          	sb	zero,130(t1) # b082 <_start-0x502e>
     960:	0009                	c.addi	zero,2
     962:	0100                	addi	s0,sp,128
     964:	04097803          	0x4097803
     968:	0100                	addi	s0,sp,128
     96a:	04090803          	lb	a6,64(s2) # 18040 <__global_pointer$+0x5070>
     96e:	0100                	addi	s0,sp,128
     970:	0c097803          	0xc097803
     974:	0100                	addi	s0,sp,128
     976:	04090803          	lb	a6,64(s2)
     97a:	0100                	addi	s0,sp,128
     97c:	04090103          	lb	sp,64(s2)
     980:	0100                	addi	s0,sp,128
     982:	08097703          	0x8097703
     986:	0100                	addi	s0,sp,128
     988:	04090803          	lb	a6,64(s2)
     98c:	0100                	addi	s0,sp,128
     98e:	04097803          	0x4097803
     992:	0100                	addi	s0,sp,128
     994:	08090903          	lb	s2,128(s2)
     998:	0100                	addi	s0,sp,128
     99a:	04090103          	lb	sp,64(s2)
     99e:	0100                	addi	s0,sp,128
     9a0:	04097e03          	0x4097e03
     9a4:	0100                	addi	s0,sp,128
     9a6:	08090103          	lb	sp,128(s2)
     9aa:	0100                	addi	s0,sp,128
     9ac:	08090103          	lb	sp,128(s2)
     9b0:	0100                	addi	s0,sp,128
     9b2:	0200                	addi	s0,sp,256
     9b4:	0204                	addi	s1,sp,256
     9b6:	0306                	slli	t1,t1,0x1
     9b8:	0900                	addi	s0,sp,144
     9ba:	0004                	addi	s1,sp,0
     9bc:	0001                	nop
     9be:	0402                	slli	s0,s0,0x0
     9c0:	09000303          	lb	t1,144(zero) # 90 <_start-0x10020>
     9c4:	0004                	addi	s1,sp,0
     9c6:	0001                	nop
     9c8:	0402                	slli	s0,s0,0x0
     9ca:	0900030b          	0x900030b
     9ce:	000c                	addi	a1,sp,0
     9d0:	0001                	nop
     9d2:	0402                	slli	s0,s0,0x0
     9d4:	030c                	addi	a1,sp,384
     9d6:	0900                	addi	s0,sp,144
     9d8:	0004                	addi	s1,sp,0
     9da:	0001                	nop
     9dc:	0402                	slli	s0,s0,0x0
     9de:	030e                	slli	t1,t1,0x3
     9e0:	0900                	addi	s0,sp,144
     9e2:	0004                	addi	s1,sp,0
     9e4:	0001                	nop
     9e6:	0402                	slli	s0,s0,0x0
     9e8:	0310                	addi	a2,sp,384
     9ea:	0900                	addi	s0,sp,144
     9ec:	0004                	addi	s1,sp,0
     9ee:	0001                	nop
     9f0:	0402                	slli	s0,s0,0x0
     9f2:	09000313          	li	t1,144
     9f6:	0004                	addi	s1,sp,0
     9f8:	0001                	nop
     9fa:	0402                	slli	s0,s0,0x0
     9fc:	033e                	slli	t1,t1,0xf
     9fe:	0900                	addi	s0,sp,144
     a00:	0008                	addi	a0,sp,0
     a02:	0001                	nop
     a04:	0402                	slli	s0,s0,0x0
     a06:	0371                	addi	t1,t1,28
     a08:	0900                	addi	s0,sp,144
     a0a:	0004                	addi	s1,sp,0
     a0c:	0001                	nop
     a0e:	01a10403          	lb	s0,26(sp)
     a12:	08090003          	lb	zero,128(s2)
     a16:	0100                	addi	s0,sp,128
     a18:	0c090003          	lb	zero,192(s2)
     a1c:	0100                	addi	s0,sp,128
     a1e:	0200                	addi	s0,sp,256
     a20:	1d04                	addi	s1,sp,688
     a22:	20090003          	lb	zero,512(s2)
     a26:	0100                	addi	s0,sp,128
     a28:	0200                	addi	s0,sp,256
     a2a:	1104                	addi	s1,sp,160
     a2c:	10090003          	lb	zero,256(s2)
     a30:	0100                	addi	s0,sp,128
     a32:	0200                	addi	s0,sp,256
     a34:	2904                	fld	fs1,16(a0)
     a36:	08090003          	lb	zero,128(s2)
     a3a:	0100                	addi	s0,sp,128
     a3c:	0c090003          	lb	zero,192(s2)
     a40:	0100                	addi	s0,sp,128
     a42:	0200                	addi	s0,sp,256
     a44:	3304                	fld	fs1,32(a4)
     a46:	10090003          	lb	zero,256(s2)
     a4a:	0100                	addi	s0,sp,128
     a4c:	0200                	addi	s0,sp,256
     a4e:	0f04                	addi	s1,sp,912
     a50:	1c090003          	lb	zero,448(s2)
     a54:	0100                	addi	s0,sp,128
     a56:	0200                	addi	s0,sp,256
     a58:	4004                	lw	s1,0(s0)
     a5a:	04090003          	lb	zero,64(s2)
     a5e:	0100                	addi	s0,sp,128
     a60:	0200                	addi	s0,sp,256
     a62:	4204                	lw	s1,0(a2)
     a64:	04090003          	lb	zero,64(s2)
     a68:	0100                	addi	s0,sp,128
     a6a:	0200                	addi	s0,sp,256
     a6c:	4504                	lw	s1,8(a0)
     a6e:	04090003          	lb	zero,64(s2)
     a72:	0100                	addi	s0,sp,128
     a74:	0200                	addi	s0,sp,256
     a76:	7004                	ld	s1,32(s0)
     a78:	08090003          	lb	zero,128(s2)
     a7c:	0100                	addi	s0,sp,128
     a7e:	0200                	addi	s0,sp,256
     a80:	7004                	ld	s1,32(s0)
     a82:	0306                	slli	t1,t1,0x1
     a84:	097f                	0x97f
     a86:	0004                	addi	s1,sp,0
     a88:	0001                	nop
     a8a:	0402                	slli	s0,s0,0x0
     a8c:	0901034f          	fnmadd.s	ft6,ft2,fa6,ft1,rne
     a90:	0008                	addi	a0,sp,0
     a92:	0601                	addi	a2,a2,0
     a94:	0c090003          	lb	zero,192(s2)
     a98:	0100                	addi	s0,sp,128
     a9a:	0200                	addi	s0,sp,256
     a9c:	4304                	lw	s1,0(a4)
     a9e:	08090003          	lb	zero,128(s2)
     aa2:	0100                	addi	s0,sp,128
     aa4:	0200                	addi	s0,sp,256
     aa6:	5b04                	lw	s1,48(a4)
     aa8:	08090003          	lb	zero,128(s2)
     aac:	0100                	addi	s0,sp,128
     aae:	10090003          	lb	zero,256(s2)
     ab2:	0100                	addi	s0,sp,128
     ab4:	0200                	addi	s0,sp,256
     ab6:	6504                	ld	s1,8(a0)
     ab8:	10090003          	lb	zero,256(s2)
     abc:	0100                	addi	s0,sp,128
     abe:	0200                	addi	s0,sp,256
     ac0:	4104                	lw	s1,0(a0)
     ac2:	1c090003          	lb	zero,448(s2)
     ac6:	0100                	addi	s0,sp,128
     ac8:	0200                	addi	s0,sp,256
     aca:	7204                	ld	s1,32(a2)
     acc:	10090003          	lb	zero,256(s2)
     ad0:	0100                	addi	s0,sp,128
     ad2:	0200                	addi	s0,sp,256
     ad4:	7404                	ld	s1,40(s0)
     ad6:	04090003          	lb	zero,64(s2)
     ada:	0100                	addi	s0,sp,128
     adc:	0200                	addi	s0,sp,256
     ade:	7704                	ld	s1,40(a4)
     ae0:	04090003          	lb	zero,64(s2)
     ae4:	0100                	addi	s0,sp,128
     ae6:	0200                	addi	s0,sp,256
     ae8:	7d04                	ld	s1,56(a0)
     aea:	04090003          	lb	zero,64(s2)
     aee:	0100                	addi	s0,sp,128
     af0:	0200                	addi	s0,sp,256
     af2:	7f04                	ld	s1,56(a4)
     af4:	10090003          	lb	zero,256(s2)
     af8:	0100                	addi	s0,sp,128
     afa:	0306                	slli	t1,t1,0x1
     afc:	0901                	addi	s2,s2,0
     afe:	0014                	addi	a3,sp,0
     b00:	0001                	nop
     b02:	0402                	slli	s0,s0,0x0
     b04:	061d                	addi	a2,a2,7
     b06:	08090003          	lb	zero,128(s2)
     b0a:	0100                	addi	s0,sp,128
     b0c:	0200                	addi	s0,sp,256
     b0e:	2404                	fld	fs1,8(s0)
     b10:	0c090003          	lb	zero,192(s2)
     b14:	0100                	addi	s0,sp,128
     b16:	0300                	addi	s0,sp,384
     b18:	8d04                	0x8d04
     b1a:	0601                	addi	a2,a2,0
     b1c:	08097f03          	0x8097f03
     b20:	0100                	addi	s0,sp,128
     b22:	0300                	addi	s0,sp,384
     b24:	ac04                	fsd	fs1,24(s0)
     b26:	0602                	slli	a2,a2,0x0
     b28:	04090003          	lb	zero,64(s2)
     b2c:	0100                	addi	s0,sp,128
     b2e:	04090003          	lb	zero,64(s2)
     b32:	0100                	addi	s0,sp,128
     b34:	0200                	addi	s0,sp,256
     b36:	7304                	ld	s1,32(a4)
     b38:	08090003          	lb	zero,128(s2)
     b3c:	0100                	addi	s0,sp,128
     b3e:	08090003          	lb	zero,128(s2)
     b42:	0100                	addi	s0,sp,128
     b44:	0200                	addi	s0,sp,256
     b46:	0d04                	addi	s1,sp,656
     b48:	10090003          	lb	zero,256(s2)
     b4c:	0100                	addi	s0,sp,128
     b4e:	0300                	addi	s0,sp,384
     b50:	b204                	fsd	fs1,32(a2)
     b52:	0301                	addi	t1,t1,0
     b54:	0900                	addi	s0,sp,144
     b56:	0004                	addi	s1,sp,0
     b58:	0001                	nop
     b5a:	01b40403          	lb	s0,27(s0) # 1801b <__global_pointer$+0x504b>
     b5e:	04090003          	lb	zero,64(s2)
     b62:	0100                	addi	s0,sp,128
     b64:	0300                	addi	s0,sp,384
     b66:	b704                	fsd	fs1,40(a4)
     b68:	0301                	addi	t1,t1,0
     b6a:	0900                	addi	s0,sp,144
     b6c:	0004                	addi	s1,sp,0
     b6e:	0001                	nop
     b70:	01df0403          	lb	s0,29(t5)
     b74:	08090003          	lb	zero,128(s2)
     b78:	0100                	addi	s0,sp,128
     b7a:	0300                	addi	s0,sp,384
     b7c:	8f04                	0x8f04
     b7e:	0302                	slli	t1,t1,0x0
     b80:	0900                	addi	s0,sp,144
     b82:	0008                	addi	a0,sp,0
     b84:	0001                	nop
     b86:	02ba0403          	lb	s0,43(s4)
     b8a:	0c090003          	lb	zero,192(s2)
     b8e:	0100                	addi	s0,sp,128
     b90:	0300                	addi	s0,sp,384
     b92:	c004                	sw	s1,0(s0)
     b94:	0301                	addi	t1,t1,0
     b96:	0900                	addi	s0,sp,144
     b98:	0010                	addi	a2,sp,0
     b9a:	0301                	addi	t1,t1,0
     b9c:	0900                	addi	s0,sp,144
     b9e:	0008                	addi	a0,sp,0
     ba0:	0001                	nop
     ba2:	01b50403          	lb	s0,27(a0) # 1901b <__global_pointer$+0x604b>
     ba6:	10090003          	lb	zero,256(s2)
     baa:	0100                	addi	s0,sp,128
     bac:	0300                	addi	s0,sp,384
     bae:	cb04                	sw	s1,16(a4)
     bb0:	0301                	addi	t1,t1,0
     bb2:	0900                	addi	s0,sp,144
     bb4:	0008                	addi	a0,sp,0
     bb6:	0001                	nop
     bb8:	01d40403          	lb	s0,29(s0)
     bbc:	10090003          	lb	zero,256(s2)
     bc0:	0100                	addi	s0,sp,128
     bc2:	0300                	addi	s0,sp,384
     bc4:	b304                	fsd	fs1,32(a4)
     bc6:	0301                	addi	t1,t1,0
     bc8:	0900                	addi	s0,sp,144
     bca:	001c                	addi	a5,sp,0
     bcc:	0001                	nop
     bce:	01e10403          	lb	s0,30(sp)
     bd2:	04090003          	lb	zero,64(s2)
     bd6:	0100                	addi	s0,sp,128
     bd8:	0300                	addi	s0,sp,384
     bda:	e304                	sd	s1,0(a4)
     bdc:	0301                	addi	t1,t1,0
     bde:	0900                	addi	s0,sp,144
     be0:	0004                	addi	s1,sp,0
     be2:	0001                	nop
     be4:	01e60403          	lb	s0,30(a2) # b01e <_start-0x5092>
     be8:	04090003          	lb	zero,64(s2)
     bec:	0100                	addi	s0,sp,128
     bee:	0300                	addi	s0,sp,384
     bf0:	8e04                	0x8e04
     bf2:	0302                	slli	t1,t1,0x0
     bf4:	0900                	addi	s0,sp,144
     bf6:	0008                	addi	a0,sp,0
     bf8:	0001                	nop
     bfa:	028e0403          	lb	s0,40(t3)
     bfe:	0306                	slli	t1,t1,0x1
     c00:	097f                	0x97f
     c02:	0004                	addi	s1,sp,0
     c04:	0001                	nop
     c06:	01ef0403          	lb	s0,30(t5)
     c0a:	08090103          	lb	sp,128(s2)
     c0e:	0100                	addi	s0,sp,128
     c10:	0306                	slli	t1,t1,0x1
     c12:	0900                	addi	s0,sp,144
     c14:	000c                	addi	a1,sp,0
     c16:	0001                	nop
     c18:	01e40403          	lb	s0,30(s0)
     c1c:	08090003          	lb	zero,128(s2)
     c20:	0100                	addi	s0,sp,128
     c22:	0300                	addi	s0,sp,384
     c24:	fa04                	sd	s1,48(a2)
     c26:	0301                	addi	t1,t1,0
     c28:	0900                	addi	s0,sp,144
     c2a:	0008                	addi	a0,sp,0
     c2c:	0301                	addi	t1,t1,0
     c2e:	0900                	addi	s0,sp,144
     c30:	0010                	addi	a2,sp,0
     c32:	0001                	nop
     c34:	02830403          	lb	s0,40(t1)
     c38:	10090003          	lb	zero,256(s2)
     c3c:	0100                	addi	s0,sp,128
     c3e:	0300                	addi	s0,sp,384
     c40:	e204                	sd	s1,0(a2)
     c42:	0301                	addi	t1,t1,0
     c44:	0900                	addi	s0,sp,144
     c46:	001c                	addi	a5,sp,0
     c48:	0001                	nop
     c4a:	02900403          	lb	s0,41(zero) # 29 <_start-0x10087>
     c4e:	10090003          	lb	zero,256(s2)
     c52:	0100                	addi	s0,sp,128
     c54:	0300                	addi	s0,sp,384
     c56:	9204                	0x9204
     c58:	0302                	slli	t1,t1,0x0
     c5a:	0900                	addi	s0,sp,144
     c5c:	0004                	addi	s1,sp,0
     c5e:	0001                	nop
     c60:	02940403          	lb	s0,41(s0)
     c64:	04090003          	lb	zero,64(s2)
     c68:	0100                	addi	s0,sp,128
     c6a:	04090003          	lb	zero,64(s2)
     c6e:	0100                	addi	s0,sp,128
     c70:	0300                	addi	s0,sp,384
     c72:	9504                	0x9504
     c74:	0302                	slli	t1,t1,0x0
     c76:	0900                	addi	s0,sp,144
     c78:	0008                	addi	a0,sp,0
     c7a:	0001                	nop
     c7c:	02990403          	lb	s0,41(s2)
     c80:	04090003          	lb	zero,64(s2)
     c84:	0100                	addi	s0,sp,128
     c86:	0300                	addi	s0,sp,384
     c88:	9b04                	0x9b04
     c8a:	0302                	slli	t1,t1,0x0
     c8c:	0900                	addi	s0,sp,144
     c8e:	0014                	addi	a3,sp,0
     c90:	0301                	addi	t1,t1,0
     c92:	0900                	addi	s0,sp,144
     c94:	0008                	addi	a0,sp,0
     c96:	0001                	nop
     c98:	02aa0403          	lb	s0,42(s4)
     c9c:	08090003          	lb	zero,128(s2)
     ca0:	0100                	addi	s0,sp,128
     ca2:	0300                	addi	s0,sp,384
     ca4:	ab04                	fsd	fs1,16(a4)
     ca6:	0302                	slli	t1,t1,0x0
     ca8:	0900                	addi	s0,sp,144
     caa:	0004                	addi	s1,sp,0
     cac:	0301                	addi	t1,t1,0
     cae:	0900                	addi	s0,sp,144
     cb0:	0004                	addi	s1,sp,0
     cb2:	0001                	nop
     cb4:	02910403          	lb	s0,41(sp)
     cb8:	0c090003          	lb	zero,192(s2)
     cbc:	0100                	addi	s0,sp,128
     cbe:	0300                	addi	s0,sp,384
     cc0:	b704                	fsd	fs1,40(a4)
     cc2:	0302                	slli	t1,t1,0x0
     cc4:	0900                	addi	s0,sp,144
     cc6:	0010                	addi	a2,sp,0
     cc8:	0001                	nop
     cca:	02bf0403          	lb	s0,43(t5)
     cce:	08090003          	lb	zero,128(s2)
     cd2:	0100                	addi	s0,sp,128
     cd4:	0300                	addi	s0,sp,384
     cd6:	c904                	sw	s1,16(a0)
     cd8:	0302                	slli	t1,t1,0x0
     cda:	0900                	addi	s0,sp,144
     cdc:	0014                	addi	a3,sp,0
     cde:	0001                	nop
     ce0:	02b80403          	lb	s0,43(a6)
     ce4:	28090003          	lb	zero,640(s2)
     ce8:	0100                	addi	s0,sp,128
     cea:	08090003          	lb	zero,128(s2)
     cee:	0100                	addi	s0,sp,128
     cf0:	0300                	addi	s0,sp,384
     cf2:	ca04                	sw	s1,16(a2)
     cf4:	0302                	slli	t1,t1,0x0
     cf6:	0900                	addi	s0,sp,144
     cf8:	0008                	addi	a0,sp,0
     cfa:	0601                	addi	a2,a2,0
     cfc:	18097f03          	0x18097f03
     d00:	0100                	addi	s0,sp,128
     d02:	0200                	addi	s0,sp,256
     d04:	2504                	fld	fs1,8(a0)
     d06:	10090203          	lb	tp,256(s2)
     d0a:	0100                	addi	s0,sp,128
     d0c:	0200                	addi	s0,sp,256
     d0e:	2f04                	fld	fs1,24(a4)
     d10:	0306                	slli	t1,t1,0x1
     d12:	0900                	addi	s0,sp,144
     d14:	0008                	addi	a0,sp,0
     d16:	0301                	addi	t1,t1,0
     d18:	0900                	addi	s0,sp,144
     d1a:	000c                	addi	a1,sp,0
     d1c:	0001                	nop
     d1e:	0402                	slli	s0,s0,0x0
     d20:	0900033f 00010010 	0x100100900033f
     d28:	0402                	slli	s0,s0,0x0
     d2a:	0340                	addi	s0,sp,388
     d2c:	0900                	addi	s0,sp,144
     d2e:	000c                	addi	a1,sp,0
     d30:	0301                	addi	t1,t1,0
     d32:	0900                	addi	s0,sp,144
     d34:	0004                	addi	s1,sp,0
     d36:	0001                	nop
     d38:	0402                	slli	s0,s0,0x0
     d3a:	034a                	slli	t1,t1,0x12
     d3c:	0900                	addi	s0,sp,144
     d3e:	000c                	addi	a1,sp,0
     d40:	0001                	nop
     d42:	0402                	slli	s0,s0,0x0
     d44:	064a                	slli	a2,a2,0x12
     d46:	10090403          	lb	s0,256(s2)
     d4a:	0100                	addi	s0,sp,128
     d4c:	0200                	addi	s0,sp,256
     d4e:	4a04                	lw	s1,16(a2)
     d50:	08097c03          	0x8097c03
     d54:	0100                	addi	s0,sp,128
     d56:	0200                	addi	s0,sp,256
     d58:	4a04                	lw	s1,16(a2)
     d5a:	10090403          	lb	s0,256(s2)
     d5e:	0100                	addi	s0,sp,128
     d60:	10097a03          	0x10097a03
     d64:	0100                	addi	s0,sp,128
     d66:	1c09                	addi	s8,s8,-30
     d68:	0000                	unimp
     d6a:	0101                	addi	sp,sp,0
     d6c:	0182                	slli	gp,gp,0x0
     d6e:	0000                	unimp
     d70:	0002                	0x2
     d72:	0124                	addi	s1,sp,136
     d74:	0000                	unimp
     d76:	0101                	addi	sp,sp,0
     d78:	000d0efb          	0xd0efb
     d7c:	0101                	addi	sp,sp,0
     d7e:	0101                	addi	sp,sp,0
     d80:	0000                	unimp
     d82:	0100                	addi	s0,sp,128
     d84:	0000                	unimp
     d86:	2f01                	sext.w	t5,t5
     d88:	6f68                	ld	a0,216(a4)
     d8a:	656d                	lui	a0,0x1b
     d8c:	6865682f          	0x6865682f
     d90:	6f61                	lui	t5,0x18
     d92:	776f442f          	0x776f442f
     d96:	6c6e                	ld	s8,216(sp)
     d98:	7364616f          	jal	sp,474ce <__global_pointer$+0x344fe>
     d9c:	6572662f          	0x6572662f
     da0:	6465                	lui	s0,0x19
     da2:	722f6d6f          	jal	s10,f74c4 <__global_pointer$+0xe44f4>
     da6:	656b636f          	jal	t1,b73fc <__global_pointer$+0xa442c>
     daa:	2d74                	fld	fa3,216(a0)
     dac:	70696863          	bltu	s2,t1,14bc <_start-0xebf4>
     db0:	7369722f          	0x7369722f
     db4:	742d7663          	bleu	sp,s10,1500 <_start-0xebb0>
     db8:	736c6f6f          	jal	t5,c74ee <__global_pointer$+0xb451e>
     dbc:	7369722f          	0x7369722f
     dc0:	672d7663          	bleu	s2,s10,142c <_start-0xec84>
     dc4:	756e                	ld	a0,248(sp)
     dc6:	742d                	lui	s0,0xfffeb
     dc8:	636c6f6f          	jal	t5,c73fe <__global_pointer$+0xb442e>
     dcc:	6168                	ld	a0,192(a0)
     dce:	6e69                	lui	t3,0x1a
     dd0:	6975622f          	0x6975622f
     dd4:	646c                	ld	a1,200(s0)
     dd6:	2f2e2e2f          	0x2f2e2e2f
     dda:	6972                	ld	s2,280(sp)
     ddc:	2d766373          	csrrsi	t1,0x2d7,12
     de0:	2f636367          	0x2f636367
     de4:	696c                	ld	a1,208(a0)
     de6:	6762                	ld	a4,24(sp)
     de8:	732f6363          	bltu	t5,s2,150e <_start-0xeba2>
     dec:	2d74666f          	jal	a2,478c2 <__global_pointer$+0x348f2>
     df0:	7066                	0x7066
     df2:	2f00                	fld	fs0,24(a4)
     df4:	6f68                	ld	a0,216(a4)
     df6:	656d                	lui	a0,0x1b
     df8:	6865682f          	0x6865682f
     dfc:	6f61                	lui	t5,0x18
     dfe:	776f442f          	0x776f442f
     e02:	6c6e                	ld	s8,216(sp)
     e04:	7364616f          	jal	sp,4753a <__global_pointer$+0x3456a>
     e08:	6572662f          	0x6572662f
     e0c:	6465                	lui	s0,0x19
     e0e:	722f6d6f          	jal	s10,f7530 <__global_pointer$+0xe4560>
     e12:	656b636f          	jal	t1,b7468 <__global_pointer$+0xa4498>
     e16:	2d74                	fld	fa3,216(a0)
     e18:	70696863          	bltu	s2,t1,1528 <_start-0xeb88>
     e1c:	7369722f          	0x7369722f
     e20:	742d7663          	bleu	sp,s10,156c <_start-0xeb44>
     e24:	736c6f6f          	jal	t5,c755a <__global_pointer$+0xb458a>
     e28:	7369722f          	0x7369722f
     e2c:	672d7663          	bleu	s2,s10,1498 <_start-0xec18>
     e30:	756e                	ld	a0,248(sp)
     e32:	742d                	lui	s0,0xfffeb
     e34:	636c6f6f          	jal	t5,c746a <__global_pointer$+0xb449a>
     e38:	6168                	ld	a0,192(a0)
     e3a:	6e69                	lui	t3,0x1a
     e3c:	6975622f          	0x6975622f
     e40:	646c                	ld	a1,200(s0)
     e42:	2f2e2e2f          	0x2f2e2e2f
     e46:	6972                	ld	s2,280(sp)
     e48:	2d766373          	csrrsi	t1,0x2d7,12
     e4c:	2f636367          	0x2f636367
     e50:	696c                	ld	a1,208(a0)
     e52:	6762                	ld	a4,24(sp)
     e54:	2e2f6363          	bltu	t5,sp,113a <_start-0xef76>
     e58:	2f2e                	fld	ft10,200(sp)
     e5a:	6e69                	lui	t3,0x1a
     e5c:	64756c63          	bltu	a0,t2,14b4 <_start-0xebfc>
     e60:	0065                	c.addi	zero,25
     e62:	6600                	ld	s0,8(a2)
     e64:	6f6c                	ld	a1,216(a4)
     e66:	7461                	lui	s0,0xffff8
     e68:	66646973          	csrrsi	s2,0x666,8
     e6c:	632e                	ld	t1,200(sp)
     e6e:	0100                	addi	s0,sp,128
     e70:	0000                	unimp
     e72:	74666f73          	csrrsi	t5,0x746,12
     e76:	662d                	lui	a2,0xb
     e78:	2e70                	fld	fa2,216(a2)
     e7a:	0068                	addi	a0,sp,12
     e7c:	0001                	nop
     e7e:	6400                	ld	s0,8(s0)
     e80:	6c62756f          	jal	a0,28546 <__global_pointer$+0x15576>
     e84:	2e65                	addiw	t3,t3,25
     e86:	0068                	addi	a0,sp,12
     e88:	0001                	nop
     e8a:	6c00                	ld	s0,24(s0)
     e8c:	6c676e6f          	jal	t3,77552 <__global_pointer$+0x64582>
     e90:	2e676e6f          	jal	t3,77176 <__global_pointer$+0x641a6>
     e94:	0068                	addi	a0,sp,12
     e96:	0002                	0x2
     e98:	0000                	unimp
     e9a:	0900                	addi	s0,sp,144
     e9c:	0c02                	slli	s8,s8,0x0
     e9e:	0111                	addi	sp,sp,4
     ea0:	0000                	unimp
     ea2:	0000                	unimp
     ea4:	0300                	addi	s0,sp,384
     ea6:	0124                	addi	s1,sp,136
     ea8:	10090403          	lb	s0,256(s2)
     eac:	0100                	addi	s0,sp,128
     eae:	0200                	addi	s0,sp,256
     eb0:	0104                	addi	s1,sp,128
     eb2:	0306                	slli	t1,t1,0x1
     eb4:	0900                	addi	s0,sp,144
     eb6:	0004                	addi	s1,sp,0
     eb8:	0001                	nop
     eba:	0402                	slli	s0,s0,0x0
     ebc:	09000303          	lb	t1,144(zero) # 90 <_start-0x10020>
     ec0:	000c                	addi	a1,sp,0
     ec2:	0001                	nop
     ec4:	0402                	slli	s0,s0,0x0
     ec6:	0309                	addi	t1,t1,2
     ec8:	0900                	addi	s0,sp,144
     eca:	0004                	addi	s1,sp,0
     ecc:	0601                	addi	a2,a2,0
     ece:	24090103          	lb	sp,576(s2)
     ed2:	0100                	addi	s0,sp,128
     ed4:	0c090303          	lb	t1,192(s2)
     ed8:	0100                	addi	s0,sp,128
     eda:	08097d03          	0x8097d03
     ede:	0100                	addi	s0,sp,128
     ee0:	10090303          	lb	t1,256(s2)
     ee4:	0100                	addi	s0,sp,128
     ee6:	10097c03          	0x10097c03
     eea:	0100                	addi	s0,sp,128
     eec:	1009                	c.addi	zero,-30
     eee:	0000                	unimp
     ef0:	0101                	addi	sp,sp,0
     ef2:	000001c7          	fmsub.s	ft3,ft0,ft0,ft0,rne
     ef6:	0002                	0x2
     ef8:	0132                	slli	sp,sp,0xc
     efa:	0000                	unimp
     efc:	0101                	addi	sp,sp,0
     efe:	000d0efb          	0xd0efb
     f02:	0101                	addi	sp,sp,0
     f04:	0101                	addi	sp,sp,0
     f06:	0000                	unimp
     f08:	0100                	addi	s0,sp,128
     f0a:	0000                	unimp
     f0c:	2f01                	sext.w	t5,t5
     f0e:	6f68                	ld	a0,216(a4)
     f10:	656d                	lui	a0,0x1b
     f12:	6865682f          	0x6865682f
     f16:	6f61                	lui	t5,0x18
     f18:	776f442f          	0x776f442f
     f1c:	6c6e                	ld	s8,216(sp)
     f1e:	7364616f          	jal	sp,47654 <__global_pointer$+0x34684>
     f22:	6572662f          	0x6572662f
     f26:	6465                	lui	s0,0x19
     f28:	722f6d6f          	jal	s10,f764a <__global_pointer$+0xe467a>
     f2c:	656b636f          	jal	t1,b7582 <__global_pointer$+0xa45b2>
     f30:	2d74                	fld	fa3,216(a0)
     f32:	70696863          	bltu	s2,t1,1642 <_start-0xea6e>
     f36:	7369722f          	0x7369722f
     f3a:	742d7663          	bleu	sp,s10,1686 <_start-0xea2a>
     f3e:	736c6f6f          	jal	t5,c7674 <__global_pointer$+0xb46a4>
     f42:	7369722f          	0x7369722f
     f46:	672d7663          	bleu	s2,s10,15b2 <_start-0xeafe>
     f4a:	756e                	ld	a0,248(sp)
     f4c:	742d                	lui	s0,0xfffeb
     f4e:	636c6f6f          	jal	t5,c7584 <__global_pointer$+0xb45b4>
     f52:	6168                	ld	a0,192(a0)
     f54:	6e69                	lui	t3,0x1a
     f56:	6975622f          	0x6975622f
     f5a:	646c                	ld	a1,200(s0)
     f5c:	2f2e2e2f          	0x2f2e2e2f
     f60:	6972                	ld	s2,280(sp)
     f62:	2d766373          	csrrsi	t1,0x2d7,12
     f66:	2f636367          	0x2f636367
     f6a:	696c                	ld	a1,208(a0)
     f6c:	6762                	ld	a4,24(sp)
     f6e:	732f6363          	bltu	t5,s2,1694 <_start-0xea1c>
     f72:	2d74666f          	jal	a2,47a48 <__global_pointer$+0x34a78>
     f76:	7066                	0x7066
     f78:	2f00                	fld	fs0,24(a4)
     f7a:	6f68                	ld	a0,216(a4)
     f7c:	656d                	lui	a0,0x1b
     f7e:	6865682f          	0x6865682f
     f82:	6f61                	lui	t5,0x18
     f84:	776f442f          	0x776f442f
     f88:	6c6e                	ld	s8,216(sp)
     f8a:	7364616f          	jal	sp,476c0 <__global_pointer$+0x346f0>
     f8e:	6572662f          	0x6572662f
     f92:	6465                	lui	s0,0x19
     f94:	722f6d6f          	jal	s10,f76b6 <__global_pointer$+0xe46e6>
     f98:	656b636f          	jal	t1,b75ee <__global_pointer$+0xa461e>
     f9c:	2d74                	fld	fa3,216(a0)
     f9e:	70696863          	bltu	s2,t1,16ae <_start-0xea02>
     fa2:	7369722f          	0x7369722f
     fa6:	742d7663          	bleu	sp,s10,16f2 <_start-0xe9be>
     faa:	736c6f6f          	jal	t5,c76e0 <__global_pointer$+0xb4710>
     fae:	7369722f          	0x7369722f
     fb2:	672d7663          	bleu	s2,s10,161e <_start-0xea92>
     fb6:	756e                	ld	a0,248(sp)
     fb8:	742d                	lui	s0,0xfffeb
     fba:	636c6f6f          	jal	t5,c75f0 <__global_pointer$+0xb4620>
     fbe:	6168                	ld	a0,192(a0)
     fc0:	6e69                	lui	t3,0x1a
     fc2:	6975622f          	0x6975622f
     fc6:	646c                	ld	a1,200(s0)
     fc8:	2f2e2e2f          	0x2f2e2e2f
     fcc:	6972                	ld	s2,280(sp)
     fce:	2d766373          	csrrsi	t1,0x2d7,12
     fd2:	2f636367          	0x2f636367
     fd6:	696c                	ld	a1,208(a0)
     fd8:	6762                	ld	a4,24(sp)
     fda:	2e2f6363          	bltu	t5,sp,12c0 <_start-0xedf0>
     fde:	2f2e                	fld	ft10,200(sp)
     fe0:	6e69                	lui	t3,0x1a
     fe2:	64756c63          	bltu	a0,t2,163a <_start-0xea76>
     fe6:	0065                	c.addi	zero,25
     fe8:	6500                	ld	s0,8(a0)
     fea:	7478                	ld	a4,232(s0)
     fec:	6e65                	lui	t3,0x19
     fee:	7364                	ld	s1,224(a4)
     ff0:	6466                	ld	s0,88(sp)
     ff2:	3266                	fld	ft4,120(sp)
     ff4:	632e                	ld	t1,200(sp)
     ff6:	0100                	addi	s0,sp,128
     ff8:	0000                	unimp
     ffa:	74666f73          	csrrsi	t5,0x746,12
     ffe:	662d                	lui	a2,0xb
    1000:	2e70                	fld	fa2,216(a2)
    1002:	0068                	addi	a0,sp,12
    1004:	0001                	nop
    1006:	7300                	ld	s0,32(a4)
    1008:	6e69                	lui	t3,0x1a
    100a:	2e656c67          	0x2e656c67
    100e:	0068                	addi	a0,sp,12
    1010:	0001                	nop
    1012:	6400                	ld	s0,8(s0)
    1014:	6c62756f          	jal	a0,286da <__global_pointer$+0x1570a>
    1018:	2e65                	addiw	t3,t3,25
    101a:	0068                	addi	a0,sp,12
    101c:	0001                	nop
    101e:	6c00                	ld	s0,24(s0)
    1020:	6c676e6f          	jal	t3,776e6 <__global_pointer$+0x64716>
    1024:	2e676e6f          	jal	t3,7730a <__global_pointer$+0x6433a>
    1028:	0068                	addi	a0,sp,12
    102a:	0002                	0x2
    102c:	0000                	unimp
    102e:	0900                	addi	s0,sp,144
    1030:	9c02                	jalr	s8
    1032:	0111                	addi	sp,sp,4
    1034:	0000                	unimp
    1036:	0000                	unimp
    1038:	0300                	addi	s0,sp,384
    103a:	0125                	addi	sp,sp,9
    103c:	0c090703          	lb	a4,192(s2)
    1040:	0100                	addi	s0,sp,128
    1042:	10090403          	lb	s0,256(s2)
    1046:	0100                	addi	s0,sp,128
    1048:	04097503          	0x4097503
    104c:	0100                	addi	s0,sp,128
    104e:	04090703          	lb	a4,64(s2)
    1052:	0100                	addi	s0,sp,128
    1054:	08097903          	0x8097903
    1058:	0100                	addi	s0,sp,128
    105a:	04090b03          	lb	s6,64(s2)
    105e:	0100                	addi	s0,sp,128
    1060:	08097c03          	0x8097c03
    1064:	0100                	addi	s0,sp,128
    1066:	08090403          	lb	s0,128(s2)
    106a:	0100                	addi	s0,sp,128
    106c:	0200                	addi	s0,sp,256
    106e:	0104                	addi	s1,sp,128
    1070:	0306                	slli	t1,t1,0x1
    1072:	0900                	addi	s0,sp,144
    1074:	0004                	addi	s1,sp,0
    1076:	0601                	addi	a2,a2,0
    1078:	08090203          	lb	tp,128(s2)
    107c:	0100                	addi	s0,sp,128
    107e:	1c090403          	lb	s0,448(s2)
    1082:	0100                	addi	s0,sp,128
    1084:	0200                	addi	s0,sp,256
    1086:	0204                	addi	s1,sp,256
    1088:	18097a03          	0x18097a03
    108c:	0100                	addi	s0,sp,128
    108e:	0200                	addi	s0,sp,256
    1090:	0904                	addi	s1,sp,144
    1092:	0306                	slli	t1,t1,0x1
    1094:	0900                	addi	s0,sp,144
    1096:	0004                	addi	s1,sp,0
    1098:	0001                	nop
    109a:	0402                	slli	s0,s0,0x0
    109c:	030d                	addi	t1,t1,3
    109e:	0900                	addi	s0,sp,144
    10a0:	0008                	addi	a0,sp,0
    10a2:	0001                	nop
    10a4:	0402                	slli	s0,s0,0x0
    10a6:	0306                	slli	t1,t1,0x1
    10a8:	0900                	addi	s0,sp,144
    10aa:	001c                	addi	a5,sp,0
    10ac:	0001                	nop
    10ae:	0402                	slli	s0,s0,0x0
    10b0:	0320                	addi	s0,sp,392
    10b2:	0900                	addi	s0,sp,144
    10b4:	0008                	addi	a0,sp,0
    10b6:	0901                	addi	s2,s2,0
    10b8:	0010                	addi	a2,sp,0
    10ba:	0100                	addi	s0,sp,128
    10bc:	4201                	li	tp,0
    10be:	0002                	0x2
    10c0:	0200                	addi	s0,sp,256
    10c2:	3100                	fld	fs0,32(a0)
    10c4:	0001                	nop
    10c6:	0100                	addi	s0,sp,128
    10c8:	fb01                	bnez	a4,fd8 <_start-0xf0d8>
    10ca:	0d0e                	slli	s10,s10,0x3
    10cc:	0100                	addi	s0,sp,128
    10ce:	0101                	addi	sp,sp,0
    10d0:	0001                	nop
    10d2:	0000                	unimp
    10d4:	0001                	nop
    10d6:	0100                	addi	s0,sp,128
    10d8:	6d6f682f          	0x6d6f682f
    10dc:	2f65                	addiw	t5,t5,25
    10de:	6568                	ld	a0,200(a0)
    10e0:	6168                	ld	a0,192(a0)
    10e2:	6f442f6f          	jal	t5,437d6 <__global_pointer$+0x30806>
    10e6:	6f6c6e77          	0x6f6c6e77
    10ea:	6461                	lui	s0,0x18
    10ec:	72662f73          	csrrs	t5,0x726,a2
    10f0:	6565                	lui	a0,0x19
    10f2:	6f64                	ld	s1,216(a4)
    10f4:	2f6d                	addiw	t5,t5,27
    10f6:	6f72                	ld	t5,280(sp)
    10f8:	74656b63          	bltu	a0,t1,184e <_start-0xe862>
    10fc:	632d                	lui	t1,0xb
    10fe:	6968                	ld	a0,208(a0)
    1100:	2f70                	fld	fa2,216(a4)
    1102:	6972                	ld	s2,280(sp)
    1104:	2d766373          	csrrsi	t1,0x2d7,12
    1108:	6f74                	ld	a3,216(a4)
    110a:	2f736c6f          	jal	s8,37c00 <__global_pointer$+0x24c30>
    110e:	6972                	ld	s2,280(sp)
    1110:	2d766373          	csrrsi	t1,0x2d7,12
    1114:	2d756e67          	0x2d756e67
    1118:	6f74                	ld	a3,216(a4)
    111a:	68636c6f          	jal	s8,377a0 <__global_pointer$+0x247d0>
    111e:	6961                	lui	s2,0x18
    1120:	2f6e                	fld	ft10,216(sp)
    1122:	7562                	ld	a0,56(sp)
    1124:	6c69                	lui	s8,0x1a
    1126:	2f64                	fld	fs1,216(a4)
    1128:	2e2e                	fld	ft8,200(sp)
    112a:	7369722f          	0x7369722f
    112e:	672d7663          	bleu	s2,s10,179a <_start-0xe916>
    1132:	6c2f6363          	bltu	t5,sp,17f8 <_start-0xe8b8>
    1136:	6269                	lui	tp,0x1a
    1138:	2f636367          	0x2f636367
    113c:	74666f73          	csrrsi	t5,0x746,12
    1140:	662d                	lui	a2,0xb
    1142:	0070                	addi	a2,sp,12
    1144:	6d6f682f          	0x6d6f682f
    1148:	2f65                	addiw	t5,t5,25
    114a:	6568                	ld	a0,200(a0)
    114c:	6168                	ld	a0,192(a0)
    114e:	6f442f6f          	jal	t5,43842 <__global_pointer$+0x30872>
    1152:	6f6c6e77          	0x6f6c6e77
    1156:	6461                	lui	s0,0x18
    1158:	72662f73          	csrrs	t5,0x726,a2
    115c:	6565                	lui	a0,0x19
    115e:	6f64                	ld	s1,216(a4)
    1160:	2f6d                	addiw	t5,t5,27
    1162:	6f72                	ld	t5,280(sp)
    1164:	74656b63          	bltu	a0,t1,18ba <_start-0xe7f6>
    1168:	632d                	lui	t1,0xb
    116a:	6968                	ld	a0,208(a0)
    116c:	2f70                	fld	fa2,216(a4)
    116e:	6972                	ld	s2,280(sp)
    1170:	2d766373          	csrrsi	t1,0x2d7,12
    1174:	6f74                	ld	a3,216(a4)
    1176:	2f736c6f          	jal	s8,37c6c <__global_pointer$+0x24c9c>
    117a:	6972                	ld	s2,280(sp)
    117c:	2d766373          	csrrsi	t1,0x2d7,12
    1180:	2d756e67          	0x2d756e67
    1184:	6f74                	ld	a3,216(a4)
    1186:	68636c6f          	jal	s8,3780c <__global_pointer$+0x2483c>
    118a:	6961                	lui	s2,0x18
    118c:	2f6e                	fld	ft10,216(sp)
    118e:	7562                	ld	a0,56(sp)
    1190:	6c69                	lui	s8,0x1a
    1192:	2f64                	fld	fs1,216(a4)
    1194:	2e2e                	fld	ft8,200(sp)
    1196:	7369722f          	0x7369722f
    119a:	672d7663          	bleu	s2,s10,1806 <_start-0xe8aa>
    119e:	6c2f6363          	bltu	t5,sp,1864 <_start-0xe84c>
    11a2:	6269                	lui	tp,0x1a
    11a4:	2f636367          	0x2f636367
    11a8:	2e2e                	fld	ft8,200(sp)
    11aa:	636e692f          	0x636e692f
    11ae:	756c                	ld	a1,232(a0)
    11b0:	6564                	ld	s1,200(a0)
    11b2:	0000                	unimp
    11b4:	7274                	ld	a3,224(a2)
    11b6:	6e75                	lui	t3,0x1d
    11b8:	73666463          	bltu	a2,s6,18e0 <_start-0xe7d0>
    11bc:	3266                	fld	ft4,120(sp)
    11be:	632e                	ld	t1,200(sp)
    11c0:	0100                	addi	s0,sp,128
    11c2:	0000                	unimp
    11c4:	74666f73          	csrrsi	t5,0x746,12
    11c8:	662d                	lui	a2,0xb
    11ca:	2e70                	fld	fa2,216(a2)
    11cc:	0068                	addi	a0,sp,12
    11ce:	0001                	nop
    11d0:	7300                	ld	s0,32(a4)
    11d2:	6e69                	lui	t3,0x1a
    11d4:	2e656c67          	0x2e656c67
    11d8:	0068                	addi	a0,sp,12
    11da:	0001                	nop
    11dc:	6400                	ld	s0,8(s0)
    11de:	6c62756f          	jal	a0,288a4 <__global_pointer$+0x158d4>
    11e2:	2e65                	addiw	t3,t3,25
    11e4:	0068                	addi	a0,sp,12
    11e6:	0001                	nop
    11e8:	6c00                	ld	s0,24(s0)
    11ea:	6c676e6f          	jal	t3,778b0 <__global_pointer$+0x648e0>
    11ee:	2e676e6f          	jal	t3,774d4 <__global_pointer$+0x64504>
    11f2:	0068                	addi	a0,sp,12
    11f4:	0002                	0x2
    11f6:	0000                	unimp
    11f8:	0900                	addi	s0,sp,144
    11fa:	6002                	0x6002
    11fc:	0112                	slli	sp,sp,0x4
    11fe:	0000                	unimp
    1200:	0000                	unimp
    1202:	0300                	addi	s0,sp,384
    1204:	0124                	addi	s1,sp,136
    1206:	00090703          	lb	a4,0(s2) # 18000 <__global_pointer$+0x5030>
    120a:	0100                	addi	s0,sp,128
    120c:	10090403          	lb	s0,256(s2)
    1210:	0100                	addi	s0,sp,128
    1212:	04097c03          	0x4097c03
    1216:	0100                	addi	s0,sp,128
    1218:	04090403          	lb	s0,64(s2)
    121c:	0100                	addi	s0,sp,128
    121e:	08097c03          	0x8097c03
    1222:	0100                	addi	s0,sp,128
    1224:	08090403          	lb	s0,128(s2)
    1228:	0100                	addi	s0,sp,128
    122a:	0200                	addi	s0,sp,256
    122c:	0104                	addi	s1,sp,128
    122e:	0306                	slli	t1,t1,0x1
    1230:	0900                	addi	s0,sp,144
    1232:	0004                	addi	s1,sp,0
    1234:	0001                	nop
    1236:	0402                	slli	s0,s0,0x0
    1238:	0304                	addi	s1,sp,384
    123a:	0900                	addi	s0,sp,144
    123c:	000c                	addi	a1,sp,0
    123e:	0001                	nop
    1240:	0402                	slli	s0,s0,0x0
    1242:	0311                	addi	t1,t1,4
    1244:	0900                	addi	s0,sp,144
    1246:	0004                	addi	s1,sp,0
    1248:	0001                	nop
    124a:	0402                	slli	s0,s0,0x0
    124c:	0314                	addi	a3,sp,384
    124e:	0900                	addi	s0,sp,144
    1250:	0008                	addi	a0,sp,0
    1252:	0601                	addi	a2,a2,0
    1254:	2c090203          	lb	tp,704(s2)
    1258:	0100                	addi	s0,sp,128
    125a:	0200                	addi	s0,sp,256
    125c:	1204                	addi	s1,sp,288
    125e:	0c097e03          	0xc097e03
    1262:	0100                	addi	s0,sp,128
    1264:	0200                	addi	s0,sp,256
    1266:	3004                	fld	fs1,32(s0)
    1268:	0306                	slli	t1,t1,0x1
    126a:	0900                	addi	s0,sp,144
    126c:	000c                	addi	a1,sp,0
    126e:	0001                	nop
    1270:	0402                	slli	s0,s0,0x0
    1272:	0302                	slli	t1,t1,0x0
    1274:	0900                	addi	s0,sp,144
    1276:	0008                	addi	a0,sp,0
    1278:	0001                	nop
    127a:	0402                	slli	s0,s0,0x0
    127c:	09000323          	sb	a6,134(zero) # 86 <_start-0x1002a>
    1280:	0004                	addi	s1,sp,0
    1282:	0001                	nop
    1284:	0402                	slli	s0,s0,0x0
    1286:	0320                	addi	s0,sp,392
    1288:	0900                	addi	s0,sp,144
    128a:	000c                	addi	a1,sp,0
    128c:	0001                	nop
    128e:	0402                	slli	s0,s0,0x0
    1290:	0330                	addi	a2,sp,392
    1292:	0900                	addi	s0,sp,144
    1294:	0004                	addi	s1,sp,0
    1296:	0001                	nop
    1298:	0402                	slli	s0,s0,0x0
    129a:	0625                	addi	a2,a2,9
    129c:	18090203          	lb	tp,384(s2)
    12a0:	0100                	addi	s0,sp,128
    12a2:	0200                	addi	s0,sp,256
    12a4:	2f04                	fld	fs1,24(a4)
    12a6:	0306                	slli	t1,t1,0x1
    12a8:	0900                	addi	s0,sp,144
    12aa:	0008                	addi	a0,sp,0
    12ac:	0301                	addi	t1,t1,0
    12ae:	0900                	addi	s0,sp,144
    12b0:	000c                	addi	a1,sp,0
    12b2:	0001                	nop
    12b4:	0402                	slli	s0,s0,0x0
    12b6:	0900033f 0001000c 	0x1000c0900033f
    12be:	0402                	slli	s0,s0,0x0
    12c0:	0340                	addi	s0,sp,388
    12c2:	0900                	addi	s0,sp,144
    12c4:	000c                	addi	a1,sp,0
    12c6:	0301                	addi	t1,t1,0
    12c8:	0900                	addi	s0,sp,144
    12ca:	0004                	addi	s1,sp,0
    12cc:	0001                	nop
    12ce:	0402                	slli	s0,s0,0x0
    12d0:	034a                	slli	t1,t1,0x12
    12d2:	0900                	addi	s0,sp,144
    12d4:	0008                	addi	a0,sp,0
    12d6:	0001                	nop
    12d8:	0402                	slli	s0,s0,0x0
    12da:	064a                	slli	a2,a2,0x12
    12dc:	34090403          	lb	s0,832(s2)
    12e0:	0100                	addi	s0,sp,128
    12e2:	08097a03          	0x8097a03
    12e6:	0100                	addi	s0,sp,128
    12e8:	0200                	addi	s0,sp,256
    12ea:	1d04                	addi	s1,sp,688
    12ec:	08090203          	lb	tp,128(s2)
    12f0:	0100                	addi	s0,sp,128
    12f2:	0200                	addi	s0,sp,256
    12f4:	2404                	fld	fs1,8(s0)
    12f6:	0306                	slli	t1,t1,0x1
    12f8:	0900                	addi	s0,sp,144
    12fa:	000c                	addi	a1,sp,0
    12fc:	0901                	addi	s2,s2,0
    12fe:	0010                	addi	a2,sp,0
    1300:	0100                	addi	s0,sp,128
    1302:	da01                	beqz	a2,1212 <_start-0xee9e>
    1304:	0000                	unimp
    1306:	0200                	addi	s0,sp,256
    1308:	9000                	0x9000
    130a:	0000                	unimp
    130c:	0100                	addi	s0,sp,128
    130e:	fb01                	bnez	a4,121e <_start-0xee92>
    1310:	0d0e                	slli	s10,s10,0x3
    1312:	0100                	addi	s0,sp,128
    1314:	0101                	addi	sp,sp,0
    1316:	0001                	nop
    1318:	0000                	unimp
    131a:	0001                	nop
    131c:	0100                	addi	s0,sp,128
    131e:	6d6f682f          	0x6d6f682f
    1322:	2f65                	addiw	t5,t5,25
    1324:	6568                	ld	a0,200(a0)
    1326:	6168                	ld	a0,192(a0)
    1328:	6f442f6f          	jal	t5,43a1c <__global_pointer$+0x30a4c>
    132c:	6f6c6e77          	0x6f6c6e77
    1330:	6461                	lui	s0,0x18
    1332:	72662f73          	csrrs	t5,0x726,a2
    1336:	6565                	lui	a0,0x19
    1338:	6f64                	ld	s1,216(a4)
    133a:	2f6d                	addiw	t5,t5,27
    133c:	6f72                	ld	t5,280(sp)
    133e:	74656b63          	bltu	a0,t1,1a94 <_start-0xe61c>
    1342:	632d                	lui	t1,0xb
    1344:	6968                	ld	a0,208(a0)
    1346:	2f70                	fld	fa2,216(a4)
    1348:	6972                	ld	s2,280(sp)
    134a:	2d766373          	csrrsi	t1,0x2d7,12
    134e:	6f74                	ld	a3,216(a4)
    1350:	2f736c6f          	jal	s8,37e46 <__global_pointer$+0x24e76>
    1354:	6972                	ld	s2,280(sp)
    1356:	2d766373          	csrrsi	t1,0x2d7,12
    135a:	2d756e67          	0x2d756e67
    135e:	6f74                	ld	a3,216(a4)
    1360:	68636c6f          	jal	s8,379e6 <__global_pointer$+0x24a16>
    1364:	6961                	lui	s2,0x18
    1366:	2f6e                	fld	ft10,216(sp)
    1368:	7562                	ld	a0,56(sp)
    136a:	6c69                	lui	s8,0x1a
    136c:	2f64                	fld	fs1,216(a4)
    136e:	2e2e                	fld	ft8,200(sp)
    1370:	7369722f          	0x7369722f
    1374:	672d7663          	bleu	s2,s10,19e0 <_start-0xe6d0>
    1378:	6c2f6363          	bltu	t5,sp,1a3e <_start-0xe672>
    137c:	6269                	lui	tp,0x1a
    137e:	2f636367          	0x2f636367
    1382:	666e6f63          	bltu	t3,t1,1a00 <_start-0xe6b0>
    1386:	6769                	lui	a4,0x1a
    1388:	7369722f          	0x7369722f
    138c:	00007663          	bleu	zero,zero,1398 <_start-0xed18>
    1390:	756d                	lui	a0,0xffffb
    1392:	646c                	ld	a1,200(s0)
    1394:	3369                	addiw	t1,t1,-6
    1396:	532e                	lw	t1,232(sp)
    1398:	0100                	addi	s0,sp,128
    139a:	0000                	unimp
    139c:	0000                	unimp
    139e:	0209                	addi	tp,tp,2
    13a0:	13b8                	addi	a4,sp,488
    13a2:	0001                	nop
    13a4:	0000                	unimp
    13a6:	0000                	unimp
    13a8:	03012303          	lw	t1,48(sp)
    13ac:	0901                	addi	s2,s2,0
    13ae:	0004                	addi	s1,sp,0
    13b0:	0301                	addi	t1,t1,0
    13b2:	0902                	slli	s2,s2,0x0
    13b4:	0004                	addi	s1,sp,0
    13b6:	0301                	addi	t1,t1,0
    13b8:	0901                	addi	s2,s2,0
    13ba:	0004                	addi	s1,sp,0
    13bc:	0301                	addi	t1,t1,0
    13be:	0901                	addi	s2,s2,0
    13c0:	0004                	addi	s1,sp,0
    13c2:	0301                	addi	t1,t1,0
    13c4:	0902                	slli	s2,s2,0x0
    13c6:	0004                	addi	s1,sp,0
    13c8:	0301                	addi	t1,t1,0
    13ca:	0901                	addi	s2,s2,0
    13cc:	0004                	addi	s1,sp,0
    13ce:	0301                	addi	t1,t1,0
    13d0:	0901                	addi	s2,s2,0
    13d2:	0004                	addi	s1,sp,0
    13d4:	0301                	addi	t1,t1,0
    13d6:	0901                	addi	s2,s2,0
    13d8:	0004                	addi	s1,sp,0
    13da:	0901                	addi	s2,s2,0
    13dc:	0004                	addi	s1,sp,0
    13de:	0100                	addi	s0,sp,128
    13e0:	3401                	addiw	s0,s0,-32
    13e2:	02000003          	lb	zero,32(zero) # 20 <_start-0x10090>
    13e6:	e900                	sd	s0,16(a0)
    13e8:	0002                	0x2
    13ea:	0100                	addi	s0,sp,128
    13ec:	fb01                	bnez	a4,12fc <_start-0xedb4>
    13ee:	0d0e                	slli	s10,s10,0x3
    13f0:	0100                	addi	s0,sp,128
    13f2:	0101                	addi	sp,sp,0
    13f4:	0001                	nop
    13f6:	0000                	unimp
    13f8:	0001                	nop
    13fa:	0100                	addi	s0,sp,128
    13fc:	6d6f682f          	0x6d6f682f
    1400:	2f65                	addiw	t5,t5,25
    1402:	6568                	ld	a0,200(a0)
    1404:	6168                	ld	a0,192(a0)
    1406:	6f442f6f          	jal	t5,43afa <__global_pointer$+0x30b2a>
    140a:	6f6c6e77          	0x6f6c6e77
    140e:	6461                	lui	s0,0x18
    1410:	72662f73          	csrrs	t5,0x726,a2
    1414:	6565                	lui	a0,0x19
    1416:	6f64                	ld	s1,216(a4)
    1418:	2f6d                	addiw	t5,t5,27
    141a:	6f72                	ld	t5,280(sp)
    141c:	74656b63          	bltu	a0,t1,1b72 <_start-0xe53e>
    1420:	632d                	lui	t1,0xb
    1422:	6968                	ld	a0,208(a0)
    1424:	2f70                	fld	fa2,216(a4)
    1426:	6972                	ld	s2,280(sp)
    1428:	2d766373          	csrrsi	t1,0x2d7,12
    142c:	6f74                	ld	a3,216(a4)
    142e:	2f736c6f          	jal	s8,37f24 <__global_pointer$+0x24f54>
    1432:	6972                	ld	s2,280(sp)
    1434:	2d766373          	csrrsi	t1,0x2d7,12
    1438:	2d756e67          	0x2d756e67
    143c:	6f74                	ld	a3,216(a4)
    143e:	68636c6f          	jal	s8,37ac4 <__global_pointer$+0x24af4>
    1442:	6961                	lui	s2,0x18
    1444:	2f6e                	fld	ft10,216(sp)
    1446:	7562                	ld	a0,56(sp)
    1448:	6c69                	lui	s8,0x1a
    144a:	2f64                	fld	fs1,216(a4)
    144c:	2e2e                	fld	ft8,200(sp)
    144e:	7369722f          	0x7369722f
    1452:	672d7663          	bleu	s2,s10,1abe <_start-0xe5f2>
    1456:	6c2f6363          	bltu	t5,sp,1b1c <_start-0xe594>
    145a:	6269                	lui	tp,0x1a
    145c:	00636367          	0x636367
    1460:	6d6f682f          	0x6d6f682f
    1464:	2f65                	addiw	t5,t5,25
    1466:	6568                	ld	a0,200(a0)
    1468:	6168                	ld	a0,192(a0)
    146a:	69722f6f          	jal	t5,24300 <__global_pointer$+0x11330>
    146e:	36766373          	csrrsi	t1,0x367,12
    1472:	6934                	ld	a3,80(a0)
    1474:	7369722f          	0x7369722f
    1478:	34367663          	bleu	gp,a2,17c4 <_start-0xe8ec>
    147c:	752d                	lui	a0,0xfffeb
    147e:	6b6e                	ld	s6,216(sp)
    1480:	6f6e                	ld	t5,216(sp)
    1482:	652d6e77          	0x652d6e77
    1486:	666c                	ld	a1,200(a2)
    1488:	636e692f          	0x636e692f
    148c:	756c                	ld	a1,232(a0)
    148e:	6564                	ld	s1,200(a0)
    1490:	7379732f          	0x7379732f
    1494:	2f00                	fld	fs0,24(a4)
    1496:	6f68                	ld	a0,216(a4)
    1498:	656d                	lui	a0,0x1b
    149a:	6865682f          	0x6865682f
    149e:	6f61                	lui	t5,0x18
    14a0:	776f442f          	0x776f442f
    14a4:	6c6e                	ld	s8,216(sp)
    14a6:	7364616f          	jal	sp,47bdc <__global_pointer$+0x34c0c>
    14aa:	6572662f          	0x6572662f
    14ae:	6465                	lui	s0,0x19
    14b0:	722f6d6f          	jal	s10,f7bd2 <__global_pointer$+0xe4c02>
    14b4:	656b636f          	jal	t1,b7b0a <__global_pointer$+0xa4b3a>
    14b8:	2d74                	fld	fa3,216(a0)
    14ba:	70696863          	bltu	s2,t1,1bca <_start-0xe4e6>
    14be:	7369722f          	0x7369722f
    14c2:	742d7663          	bleu	sp,s10,1c0e <_start-0xe4a2>
    14c6:	736c6f6f          	jal	t5,c7bfc <__global_pointer$+0xb4c2c>
    14ca:	7369722f          	0x7369722f
    14ce:	672d7663          	bleu	s2,s10,1b3a <_start-0xe576>
    14d2:	756e                	ld	a0,248(sp)
    14d4:	742d                	lui	s0,0xfffeb
    14d6:	636c6f6f          	jal	t5,c7b0c <__global_pointer$+0xb4b3c>
    14da:	6168                	ld	a0,192(a0)
    14dc:	6e69                	lui	t3,0x1a
    14de:	6975622f          	0x6975622f
    14e2:	646c                	ld	a1,200(s0)
    14e4:	6975622f          	0x6975622f
    14e8:	646c                	ld	a1,200(s0)
    14ea:	672d                	lui	a4,0xb
    14ec:	6e2d6363          	bltu	s10,sp,1bd2 <_start-0xe4de>
    14f0:	7765                	lui	a4,0xffff9
    14f2:	696c                	ld	a1,208(a0)
    14f4:	2d62                	fld	fs10,24(sp)
    14f6:	67617473          	csrrci	s0,0x676,2
    14fa:	3265                	addiw	tp,tp,-7
    14fc:	6363672f          	0x6363672f
    1500:	636e692f          	0x636e692f
    1504:	756c                	ld	a1,232(a0)
    1506:	6564                	ld	s1,200(a0)
    1508:	2f00                	fld	fs0,24(a4)
    150a:	6f68                	ld	a0,216(a4)
    150c:	656d                	lui	a0,0x1b
    150e:	6865682f          	0x6865682f
    1512:	6f61                	lui	t5,0x18
    1514:	7369722f          	0x7369722f
    1518:	34367663          	bleu	gp,a2,1864 <_start-0xe84c>
    151c:	2f69                	addiw	t5,t5,26
    151e:	6972                	ld	s2,280(sp)
    1520:	36766373          	csrrsi	t1,0x367,12
    1524:	2d34                	fld	fa3,88(a0)
    1526:	6e75                	lui	t3,0x1d
    1528:	776f6e6b          	0x776f6e6b
    152c:	2d6e                	fld	fs10,216(sp)
    152e:	6c65                	lui	s8,0x19
    1530:	2f66                	fld	ft10,88(sp)
    1532:	6e69                	lui	t3,0x1a
    1534:	64756c63          	bltu	a0,t2,1b8c <_start-0xe524>
    1538:	0065                	c.addi	zero,25
    153a:	6d6f682f          	0x6d6f682f
    153e:	2f65                	addiw	t5,t5,25
    1540:	6568                	ld	a0,200(a0)
    1542:	6168                	ld	a0,192(a0)
    1544:	6f442f6f          	jal	t5,43c38 <__global_pointer$+0x30c68>
    1548:	6f6c6e77          	0x6f6c6e77
    154c:	6461                	lui	s0,0x18
    154e:	72662f73          	csrrs	t5,0x726,a2
    1552:	6565                	lui	a0,0x19
    1554:	6f64                	ld	s1,216(a4)
    1556:	2f6d                	addiw	t5,t5,27
    1558:	6f72                	ld	t5,280(sp)
    155a:	74656b63          	bltu	a0,t1,1cb0 <_start-0xe400>
    155e:	632d                	lui	t1,0xb
    1560:	6968                	ld	a0,208(a0)
    1562:	2f70                	fld	fa2,216(a4)
    1564:	6972                	ld	s2,280(sp)
    1566:	2d766373          	csrrsi	t1,0x2d7,12
    156a:	6f74                	ld	a3,216(a4)
    156c:	2f736c6f          	jal	s8,38062 <__global_pointer$+0x25092>
    1570:	6972                	ld	s2,280(sp)
    1572:	2d766373          	csrrsi	t1,0x2d7,12
    1576:	2d756e67          	0x2d756e67
    157a:	6f74                	ld	a3,216(a4)
    157c:	68636c6f          	jal	s8,37c02 <__global_pointer$+0x24c32>
    1580:	6961                	lui	s2,0x18
    1582:	2f6e                	fld	ft10,216(sp)
    1584:	7562                	ld	a0,56(sp)
    1586:	6c69                	lui	s8,0x1a
    1588:	2f64                	fld	fs1,216(a4)
    158a:	2e2e                	fld	ft8,200(sp)
    158c:	7369722f          	0x7369722f
    1590:	672d7663          	bleu	s2,s10,1bfc <_start-0xe4b4>
    1594:	6c2f6363          	bltu	t5,sp,1c5a <_start-0xe456>
    1598:	6269                	lui	tp,0x1a
    159a:	2f636367          	0x2f636367
    159e:	2e2e                	fld	ft8,200(sp)
    15a0:	636e692f          	0x636e692f
    15a4:	756c                	ld	a1,232(a0)
    15a6:	6564                	ld	s1,200(a0)
    15a8:	2f00                	fld	fs0,24(a4)
    15aa:	6f68                	ld	a0,216(a4)
    15ac:	656d                	lui	a0,0x1b
    15ae:	6865682f          	0x6865682f
    15b2:	6f61                	lui	t5,0x18
    15b4:	776f442f          	0x776f442f
    15b8:	6c6e                	ld	s8,216(sp)
    15ba:	7364616f          	jal	sp,47cf0 <__global_pointer$+0x34d20>
    15be:	6572662f          	0x6572662f
    15c2:	6465                	lui	s0,0x19
    15c4:	722f6d6f          	jal	s10,f7ce6 <__global_pointer$+0xe4d16>
    15c8:	656b636f          	jal	t1,b7c1e <__global_pointer$+0xa4c4e>
    15cc:	2d74                	fld	fa3,216(a0)
    15ce:	70696863          	bltu	s2,t1,1cde <_start-0xe3d2>
    15d2:	7369722f          	0x7369722f
    15d6:	742d7663          	bleu	sp,s10,1d22 <_start-0xe38e>
    15da:	736c6f6f          	jal	t5,c7d10 <__global_pointer$+0xb4d40>
    15de:	7369722f          	0x7369722f
    15e2:	672d7663          	bleu	s2,s10,1c4e <_start-0xe462>
    15e6:	756e                	ld	a0,248(sp)
    15e8:	742d                	lui	s0,0xfffeb
    15ea:	636c6f6f          	jal	t5,c7c20 <__global_pointer$+0xb4c50>
    15ee:	6168                	ld	a0,192(a0)
    15f0:	6e69                	lui	t3,0x1a
    15f2:	6975622f          	0x6975622f
    15f6:	646c                	ld	a1,200(s0)
    15f8:	2f2e2e2f          	0x2f2e2e2f
    15fc:	6972                	ld	s2,280(sp)
    15fe:	2d766373          	csrrsi	t1,0x2d7,12
    1602:	2f636367          	0x2f636367
    1606:	696c                	ld	a1,208(a0)
    1608:	6762                	ld	a4,24(sp)
    160a:	2e2f6363          	bltu	t5,sp,18f0 <_start-0xe7c0>
    160e:	2f2e                	fld	ft10,200(sp)
    1610:	2f636367          	0x2f636367
    1614:	666e6f63          	bltu	t3,t1,1c92 <_start-0xe41e>
    1618:	6769                	lui	a4,0x1a
    161a:	7369722f          	0x7369722f
    161e:	2e007663          	bleu	zero,zero,190a <_start-0xe7a6>
    1622:	2f2e                	fld	ft10,200(sp)
    1624:	2e2e                	fld	ft8,200(sp)
    1626:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
    162a:	00006363          	bltu	zero,zero,1630 <_start-0xea80>
    162e:	696c                	ld	a1,208(a0)
    1630:	6762                	ld	a4,24(sp)
    1632:	2e326363          	bltu	tp,gp,1918 <_start-0xe798>
    1636:	00010063          	beqz	sp,1636 <_start-0xea7a>
    163a:	6c00                	ld	s0,24(s0)
    163c:	2e6b636f          	jal	t1,b7922 <__global_pointer$+0xa4952>
    1640:	0068                	addi	a0,sp,12
    1642:	0002                	0x2
    1644:	5f00                	lw	s0,56(a4)
    1646:	7974                	ld	a3,240(a0)
    1648:	6570                	ld	a2,200(a0)
    164a:	00682e73          	csrrs	t3,0x6,a6
    164e:	0002                	0x2
    1650:	7300                	ld	s0,32(a4)
    1652:	6474                	ld	a3,200(s0)
    1654:	6564                	ld	s1,200(a0)
    1656:	2e66                	fld	ft8,88(sp)
    1658:	0068                	addi	a0,sp,12
    165a:	72000003          	lb	zero,1824(zero) # 720 <_start-0xf990>
    165e:	6565                	lui	a0,0x19
    1660:	746e                	ld	s0,248(sp)
    1662:	682e                	ld	a6,200(sp)
    1664:	0200                	addi	s0,sp,256
    1666:	0000                	unimp
    1668:	7265                	lui	tp,0xffff9
    166a:	6e72                	ld	t3,280(sp)
    166c:	00682e6f          	jal	t3,83672 <__global_pointer$+0x706a2>
    1670:	0002                	0x2
    1672:	7300                	ld	s0,32(a4)
    1674:	6474                	ld	a3,200(s0)
    1676:	696c                	ld	a1,208(a0)
    1678:	2e62                	fld	ft8,24(sp)
    167a:	0068                	addi	a0,sp,12
    167c:	0004                	addi	s1,sp,0
    167e:	7500                	ld	s0,40(a0)
    1680:	696e                	ld	s2,216(sp)
    1682:	2e647473          	csrrci	s0,0x2e6,8
    1686:	0068                	addi	a0,sp,12
    1688:	0002                	0x2
    168a:	7400                	ld	s0,40(s0)
    168c:	6d69                	lui	s10,0x1a
    168e:	2e65                	addiw	t3,t3,25
    1690:	0068                	addi	a0,sp,12
    1692:	0004                	addi	s1,sp,0
    1694:	6800                	ld	s0,16(s0)
    1696:	7361                	lui	t1,0xffff8
    1698:	7468                	ld	a0,232(s0)
    169a:	6261                	lui	tp,0x18
    169c:	682e                	ld	a6,200(sp)
    169e:	0500                	addi	s0,sp,640
    16a0:	0000                	unimp
    16a2:	6972                	ld	s2,280(sp)
    16a4:	2d766373          	csrrsi	t1,0x2d7,12
    16a8:	7374706f          	j	495de <__global_pointer$+0x3660e>
    16ac:	682e                	ld	a6,200(sp)
    16ae:	0600                	addi	s0,sp,768
    16b0:	0000                	unimp
    16b2:	6e69                	lui	t3,0x1a
    16b4:	632d6e73          	csrrsi	t3,0x632,26
    16b8:	74736e6f          	jal	t3,385fe <__global_pointer$+0x2562e>
    16bc:	6e61                	lui	t3,0x18
    16be:	7374                	ld	a3,224(a4)
    16c0:	682e                	ld	a6,200(sp)
    16c2:	0700                	addi	s0,sp,896
    16c4:	0000                	unimp
    16c6:	696c                	ld	a1,208(a0)
    16c8:	6762                	ld	a4,24(sp)
    16ca:	2e326363          	bltu	tp,gp,19b0 <_start-0xe700>
    16ce:	0068                	addi	a0,sp,12
    16d0:	0001                	nop
    16d2:	0000                	unimp
    16d4:	0900                	addi	s0,sp,144
    16d6:	e002                	sd	zero,0(sp)
    16d8:	00000113          	li	sp,0
    16dc:	0000                	unimp
    16de:	0300                	addi	s0,sp,384
    16e0:	05c1                	addi	a1,a1,16
    16e2:	0301                	addi	t1,t1,0
    16e4:	00000903          	lb	s2,0(zero) # 0 <_start-0x100b0>
    16e8:	0001                	nop
    16ea:	0402                	slli	s0,s0,0x0
    16ec:	0614                	addi	a3,sp,768
    16ee:	04090003          	lb	zero,64(s2) # 18040 <__global_pointer$+0x5070>
    16f2:	0100                	addi	s0,sp,128
    16f4:	0200                	addi	s0,sp,256
    16f6:	1204                	addi	s1,sp,288
    16f8:	0c090003          	lb	zero,192(s2)
    16fc:	0100                	addi	s0,sp,128
    16fe:	0200                	addi	s0,sp,256
    1700:	1504                	addi	s1,sp,672
    1702:	08090003          	lb	zero,128(s2)
    1706:	0100                	addi	s0,sp,128
    1708:	0200                	addi	s0,sp,256
    170a:	1504                	addi	s1,sp,672
    170c:	0306                	slli	t1,t1,0x1
    170e:	001c0903          	lb	s2,1(s8) # 1a001 <__global_pointer$+0x7031>
    1712:	0901                	addi	s2,s2,0
    1714:	0008                	addi	a0,sp,0
    1716:	0100                	addi	s0,sp,128
    1718:	ef01                	bnez	a4,1730 <_start-0xe980>
    171a:	0002                	0x2
    171c:	0200                	addi	s0,sp,256
    171e:	e900                	sd	s0,16(a0)
    1720:	0002                	0x2
    1722:	0100                	addi	s0,sp,128
    1724:	fb01                	bnez	a4,1634 <_start-0xea7c>
    1726:	0d0e                	slli	s10,s10,0x3
    1728:	0100                	addi	s0,sp,128
    172a:	0101                	addi	sp,sp,0
    172c:	0001                	nop
    172e:	0000                	unimp
    1730:	0001                	nop
    1732:	0100                	addi	s0,sp,128
    1734:	6d6f682f          	0x6d6f682f
    1738:	2f65                	addiw	t5,t5,25
    173a:	6568                	ld	a0,200(a0)
    173c:	6168                	ld	a0,192(a0)
    173e:	69722f6f          	jal	t5,245d4 <__global_pointer$+0x11604>
    1742:	36766373          	csrrsi	t1,0x367,12
    1746:	6934                	ld	a3,80(a0)
    1748:	7369722f          	0x7369722f
    174c:	34367663          	bleu	gp,a2,1a98 <_start-0xe618>
    1750:	752d                	lui	a0,0xfffeb
    1752:	6b6e                	ld	s6,216(sp)
    1754:	6f6e                	ld	t5,216(sp)
    1756:	652d6e77          	0x652d6e77
    175a:	666c                	ld	a1,200(a2)
    175c:	636e692f          	0x636e692f
    1760:	756c                	ld	a1,232(a0)
    1762:	6564                	ld	s1,200(a0)
    1764:	7379732f          	0x7379732f
    1768:	2f00                	fld	fs0,24(a4)
    176a:	6f68                	ld	a0,216(a4)
    176c:	656d                	lui	a0,0x1b
    176e:	6865682f          	0x6865682f
    1772:	6f61                	lui	t5,0x18
    1774:	776f442f          	0x776f442f
    1778:	6c6e                	ld	s8,216(sp)
    177a:	7364616f          	jal	sp,47eb0 <__global_pointer$+0x34ee0>
    177e:	6572662f          	0x6572662f
    1782:	6465                	lui	s0,0x19
    1784:	722f6d6f          	jal	s10,f7ea6 <__global_pointer$+0xe4ed6>
    1788:	656b636f          	jal	t1,b7dde <__global_pointer$+0xa4e0e>
    178c:	2d74                	fld	fa3,216(a0)
    178e:	70696863          	bltu	s2,t1,1e9e <_start-0xe212>
    1792:	7369722f          	0x7369722f
    1796:	742d7663          	bleu	sp,s10,1ee2 <_start-0xe1ce>
    179a:	736c6f6f          	jal	t5,c7ed0 <__global_pointer$+0xb4f00>
    179e:	7369722f          	0x7369722f
    17a2:	672d7663          	bleu	s2,s10,1e0e <_start-0xe2a2>
    17a6:	756e                	ld	a0,248(sp)
    17a8:	742d                	lui	s0,0xfffeb
    17aa:	636c6f6f          	jal	t5,c7de0 <__global_pointer$+0xb4e10>
    17ae:	6168                	ld	a0,192(a0)
    17b0:	6e69                	lui	t3,0x1a
    17b2:	6975622f          	0x6975622f
    17b6:	646c                	ld	a1,200(s0)
    17b8:	6975622f          	0x6975622f
    17bc:	646c                	ld	a1,200(s0)
    17be:	672d                	lui	a4,0xb
    17c0:	6e2d6363          	bltu	s10,sp,1ea6 <_start-0xe20a>
    17c4:	7765                	lui	a4,0xffff9
    17c6:	696c                	ld	a1,208(a0)
    17c8:	2d62                	fld	fs10,24(sp)
    17ca:	67617473          	csrrci	s0,0x676,2
    17ce:	3265                	addiw	tp,tp,-7
    17d0:	6363672f          	0x6363672f
    17d4:	636e692f          	0x636e692f
    17d8:	756c                	ld	a1,232(a0)
    17da:	6564                	ld	s1,200(a0)
    17dc:	2f00                	fld	fs0,24(a4)
    17de:	6f68                	ld	a0,216(a4)
    17e0:	656d                	lui	a0,0x1b
    17e2:	6865682f          	0x6865682f
    17e6:	6f61                	lui	t5,0x18
    17e8:	7369722f          	0x7369722f
    17ec:	34367663          	bleu	gp,a2,1b38 <_start-0xe578>
    17f0:	2f69                	addiw	t5,t5,26
    17f2:	6972                	ld	s2,280(sp)
    17f4:	36766373          	csrrsi	t1,0x367,12
    17f8:	2d34                	fld	fa3,88(a0)
    17fa:	6e75                	lui	t3,0x1d
    17fc:	776f6e6b          	0x776f6e6b
    1800:	2d6e                	fld	fs10,216(sp)
    1802:	6c65                	lui	s8,0x19
    1804:	2f66                	fld	ft10,88(sp)
    1806:	6e69                	lui	t3,0x1a
    1808:	64756c63          	bltu	a0,t2,1e60 <_start-0xe250>
    180c:	0065                	c.addi	zero,25
    180e:	6d6f682f          	0x6d6f682f
    1812:	2f65                	addiw	t5,t5,25
    1814:	6568                	ld	a0,200(a0)
    1816:	6168                	ld	a0,192(a0)
    1818:	6f442f6f          	jal	t5,43f0c <__global_pointer$+0x30f3c>
    181c:	6f6c6e77          	0x6f6c6e77
    1820:	6461                	lui	s0,0x18
    1822:	72662f73          	csrrs	t5,0x726,a2
    1826:	6565                	lui	a0,0x19
    1828:	6f64                	ld	s1,216(a4)
    182a:	2f6d                	addiw	t5,t5,27
    182c:	6f72                	ld	t5,280(sp)
    182e:	74656b63          	bltu	a0,t1,1f84 <_start-0xe12c>
    1832:	632d                	lui	t1,0xb
    1834:	6968                	ld	a0,208(a0)
    1836:	2f70                	fld	fa2,216(a4)
    1838:	6972                	ld	s2,280(sp)
    183a:	2d766373          	csrrsi	t1,0x2d7,12
    183e:	6f74                	ld	a3,216(a4)
    1840:	2f736c6f          	jal	s8,38336 <__global_pointer$+0x25366>
    1844:	6972                	ld	s2,280(sp)
    1846:	2d766373          	csrrsi	t1,0x2d7,12
    184a:	2d756e67          	0x2d756e67
    184e:	6f74                	ld	a3,216(a4)
    1850:	68636c6f          	jal	s8,37ed6 <__global_pointer$+0x24f06>
    1854:	6961                	lui	s2,0x18
    1856:	2f6e                	fld	ft10,216(sp)
    1858:	7562                	ld	a0,56(sp)
    185a:	6c69                	lui	s8,0x1a
    185c:	2f64                	fld	fs1,216(a4)
    185e:	2e2e                	fld	ft8,200(sp)
    1860:	7369722f          	0x7369722f
    1864:	672d7663          	bleu	s2,s10,1ed0 <_start-0xe1e0>
    1868:	6c2f6363          	bltu	t5,sp,1f2e <_start-0xe182>
    186c:	6269                	lui	tp,0x1a
    186e:	2f636367          	0x2f636367
    1872:	2e2e                	fld	ft8,200(sp)
    1874:	636e692f          	0x636e692f
    1878:	756c                	ld	a1,232(a0)
    187a:	6564                	ld	s1,200(a0)
    187c:	2f00                	fld	fs0,24(a4)
    187e:	6f68                	ld	a0,216(a4)
    1880:	656d                	lui	a0,0x1b
    1882:	6865682f          	0x6865682f
    1886:	6f61                	lui	t5,0x18
    1888:	776f442f          	0x776f442f
    188c:	6c6e                	ld	s8,216(sp)
    188e:	7364616f          	jal	sp,47fc4 <__global_pointer$+0x34ff4>
    1892:	6572662f          	0x6572662f
    1896:	6465                	lui	s0,0x19
    1898:	722f6d6f          	jal	s10,f7fba <__global_pointer$+0xe4fea>
    189c:	656b636f          	jal	t1,b7ef2 <__global_pointer$+0xa4f22>
    18a0:	2d74                	fld	fa3,216(a0)
    18a2:	70696863          	bltu	s2,t1,1fb2 <_start-0xe0fe>
    18a6:	7369722f          	0x7369722f
    18aa:	742d7663          	bleu	sp,s10,1ff6 <_start-0xe0ba>
    18ae:	736c6f6f          	jal	t5,c7fe4 <__global_pointer$+0xb5014>
    18b2:	7369722f          	0x7369722f
    18b6:	672d7663          	bleu	s2,s10,1f22 <_start-0xe18e>
    18ba:	756e                	ld	a0,248(sp)
    18bc:	742d                	lui	s0,0xfffeb
    18be:	636c6f6f          	jal	t5,c7ef4 <__global_pointer$+0xb4f24>
    18c2:	6168                	ld	a0,192(a0)
    18c4:	6e69                	lui	t3,0x1a
    18c6:	6975622f          	0x6975622f
    18ca:	646c                	ld	a1,200(s0)
    18cc:	2f2e2e2f          	0x2f2e2e2f
    18d0:	6972                	ld	s2,280(sp)
    18d2:	2d766373          	csrrsi	t1,0x2d7,12
    18d6:	2f636367          	0x2f636367
    18da:	696c                	ld	a1,208(a0)
    18dc:	6762                	ld	a4,24(sp)
    18de:	2e2f6363          	bltu	t5,sp,1bc4 <_start-0xe4ec>
    18e2:	2f2e                	fld	ft10,200(sp)
    18e4:	2f636367          	0x2f636367
    18e8:	666e6f63          	bltu	t3,t1,1f66 <_start-0xe14a>
    18ec:	6769                	lui	a4,0x1a
    18ee:	7369722f          	0x7369722f
    18f2:	2e007663          	bleu	zero,zero,1bde <_start-0xe4d2>
    18f6:	2f2e                	fld	ft10,200(sp)
    18f8:	2e2e                	fld	ft8,200(sp)
    18fa:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
    18fe:	2f006363          	bltu	zero,a6,1be4 <_start-0xe4cc>
    1902:	6f68                	ld	a0,216(a4)
    1904:	656d                	lui	a0,0x1b
    1906:	6865682f          	0x6865682f
    190a:	6f61                	lui	t5,0x18
    190c:	776f442f          	0x776f442f
    1910:	6c6e                	ld	s8,216(sp)
    1912:	7364616f          	jal	sp,48048 <__global_pointer$+0x35078>
    1916:	6572662f          	0x6572662f
    191a:	6465                	lui	s0,0x19
    191c:	722f6d6f          	jal	s10,f803e <__global_pointer$+0xe506e>
    1920:	656b636f          	jal	t1,b7f76 <__global_pointer$+0xa4fa6>
    1924:	2d74                	fld	fa3,216(a0)
    1926:	70696863          	bltu	s2,t1,2036 <_start-0xe07a>
    192a:	7369722f          	0x7369722f
    192e:	742d7663          	bleu	sp,s10,207a <_start-0xe036>
    1932:	736c6f6f          	jal	t5,c8068 <__global_pointer$+0xb5098>
    1936:	7369722f          	0x7369722f
    193a:	672d7663          	bleu	s2,s10,1fa6 <_start-0xe10a>
    193e:	756e                	ld	a0,248(sp)
    1940:	742d                	lui	s0,0xfffeb
    1942:	636c6f6f          	jal	t5,c7f78 <__global_pointer$+0xb4fa8>
    1946:	6168                	ld	a0,192(a0)
    1948:	6e69                	lui	t3,0x1a
    194a:	6975622f          	0x6975622f
    194e:	646c                	ld	a1,200(s0)
    1950:	2f2e2e2f          	0x2f2e2e2f
    1954:	6972                	ld	s2,280(sp)
    1956:	2d766373          	csrrsi	t1,0x2d7,12
    195a:	2f636367          	0x2f636367
    195e:	696c                	ld	a1,208(a0)
    1960:	6762                	ld	a4,24(sp)
    1962:	00006363          	bltu	zero,zero,1968 <_start-0xe748>
    1966:	6f6c                	ld	a1,216(a4)
    1968:	682e6b63          	bltu	t3,sp,1ffe <_start-0xe0b2>
    196c:	0100                	addi	s0,sp,128
    196e:	0000                	unimp
    1970:	745f 7079 7365      	0x73657079745f
    1976:	682e                	ld	a6,200(sp)
    1978:	0100                	addi	s0,sp,128
    197a:	0000                	unimp
    197c:	64647473          	csrrci	s0,0x646,8
    1980:	6665                	lui	a2,0x19
    1982:	682e                	ld	a6,200(sp)
    1984:	0200                	addi	s0,sp,256
    1986:	0000                	unimp
    1988:	6572                	ld	a0,280(sp)
    198a:	6e65                	lui	t3,0x19
    198c:	2e74                	fld	fa3,216(a2)
    198e:	0068                	addi	a0,sp,12
    1990:	0001                	nop
    1992:	6500                	ld	s0,8(a0)
    1994:	7272                	ld	tp,312(sp)
    1996:	6f6e                	ld	t5,216(sp)
    1998:	682e                	ld	a6,200(sp)
    199a:	0100                	addi	s0,sp,128
    199c:	0000                	unimp
    199e:	6c647473          	csrrci	s0,0x6c6,8
    19a2:	6269                	lui	tp,0x1a
    19a4:	682e                	ld	a6,200(sp)
    19a6:	0300                	addi	s0,sp,384
    19a8:	0000                	unimp
    19aa:	6e75                	lui	t3,0x1d
    19ac:	7369                	lui	t1,0xffffa
    19ae:	6474                	ld	a3,200(s0)
    19b0:	682e                	ld	a6,200(sp)
    19b2:	0100                	addi	s0,sp,128
    19b4:	0000                	unimp
    19b6:	6974                	ld	a3,208(a0)
    19b8:	656d                	lui	a0,0x1b
    19ba:	682e                	ld	a6,200(sp)
    19bc:	0300                	addi	s0,sp,384
    19be:	0000                	unimp
    19c0:	6168                	ld	a0,192(a0)
    19c2:	61746873          	csrrsi	a6,0x617,8
    19c6:	2e62                	fld	ft8,24(sp)
    19c8:	0068                	addi	a0,sp,12
    19ca:	0004                	addi	s1,sp,0
    19cc:	7200                	ld	s0,32(a2)
    19ce:	7369                	lui	t1,0xffffa
    19d0:	6f2d7663          	bleu	s2,s10,20bc <_start-0xdff4>
    19d4:	7470                	ld	a2,232(s0)
    19d6:	00682e73          	csrrs	t3,0x6,a6
    19da:	0005                	c.addi	zero,1
    19dc:	6900                	ld	s0,16(a0)
    19de:	736e                	ld	t1,248(sp)
    19e0:	2d6e                	fld	fs10,216(sp)
    19e2:	736e6f63          	bltu	t3,s6,2120 <_start-0xdf90>
    19e6:	6174                	ld	a3,192(a0)
    19e8:	746e                	ld	s0,248(sp)
    19ea:	00682e73          	csrrs	t3,0x6,a6
    19ee:	0006                	0x6
    19f0:	6c00                	ld	s0,24(s0)
    19f2:	6269                	lui	tp,0x1a
    19f4:	32636367          	0x32636367
    19f8:	682e                	ld	a6,200(sp)
    19fa:	0700                	addi	s0,sp,896
    19fc:	0000                	unimp
    19fe:	696c                	ld	a1,208(a0)
    1a00:	6762                	ld	a4,24(sp)
    1a02:	2e326363          	bltu	tp,gp,1ce8 <_start-0xe3c8>
    1a06:	00070063          	beqz	a4,1a06 <_start-0xe6aa>
	...

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	addi	a1,sp,0
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	0001                	nop
   a:	7c01                	lui	s8,0xfffe0
   c:	0d01                	addi	s10,s10,0
   e:	0002                	0x2
  10:	0034                	addi	a3,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0484                	addi	s1,sp,576
  1a:	0001                	nop
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	047c                	addi	a5,sp,524
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0e44                	addi	s1,sp,788
  2a:	5020                	lw	s0,96(s0)
  2c:	0488                	addi	a0,sp,576
  2e:	9260                	0x9260
  30:	8108                	0x8108
  32:	8902                	jr	s2
  34:	0306                	slli	t1,t1,0x1
  36:	03f4                	addi	a3,sp,460
  38:	c10a                	sw	sp,128(sp)
  3a:	c844                	sw	s1,20(s0)
  3c:	c954                	sw	a3,20(a0)
  3e:	d244                	sw	s1,36(a2)
  40:	0e44                	addi	s1,sp,788
  42:	4400                	lw	s0,8(s0)
  44:	0000000b          	0xb
  48:	000c                	addi	a1,sp,0
  4a:	0000                	unimp
  4c:	ffff                	0xffff
  4e:	ffff                	0xffff
  50:	0001                	nop
  52:	7c01                	lui	s8,0xfffe0
  54:	0d01                	addi	s10,s10,0
  56:	0002                	0x2
  58:	004c                	addi	a1,sp,4
  5a:	0000                	unimp
  5c:	0048                	addi	a0,sp,4
  5e:	0000                	unimp
  60:	0904                	addi	s1,sp,144
  62:	0001                	nop
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0388                	addi	a0,sp,448
  6a:	0000                	unimp
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0e44                	addi	s1,sp,788
  72:	4450                	lw	a2,12(s0)
  74:	0892                	slli	a7,a7,0x4
  76:	894c                	0x894c
  78:	6406                	ld	s0,64(sp)
  7a:	12970a93          	addi	s5,a4,297 # 1a129 <__global_pointer$+0x7159>
  7e:	0281                	addi	t0,t0,0
  80:	0488                	addi	a0,sp,576
  82:	0c94                	addi	a3,sp,592
  84:	0e95                	addi	t4,t4,5
  86:	1096                	slli	ra,ra,0x25
  88:	0a027403          	0xa027403
  8c:	44c1                	li	s1,16
  8e:	58c8                	lw	a0,52(s1)
  90:	44c9                	li	s1,18
  92:	44d2                	lw	s1,20(sp)
  94:	44d444d3          	0x44d444d3
  98:	44d5                	li	s1,21
  9a:	44d6                	lw	s1,84(sp)
  9c:	000e48d7          	0xe48d7
  a0:	0b44                	addi	s1,sp,404
  a2:	0000                	unimp
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	000c                	addi	a1,sp,0
  aa:	0000                	unimp
  ac:	ffff                	0xffff
  ae:	ffff                	0xffff
  b0:	0001                	nop
  b2:	7c01                	lui	s8,0xfffe0
  b4:	0d01                	addi	s10,s10,0
  b6:	0002                	0x2
  b8:	0034                	addi	a3,sp,8
  ba:	0000                	unimp
  bc:	00a8                	addi	a0,sp,72
  be:	0000                	unimp
  c0:	0c90                	addi	a2,sp,592
  c2:	0001                	nop
  c4:	0000                	unimp
  c6:	0000                	unimp
  c8:	0478                	addi	a4,sp,524
  ca:	0000                	unimp
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	0e48                	addi	a0,sp,788
  d2:	5020                	lw	s0,96(s0)
  d4:	0892                	slli	a7,a7,0x4
  d6:	885c                	0x885c
  d8:	8104                	0x8104
  da:	8902                	jr	s2
  dc:	0306                	slli	t1,t1,0x1
  de:	0404                	addi	s1,sp,512
  e0:	c10a                	sw	sp,128(sp)
  e2:	c844                	sw	s1,20(s0)
  e4:	c954                	sw	a3,20(a0)
  e6:	d244                	sw	s1,36(a2)
  e8:	0e44                	addi	s1,sp,788
  ea:	4400                	lw	s0,8(s0)
  ec:	0000000b          	0xb
  f0:	000c                	addi	a1,sp,0
  f2:	0000                	unimp
  f4:	ffff                	0xffff
  f6:	ffff                	0xffff
  f8:	0001                	nop
  fa:	7c01                	lui	s8,0xfffe0
  fc:	0d01                	addi	s10,s10,0
  fe:	0002                	0x2
 100:	002c                	addi	a1,sp,8
 102:	0000                	unimp
 104:	00f0                	addi	a2,sp,76
 106:	0000                	unimp
 108:	110c                	addi	a1,sp,160
 10a:	0001                	nop
 10c:	0000                	unimp
 10e:	0000                	unimp
 110:	008c                	addi	a1,sp,64
 112:	0000                	unimp
 114:	0000                	unimp
 116:	0000                	unimp
 118:	0e44                	addi	s1,sp,788
 11a:	4c20                	lw	s0,88(s0)
 11c:	0281                	addi	t0,t0,0
 11e:	0488                	addi	a0,sp,576
 120:	0689                	addi	a3,a3,2
 122:	4802                	lw	a6,0(sp)
 124:	c10a                	sw	sp,128(sp)
 126:	c844                	sw	s1,20(s0)
 128:	c954                	sw	a3,20(a0)
 12a:	0e48                	addi	a0,sp,788
 12c:	4400                	lw	s0,8(s0)
 12e:	000c000b          	0xc000b
 132:	0000                	unimp
 134:	ffff                	0xffff
 136:	ffff                	0xffff
 138:	0001                	nop
 13a:	7c01                	lui	s8,0xfffe0
 13c:	0d01                	addi	s10,s10,0
 13e:	0002                	0x2
 140:	002c                	addi	a1,sp,8
 142:	0000                	unimp
 144:	0130                	addi	a2,sp,136
 146:	0000                	unimp
 148:	119c                	addi	a5,sp,224
 14a:	0001                	nop
 14c:	0000                	unimp
 14e:	0000                	unimp
 150:	00c0                	addi	s0,sp,68
 152:	0000                	unimp
 154:	0000                	unimp
 156:	0000                	unimp
 158:	0e44                	addi	s1,sp,788
 15a:	4820                	lw	s0,80(s0)
 15c:	0488                	addi	a0,sp,576
 15e:	8964                	0x8964
 160:	8106                	mv	sp,ra
 162:	0202                	slli	tp,tp,0x0
 164:	0a40                	addi	s0,sp,276
 166:	44c1                	li	s1,16
 168:	44c8                	lw	a0,12(s1)
 16a:	44c9                	li	s1,18
 16c:	000e                	0xe
 16e:	0b44                	addi	s1,sp,404
 170:	000c                	addi	a1,sp,0
 172:	0000                	unimp
 174:	ffff                	0xffff
 176:	ffff                	0xffff
 178:	0001                	nop
 17a:	7c01                	lui	s8,0xfffe0
 17c:	0d01                	addi	s10,s10,0
 17e:	0002                	0x2
 180:	0014                	addi	a3,sp,0
 182:	0000                	unimp
 184:	0170                	addi	a2,sp,140
 186:	0000                	unimp
 188:	1260                	addi	s0,sp,300
 18a:	0001                	nop
 18c:	0000                	unimp
 18e:	0000                	unimp
 190:	0154                	addi	a3,sp,132
 192:	0000                	unimp
 194:	0000                	unimp
 196:	0000                	unimp
 198:	000c                	addi	a1,sp,0
 19a:	0000                	unimp
 19c:	ffff                	0xffff
 19e:	ffff                	0xffff
 1a0:	0001                	nop
 1a2:	7c01                	lui	s8,0xfffe0
 1a4:	0d01                	addi	s10,s10,0
 1a6:	0002                	0x2
 1a8:	0014                	addi	a3,sp,0
 1aa:	0000                	unimp
 1ac:	0198                	addi	a4,sp,192
 1ae:	0000                	unimp
 1b0:	13e0                	addi	s0,sp,492
 1b2:	0001                	nop
 1b4:	0000                	unimp
 1b6:	0000                	unimp
 1b8:	003c                	addi	a5,sp,8
 1ba:	0000                	unimp
 1bc:	0000                	unimp
	...

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f5f 6e69 3174      	0x31746e695f5f
   6:	3832                	fld	fa6,296(sp)
   8:	7520                	ld	s0,104(a0)
   a:	736e                	ld	t1,248(sp)
   c:	6769                	lui	a4,0x1a
   e:	656e                	ld	a0,216(sp)
  10:	0064                	addi	s1,sp,12
  12:	465f 5f50 4150      	0x41505f50465f
  18:	525f4b43          	fmadd.d	fs6,ft10,ft5,fa0,rmm
  1c:	5741                	li	a4,-16
  1e:	315f 665f 6f6c      	0x6f6c665f315f
  24:	5f00                	lw	s0,56(a4)
  26:	615f 6464 6664      	0x66646464615f
  2c:	465f0033          	0x465f0033
  30:	5f50                	lw	a2,60(a4)
  32:	4441                	li	s0,16
  34:	5f44                	lw	s1,60(a4)
  36:	4e49                	li	t3,18
  38:	4554                	lw	a3,12(a0)
  3a:	4e52                	lw	t3,20(sp)
  3c:	4c41                	li	s8,16
  3e:	655f 6964 6666      	0x66666964655f
  44:	5f00                	lw	s0,56(a4)
  46:	6566                	ld	a0,88(sp)
  48:	0078                	addi	a4,sp,12
  4a:	465f 5f50 4150      	0x41505f50465f
  50:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
  54:	4d45                	li	s10,17
  56:	5249                	li	tp,-14
  58:	5741                	li	a4,-16
  5a:	545f 635f 4400      	0x4400635f545f
  60:	7446                	ld	s0,112(sp)
  62:	7079                	0x7079
  64:	0065                	c.addi	zero,25
  66:	465f 5f50 4150      	0x41505f50465f
  6c:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
  70:	4d45                	li	s10,17
  72:	5249                	li	tp,-14
  74:	5741                	li	a4,-16
  76:	545f 665f 2f00      	0x2f00665f545f
  7c:	6f68                	ld	a0,216(a4)
  7e:	656d                	lui	a0,0x1b
  80:	6865682f          	0x6865682f
  84:	6f61                	lui	t5,0x18
  86:	776f442f          	0x776f442f
  8a:	6c6e                	ld	s8,216(sp)
  8c:	7364616f          	jal	sp,467c2 <__global_pointer$+0x337f2>
  90:	6572662f          	0x6572662f
  94:	6465                	lui	s0,0x19
  96:	722f6d6f          	jal	s10,f67b8 <__global_pointer$+0xe37e8>
  9a:	656b636f          	jal	t1,b66f0 <__global_pointer$+0xa3720>
  9e:	2d74                	fld	fa3,216(a0)
  a0:	70696863          	bltu	s2,t1,7b0 <_start-0xf900>
  a4:	7369722f          	0x7369722f
  a8:	742d7663          	bleu	sp,s10,7f4 <_start-0xf8bc>
  ac:	736c6f6f          	jal	t5,c67e2 <__global_pointer$+0xb3812>
  b0:	7369722f          	0x7369722f
  b4:	672d7663          	bleu	s2,s10,720 <_start-0xf990>
  b8:	756e                	ld	a0,248(sp)
  ba:	742d                	lui	s0,0xfffeb
  bc:	636c6f6f          	jal	t5,c66f2 <__global_pointer$+0xb3722>
  c0:	6168                	ld	a0,192(a0)
  c2:	6e69                	lui	t3,0x1a
  c4:	6975622f          	0x6975622f
  c8:	646c                	ld	a1,200(s0)
  ca:	2f2e2e2f          	0x2f2e2e2f
  ce:	6972                	ld	s2,280(sp)
  d0:	2d766373          	csrrsi	t1,0x2d7,12
  d4:	2f636367          	0x2f636367
  d8:	696c                	ld	a1,208(a0)
  da:	6762                	ld	a4,24(sp)
  dc:	732f6363          	bltu	t5,s2,802 <_start-0xf8ae>
  e0:	2d74666f          	jal	a2,46bb6 <__global_pointer$+0x33be6>
  e4:	7066                	0x7066
  e6:	6464612f          	0x6464612f
  ea:	6664                	ld	s1,200(a2)
  ec:	00632e33          	slt	t3,t1,t1
  f0:	6461                	lui	s0,0x18
  f2:	5f64                	lw	s1,124(a4)
  f4:	6f64                	ld	s1,216(a4)
  f6:	656e                	ld	a0,216(sp)
  f8:	7500                	ld	s0,40(a0)
  fa:	736e                	ld	t1,248(sp)
  fc:	6769                	lui	a4,0x1a
  fe:	656e                	ld	a0,216(sp)
 100:	2064                	fld	fs1,192(s0)
 102:	72616863          	bltu	sp,t1,832 <_start-0xf87e>
 106:	5f00                	lw	s0,56(a4)
 108:	5046                	0x5046
 10a:	555f 504e 4341      	0x4341504e555f
 110:	41525f4b          	fnmsub.s	ft10,ft4,fs5,fs0,unknown
 114:	5f315f57          	0x5f315f57
 118:	6c66                	ld	s8,88(sp)
 11a:	465f006f          	j	f0d7e <__global_pointer$+0xdddae>
 11e:	5f50                	lw	a2,60(a4)
 120:	4150                	lw	a2,4(a0)
 122:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
 126:	4d45                	li	s10,17
 128:	5249                	li	tp,-14
 12a:	5741                	li	a4,-16
 12c:	545f 735f 5f00      	0x5f00735f545f
 132:	695f 746e 3231      	0x3231746e695f
 138:	0038                	addi	a4,sp,8
 13a:	31627573          	csrrci	a0,0x316,4
 13e:	7300                	ld	s0,32(a4)
 140:	6275                	lui	tp,0x1d
 142:	0032                	0x32
 144:	33627573          	csrrci	a0,mhpmevent22,4
 148:	6e00                	ld	s0,24(a2)
 14a:	006d726f          	jal	tp,d7150 <__global_pointer$+0xc4180>
 14e:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
 152:	20313143          	fmadd.s	ft2,ft2,ft3,ft4,rup
 156:	2e312e37          	lui	t3,0x2e312
 15a:	2031                	0x2031
 15c:	3032                	fld	ft0,296(sp)
 15e:	3731                	addiw	a4,a4,-20
 160:	3530                	fld	fa2,104(a0)
 162:	3930                	fld	fa2,112(a0)
 164:	2d20                	fld	fs0,88(a0)
 166:	636d                	lui	t1,0x1b
 168:	6f6d                	lui	t5,0x1b
 16a:	6564                	ld	s1,200(a0)
 16c:	3d6c                	fld	fa1,248(a0)
 16e:	656d                	lui	a0,0x1b
 170:	6c64                	ld	s1,216(s0)
 172:	2d20776f          	jal	a4,7444 <_start-0x8c6c>
 176:	636d                	lui	t1,0x1b
 178:	6f6d                	lui	t5,0x1b
 17a:	6564                	ld	s1,200(a0)
 17c:	3d6c                	fld	fa1,248(a0)
 17e:	656d                	lui	a0,0x1b
 180:	6c64                	ld	s1,216(s0)
 182:	2d20776f          	jal	a4,7454 <_start-0x8c5c>
 186:	616d                	addi	sp,sp,240
 188:	6372                	ld	t1,280(sp)
 18a:	3d68                	fld	fa0,248(a0)
 18c:	7672                	ld	a2,312(sp)
 18e:	3436                	fld	fs0,360(sp)
 190:	2069                	0x2069
 192:	6d2d                	lui	s10,0xb
 194:	6261                	lui	tp,0x18
 196:	3d69                	addiw	s10,s10,-6
 198:	706c                	ld	a1,224(s0)
 19a:	3436                	fld	fs0,360(sp)
 19c:	2d20                	fld	fs0,88(a0)
 19e:	4f2d2067          	0x4f2d2067
 1a2:	4f2d2073          	csrs	0x4f2,s10
 1a6:	2032                	fld	ft0,264(sp)
 1a8:	4f2d                	li	t5,11
 1aa:	662d2073          	csrs	0x662,s10
 1ae:	7562                	ld	a0,56(sp)
 1b0:	6c69                	lui	s8,0x1a
 1b2:	6964                	ld	s1,208(a0)
 1b4:	676e                	ld	a4,216(sp)
 1b6:	6c2d                	lui	s8,0xb
 1b8:	6269                	lui	tp,0x1a
 1ba:	20636367          	0x20636367
 1be:	662d                	lui	a2,0xb
 1c0:	6f6e                	ld	t5,216(sp)
 1c2:	732d                	lui	t1,0xfffeb
 1c4:	6174                	ld	a3,192(a0)
 1c6:	702d6b63          	bltu	s10,sp,8dc <_start-0xf7d4>
 1ca:	6f72                	ld	t5,280(sp)
 1cc:	6574                	ld	a3,200(a0)
 1ce:	726f7463          	bleu	t1,t5,8f6 <_start-0xf7ba>
 1d2:	2d20                	fld	fs0,88(a0)
 1d4:	7666                	ld	a2,120(sp)
 1d6:	7369                	lui	t1,0xffffa
 1d8:	6269                	lui	tp,0x1a
 1da:	6c69                	lui	s8,0x1a
 1dc:	7469                	lui	s0,0xffffa
 1de:	3d79                	addiw	s10,s10,-2
 1e0:	6968                	ld	a0,208(a0)
 1e2:	6464                	ld	s1,200(s0)
 1e4:	6e65                	lui	t3,0x19
 1e6:	5500                	lw	s0,40(a0)
 1e8:	4951                	li	s2,20
 1ea:	7974                	ld	a3,240(a0)
 1ec:	6570                	ld	a2,200(a0)
 1ee:	5f00                	lw	s0,56(a4)
 1f0:	635f 7a6c 745f      	0x745f7a6c635f
 1f6:	6261                	lui	tp,0x18
 1f8:	6600                	ld	s0,8(a2)
 1fa:	6172                	ld	sp,280(sp)
 1fc:	6f6c0063          	beq	s8,s6,8dc <_start-0xf7d4>
 200:	676e                	ld	a4,216(sp)
 202:	6c20                	ld	s0,88(s0)
 204:	20676e6f          	jal	t3,7640a <__global_pointer$+0x6343a>
 208:	6e75                	lui	t3,0x1d
 20a:	6e676973          	csrrsi	s2,0x6e6,14
 20e:	6465                	lui	s0,0x19
 210:	6920                	ld	s0,80(a0)
 212:	746e                	ld	s0,248(sp)
 214:	6100                	ld	s0,0(a0)
 216:	6464                	ld	s1,200(s0)
 218:	465f0033          	0x465f0033
 21c:	5f50                	lw	a2,60(a4)
 21e:	4441                	li	s0,16
 220:	5f44                	lw	s1,60(a4)
 222:	4e49                	li	t3,18
 224:	4554                	lw	a3,12(a0)
 226:	4e52                	lw	t3,20(sp)
 228:	4c41                	li	s8,16
 22a:	645f 6669 0066      	0x666669645f
 230:	6f6c                	ld	a1,216(a4)
 232:	676e                	ld	a4,216(sp)
 234:	6c20                	ld	s0,88(s0)
 236:	20676e6f          	jal	t3,7643c <__global_pointer$+0x6346c>
 23a:	6e69                	lui	t3,0x1a
 23c:	0074                	addi	a3,sp,12
 23e:	6d6f682f          	0x6d6f682f
 242:	2f65                	addiw	t5,t5,25
 244:	6568                	ld	a0,200(a0)
 246:	6168                	ld	a0,192(a0)
 248:	6f442f6f          	jal	t5,4293c <__global_pointer$+0x2f96c>
 24c:	6f6c6e77          	0x6f6c6e77
 250:	6461                	lui	s0,0x18
 252:	72662f73          	csrrs	t5,0x726,a2
 256:	6565                	lui	a0,0x19
 258:	6f64                	ld	s1,216(a4)
 25a:	2f6d                	addiw	t5,t5,27
 25c:	6f72                	ld	t5,280(sp)
 25e:	74656b63          	bltu	a0,t1,9b4 <_start-0xf6fc>
 262:	632d                	lui	t1,0xb
 264:	6968                	ld	a0,208(a0)
 266:	2f70                	fld	fa2,216(a4)
 268:	6972                	ld	s2,280(sp)
 26a:	2d766373          	csrrsi	t1,0x2d7,12
 26e:	6f74                	ld	a3,216(a4)
 270:	2f736c6f          	jal	s8,36d66 <__global_pointer$+0x23d96>
 274:	6972                	ld	s2,280(sp)
 276:	2d766373          	csrrsi	t1,0x2d7,12
 27a:	2d756e67          	0x2d756e67
 27e:	6f74                	ld	a3,216(a4)
 280:	68636c6f          	jal	s8,36906 <__global_pointer$+0x23936>
 284:	6961                	lui	s2,0x18
 286:	2f6e                	fld	ft10,216(sp)
 288:	7562                	ld	a0,56(sp)
 28a:	6c69                	lui	s8,0x1a
 28c:	2f64                	fld	fs1,216(a4)
 28e:	7562                	ld	a0,56(sp)
 290:	6c69                	lui	s8,0x1a
 292:	2d64                	fld	fs1,216(a0)
 294:	2d636367          	0x2d636367
 298:	656e                	ld	a0,216(sp)
 29a:	62696c77          	0x62696c77
 29e:	732d                	lui	t1,0xfffeb
 2a0:	6174                	ld	a3,192(a0)
 2a2:	2f326567          	0x2f326567
 2a6:	6972                	ld	s2,280(sp)
 2a8:	36766373          	csrrsi	t1,0x367,12
 2ac:	2d34                	fld	fa3,88(a0)
 2ae:	6e75                	lui	t3,0x1d
 2b0:	776f6e6b          	0x776f6e6b
 2b4:	2d6e                	fld	fs10,216(sp)
 2b6:	6c65                	lui	s8,0x19
 2b8:	2f66                	fld	ft10,88(sp)
 2ba:	696c                	ld	a1,208(a0)
 2bc:	6762                	ld	a4,24(sp)
 2be:	5f006363          	bltu	zero,a6,8a4 <_start-0xf80c>
 2c2:	5046                	0x5046
 2c4:	555f 494e 4e4f      	0x4e4f494e555f
 2ca:	445f 7300 6275      	0x62757300445f
 2d0:	645f 6e6f 0065      	0x656e6f645f
 2d6:	465f 5f50 4150      	0x41505f50465f
 2dc:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
 2e0:	4d45                	li	s10,17
 2e2:	5249                	li	tp,-14
 2e4:	5741                	li	a4,-16
 2e6:	545f 655f 6100      	0x6100655f545f
 2ec:	6464                	ld	s1,200(s0)
 2ee:	0031                	c.addi	zero,12
 2f0:	6461                	lui	s0,0x18
 2f2:	3264                	fld	fs1,224(a2)
 2f4:	6200                	ld	s0,0(a2)
 2f6:	7469                	lui	s0,0xffffa
 2f8:	465f0073          	0x465f0073
 2fc:	5f50                	lw	a2,60(a4)
 2fe:	4150                	lw	a2,4(a0)
 300:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
 304:	4d45                	li	s10,17
 306:	5249                	li	tp,-14
 308:	5741                	li	a4,-16
 30a:	695f 5f73 6974      	0x69745f73695f
 310:	796e                	ld	s2,248(sp)
 312:	5f00                	lw	s0,56(a4)
 314:	7266                	ld	tp,120(sp)
 316:	006d                	c.addi	zero,27
 318:	6d6f682f          	0x6d6f682f
 31c:	2f65                	addiw	t5,t5,25
 31e:	6568                	ld	a0,200(a0)
 320:	6168                	ld	a0,192(a0)
 322:	6f442f6f          	jal	t5,42a16 <__global_pointer$+0x2fa46>
 326:	6f6c6e77          	0x6f6c6e77
 32a:	6461                	lui	s0,0x18
 32c:	72662f73          	csrrs	t5,0x726,a2
 330:	6565                	lui	a0,0x19
 332:	6f64                	ld	s1,216(a4)
 334:	2f6d                	addiw	t5,t5,27
 336:	6f72                	ld	t5,280(sp)
 338:	74656b63          	bltu	a0,t1,a8e <_start-0xf622>
 33c:	632d                	lui	t1,0xb
 33e:	6968                	ld	a0,208(a0)
 340:	2f70                	fld	fa2,216(a4)
 342:	6972                	ld	s2,280(sp)
 344:	2d766373          	csrrsi	t1,0x2d7,12
 348:	6f74                	ld	a3,216(a4)
 34a:	2f736c6f          	jal	s8,36e40 <__global_pointer$+0x23e70>
 34e:	6972                	ld	s2,280(sp)
 350:	2d766373          	csrrsi	t1,0x2d7,12
 354:	2d756e67          	0x2d756e67
 358:	6f74                	ld	a3,216(a4)
 35a:	68636c6f          	jal	s8,369e0 <__global_pointer$+0x23a10>
 35e:	6961                	lui	s2,0x18
 360:	2f6e                	fld	ft10,216(sp)
 362:	7562                	ld	a0,56(sp)
 364:	6c69                	lui	s8,0x1a
 366:	2f64                	fld	fs1,216(a4)
 368:	2e2e                	fld	ft8,200(sp)
 36a:	7369722f          	0x7369722f
 36e:	672d7663          	bleu	s2,s10,9da <_start-0xf6d6>
 372:	6c2f6363          	bltu	t5,sp,a38 <_start-0xf678>
 376:	6269                	lui	tp,0x1a
 378:	2f636367          	0x2f636367
 37c:	74666f73          	csrrsi	t5,0x746,12
 380:	662d                	lui	a2,0xb
 382:	2f70                	fld	fa2,216(a4)
 384:	756d                	lui	a0,0xffffb
 386:	646c                	ld	a1,200(s0)
 388:	3366                	fld	ft6,120(sp)
 38a:	632e                	ld	t1,200(sp)
 38c:	5f00                	lw	s0,56(a4)
 38e:	5046                	0x5046
 390:	4d5f 4c55 4d5f      	0x4d5f4c554d5f
 396:	4145                	li	sp,17
 398:	5f54                	lw	a3,60(a4)
 39a:	5f31                	li	t5,-20
 39c:	65646977          	0x65646977
 3a0:	5a5f 665f 0030      	0x30665f5a5f
 3a6:	465f 5f50 554d      	0x554d5f50465f
 3ac:	5f4c                	lw	a1,60(a4)
 3ae:	454d                	li	a0,19
 3b0:	5441                	li	s0,-16
 3b2:	315f 775f 6469      	0x6469775f315f
 3b8:	5f65                	li	t5,-7
 3ba:	5f5a                	lw	t5,180(sp)
 3bc:	3166                	fld	ft2,120(sp)
 3be:	5f00                	lw	s0,56(a4)
 3c0:	755f 0068 5f5f      	0x5f5f0068755f
 3c6:	6c75                	lui	s8,0x1d
 3c8:	5500                	lw	s0,40(a0)
 3ca:	5748                	lw	a0,44(a4)
 3cc:	7974                	ld	a3,240(a0)
 3ce:	6570                	ld	a2,200(a0)
 3d0:	5f00                	lw	s0,56(a4)
 3d2:	785f 0030 5355      	0x53550030785f
 3d8:	7449                	lui	s0,0xffff2
 3da:	7079                	0x7079
 3dc:	0065                	c.addi	zero,25
 3de:	465f 5f50 4e55      	0x4e555f50465f
 3e4:	4150                	lw	a2,4(a0)
 3e6:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 3ea:	4e41                	li	t3,16
 3ec:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 3f0:	4c41                	li	s8,16
 3f2:	735f 6968 7466      	0x74666968735f
 3f8:	5f00                	lw	s0,56(a4)
 3fa:	5046                	0x5046
 3fc:	505f 4341 5f4b      	0x5f4b4341505f
 402:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 406:	494e                	lw	s2,208(sp)
 408:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 40c:	5f54                	lw	a3,60(a4)
 40e:	0066                	0x66
 410:	465f 5f50 4150      	0x41505f50465f
 416:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 41a:	4e41                	li	t3,16
 41c:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 420:	4c41                	li	s8,16
 422:	545f 655f 5f00      	0x5f00655f545f
 428:	5046                	0x5046
 42a:	505f 4341 5f4b      	0x5f4b4341505f
 430:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 434:	494e                	lw	s2,208(sp)
 436:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 43a:	5f54                	lw	a3,60(a4)
 43c:	465f0073          	0x465f0073
 440:	5f50                	lw	a2,60(a4)
 442:	4150                	lw	a2,4(a0)
 444:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 448:	4e41                	li	t3,16
 44a:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 44e:	4c41                	li	s8,16
 450:	695f 5f73 6974      	0x69745f73695f
 456:	796e                	ld	s2,248(sp)
 458:	5f00                	lw	s0,56(a4)
 45a:	5046                	0x5046
 45c:	505f 4341 5f4b      	0x5f4b4341505f
 462:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 466:	494e                	lw	s2,208(sp)
 468:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 46c:	5f54                	lw	a3,60(a4)
 46e:	5f5f0063          	beq	t5,s5,a4e <_start-0xf662>
 472:	3178                	fld	fa4,224(a0)
 474:	5f00                	lw	s0,56(a4)
 476:	785f 0033 5f5f      	0x5f5f0033785f
 47c:	6876                	ld	a6,344(sp)
 47e:	5f00                	lw	s0,56(a4)
 480:	765f 006c 5f5f      	0x5f5f006c765f
 486:	756d                	lui	a0,0xffffb
 488:	646c                	ld	a1,200(s0)
 48a:	3366                	fld	ft6,120(sp)
 48c:	5f00                	lw	s0,56(a4)
 48e:	785f 0032 5f5f      	0x5f5f0032785f
 494:	64627573          	csrrci	a0,0x646,4
 498:	3366                	fld	ft6,120(sp)
 49a:	2f00                	fld	fs0,24(a4)
 49c:	6f68                	ld	a0,216(a4)
 49e:	656d                	lui	a0,0x1b
 4a0:	6865682f          	0x6865682f
 4a4:	6f61                	lui	t5,0x18
 4a6:	776f442f          	0x776f442f
 4aa:	6c6e                	ld	s8,216(sp)
 4ac:	7364616f          	jal	sp,46be2 <__global_pointer$+0x33c12>
 4b0:	6572662f          	0x6572662f
 4b4:	6465                	lui	s0,0x19
 4b6:	722f6d6f          	jal	s10,f6bd8 <__global_pointer$+0xe3c08>
 4ba:	656b636f          	jal	t1,b6b10 <__global_pointer$+0xa3b40>
 4be:	2d74                	fld	fa3,216(a0)
 4c0:	70696863          	bltu	s2,t1,bd0 <_start-0xf4e0>
 4c4:	7369722f          	0x7369722f
 4c8:	742d7663          	bleu	sp,s10,c14 <_start-0xf49c>
 4cc:	736c6f6f          	jal	t5,c6c02 <__global_pointer$+0xb3c32>
 4d0:	7369722f          	0x7369722f
 4d4:	672d7663          	bleu	s2,s10,b40 <_start-0xf570>
 4d8:	756e                	ld	a0,248(sp)
 4da:	742d                	lui	s0,0xfffeb
 4dc:	636c6f6f          	jal	t5,c6b12 <__global_pointer$+0xb3b42>
 4e0:	6168                	ld	a0,192(a0)
 4e2:	6e69                	lui	t3,0x1a
 4e4:	6975622f          	0x6975622f
 4e8:	646c                	ld	a1,200(s0)
 4ea:	2f2e2e2f          	0x2f2e2e2f
 4ee:	6972                	ld	s2,280(sp)
 4f0:	2d766373          	csrrsi	t1,0x2d7,12
 4f4:	2f636367          	0x2f636367
 4f8:	696c                	ld	a1,208(a0)
 4fa:	6762                	ld	a4,24(sp)
 4fc:	732f6363          	bltu	t5,s2,c22 <_start-0xf48e>
 500:	2d74666f          	jal	a2,46fd6 <__global_pointer$+0x34006>
 504:	7066                	0x7066
 506:	6275732f          	0x6275732f
 50a:	6664                	ld	s1,200(a2)
 50c:	00632e33          	slt	t3,t1,t1
 510:	6d6f682f          	0x6d6f682f
 514:	2f65                	addiw	t5,t5,25
 516:	6568                	ld	a0,200(a0)
 518:	6168                	ld	a0,192(a0)
 51a:	6f442f6f          	jal	t5,42c0e <__global_pointer$+0x2fc3e>
 51e:	6f6c6e77          	0x6f6c6e77
 522:	6461                	lui	s0,0x18
 524:	72662f73          	csrrs	t5,0x726,a2
 528:	6565                	lui	a0,0x19
 52a:	6f64                	ld	s1,216(a4)
 52c:	2f6d                	addiw	t5,t5,27
 52e:	6f72                	ld	t5,280(sp)
 530:	74656b63          	bltu	a0,t1,c86 <_start-0xf42a>
 534:	632d                	lui	t1,0xb
 536:	6968                	ld	a0,208(a0)
 538:	2f70                	fld	fa2,216(a4)
 53a:	6972                	ld	s2,280(sp)
 53c:	2d766373          	csrrsi	t1,0x2d7,12
 540:	6f74                	ld	a3,216(a4)
 542:	2f736c6f          	jal	s8,37038 <__global_pointer$+0x24068>
 546:	6972                	ld	s2,280(sp)
 548:	2d766373          	csrrsi	t1,0x2d7,12
 54c:	2d756e67          	0x2d756e67
 550:	6f74                	ld	a3,216(a4)
 552:	68636c6f          	jal	s8,36bd8 <__global_pointer$+0x23c08>
 556:	6961                	lui	s2,0x18
 558:	2f6e                	fld	ft10,216(sp)
 55a:	7562                	ld	a0,56(sp)
 55c:	6c69                	lui	s8,0x1a
 55e:	2f64                	fld	fs1,216(a4)
 560:	2e2e                	fld	ft8,200(sp)
 562:	7369722f          	0x7369722f
 566:	672d7663          	bleu	s2,s10,bd2 <_start-0xf4de>
 56a:	6c2f6363          	bltu	t5,sp,c30 <_start-0xf480>
 56e:	6269                	lui	tp,0x1a
 570:	2f636367          	0x2f636367
 574:	74666f73          	csrrsi	t5,0x746,12
 578:	662d                	lui	a2,0xb
 57a:	2f70                	fld	fa2,216(a4)
 57c:	6c66                	ld	s8,88(sp)
 57e:	7374616f          	jal	sp,474b4 <__global_pointer$+0x344e4>
 582:	6469                	lui	s0,0x1a
 584:	2e66                	fld	ft8,88(sp)
 586:	61700063          	beq	zero,s7,b86 <_start-0xf52a>
 58a:	735f6b63          	bltu	t5,s5,cc0 <_start-0xf3f0>
 58e:	6d65                	lui	s10,0x19
 590:	7269                	lui	tp,0xffffa
 592:	7761                	lui	a4,0xffff8
 594:	5f00                	lw	s0,56(a4)
 596:	5046                	0x5046
 598:	465f 4f52 5f4d      	0x5f4d4f52465f
 59e:	4e49                	li	t3,18
 5a0:	5f54                	lw	a3,60(a4)
 5a2:	7275                	lui	tp,0xffffd
 5a4:	5f00                	lw	s0,56(a4)
 5a6:	5046                	0x5046
 5a8:	465f 4f52 5f4d      	0x5f4d4f52465f
 5ae:	4e49                	li	t3,18
 5b0:	5f54                	lw	a3,60(a4)
 5b2:	7a6c                	ld	a1,240(a2)
 5b4:	5f00                	lw	s0,56(a4)
 5b6:	665f 6f6c 7461      	0x74616f6c665f
 5bc:	66646973          	csrrsi	s2,0x666,8
 5c0:	4600                	lw	s0,8(a2)
 5c2:	5f50                	lw	a2,60(a4)
 5c4:	5845                	li	a6,-15
 5c6:	4554                	lw	a3,12(a0)
 5c8:	444e                	lw	s0,208(sp)
 5ca:	6c5f 007a 465f      	0x465f007a6c5f
 5d0:	5f50                	lw	a2,60(a4)
 5d2:	4e55                	li	t3,21
 5d4:	4f49                	li	t5,18
 5d6:	5f4e                	lw	t5,240(sp)
 5d8:	682f0053          	0x682f0053
 5dc:	2f656d6f          	jal	s10,568d2 <__global_pointer$+0x43902>
 5e0:	6568                	ld	a0,200(a0)
 5e2:	6168                	ld	a0,192(a0)
 5e4:	6f442f6f          	jal	t5,42cd8 <__global_pointer$+0x2fd08>
 5e8:	6f6c6e77          	0x6f6c6e77
 5ec:	6461                	lui	s0,0x18
 5ee:	72662f73          	csrrs	t5,0x726,a2
 5f2:	6565                	lui	a0,0x19
 5f4:	6f64                	ld	s1,216(a4)
 5f6:	2f6d                	addiw	t5,t5,27
 5f8:	6f72                	ld	t5,280(sp)
 5fa:	74656b63          	bltu	a0,t1,d50 <_start-0xf360>
 5fe:	632d                	lui	t1,0xb
 600:	6968                	ld	a0,208(a0)
 602:	2f70                	fld	fa2,216(a4)
 604:	6972                	ld	s2,280(sp)
 606:	2d766373          	csrrsi	t1,0x2d7,12
 60a:	6f74                	ld	a3,216(a4)
 60c:	2f736c6f          	jal	s8,37102 <__global_pointer$+0x24132>
 610:	6972                	ld	s2,280(sp)
 612:	2d766373          	csrrsi	t1,0x2d7,12
 616:	2d756e67          	0x2d756e67
 61a:	6f74                	ld	a3,216(a4)
 61c:	68636c6f          	jal	s8,36ca2 <__global_pointer$+0x23cd2>
 620:	6961                	lui	s2,0x18
 622:	2f6e                	fld	ft10,216(sp)
 624:	7562                	ld	a0,56(sp)
 626:	6c69                	lui	s8,0x1a
 628:	2f64                	fld	fs1,216(a4)
 62a:	2e2e                	fld	ft8,200(sp)
 62c:	7369722f          	0x7369722f
 630:	672d7663          	bleu	s2,s10,c9c <_start-0xf414>
 634:	6c2f6363          	bltu	t5,sp,cfa <_start-0xf3b6>
 638:	6269                	lui	tp,0x1a
 63a:	2f636367          	0x2f636367
 63e:	74666f73          	csrrsi	t5,0x746,12
 642:	662d                	lui	a2,0xb
 644:	2f70                	fld	fa2,216(a4)
 646:	7865                	lui	a6,0xffff9
 648:	6574                	ld	a3,200(a0)
 64a:	646e                	ld	s0,216(sp)
 64c:	66646673          	csrrsi	a2,0x666,8
 650:	2e32                	fld	ft8,264(sp)
 652:	46530063          	beq	t1,t0,ab2 <_start-0xf5fe>
 656:	7974                	ld	a3,240(a0)
 658:	6570                	ld	a2,200(a0)
 65a:	5f00                	lw	s0,56(a4)
 65c:	655f 7478 6e65      	0x6e657478655f
 662:	7364                	ld	s1,224(a4)
 664:	6466                	ld	s0,88(sp)
 666:	3266                	fld	ft4,120(sp)
 668:	5f00                	lw	s0,56(a4)
 66a:	745f 7572 636e      	0x636e7572745f
 670:	6664                	ld	s1,200(a2)
 672:	00326673          	csrrsi	a2,fcsr,4
 676:	6d6f682f          	0x6d6f682f
 67a:	2f65                	addiw	t5,t5,25
 67c:	6568                	ld	a0,200(a0)
 67e:	6168                	ld	a0,192(a0)
 680:	6f442f6f          	jal	t5,42d74 <__global_pointer$+0x2fda4>
 684:	6f6c6e77          	0x6f6c6e77
 688:	6461                	lui	s0,0x18
 68a:	72662f73          	csrrs	t5,0x726,a2
 68e:	6565                	lui	a0,0x19
 690:	6f64                	ld	s1,216(a4)
 692:	2f6d                	addiw	t5,t5,27
 694:	6f72                	ld	t5,280(sp)
 696:	74656b63          	bltu	a0,t1,dec <_start-0xf2c4>
 69a:	632d                	lui	t1,0xb
 69c:	6968                	ld	a0,208(a0)
 69e:	2f70                	fld	fa2,216(a4)
 6a0:	6972                	ld	s2,280(sp)
 6a2:	2d766373          	csrrsi	t1,0x2d7,12
 6a6:	6f74                	ld	a3,216(a4)
 6a8:	2f736c6f          	jal	s8,3719e <__global_pointer$+0x241ce>
 6ac:	6972                	ld	s2,280(sp)
 6ae:	2d766373          	csrrsi	t1,0x2d7,12
 6b2:	2d756e67          	0x2d756e67
 6b6:	6f74                	ld	a3,216(a4)
 6b8:	68636c6f          	jal	s8,36d3e <__global_pointer$+0x23d6e>
 6bc:	6961                	lui	s2,0x18
 6be:	2f6e                	fld	ft10,216(sp)
 6c0:	7562                	ld	a0,56(sp)
 6c2:	6c69                	lui	s8,0x1a
 6c4:	2f64                	fld	fs1,216(a4)
 6c6:	2e2e                	fld	ft8,200(sp)
 6c8:	7369722f          	0x7369722f
 6cc:	672d7663          	bleu	s2,s10,d38 <_start-0xf378>
 6d0:	6c2f6363          	bltu	t5,sp,d96 <_start-0xf31a>
 6d4:	6269                	lui	tp,0x1a
 6d6:	2f636367          	0x2f636367
 6da:	74666f73          	csrrsi	t5,0x746,12
 6de:	662d                	lui	a2,0xb
 6e0:	2f70                	fld	fa2,216(a4)
 6e2:	7274                	ld	a3,224(a2)
 6e4:	6e75                	lui	t3,0x1d
 6e6:	73666463          	bltu	a2,s6,e0e <_start-0xf2a2>
 6ea:	3266                	fld	ft4,120(sp)
 6ec:	632e                	ld	t1,200(sp)
 6ee:	2f00                	fld	fs0,24(a4)
 6f0:	6f68                	ld	a0,216(a4)
 6f2:	656d                	lui	a0,0x1b
 6f4:	6865682f          	0x6865682f
 6f8:	6f61                	lui	t5,0x18
 6fa:	776f442f          	0x776f442f
 6fe:	6c6e                	ld	s8,216(sp)
 700:	7364616f          	jal	sp,46e36 <__global_pointer$+0x33e66>
 704:	6572662f          	0x6572662f
 708:	6465                	lui	s0,0x19
 70a:	722f6d6f          	jal	s10,f6e2c <__global_pointer$+0xe3e5c>
 70e:	656b636f          	jal	t1,b6d64 <__global_pointer$+0xa3d94>
 712:	2d74                	fld	fa3,216(a0)
 714:	70696863          	bltu	s2,t1,e24 <_start-0xf28c>
 718:	7369722f          	0x7369722f
 71c:	742d7663          	bleu	sp,s10,e68 <_start-0xf248>
 720:	736c6f6f          	jal	t5,c6e56 <__global_pointer$+0xb3e86>
 724:	7369722f          	0x7369722f
 728:	672d7663          	bleu	s2,s10,d94 <_start-0xf31c>
 72c:	756e                	ld	a0,248(sp)
 72e:	742d                	lui	s0,0xfffeb
 730:	636c6f6f          	jal	t5,c6d66 <__global_pointer$+0xb3d96>
 734:	6168                	ld	a0,192(a0)
 736:	6e69                	lui	t3,0x1a
 738:	6975622f          	0x6975622f
 73c:	646c                	ld	a1,200(s0)
 73e:	2f2e2e2f          	0x2f2e2e2f
 742:	6972                	ld	s2,280(sp)
 744:	2d766373          	csrrsi	t1,0x2d7,12
 748:	2f636367          	0x2f636367
 74c:	696c                	ld	a1,208(a0)
 74e:	6762                	ld	a4,24(sp)
 750:	632f6363          	bltu	t5,s2,d76 <_start-0xf33a>
 754:	69666e6f          	jal	t3,66dea <__global_pointer$+0x53e1a>
 758:	69722f67          	0x69722f67
 75c:	2f766373          	csrrsi	t1,0x2f7,12
 760:	756d                	lui	a0,0xffffb
 762:	646c                	ld	a1,200(s0)
 764:	3369                	addiw	t1,t1,-6
 766:	532e                	lw	t1,232(sp)
 768:	4700                	lw	s0,8(a4)
 76a:	554e                	lw	a0,240(sp)
 76c:	4120                	lw	s0,64(a0)
 76e:	2e322053          	0x2e322053
 772:	3932                	fld	fs2,296(sp)
 774:	302e                	fld	ft0,232(sp)
 776:	7300                	ld	s0,32(a4)
 778:	6f68                	ld	a0,216(a4)
 77a:	7472                	ld	s0,312(sp)
 77c:	6920                	ld	s0,80(a0)
 77e:	746e                	ld	s0,248(sp)
 780:	6800                	ld	s0,16(s0)
 782:	6174                	ld	a3,192(a0)
 784:	5f62                	lw	t5,56(sp)
 786:	6168                	ld	a0,192(a0)
 788:	705f6873          	csrrsi	a6,0x705,30
 78c:	746e696f          	jal	s2,e6ed2 <__global_pointer$+0xd3f02>
 790:	7265                	lui	tp,0xffff9
 792:	5f00                	lw	s0,56(a4)
 794:	6172                	ld	sp,280(sp)
 796:	646e                	ld	s0,216(sp)
 798:	3834                	fld	fa3,112(s0)
 79a:	5f00                	lw	s0,56(a4)
 79c:	6d65                	lui	s10,0x19
 79e:	7265                	lui	tp,0xffff9
 7a0:	636e6567          	0x636e6567
 7a4:	0079                	c.addi	zero,30
 7a6:	645f 7961 696c      	0x696c7961645f
 7ac:	00746867          	0x746867
 7b0:	706d6f63          	bltu	s10,t1,ece <_start-0xf1e2>
 7b4:	656c                	ld	a1,200(a0)
 7b6:	2078                	fld	fa4,192(s0)
 7b8:	6f64                	ld	s1,216(a4)
 7ba:	6275                	lui	tp,0x1d
 7bc:	656c                	ld	a1,200(a0)
 7be:	5f00                	lw	s0,56(a4)
 7c0:	64746567          	0x64746567
 7c4:	7461                	lui	s0,0xffff8
 7c6:	5f65                	li	t5,-7
 7c8:	7265                	lui	tp,0xffff9
 7ca:	0072                	0x72
 7cc:	645f 7461 0061      	0x617461645f
 7d2:	775f 7263 6f74      	0x6f747263775f
 7d8:	626d                	lui	tp,0x1b
 7da:	735f 6174 6574      	0x65746174735f
 7e0:	5f00                	lw	s0,56(a4)
 7e2:	72736377          	0x72736377
 7e6:	6f74                	ld	a3,216(a4)
 7e8:	626d                	lui	tp,0x1b
 7ea:	74735f73          	csrrwi	t5,0x747,6
 7ee:	7461                	lui	s0,0xffff8
 7f0:	0065                	c.addi	zero,25
 7f2:	5f5f 6c63 647a      	0x647a6c635f5f
 7f8:	3269                	addiw	tp,tp,-6
 7fa:	5f00                	lw	s0,56(a4)
 7fc:	626c                	ld	a1,192(a2)
 7fe:	7366                	ld	t1,120(sp)
 800:	7a69                	lui	s4,0xffffa
 802:	0065                	c.addi	zero,25
 804:	706d6f63          	bltu	s10,t1,f22 <_start-0xf18e>
 808:	656c                	ld	a1,200(a0)
 80a:	2078                	fld	fa4,192(s0)
 80c:	6f6c                	ld	a1,216(a4)
 80e:	676e                	ld	a4,216(sp)
 810:	6420                	ld	s0,72(s0)
 812:	6c62756f          	jal	a0,27ed8 <__global_pointer$+0x14f08>
 816:	0065                	c.addi	zero,25
 818:	6972                	ld	s2,280(sp)
 81a:	5f766373          	csrrsi	t1,0x5f7,12
 81e:	6261                	lui	tp,0x18
 820:	0069                	c.addi	zero,26
 822:	5f5f 6f6c 6163      	0x61636f6c5f5f
 828:	656c                	ld	a1,200(a0)
 82a:	745f 5f00 626d      	0x626d5f00745f
 830:	7472                	ld	s0,312(sp)
 832:	5f63776f          	jal	a4,37e28 <__global_pointer$+0x24e58>
 836:	74617473          	csrrci	s0,0x746,2
 83a:	0065                	c.addi	zero,25
 83c:	745f 6e7a 6d61      	0x6d616e7a745f
 842:	0065                	c.addi	zero,25
 844:	775f 7463 6d6f      	0x6d6f7463775f
 84a:	5f62                	lw	t5,56(sp)
 84c:	74617473          	csrrci	s0,0x746,2
 850:	0065                	c.addi	zero,25
 852:	5f5f 6d74 735f      	0x735f6d745f5f
 858:	6365                	lui	t1,0x19
 85a:	5f00                	lw	s0,56(a4)
 85c:	736f6c63          	bltu	t5,s6,f94 <_start-0xf11c>
 860:	0065                	c.addi	zero,25
 862:	755f 7562 0066      	0x667562755f
 868:	625f 7361 0065      	0x657361625f
 86e:	5f5f 6d74 685f      	0x685f6d745f5f
 874:	0072756f          	jal	a0,2807a <__global_pointer$+0x150aa>
 878:	6e75                	lui	t3,0x1d
 87a:	63657073          	csrci	0x636,10
 87e:	5f76                	lw	t5,124(sp)
 880:	69727473          	csrrci	s0,0x697,4
 884:	676e                	ld	a4,216(sp)
 886:	5f5f0073          	0x5f5f0073
 88a:	5f006673          	csrrsi	a2,0x5f0,0
 88e:	655f6e6f          	jal	t3,f76e2 <__global_pointer$+0xe4712>
 892:	6978                	ld	a4,208(a0)
 894:	5f74                	lw	a3,124(a4)
 896:	7261                	lui	tp,0xffff8
 898:	5f007367          	0x5f007367
 89c:	6b6f6f63          	bltu	t5,s6,f5a <_start-0xf156>
 8a0:	6569                	lui	a0,0x1a
 8a2:	5f00                	lw	s0,56(a4)
 8a4:	735f 6c67 6575      	0x65756c67735f
 8aa:	5f00                	lw	s0,56(a4)
 8ac:	6c66                	ld	s8,88(sp)
 8ae:	6761                	lui	a4,0x18
 8b0:	695f0073          	0x695f0073
 8b4:	78635f73          	csrrwi	t5,0x786,6
 8b8:	0061                	c.addi	zero,24
 8ba:	775f 7364 5f00      	0x5f007364775f
 8c0:	465f 4c49 0045      	0x454c49465f
 8c6:	725f 7365 6c75      	0x6c757365725f
 8cc:	5f74                	lw	a3,124(a4)
 8ce:	5f5f006b          	0x5f5f006b
 8d2:	6f70                	ld	a2,216(a4)
 8d4:	6370                	ld	a2,192(a4)
 8d6:	746e756f          	jal	a0,e801c <__global_pointer$+0xd504c>
 8da:	745f 6261 5f00      	0x5f006261745f
 8e0:	5f737973          	csrrci	s2,0x5f7,6
 8e4:	7265                	lui	tp,0xffff9
 8e6:	6c72                	ld	s8,280(sp)
 8e8:	7369                	lui	t1,0xffffa
 8ea:	0074                	addi	a3,sp,12
 8ec:	635f 7476 7562      	0x75627476635f
 8f2:	0066                	0x66
 8f4:	6d5f 7362 7472      	0x747273626d5f
 8fa:	7363776f          	jal	a4,38030 <__global_pointer$+0x25060>
 8fe:	735f 6174 6574      	0x65746174735f
 904:	5f00                	lw	s0,56(a4)
 906:	626d                	lui	tp,0x1b
 908:	6c72                	ld	s8,280(sp)
 90a:	6e65                	lui	t3,0x19
 90c:	735f 6174 6574      	0x65746174735f
 912:	7200                	ld	s0,32(a2)
 914:	7369                	lui	t1,0xffffa
 916:	635f7663          	bleu	s5,t5,f42 <_start-0xf16e>
 91a:	6f6d                	lui	t5,0x1b
 91c:	6564                	ld	s1,200(a0)
 91e:	006c                	addi	a1,sp,12
 920:	665f 616e 6772      	0x6772616e665f
 926:	665f0073          	0x665f0073
 92a:	736e                	ld	t1,248(sp)
 92c:	5f00                	lw	s0,56(a4)
 92e:	6e676973          	csrrsi	s2,0x6e6,14
 932:	5f00                	lw	s0,56(a4)
 934:	65647473          	csrrci	s0,0x656,8
 938:	7272                	ld	tp,312(sp)
 93a:	5f00                	lw	s0,56(a4)
 93c:	6942                	ld	s2,16(sp)
 93e:	746e6967          	0x746e6967
 942:	5f00                	lw	s0,56(a4)
 944:	6d6d6167          	0x6d6d6167
 948:	5f61                	li	t5,-8
 94a:	6e676973          	csrrsi	s2,0x6e6,14
 94e:	006d6167          	0x6d6167
 952:	6e5f 616d 6c6c      	0x6c6c616d6e5f
 958:	5f00636f          	jal	t1,6f48 <_start-0x9168>
 95c:	745f 006d 6972      	0x6972006d745f
 962:	5f766373          	csrrsi	t1,0x5f7,12
 966:	6261                	lui	tp,0x18
 968:	5f69                	li	t5,-6
 96a:	7974                	ld	a3,240(a0)
 96c:	6570                	ld	a2,200(a0)
 96e:	5f00                	lw	s0,56(a4)
 970:	626d                	lui	tp,0x1b
 972:	74617473          	csrrci	s0,0x746,2
 976:	0065                	c.addi	zero,25
 978:	5f5f 6377 6268      	0x626863775f5f
 97e:	5f00                	lw	s0,56(a4)
 980:	6c747663          	bleu	t2,s0,104c <_start-0xf064>
 984:	6e65                	lui	t3,0x19
 986:	5f00                	lw	s0,56(a4)
 988:	6966                	ld	s2,88(sp)
 98a:	656c                	ld	a1,200(a0)
 98c:	6800                	ld	s0,16(s0)
 98e:	7361                	lui	t1,0xffff8
 990:	7668                	ld	a0,232(a2)
 992:	6c61                	lui	s8,0x18
 994:	745f 5f00 696e      	0x696e5f00745f
 99a:	0073626f          	jal	tp,371a0 <__global_pointer$+0x241d0>
 99e:	726f6873          	csrrsi	a6,0x726,30
 9a2:	2074                	fld	fa3,192(s0)
 9a4:	6e75                	lui	t3,0x1d
 9a6:	6e676973          	csrrsi	s2,0x6e6,14
 9aa:	6465                	lui	s0,0x19
 9ac:	6920                	ld	s0,80(a0)
 9ae:	746e                	ld	s0,248(sp)
 9b0:	5f00                	lw	s0,56(a4)
 9b2:	7461                	lui	s0,0xffff8
 9b4:	7865                	lui	a6,0xffff9
 9b6:	7469                	lui	s0,0xffffa
 9b8:	0030                	addi	a2,sp,8
 9ba:	735f 6769 616e      	0x616e6769735f
 9c0:	5f6c                	lw	a1,124(a4)
 9c2:	7562                	ld	a0,56(sp)
 9c4:	0066                	0x66
 9c6:	615f 6373 6974      	0x69746373615f
 9cc:	656d                	lui	a0,0x1b
 9ce:	625f 6675 5f00      	0x5f006675625f
 9d4:	6572                	ld	a0,280(sp)
 9d6:	746c7573          	csrrci	a0,0x746,24
 9da:	5f00                	lw	s0,56(a4)
 9dc:	775f 6863 4100      	0x41006863775f
 9e2:	4942                	lw	s2,16(sp)
 9e4:	495f 504c 3233      	0x3233504c495f
 9ea:	0046                	0x46
 9ec:	6e65                	lui	t3,0x19
 9ee:	6976                	ld	s2,344(sp)
 9f0:	6f72                	ld	t5,280(sp)
 9f2:	006e                	0x6e
 9f4:	746e6977          	0x746e6977
 9f8:	745f 5f00 6f6c      	0x6f6c5f00745f
 9fe:	41006b63          	bltu	zero,a6,e14 <_start-0xf29c>
 a02:	4942                	lw	s2,16(sp)
 a04:	495f 504c 3233      	0x3233504c495f
 a0a:	0044                	addi	s1,sp,4
 a0c:	6d5f 6c75 0074      	0x746c756d5f
 a12:	6e75                	lui	t3,0x1d
 a14:	63657073          	csrci	0x636,10
 a18:	735f 7274 6e69      	0x6e697274735f
 a1e:	6f007367          	0x6f007367
 a22:	7470                	ld	a2,232(s0)
 a24:	6572                	ld	a0,280(sp)
 a26:	00746573          	csrrsi	a0,0x7,8
 a2a:	775f 6972 6574      	0x65746972775f
 a30:	5f00                	lw	s0,56(a4)
 a32:	745f 5f6d 6579      	0x65795f6d745f
 a38:	7261                	lui	tp,0xffff8
 a3a:	5f00                	lw	s0,56(a4)
 a3c:	6e75                	lui	t3,0x1d
 a3e:	7375                	lui	t1,0xffffd
 a40:	6465                	lui	s0,0x19
 a42:	725f 6e61 0064      	0x646e61725f
 a48:	6972                	ld	s2,280(sp)
 a4a:	5f766373          	csrrsi	t1,0x5f7,12
 a4e:	65646f63          	bltu	s0,s6,10ac <_start-0xf004>
 a52:	6d5f 646f 6c65      	0x6c65646f6d5f
 a58:	5f00                	lw	s0,56(a4)
 a5a:	7366666f          	jal	a2,67190 <__global_pointer$+0x541c0>
 a5e:	7465                	lui	s0,0xffff9
 a60:	2f00                	fld	fs0,24(a4)
 a62:	6f68                	ld	a0,216(a4)
 a64:	656d                	lui	a0,0x1b
 a66:	6865682f          	0x6865682f
 a6a:	6f61                	lui	t5,0x18
 a6c:	776f442f          	0x776f442f
 a70:	6c6e                	ld	s8,216(sp)
 a72:	7364616f          	jal	sp,471a8 <__global_pointer$+0x341d8>
 a76:	6572662f          	0x6572662f
 a7a:	6465                	lui	s0,0x19
 a7c:	722f6d6f          	jal	s10,f719e <__global_pointer$+0xe41ce>
 a80:	656b636f          	jal	t1,b70d6 <__global_pointer$+0xa4106>
 a84:	2d74                	fld	fa3,216(a0)
 a86:	70696863          	bltu	s2,t1,1196 <_start-0xef1a>
 a8a:	7369722f          	0x7369722f
 a8e:	742d7663          	bleu	sp,s10,11da <_start-0xeed6>
 a92:	736c6f6f          	jal	t5,c71c8 <__global_pointer$+0xb41f8>
 a96:	7369722f          	0x7369722f
 a9a:	672d7663          	bleu	s2,s10,1106 <_start-0xefaa>
 a9e:	756e                	ld	a0,248(sp)
 aa0:	742d                	lui	s0,0xfffeb
 aa2:	636c6f6f          	jal	t5,c70d8 <__global_pointer$+0xb4108>
 aa6:	6168                	ld	a0,192(a0)
 aa8:	6e69                	lui	t3,0x1a
 aaa:	6975622f          	0x6975622f
 aae:	646c                	ld	a1,200(s0)
 ab0:	2f2e2e2f          	0x2f2e2e2f
 ab4:	6972                	ld	s2,280(sp)
 ab6:	2d766373          	csrrsi	t1,0x2d7,12
 aba:	2f636367          	0x2f636367
 abe:	696c                	ld	a1,208(a0)
 ac0:	6762                	ld	a4,24(sp)
 ac2:	6c2f6363          	bltu	t5,sp,1188 <_start-0xef28>
 ac6:	6269                	lui	tp,0x1a
 ac8:	32636367          	0x32636367
 acc:	632e                	ld	t1,200(sp)
 ace:	5f00                	lw	s0,56(a4)
 ad0:	656e                	ld	a0,216(sp)
 ad2:	7478                	ld	a4,232(s0)
 ad4:	0066                	0x66
 ad6:	706d6f63          	bltu	s10,t1,11f4 <_start-0xeebc>
 ada:	656c                	ld	a1,200(a0)
 adc:	2078                	fld	fa4,192(s0)
 ade:	6c66                	ld	s8,88(sp)
 ae0:	0074616f          	jal	sp,472e6 <__global_pointer$+0x34316>
 ae4:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 aea:	5f006e6f          	jal	t3,70da <_start-0x8fd6>
 aee:	7461                	lui	s0,0xffff8
 af0:	7865                	lui	a6,0xffff9
 af2:	7469                	lui	s0,0xffffa
 af4:	7300                	ld	s0,32(a4)
 af6:	6275                	lui	tp,0x1d
 af8:	6174706f          	j	4890e <__global_pointer$+0x3593e>
 afc:	6772                	ld	a4,280(sp)
 afe:	5f00                	lw	s0,56(a4)
 b00:	735f 6964 6964      	0x69646964735f
 b06:	696e                	ld	s2,216(sp)
 b08:	0074                	addi	a3,sp,12
 b0a:	6f5f 6666 745f      	0x745f66666f5f
 b10:	5f00                	lw	s0,56(a4)
 b12:	7266                	ld	tp,120(sp)
 b14:	6565                	lui	a0,0x19
 b16:	696c                	ld	a1,208(a0)
 b18:	5f007473          	csrrci	s0,0x5f0,0
 b1c:	6974                	ld	a3,208(a0)
 b1e:	656d                	lui	a0,0x1b
 b20:	6f7a                	ld	t5,408(sp)
 b22:	656e                	ld	a0,216(sp)
 b24:	5f00                	lw	s0,56(a4)
 b26:	626d                	lui	tp,0x1b
 b28:	74617473          	csrrci	s0,0x746,2
 b2c:	5f65                	li	t5,-7
 b2e:	0074                	addi	a3,sp,12
 b30:	4c5f 434f 5f4b      	0x5f4b434f4c5f
 b36:	4552                	lw	a0,20(sp)
 b38:	53525543          	fmadd.d	fa0,ft4,fs5,fa0,unknown
 b3c:	5649                	li	a2,-14
 b3e:	5f45                	li	t5,-15
 b40:	0054                	addi	a3,sp,4
 b42:	725f 6165 0064      	0x646165725f
 b48:	4241                	li	tp,16
 b4a:	5f49                	li	t5,-14
 b4c:	504c                	lw	a1,36(s0)
 b4e:	3436                	fld	fs0,360(sp)
 b50:	4100                	lw	s0,0(a0)
 b52:	4942                	lw	s2,16(sp)
 b54:	495f 504c 3233      	0x3233504c495f
 b5a:	5f00                	lw	s0,56(a4)
 b5c:	7364                	ld	s1,224(a4)
 b5e:	61685f6f          	jal	t5,86174 <__global_pointer$+0x731a4>
 b62:	646e                	ld	s0,216(sp)
 b64:	656c                	ld	a1,200(a0)
 b66:	4300                	lw	s0,0(a4)
 b68:	5f4d                	li	t5,-13
 b6a:	454d                	li	a0,19
 b6c:	4144                	lw	s1,4(a0)
 b6e:	594e                	lw	s2,240(sp)
 b70:	5f00                	lw	s0,56(a4)
 b72:	656e                	ld	a0,216(sp)
 b74:	685f0077          	0x685f0077
 b78:	655f 7272 6f6e      	0x6f6e7272655f
 b7e:	5f00                	lw	s0,56(a4)
 b80:	6c66                	ld	s8,88(sp)
 b82:	5f6b636f          	jal	t1,b7178 <__global_pointer$+0xa41a8>
 b86:	0074                	addi	a3,sp,12
 b88:	5f5f 6d74 795f      	0x795f6d745f5f
 b8e:	6164                	ld	s1,192(a0)
 b90:	0079                	c.addi	zero,30
 b92:	5f5f 6273 6675      	0x667562735f5f
 b98:	5f00                	lw	s0,56(a4)
 b9a:	6c66                	ld	s8,88(sp)
 b9c:	6761                	lui	a4,0x18
 b9e:	5f003273          	csrrc	tp,0x5f0,zero
 ba2:	6f69                	lui	t5,0x1a
 ba4:	7362                	ld	t1,56(sp)
 ba6:	4300                	lw	s0,0(a4)
 ba8:	5f4d                	li	t5,-13
 baa:	454d                	li	a0,19
 bac:	4c44                	lw	s1,28(s0)
 bae:	6800574f          	fnmadd.s	fa4,ft0,ft0,fa3,unknown
 bb2:	6174                	ld	a3,192(a0)
 bb4:	5f62                	lw	t5,56(sp)
 bb6:	6168                	ld	a0,192(a0)
 bb8:	5f006873          	csrrsi	a6,0x5f0,0
 bbc:	735f 4946 454c      	0x454c4946735f
 bc2:	5f00                	lw	s0,56(a4)
 bc4:	5f737973          	csrrci	s2,0x5f7,6
 bc8:	656e                	ld	a0,216(sp)
 bca:	7272                	ld	tp,312(sp)
 bcc:	5f00                	lw	s0,56(a4)
 bce:	6172                	ld	sp,280(sp)
 bd0:	646e                	ld	s0,216(sp)
 bd2:	6e5f 7865 0074      	0x7478656e5f
 bd8:	6d5f 6c62 6e65      	0x6e656c626d5f
 bde:	735f 6174 6574      	0x65746174735f
 be4:	5f00                	lw	s0,56(a4)
 be6:	6e69                	lui	t3,0x1a
 be8:	695f0063          	beq	t5,s5,1268 <_start-0xee48>
 bec:	646e                	ld	s0,216(sp)
 bee:	5f00                	lw	s0,56(a4)
 bf0:	6f6c                	ld	a1,216(a4)
 bf2:	656c6163          	bltu	s8,s6,1234 <_start-0xee7c>
 bf6:	5f00                	lw	s0,56(a4)
 bf8:	635f 656c 6e61      	0x6e61656c635f
 bfe:	7075                	0x7075
 c00:	5f00                	lw	s0,56(a4)
 c02:	6e75                	lui	t3,0x1d
 c04:	63657073          	csrci	0x636,10
 c08:	6669                	lui	a2,0x1a
 c0a:	6569                	lui	a0,0x1a
 c0c:	5f64                	lw	s1,124(a4)
 c0e:	6f6c                	ld	a1,216(a4)
 c10:	656c6163          	bltu	s8,s6,1252 <_start-0xee5e>
 c14:	695f 666e 006f      	0x6f666e695f
 c1a:	6d5f 7861 6477      	0x647778616d5f
 c20:	725f0073          	0x725f0073
 c24:	6565                	lui	a0,0x19
 c26:	746e                	ld	s0,248(sp)
 c28:	5f00                	lw	s0,56(a4)
 c2a:	64656573          	csrrsi	a0,0x646,10
 c2e:	5f00                	lw	s0,56(a4)
 c30:	635f 756f 746e      	0x746e756f635f
 c36:	5f00                	lw	s0,56(a4)
 c38:	765f 6c61 6575      	0x65756c61765f
 c3e:	5f00                	lw	s0,56(a4)
 c40:	6b656573          	csrrsi	a0,0x6b6,10
 c44:	5f00                	lw	s0,56(a4)
 c46:	7066                	0x7066
 c48:	745f736f          	jal	t1,f8b8c <__global_pointer$+0xe5bbc>
 c4c:	5f00                	lw	s0,56(a4)
 c4e:	6c62                	ld	s8,24(sp)
 c50:	7a69736b          	0x7a69736b
 c54:	0065                	c.addi	zero,25
 c56:	735f 7a69 0065      	0x657a69735f
 c5c:	6574706f          	j	48ab2 <__global_pointer$+0x35ae2>
 c60:	7272                	ld	tp,312(sp)
 c62:	5f00                	lw	s0,56(a4)
 c64:	74727473          	csrrci	s0,0x747,4
 c68:	6c5f6b6f          	jal	s6,f7b2c <__global_pointer$+0xe4b5c>
 c6c:	7361                	lui	t1,0xffff8
 c6e:	0074                	addi	a3,sp,12
 c70:	505f4d43          	fmadd.s	fs10,ft10,ft5,fa0,rmm
 c74:	4349                	li	t1,18
 c76:	5f00                	lw	s0,56(a4)
 c78:	6e66                	ld	t3,88(sp)
 c7a:	7974                	ld	a3,240(a0)
 c7c:	6570                	ld	a2,200(a0)
 c7e:	615f0073          	0x615f0073
 c82:	6464                	ld	s1,200(s0)
 c84:	5f00                	lw	s0,56(a4)
 c86:	555f 6f4c 676e      	0x676e6f4c555f
 c8c:	6800                	ld	s0,16(s0)
 c8e:	6174                	ld	a3,192(a0)
 c90:	5f62                	lw	t5,56(sp)
 c92:	7165                	addi	sp,sp,-400
 c94:	705f 696f 746e      	0x746e696f705f
 c9a:	7265                	lui	tp,0xffff9
 c9c:	5f00                	lw	s0,56(a4)
 c9e:	785f 0072 675f      	0x675f0072785f
 ca4:	6f6c                	ld	a1,216(a4)
 ca6:	6162                	ld	sp,24(sp)
 ca8:	5f6c                	lw	a1,124(a4)
 caa:	6d69                	lui	s10,0x1a
 cac:	7570                	ld	a2,232(a0)
 cae:	6572                	ld	a0,280(sp)
 cb0:	705f 7274 5500      	0x55007274705f
 cb6:	4944                	lw	s1,20(a0)
 cb8:	7974                	ld	a3,240(a0)
 cba:	6570                	ld	a2,200(a0)
 cbc:	5f00                	lw	s0,56(a4)
 cbe:	6f647473          	csrrci	s0,0x6f6,8
 cc2:	7475                	lui	s0,0xffffd
 cc4:	5f00                	lw	s0,56(a4)
 cc6:	745f 5f6d 6477      	0x64775f6d745f
 ccc:	7961                	lui	s2,0xffff8
 cce:	5f00                	lw	s0,56(a4)
 cd0:	65756c67          	0x65756c67
 cd4:	5f00                	lw	s0,56(a4)
 cd6:	69647473          	csrrci	s0,0x696,8
 cda:	006e                	0x6e
 cdc:	735f 6973 657a      	0x657a6973735f
 ce2:	745f 5f00 366c      	0x366c5f00745f
 ce8:	6134                	ld	a3,64(a0)
 cea:	625f 6675 6f00      	0x6f006675625f
 cf0:	7470                	ld	a2,232(s0)
 cf2:	6e69                	lui	t3,0x1a
 cf4:	0064                	addi	s1,sp,12
 cf6:	735f 6769 665f      	0x665f6769735f
 cfc:	6e75                	lui	t3,0x1d
 cfe:	6e5f0063          	beq	t5,t0,13de <_start-0xecd2>
 d02:	7562                	ld	a0,56(sp)
 d04:	0066                	0x66
 d06:	755f 756e 6573      	0x6573756e755f
 d0c:	0064                	addi	s1,sp,12
 d0e:	5f5f 6d74 695f      	0x695f6d745f5f
 d14:	74736473          	csrrsi	s0,0x747,6
 d18:	5f00                	lw	s0,56(a4)
 d1a:	6f6c                	ld	a1,216(a4)
 d1c:	746c6163          	bltu	s8,t1,145e <_start-0xec52>
 d20:	6d69                	lui	s10,0x1a
 d22:	5f65                	li	t5,-7
 d24:	7562                	ld	a0,56(sp)
 d26:	0066                	0x66
 d28:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 d2e:	6e69                	lui	t3,0x1a
 d30:	5f00                	lw	s0,56(a4)
 d32:	3472                	fld	fs0,312(sp)
 d34:	0038                	addi	a4,sp,8
 d36:	4241                	li	tp,16
 d38:	5f49                	li	t5,-14
 d3a:	504c                	lw	a1,36(s0)
 d3c:	3436                	fld	fs0,360(sp)
 d3e:	0044                	addi	s1,sp,4
 d40:	6f74706f          	j	48c36 <__global_pointer$+0x35c66>
 d44:	7470                	ld	a2,232(s0)
 d46:	4100                	lw	s0,0(a0)
 d48:	4942                	lw	s2,16(sp)
 d4a:	4c5f 3650 4634      	0x463436504c5f
 d50:	5f00                	lw	s0,56(a4)
 d52:	626d                	lui	tp,0x1b
 d54:	6f74                	ld	a3,216(a4)
 d56:	735f6377          	0x735f6377
 d5a:	6174                	ld	a3,192(a0)
 d5c:	6574                	ld	a3,200(a0)
 d5e:	5f00                	lw	s0,56(a4)
 d60:	3570                	fld	fa2,232(a0)
 d62:	5f5f0073          	0x5f5f0073
 d66:	6d74                	ld	a3,216(a0)
 d68:	6d5f 6164 0079      	0x7961646d5f
 d6e:	7468                	ld	a0,232(s0)
 d70:	6261                	lui	tp,0x18
 d72:	655f 0071       	0x71655f

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
       8:	0068                	addi	a0,sp,12
       a:	0000                	unimp
       c:	0000                	unimp
       e:	0000                	unimp
      10:	0001                	nop
      12:	685a                	ld	a6,400(sp)
      14:	0000                	unimp
      16:	0000                	unimp
      18:	0000                	unimp
      1a:	9c00                	0x9c00
      1c:	0000                	unimp
      1e:	0000                	unimp
      20:	0000                	unimp
      22:	0600                	addi	s0,sp,768
      24:	f300                	sd	s0,32(a4)
      26:	2d0af503          	0x2d0af503
      2a:	9c9f 0000 0000      	0x9c9f
      30:	0000                	unimp
      32:	a400                	fsd	fs0,8(s0)
      34:	0000                	unimp
      36:	0000                	unimp
      38:	0000                	unimp
      3a:	0100                	addi	s0,sp,128
      3c:	5a00                	lw	s0,48(a2)
      3e:	00a4                	addi	s1,sp,72
      40:	0000                	unimp
      42:	0000                	unimp
      44:	0000                	unimp
      46:	00c0                	addi	s0,sp,68
      48:	0000                	unimp
      4a:	0000                	unimp
      4c:	0000                	unimp
      4e:	0006                	0x6
      50:	0af503f3          	0xaf503f3
      54:	9f2d                	addw	a4,a4,a1
      56:	00c0                	addi	s0,sp,68
      58:	0000                	unimp
      5a:	0000                	unimp
      5c:	0000                	unimp
      5e:	0110                	addi	a2,sp,128
      60:	0000                	unimp
      62:	0000                	unimp
      64:	0000                	unimp
      66:	0001                	nop
      68:	105a                	0x105a
      6a:	0001                	nop
      6c:	0000                	unimp
      6e:	0000                	unimp
      70:	1c00                	addi	s0,sp,560
      72:	0001                	nop
      74:	0000                	unimp
      76:	0000                	unimp
      78:	0600                	addi	s0,sp,768
      7a:	f300                	sd	s0,32(a4)
      7c:	2d0af503          	0x2d0af503
      80:	1c9f 0001 0000      	0x11c9f
      86:	0000                	unimp
      88:	5c00                	lw	s0,56(s0)
      8a:	0001                	nop
      8c:	0000                	unimp
      8e:	0000                	unimp
      90:	0100                	addi	s0,sp,128
      92:	5a00                	lw	s0,48(a2)
      94:	015c                	addi	a5,sp,132
      96:	0000                	unimp
      98:	0000                	unimp
      9a:	0000                	unimp
      9c:	0170                	addi	a2,sp,140
      9e:	0000                	unimp
      a0:	0000                	unimp
      a2:	0000                	unimp
      a4:	0006                	0x6
      a6:	0af503f3          	0xaf503f3
      aa:	9f2d                	addw	a4,a4,a1
      ac:	0170                	addi	a2,sp,140
      ae:	0000                	unimp
      b0:	0000                	unimp
      b2:	0000                	unimp
      b4:	01b4                	addi	a3,sp,200
      b6:	0000                	unimp
      b8:	0000                	unimp
      ba:	0000                	unimp
      bc:	0001                	nop
      be:	b45a                	fsd	fs6,40(sp)
      c0:	0001                	nop
      c2:	0000                	unimp
      c4:	0000                	unimp
      c6:	c400                	sw	s0,8(s0)
      c8:	0001                	nop
      ca:	0000                	unimp
      cc:	0000                	unimp
      ce:	0600                	addi	s0,sp,768
      d0:	f300                	sd	s0,32(a4)
      d2:	2d0af503          	0x2d0af503
      d6:	c49f 0001 0000      	0x1c49f
      dc:	0000                	unimp
      de:	e000                	sd	s0,0(s0)
      e0:	0001                	nop
      e2:	0000                	unimp
      e4:	0000                	unimp
      e6:	0100                	addi	s0,sp,128
      e8:	5a00                	lw	s0,48(a2)
      ea:	01e0                	addi	s0,sp,204
      ec:	0000                	unimp
      ee:	0000                	unimp
      f0:	0000                	unimp
      f2:	03bc                	addi	a5,sp,456
      f4:	0000                	unimp
      f6:	0000                	unimp
      f8:	0000                	unimp
      fa:	0006                	0x6
      fc:	0af503f3          	0xaf503f3
     100:	9f2d                	addw	a4,a4,a1
     102:	03bc                	addi	a5,sp,456
     104:	0000                	unimp
     106:	0000                	unimp
     108:	0000                	unimp
     10a:	03d0                	addi	a2,sp,452
     10c:	0000                	unimp
     10e:	0000                	unimp
     110:	0000                	unimp
     112:	0001                	nop
     114:	d05a                	sw	s6,32(sp)
     116:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     11a:	0000                	unimp
     11c:	6400                	ld	s0,8(s0)
     11e:	0004                	addi	s1,sp,0
     120:	0000                	unimp
     122:	0000                	unimp
     124:	0600                	addi	s0,sp,768
     126:	f300                	sd	s0,32(a4)
     128:	2d0af503          	0x2d0af503
     12c:	649f 0004 0000      	0x4649f
     132:	0000                	unimp
     134:	7000                	ld	s0,32(s0)
     136:	0004                	addi	s1,sp,0
     138:	0000                	unimp
     13a:	0000                	unimp
     13c:	0100                	addi	s0,sp,128
     13e:	5a00                	lw	s0,48(a2)
     140:	0470                	addi	a2,sp,524
     142:	0000                	unimp
     144:	0000                	unimp
     146:	0000                	unimp
     148:	047c                	addi	a5,sp,524
     14a:	0000                	unimp
     14c:	0000                	unimp
     14e:	0000                	unimp
     150:	0006                	0x6
     152:	0af503f3          	0xaf503f3
     156:	9f2d                	addw	a4,a4,a1
	...
     170:	003c                	addi	a5,sp,8
     172:	0000                	unimp
     174:	0000                	unimp
     176:	0000                	unimp
     178:	0001                	nop
     17a:	00003c5b          	0x3c5b
     17e:	0000                	unimp
     180:	0000                	unimp
     182:	7c00                	ld	s0,56(s0)
     184:	0004                	addi	s1,sp,0
     186:	0000                	unimp
     188:	0000                	unimp
     18a:	0600                	addi	s0,sp,768
     18c:	f300                	sd	s0,32(a4)
     18e:	2d0bf503          	0x2d0bf503
     192:	009f 0000 0000      	0x9f
	...
     1a8:	0000                	unimp
     1aa:	a400                	fsd	fs0,8(s0)
     1ac:	0000                	unimp
     1ae:	0000                	unimp
     1b0:	0000                	unimp
     1b2:	0200                	addi	s0,sp,256
     1b4:	3000                	fld	fs0,32(s0)
     1b6:	c09f 0000 0000      	0xc09f
     1bc:	0000                	unimp
     1be:	2400                	fld	fs0,8(s0)
     1c0:	0001                	nop
     1c2:	0000                	unimp
     1c4:	0000                	unimp
     1c6:	0200                	addi	s0,sp,256
     1c8:	3000                	fld	fs0,32(s0)
     1ca:	2c9f 0001 0000      	0x12c9f
     1d0:	0000                	unimp
     1d2:	b000                	fsd	fs0,32(s0)
     1d4:	0001                	nop
     1d6:	0000                	unimp
     1d8:	0000                	unimp
     1da:	0200                	addi	s0,sp,256
     1dc:	3000                	fld	fs0,32(s0)
     1de:	c49f 0001 0000      	0x1c49f
     1e4:	0000                	unimp
     1e6:	fc00                	sd	s0,56(s0)
     1e8:	0002                	0x2
     1ea:	0000                	unimp
     1ec:	0000                	unimp
     1ee:	0200                	addi	s0,sp,256
     1f0:	3000                	fld	fs0,32(s0)
     1f2:	049f 0003 0000      	0x3049f
     1f8:	0000                	unimp
     1fa:	2800                	fld	fs0,16(s0)
     1fc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     200:	0000                	unimp
     202:	0200                	addi	s0,sp,256
     204:	3000                	fld	fs0,32(s0)
     206:	409f 0003 0000      	0x3409f
     20c:	0000                	unimp
     20e:	d400                	sw	s0,40(s0)
     210:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     214:	0000                	unimp
     216:	0200                	addi	s0,sp,256
     218:	3000                	fld	fs0,32(s0)
     21a:	4c9f 0004 0000      	0x44c9f
     220:	0000                	unimp
     222:	5c00                	lw	s0,56(s0)
     224:	0004                	addi	s1,sp,0
     226:	0000                	unimp
     228:	0000                	unimp
     22a:	0200                	addi	s0,sp,256
     22c:	3000                	fld	fs0,32(s0)
     22e:	649f 0004 0000      	0x4649f
     234:	0000                	unimp
     236:	7c00                	ld	s0,56(s0)
     238:	0004                	addi	s1,sp,0
     23a:	0000                	unimp
     23c:	0000                	unimp
     23e:	0200                	addi	s0,sp,256
     240:	3000                	fld	fs0,32(s0)
     242:	009f 0000 0000      	0x9f
	...
     250:	0000                	unimp
     252:	3800                	fld	fs0,48(s0)
     254:	0000                	unimp
     256:	0000                	unimp
     258:	0000                	unimp
     25a:	a400                	fsd	fs0,8(s0)
     25c:	0000                	unimp
     25e:	0000                	unimp
     260:	0000                	unimp
     262:	0100                	addi	s0,sp,128
     264:	6200                	ld	s0,0(a2)
     266:	00c0                	addi	s0,sp,68
     268:	0000                	unimp
     26a:	0000                	unimp
     26c:	0000                	unimp
     26e:	0204                	addi	s1,sp,256
     270:	0000                	unimp
     272:	0000                	unimp
     274:	0000                	unimp
     276:	0001                	nop
     278:	1862                	slli	a6,a6,0x38
     27a:	0002                	0x2
     27c:	0000                	unimp
     27e:	0000                	unimp
     280:	0000                	unimp
     282:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     286:	0000                	unimp
     288:	0100                	addi	s0,sp,128
     28a:	6200                	ld	s0,0(a2)
     28c:	0304                	addi	s1,sp,384
     28e:	0000                	unimp
     290:	0000                	unimp
     292:	0000                	unimp
     294:	0338                	addi	a4,sp,392
     296:	0000                	unimp
     298:	0000                	unimp
     29a:	0000                	unimp
     29c:	0001                	nop
     29e:	4062                	0x4062
     2a0:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     2a4:	0000                	unimp
     2a6:	5800                	lw	s0,48(s0)
     2a8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     2ac:	0000                	unimp
     2ae:	0100                	addi	s0,sp,128
     2b0:	6200                	ld	s0,0(a2)
     2b2:	0394                	addi	a3,sp,448
     2b4:	0000                	unimp
     2b6:	0000                	unimp
     2b8:	0000                	unimp
     2ba:	03a4                	addi	s1,sp,456
     2bc:	0000                	unimp
     2be:	0000                	unimp
     2c0:	0000                	unimp
     2c2:	0001                	nop
     2c4:	bc62                	fsd	fs8,56(sp)
     2c6:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     2ca:	0000                	unimp
     2cc:	d400                	sw	s0,40(s0)
     2ce:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     2d2:	0000                	unimp
     2d4:	0100                	addi	s0,sp,128
     2d6:	6200                	ld	s0,0(a2)
     2d8:	044c                	addi	a1,sp,516
     2da:	0000                	unimp
     2dc:	0000                	unimp
     2de:	0000                	unimp
     2e0:	0458                	addi	a4,sp,516
     2e2:	0000                	unimp
     2e4:	0000                	unimp
     2e6:	0000                	unimp
     2e8:	0001                	nop
     2ea:	6462                	ld	s0,24(sp)
     2ec:	0004                	addi	s1,sp,0
     2ee:	0000                	unimp
     2f0:	0000                	unimp
     2f2:	7c00                	ld	s0,56(s0)
     2f4:	0004                	addi	s1,sp,0
     2f6:	0000                	unimp
     2f8:	0000                	unimp
     2fa:	0100                	addi	s0,sp,128
     2fc:	6200                	ld	s0,0(a2)
	...
     30e:	0028                	addi	a0,sp,8
     310:	0000                	unimp
     312:	0000                	unimp
     314:	0000                	unimp
     316:	0068                	addi	a0,sp,12
     318:	0000                	unimp
     31a:	0000                	unimp
     31c:	0000                	unimp
     31e:	0001                	nop
     320:	9c58                	0x9c58
     322:	0000                	unimp
     324:	0000                	unimp
     326:	0000                	unimp
     328:	a400                	fsd	fs0,8(s0)
     32a:	0000                	unimp
     32c:	0000                	unimp
     32e:	0000                	unimp
     330:	0100                	addi	s0,sp,128
     332:	5800                	lw	s0,48(s0)
     334:	00c0                	addi	s0,sp,68
     336:	0000                	unimp
     338:	0000                	unimp
     33a:	0000                	unimp
     33c:	0118                	addi	a4,sp,128
     33e:	0000                	unimp
     340:	0000                	unimp
     342:	0000                	unimp
     344:	0001                	nop
     346:	1c58                	addi	a4,sp,564
     348:	0001                	nop
     34a:	0000                	unimp
     34c:	0000                	unimp
     34e:	ac00                	fsd	fs0,24(s0)
     350:	0001                	nop
     352:	0000                	unimp
     354:	0000                	unimp
     356:	0100                	addi	s0,sp,128
     358:	5800                	lw	s0,48(s0)
     35a:	01ac                	addi	a1,sp,200
     35c:	0000                	unimp
     35e:	0000                	unimp
     360:	0000                	unimp
     362:	01b0                	addi	a2,sp,200
     364:	0000                	unimp
     366:	0000                	unimp
     368:	0000                	unimp
     36a:	7f7c0003          	lb	zero,2039(s8) # 187f7 <__global_pointer$+0x5827>
     36e:	b09f 0001 0000      	0x1b09f
     374:	0000                	unimp
     376:	c000                	sw	s0,0(s0)
     378:	0001                	nop
     37a:	0000                	unimp
     37c:	0000                	unimp
     37e:	0100                	addi	s0,sp,128
     380:	5800                	lw	s0,48(s0)
     382:	01c4                	addi	s1,sp,196
     384:	0000                	unimp
     386:	0000                	unimp
     388:	0000                	unimp
     38a:	01d8                	addi	a4,sp,196
     38c:	0000                	unimp
     38e:	0000                	unimp
     390:	0000                	unimp
     392:	0001                	nop
     394:	d858                	sw	a4,52(s0)
     396:	0001                	nop
     398:	0000                	unimp
     39a:	0000                	unimp
     39c:	dc00                	sw	s0,56(s0)
     39e:	0001                	nop
     3a0:	0000                	unimp
     3a2:	0000                	unimp
     3a4:	0a00                	addi	s0,sp,272
     3a6:	7a00                	ld	s0,48(a2)
     3a8:	0800                	addi	s0,sp,16
     3aa:	2534                	fld	fa3,72(a0)
     3ac:	ff0a                	sd	sp,440(sp)
     3ae:	dc9f1a07          	0xdc9f1a07
     3b2:	0001                	nop
     3b4:	0000                	unimp
     3b6:	0000                	unimp
     3b8:	fc00                	sd	s0,56(s0)
     3ba:	0001                	nop
     3bc:	0000                	unimp
     3be:	0000                	unimp
     3c0:	0100                	addi	s0,sp,128
     3c2:	5800                	lw	s0,48(s0)
     3c4:	0218                	addi	a4,sp,256
     3c6:	0000                	unimp
     3c8:	0000                	unimp
     3ca:	0000                	unimp
     3cc:	027c                	addi	a5,sp,268
     3ce:	0000                	unimp
     3d0:	0000                	unimp
     3d2:	0000                	unimp
     3d4:	0001                	nop
     3d6:	8058                	0x8058
     3d8:	0002                	0x2
     3da:	0000                	unimp
     3dc:	0000                	unimp
     3de:	9000                	0x9000
     3e0:	0002                	0x2
     3e2:	0000                	unimp
     3e4:	0000                	unimp
     3e6:	0100                	addi	s0,sp,128
     3e8:	5800                	lw	s0,48(s0)
     3ea:	0294                	addi	a3,sp,320
     3ec:	0000                	unimp
     3ee:	0000                	unimp
     3f0:	0000                	unimp
     3f2:	02fc                	addi	a5,sp,332
     3f4:	0000                	unimp
     3f6:	0000                	unimp
     3f8:	0000                	unimp
     3fa:	0001                	nop
     3fc:	0458                	addi	a4,sp,516
     3fe:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     402:	0000                	unimp
     404:	3c00                	fld	fs0,56(s0)
     406:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     40a:	0000                	unimp
     40c:	0100                	addi	s0,sp,128
     40e:	5800                	lw	s0,48(s0)
     410:	0340                	addi	s0,sp,388
     412:	0000                	unimp
     414:	0000                	unimp
     416:	0000                	unimp
     418:	0358                	addi	a4,sp,388
     41a:	0000                	unimp
     41c:	0000                	unimp
     41e:	0000                	unimp
     420:	0001                	nop
     422:	9458                	0x9458
     424:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     428:	0000                	unimp
     42a:	a000                	fsd	fs0,0(s0)
     42c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     430:	0000                	unimp
     432:	0100                	addi	s0,sp,128
     434:	5800                	lw	s0,48(s0)
     436:	03bc                	addi	a5,sp,456
     438:	0000                	unimp
     43a:	0000                	unimp
     43c:	0000                	unimp
     43e:	03d0                	addi	a2,sp,452
     440:	0000                	unimp
     442:	0000                	unimp
     444:	0000                	unimp
     446:	0001                	nop
     448:	4c58                	lw	a4,28(s0)
     44a:	0004                	addi	s1,sp,0
     44c:	0000                	unimp
     44e:	0000                	unimp
     450:	5400                	lw	s0,40(s0)
     452:	0004                	addi	s1,sp,0
     454:	0000                	unimp
     456:	0000                	unimp
     458:	0100                	addi	s0,sp,128
     45a:	5800                	lw	s0,48(s0)
     45c:	0464                	addi	s1,sp,524
     45e:	0000                	unimp
     460:	0000                	unimp
     462:	0000                	unimp
     464:	047c                	addi	a5,sp,524
     466:	0000                	unimp
     468:	0000                	unimp
     46a:	0000                	unimp
     46c:	0001                	nop
     46e:	0058                	addi	a4,sp,4
	...
     47c:	0000                	unimp
     47e:	1c00                	addi	s0,sp,560
     480:	0000                	unimp
     482:	0000                	unimp
     484:	0000                	unimp
     486:	6800                	ld	s0,16(s0)
     488:	0000                	unimp
     48a:	0000                	unimp
     48c:	0000                	unimp
     48e:	0100                	addi	s0,sp,128
     490:	5f00                	lw	s0,56(a4)
     492:	009c                	addi	a5,sp,64
     494:	0000                	unimp
     496:	0000                	unimp
     498:	0000                	unimp
     49a:	00a4                	addi	s1,sp,72
     49c:	0000                	unimp
     49e:	0000                	unimp
     4a0:	0000                	unimp
     4a2:	0001                	nop
     4a4:	c05f 0000 0000      	0xc05f
     4aa:	0000                	unimp
     4ac:	1400                	addi	s0,sp,544
     4ae:	0001                	nop
     4b0:	0000                	unimp
     4b2:	0000                	unimp
     4b4:	0100                	addi	s0,sp,128
     4b6:	5f00                	lw	s0,56(a4)
     4b8:	011c                	addi	a5,sp,128
     4ba:	0000                	unimp
     4bc:	0000                	unimp
     4be:	0000                	unimp
     4c0:	0128                	addi	a0,sp,136
     4c2:	0000                	unimp
     4c4:	0000                	unimp
     4c6:	0000                	unimp
     4c8:	0001                	nop
     4ca:	285f 0001 0000      	0x1285f
     4d0:	0000                	unimp
     4d2:	2c00                	fld	fs0,24(s0)
     4d4:	0001                	nop
     4d6:	0000                	unimp
     4d8:	0000                	unimp
     4da:	0a00                	addi	s0,sp,272
     4dc:	8000                	0x8000
     4de:	3c00                	fld	fs0,56(s0)
     4e0:	7a25                	lui	s4,0xfffe9
     4e2:	1a00                	addi	s0,sp,304
     4e4:	2c9f2433          	0x2c9f2433
     4e8:	0001                	nop
     4ea:	0000                	unimp
     4ec:	0000                	unimp
     4ee:	5000                	lw	s0,32(s0)
     4f0:	0001                	nop
     4f2:	0000                	unimp
     4f4:	0000                	unimp
     4f6:	0100                	addi	s0,sp,128
     4f8:	5f00                	lw	s0,56(a4)
     4fa:	0154                	addi	a3,sp,132
     4fc:	0000                	unimp
     4fe:	0000                	unimp
     500:	0000                	unimp
     502:	0164                	addi	s1,sp,140
     504:	0000                	unimp
     506:	0000                	unimp
     508:	0000                	unimp
     50a:	0001                	nop
     50c:	6c5f 0001 0000      	0x16c5f
     512:	0000                	unimp
     514:	9000                	0x9000
     516:	0001                	nop
     518:	0000                	unimp
     51a:	0000                	unimp
     51c:	0100                	addi	s0,sp,128
     51e:	5f00                	lw	s0,56(a4)
     520:	0190                	addi	a2,sp,192
     522:	0000                	unimp
     524:	0000                	unimp
     526:	0000                	unimp
     528:	01a0                	addi	s0,sp,200
     52a:	0000                	unimp
     52c:	0000                	unimp
     52e:	0000                	unimp
     530:	000a                	0xa
     532:	0080                	addi	s0,sp,64
     534:	253c                	fld	fa5,72(a0)
     536:	007a                	0x7a
     538:	331a                	fld	ft6,416(sp)
     53a:	9f24                	0x9f24
     53c:	01a0                	addi	s0,sp,200
     53e:	0000                	unimp
     540:	0000                	unimp
     542:	0000                	unimp
     544:	01b0                	addi	a2,sp,200
     546:	0000                	unimp
     548:	0000                	unimp
     54a:	0000                	unimp
     54c:	007a000f          	0x7a000f
     550:	ff10                	sd	a2,56(a4)
     552:	ffff                	0xffff
     554:	ffff                	0xffff
     556:	ffff                	0xffff
     558:	24331a07          	0x24331a07
     55c:	b09f 0001 0000      	0x1b09f
     562:	0000                	unimp
     564:	bc00                	fsd	fs0,56(s0)
     566:	0001                	nop
     568:	0000                	unimp
     56a:	0000                	unimp
     56c:	0100                	addi	s0,sp,128
     56e:	5f00                	lw	s0,56(a4)
     570:	01c4                	addi	s1,sp,196
     572:	0000                	unimp
     574:	0000                	unimp
     576:	0000                	unimp
     578:	01d0                	addi	a2,sp,196
     57a:	0000                	unimp
     57c:	0000                	unimp
     57e:	0000                	unimp
     580:	0001                	nop
     582:	d05f 0001 0000      	0x1d05f
     588:	0000                	unimp
     58a:	dc00                	sw	s0,56(s0)
     58c:	0001                	nop
     58e:	0000                	unimp
     590:	0000                	unimp
     592:	0a00                	addi	s0,sp,272
     594:	8000                	0x8000
     596:	3c00                	fld	fs0,56(s0)
     598:	7a25                	lui	s4,0xfffe9
     59a:	1a00                	addi	s0,sp,304
     59c:	dc9f2433          	0xdc9f2433
     5a0:	0001                	nop
     5a2:	0000                	unimp
     5a4:	0000                	unimp
     5a6:	f800                	sd	s0,48(s0)
     5a8:	0001                	nop
     5aa:	0000                	unimp
     5ac:	0000                	unimp
     5ae:	0100                	addi	s0,sp,128
     5b0:	5f00                	lw	s0,56(a4)
     5b2:	0218                	addi	a4,sp,256
     5b4:	0000                	unimp
     5b6:	0000                	unimp
     5b8:	0000                	unimp
     5ba:	0278                	addi	a4,sp,268
     5bc:	0000                	unimp
     5be:	0000                	unimp
     5c0:	0000                	unimp
     5c2:	0001                	nop
     5c4:	805f 0002 0000      	0x2805f
     5ca:	0000                	unimp
     5cc:	8c00                	0x8c00
     5ce:	0002                	0x2
     5d0:	0000                	unimp
     5d2:	0000                	unimp
     5d4:	0100                	addi	s0,sp,128
     5d6:	5f00                	lw	s0,56(a4)
     5d8:	0294                	addi	a3,sp,320
     5da:	0000                	unimp
     5dc:	0000                	unimp
     5de:	0000                	unimp
     5e0:	02b8                	addi	a4,sp,328
     5e2:	0000                	unimp
     5e4:	0000                	unimp
     5e6:	0000                	unimp
     5e8:	0001                	nop
     5ea:	bc5f 0002 0000      	0x2bc5f
     5f0:	0000                	unimp
     5f2:	cc00                	sw	s0,24(s0)
     5f4:	0002                	0x2
     5f6:	0000                	unimp
     5f8:	0000                	unimp
     5fa:	0100                	addi	s0,sp,128
     5fc:	5f00                	lw	s0,56(a4)
     5fe:	02d4                	addi	a3,sp,324
     600:	0000                	unimp
     602:	0000                	unimp
     604:	0000                	unimp
     606:	02f4                	addi	a3,sp,332
     608:	0000                	unimp
     60a:	0000                	unimp
     60c:	0000                	unimp
     60e:	0001                	nop
     610:	045f 0003 0000      	0x3045f
     616:	0000                	unimp
     618:	1800                	addi	s0,sp,48
     61a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     61e:	0000                	unimp
     620:	0100                	addi	s0,sp,128
     622:	5f00                	lw	s0,56(a4)
     624:	0328                	addi	a0,sp,392
     626:	0000                	unimp
     628:	0000                	unimp
     62a:	0000                	unimp
     62c:	0334                	addi	a3,sp,392
     62e:	0000                	unimp
     630:	0000                	unimp
     632:	0000                	unimp
     634:	0001                	nop
     636:	405f 0003 0000      	0x3405f
     63c:	0000                	unimp
     63e:	5800                	lw	s0,48(s0)
     640:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     644:	0000                	unimp
     646:	0100                	addi	s0,sp,128
     648:	5f00                	lw	s0,56(a4)
     64a:	0394                	addi	a3,sp,448
     64c:	0000                	unimp
     64e:	0000                	unimp
     650:	0000                	unimp
     652:	039c                	addi	a5,sp,448
     654:	0000                	unimp
     656:	0000                	unimp
     658:	0000                	unimp
     65a:	0001                	nop
     65c:	bc5f 0003 0000      	0x3bc5f
     662:	0000                	unimp
     664:	c000                	sw	s0,0(s0)
     666:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     66a:	0000                	unimp
     66c:	0100                	addi	s0,sp,128
     66e:	5f00                	lw	s0,56(a4)
     670:	03c0                	addi	s0,sp,452
     672:	0000                	unimp
     674:	0000                	unimp
     676:	0000                	unimp
     678:	03c4                	addi	s1,sp,452
     67a:	0000                	unimp
     67c:	0000                	unimp
     67e:	0000                	unimp
     680:	000a                	0xa
     682:	0080                	addi	s0,sp,64
     684:	253c                	fld	fa5,72(a0)
     686:	007a                	0x7a
     688:	331a                	fld	ft6,416(sp)
     68a:	9f24                	0x9f24
     68c:	03c4                	addi	s1,sp,452
     68e:	0000                	unimp
     690:	0000                	unimp
     692:	0000                	unimp
     694:	03c8                	addi	a0,sp,452
     696:	0000                	unimp
     698:	0000                	unimp
     69a:	0000                	unimp
     69c:	0001                	nop
     69e:	c85f 0003 0000      	0x3c85f
     6a4:	0000                	unimp
     6a6:	cc00                	sw	s0,24(s0)
     6a8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     6ac:	0000                	unimp
     6ae:	0a00                	addi	s0,sp,272
     6b0:	8000                	0x8000
     6b2:	3c00                	fld	fs0,56(s0)
     6b4:	7a25                	lui	s4,0xfffe9
     6b6:	1a00                	addi	s0,sp,304
     6b8:	cc9f2433          	0xcc9f2433
     6bc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     6c0:	0000                	unimp
     6c2:	d000                	sw	s0,32(s0)
     6c4:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     6c8:	0000                	unimp
     6ca:	0100                	addi	s0,sp,128
     6cc:	5f00                	lw	s0,56(a4)
     6ce:	044c                	addi	a1,sp,516
     6d0:	0000                	unimp
     6d2:	0000                	unimp
     6d4:	0000                	unimp
     6d6:	0450                	addi	a2,sp,516
     6d8:	0000                	unimp
     6da:	0000                	unimp
     6dc:	0000                	unimp
     6de:	0001                	nop
     6e0:	645f 0004 0000      	0x4645f
     6e6:	0000                	unimp
     6e8:	7c00                	ld	s0,56(s0)
     6ea:	0004                	addi	s1,sp,0
     6ec:	0000                	unimp
     6ee:	0000                	unimp
     6f0:	0100                	addi	s0,sp,128
     6f2:	5f00                	lw	s0,56(a4)
	...
     704:	0040                	addi	s0,sp,4
     706:	0000                	unimp
     708:	0000                	unimp
     70a:	0000                	unimp
     70c:	0050                	addi	a2,sp,4
     70e:	0000                	unimp
     710:	0000                	unimp
     712:	0000                	unimp
     714:	0001                	nop
     716:	0001dc5b          	0x1dc5b
     71a:	0000                	unimp
     71c:	0000                	unimp
     71e:	fc00                	sd	s0,56(s0)
     720:	0001                	nop
     722:	0000                	unimp
     724:	0000                	unimp
     726:	0100                	addi	s0,sp,128
     728:	5b00                	lw	s0,48(a4)
     72a:	0218                	addi	a4,sp,256
     72c:	0000                	unimp
     72e:	0000                	unimp
     730:	0000                	unimp
     732:	02fc                	addi	a5,sp,332
     734:	0000                	unimp
     736:	0000                	unimp
     738:	0000                	unimp
     73a:	0001                	nop
     73c:	0003045b          	0x3045b
     740:	0000                	unimp
     742:	0000                	unimp
     744:	3800                	fld	fs0,48(s0)
     746:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     74a:	0000                	unimp
     74c:	0100                	addi	s0,sp,128
     74e:	5b00                	lw	s0,48(a4)
     750:	0340                	addi	s0,sp,388
     752:	0000                	unimp
     754:	0000                	unimp
     756:	0000                	unimp
     758:	0358                	addi	a4,sp,388
     75a:	0000                	unimp
     75c:	0000                	unimp
     75e:	0000                	unimp
     760:	0001                	nop
     762:	0003945b          	0x3945b
     766:	0000                	unimp
     768:	0000                	unimp
     76a:	a400                	fsd	fs0,8(s0)
     76c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     770:	0000                	unimp
     772:	0100                	addi	s0,sp,128
     774:	5b00                	lw	s0,48(a4)
     776:	044c                	addi	a1,sp,516
     778:	0000                	unimp
     77a:	0000                	unimp
     77c:	0000                	unimp
     77e:	045c                	addi	a5,sp,516
     780:	0000                	unimp
     782:	0000                	unimp
     784:	0000                	unimp
     786:	0001                	nop
     788:	0004705b          	0x4705b
     78c:	0000                	unimp
     78e:	0000                	unimp
     790:	7c00                	ld	s0,56(s0)
     792:	0004                	addi	s1,sp,0
     794:	0000                	unimp
     796:	0000                	unimp
     798:	0100                	addi	s0,sp,128
     79a:	5b00                	lw	s0,48(a4)
	...
     7ac:	0040                	addi	s0,sp,4
     7ae:	0000                	unimp
     7b0:	0000                	unimp
     7b2:	0000                	unimp
     7b4:	0064                	addi	s1,sp,12
     7b6:	0000                	unimp
     7b8:	0000                	unimp
     7ba:	0000                	unimp
     7bc:	0001                	nop
     7be:	9c5c                	0x9c5c
     7c0:	0000                	unimp
     7c2:	0000                	unimp
     7c4:	0000                	unimp
     7c6:	a400                	fsd	fs0,8(s0)
     7c8:	0000                	unimp
     7ca:	0000                	unimp
     7cc:	0000                	unimp
     7ce:	0100                	addi	s0,sp,128
     7d0:	5c00                	lw	s0,56(s0)
     7d2:	00c0                	addi	s0,sp,68
     7d4:	0000                	unimp
     7d6:	0000                	unimp
     7d8:	0000                	unimp
     7da:	00ec                	addi	a1,sp,76
     7dc:	0000                	unimp
     7de:	0000                	unimp
     7e0:	0000                	unimp
     7e2:	0001                	nop
     7e4:	005c                	addi	a5,sp,4
     7e6:	0001                	nop
     7e8:	0000                	unimp
     7ea:	0000                	unimp
     7ec:	2400                	fld	fs0,8(s0)
     7ee:	0001                	nop
     7f0:	0000                	unimp
     7f2:	0000                	unimp
     7f4:	0100                	addi	s0,sp,128
     7f6:	5c00                	lw	s0,56(s0)
     7f8:	012c                	addi	a1,sp,136
     7fa:	0000                	unimp
     7fc:	0000                	unimp
     7fe:	0000                	unimp
     800:	0174                	addi	a3,sp,140
     802:	0000                	unimp
     804:	0000                	unimp
     806:	0000                	unimp
     808:	0001                	nop
     80a:	dc5c                	sw	a5,60(s0)
     80c:	0001                	nop
     80e:	0000                	unimp
     810:	0000                	unimp
     812:	f400                	sd	s0,40(s0)
     814:	0001                	nop
     816:	0000                	unimp
     818:	0000                	unimp
     81a:	0100                	addi	s0,sp,128
     81c:	5c00                	lw	s0,56(s0)
     81e:	0218                	addi	a4,sp,256
     820:	0000                	unimp
     822:	0000                	unimp
     824:	0000                	unimp
     826:	0250                	addi	a2,sp,260
     828:	0000                	unimp
     82a:	0000                	unimp
     82c:	0000                	unimp
     82e:	0001                	nop
     830:	645c                	ld	a5,136(s0)
     832:	0002                	0x2
     834:	0000                	unimp
     836:	0000                	unimp
     838:	dc00                	sw	s0,56(s0)
     83a:	0002                	0x2
     83c:	0000                	unimp
     83e:	0000                	unimp
     840:	0100                	addi	s0,sp,128
     842:	5c00                	lw	s0,56(s0)
     844:	03bc                	addi	a5,sp,456
     846:	0000                	unimp
     848:	0000                	unimp
     84a:	0000                	unimp
     84c:	03c4                	addi	s1,sp,452
     84e:	0000                	unimp
     850:	0000                	unimp
     852:	0000                	unimp
     854:	0001                	nop
     856:	4c5c                	lw	a5,28(s0)
     858:	0004                	addi	s1,sp,0
     85a:	0000                	unimp
     85c:	0000                	unimp
     85e:	5400                	lw	s0,40(s0)
     860:	0004                	addi	s1,sp,0
     862:	0000                	unimp
     864:	0000                	unimp
     866:	0100                	addi	s0,sp,128
     868:	5c00                	lw	s0,56(s0)
     86a:	0464                	addi	s1,sp,524
     86c:	0000                	unimp
     86e:	0000                	unimp
     870:	0000                	unimp
     872:	047c                	addi	a5,sp,524
     874:	0000                	unimp
     876:	0000                	unimp
     878:	0000                	unimp
     87a:	0001                	nop
     87c:	005c                	addi	a5,sp,4
	...
     88a:	0000                	unimp
     88c:	4000                	lw	s0,0(s0)
     88e:	0000                	unimp
     890:	0000                	unimp
     892:	0000                	unimp
     894:	6c00                	ld	s0,24(s0)
     896:	0000                	unimp
     898:	0000                	unimp
     89a:	0000                	unimp
     89c:	0100                	addi	s0,sp,128
     89e:	5e00                	lw	s0,56(a2)
     8a0:	009c                	addi	a5,sp,64
     8a2:	0000                	unimp
     8a4:	0000                	unimp
     8a6:	0000                	unimp
     8a8:	00a4                	addi	s1,sp,72
     8aa:	0000                	unimp
     8ac:	0000                	unimp
     8ae:	0000                	unimp
     8b0:	0001                	nop
     8b2:	c05e                	sw	s7,0(sp)
     8b4:	0000                	unimp
     8b6:	0000                	unimp
     8b8:	0000                	unimp
     8ba:	e000                	sd	s0,0(s0)
     8bc:	0000                	unimp
     8be:	0000                	unimp
     8c0:	0000                	unimp
     8c2:	0100                	addi	s0,sp,128
     8c4:	5e00                	lw	s0,56(a2)
     8c6:	00e4                	addi	s1,sp,76
     8c8:	0000                	unimp
     8ca:	0000                	unimp
     8cc:	0000                	unimp
     8ce:	00f4                	addi	a3,sp,76
     8d0:	0000                	unimp
     8d2:	0000                	unimp
     8d4:	0000                	unimp
     8d6:	0001                	nop
     8d8:	fc5e                	sd	s7,56(sp)
	...
     8e2:	0002                	0x2
     8e4:	0000                	unimp
     8e6:	0000                	unimp
     8e8:	0100                	addi	s0,sp,128
     8ea:	5e00                	lw	s0,56(a2)
     8ec:	0218                	addi	a4,sp,256
     8ee:	0000                	unimp
     8f0:	0000                	unimp
     8f2:	0000                	unimp
     8f4:	022c                	addi	a1,sp,264
     8f6:	0000                	unimp
     8f8:	0000                	unimp
     8fa:	0000                	unimp
     8fc:	0001                	nop
     8fe:	305e                	fld	ft0,496(sp)
     900:	0002                	0x2
     902:	0000                	unimp
     904:	0000                	unimp
     906:	5800                	lw	s0,48(s0)
     908:	0002                	0x2
     90a:	0000                	unimp
     90c:	0000                	unimp
     90e:	0100                	addi	s0,sp,128
     910:	5e00                	lw	s0,56(a2)
     912:	0260                	addi	s0,sp,268
     914:	0000                	unimp
     916:	0000                	unimp
     918:	0000                	unimp
     91a:	0358                	addi	a4,sp,388
     91c:	0000                	unimp
     91e:	0000                	unimp
     920:	0000                	unimp
     922:	0001                	nop
     924:	945e                	add	s0,s0,s7
     926:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     92a:	0000                	unimp
     92c:	a400                	fsd	fs0,8(s0)
     92e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     932:	0000                	unimp
     934:	0100                	addi	s0,sp,128
     936:	5e00                	lw	s0,56(a2)
     938:	03bc                	addi	a5,sp,456
     93a:	0000                	unimp
     93c:	0000                	unimp
     93e:	0000                	unimp
     940:	03d0                	addi	a2,sp,452
     942:	0000                	unimp
     944:	0000                	unimp
     946:	0000                	unimp
     948:	0001                	nop
     94a:	4c5e                	lw	s8,212(sp)
     94c:	0004                	addi	s1,sp,0
     94e:	0000                	unimp
     950:	0000                	unimp
     952:	5c00                	lw	s0,56(s0)
     954:	0004                	addi	s1,sp,0
     956:	0000                	unimp
     958:	0000                	unimp
     95a:	0100                	addi	s0,sp,128
     95c:	5e00                	lw	s0,56(a2)
     95e:	0464                	addi	s1,sp,524
     960:	0000                	unimp
     962:	0000                	unimp
     964:	0000                	unimp
     966:	047c                	addi	a5,sp,524
     968:	0000                	unimp
     96a:	0000                	unimp
     96c:	0000                	unimp
     96e:	0001                	nop
     970:	005e                	0x5e
	...
     97e:	0000                	unimp
     980:	4c00                	lw	s0,24(s0)
     982:	0000                	unimp
     984:	0000                	unimp
     986:	0000                	unimp
     988:	b400                	fsd	fs0,40(s0)
     98a:	0001                	nop
     98c:	0000                	unimp
     98e:	0000                	unimp
     990:	0100                	addi	s0,sp,128
     992:	6200                	ld	s0,0(a2)
     994:	01c4                	addi	s1,sp,196
     996:	0000                	unimp
     998:	0000                	unimp
     99a:	0000                	unimp
     99c:	01dc                	addi	a5,sp,196
     99e:	0000                	unimp
     9a0:	0000                	unimp
     9a2:	0000                	unimp
     9a4:	0001                	nop
     9a6:	e462                	sd	s8,8(sp)
     9a8:	0001                	nop
     9aa:	0000                	unimp
     9ac:	0000                	unimp
     9ae:	fc00                	sd	s0,56(s0)
     9b0:	0001                	nop
     9b2:	0000                	unimp
     9b4:	0000                	unimp
     9b6:	0100                	addi	s0,sp,128
     9b8:	6200                	ld	s0,0(a2)
     9ba:	01fc                	addi	a5,sp,204
     9bc:	0000                	unimp
     9be:	0000                	unimp
     9c0:	0000                	unimp
     9c2:	0218                	addi	a4,sp,256
     9c4:	0000                	unimp
     9c6:	0000                	unimp
     9c8:	0000                	unimp
     9ca:	0001                	nop
     9cc:	0002185b          	0x2185b
     9d0:	0000                	unimp
     9d2:	0000                	unimp
     9d4:	6400                	ld	s0,8(s0)
     9d6:	0002                	0x2
     9d8:	0000                	unimp
     9da:	0000                	unimp
     9dc:	0100                	addi	s0,sp,128
     9de:	6200                	ld	s0,0(a2)
     9e0:	0268                	addi	a0,sp,268
     9e2:	0000                	unimp
     9e4:	0000                	unimp
     9e6:	0000                	unimp
     9e8:	02d8                	addi	a4,sp,324
     9ea:	0000                	unimp
     9ec:	0000                	unimp
     9ee:	0000                	unimp
     9f0:	0001                	nop
     9f2:	00030c5b          	0x30c5b
     9f6:	0000                	unimp
     9f8:	0000                	unimp
     9fa:	2800                	fld	fs0,16(s0)
     9fc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     a00:	0000                	unimp
     a02:	0100                	addi	s0,sp,128
     a04:	6200                	ld	s0,0(a2)
     a06:	0344                	addi	s1,sp,388
     a08:	0000                	unimp
     a0a:	0000                	unimp
     a0c:	0000                	unimp
     a0e:	0354                	addi	a3,sp,388
     a10:	0000                	unimp
     a12:	0000                	unimp
     a14:	0000                	unimp
     a16:	0001                	nop
     a18:	5462                	lw	s0,56(sp)
     a1a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     a1e:	0000                	unimp
     a20:	5800                	lw	s0,48(s0)
     a22:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     a26:	0000                	unimp
     a28:	0100                	addi	s0,sp,128
     a2a:	5b00                	lw	s0,48(a4)
     a2c:	0358                	addi	a4,sp,388
     a2e:	0000                	unimp
     a30:	0000                	unimp
     a32:	0000                	unimp
     a34:	03d4                	addi	a3,sp,452
     a36:	0000                	unimp
     a38:	0000                	unimp
     a3a:	0000                	unimp
     a3c:	0001                	nop
     a3e:	1462                	slli	s0,s0,0x38
     a40:	0004                	addi	s1,sp,0
     a42:	0000                	unimp
     a44:	0000                	unimp
     a46:	3400                	fld	fs0,40(s0)
     a48:	0004                	addi	s1,sp,0
     a4a:	0000                	unimp
     a4c:	0000                	unimp
     a4e:	0100                	addi	s0,sp,128
     a50:	6200                	ld	s0,0(a2)
     a52:	044c                	addi	a1,sp,516
     a54:	0000                	unimp
     a56:	0000                	unimp
     a58:	0000                	unimp
     a5a:	0454                	addi	a3,sp,516
     a5c:	0000                	unimp
     a5e:	0000                	unimp
     a60:	0000                	unimp
     a62:	0001                	nop
     a64:	0004645b          	0x4645b
     a68:	0000                	unimp
     a6a:	0000                	unimp
     a6c:	7000                	ld	s0,32(s0)
     a6e:	0004                	addi	s1,sp,0
     a70:	0000                	unimp
     a72:	0000                	unimp
     a74:	0100                	addi	s0,sp,128
     a76:	6200                	ld	s0,0(a2)
     a78:	0470                	addi	a2,sp,524
     a7a:	0000                	unimp
     a7c:	0000                	unimp
     a7e:	0000                	unimp
     a80:	047c                	addi	a5,sp,524
     a82:	0000                	unimp
     a84:	0000                	unimp
     a86:	0000                	unimp
     a88:	0001                	nop
     a8a:	0000005b          	0x5b
	...
     a9a:	5400                	lw	s0,40(s0)
	...
     aa4:	0001                	nop
     aa6:	0000                	unimp
     aa8:	0000                	unimp
     aaa:	0100                	addi	s0,sp,128
     aac:	5800                	lw	s0,48(s0)
     aae:	0104                	addi	s1,sp,128
     ab0:	0000                	unimp
     ab2:	0000                	unimp
     ab4:	0000                	unimp
     ab6:	0124                	addi	s1,sp,136
     ab8:	0000                	unimp
     aba:	0000                	unimp
     abc:	0000                	unimp
     abe:	0001                	nop
     ac0:	2c5c                	fld	fa5,152(s0)
     ac2:	0001                	nop
     ac4:	0000                	unimp
     ac6:	0000                	unimp
     ac8:	7000                	ld	s0,32(s0)
     aca:	0001                	nop
     acc:	0000                	unimp
     ace:	0000                	unimp
     ad0:	0100                	addi	s0,sp,128
     ad2:	5c00                	lw	s0,56(s0)
     ad4:	0184                	addi	s1,sp,192
     ad6:	0000                	unimp
     ad8:	0000                	unimp
     ada:	0000                	unimp
     adc:	01a8                	addi	a0,sp,200
     ade:	0000                	unimp
     ae0:	0000                	unimp
     ae2:	0000                	unimp
     ae4:	0002                	0x2
     ae6:	9f30                	0x9f30
     ae8:	01a8                	addi	a0,sp,200
     aea:	0000                	unimp
     aec:	0000                	unimp
     aee:	0000                	unimp
     af0:	01b0                	addi	a2,sp,200
     af2:	0000                	unimp
     af4:	0000                	unimp
     af6:	0000                	unimp
     af8:	0002                	0x2
     afa:	9f31                	addw	a4,a4,a2
     afc:	01b0                	addi	a2,sp,200
     afe:	0000                	unimp
     b00:	0000                	unimp
     b02:	0000                	unimp
     b04:	01c4                	addi	s1,sp,196
     b06:	0000                	unimp
     b08:	0000                	unimp
     b0a:	0000                	unimp
     b0c:	0004                	addi	s1,sp,0
     b0e:	ff0a                	sd	sp,440(sp)
     b10:	01c49f07          	0x1c49f07
     b14:	0000                	unimp
     b16:	0000                	unimp
     b18:	0000                	unimp
     b1a:	01dc                	addi	a5,sp,196
     b1c:	0000                	unimp
     b1e:	0000                	unimp
     b20:	0000                	unimp
     b22:	0001                	nop
     b24:	e45c                	sd	a5,136(s0)
     b26:	0001                	nop
     b28:	0000                	unimp
     b2a:	0000                	unimp
     b2c:	6400                	ld	s0,8(s0)
     b2e:	0002                	0x2
     b30:	0000                	unimp
     b32:	0000                	unimp
     b34:	0100                	addi	s0,sp,128
     b36:	5800                	lw	s0,48(s0)
     b38:	0268                	addi	a0,sp,268
     b3a:	0000                	unimp
     b3c:	0000                	unimp
     b3e:	0000                	unimp
     b40:	02d8                	addi	a4,sp,324
     b42:	0000                	unimp
     b44:	0000                	unimp
     b46:	0000                	unimp
     b48:	0001                	nop
     b4a:	ec5c                	sd	a5,152(s0)
     b4c:	0002                	0x2
     b4e:	0000                	unimp
     b50:	0000                	unimp
     b52:	fc00                	sd	s0,56(s0)
     b54:	0002                	0x2
     b56:	0000                	unimp
     b58:	0000                	unimp
     b5a:	0200                	addi	s0,sp,256
     b5c:	3000                	fld	fs0,32(s0)
     b5e:	049f 0003 0000      	0x3049f
     b64:	0000                	unimp
     b66:	2800                	fld	fs0,16(s0)
     b68:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     b6c:	0000                	unimp
     b6e:	0200                	addi	s0,sp,256
     b70:	3000                	fld	fs0,32(s0)
     b72:	289f 0003 0000      	0x3289f
     b78:	0000                	unimp
     b7a:	3800                	fld	fs0,48(s0)
     b7c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     b80:	0000                	unimp
     b82:	0400                	addi	s0,sp,512
     b84:	0a00                	addi	s0,sp,272
     b86:	07ff                	0x7ff
     b88:	409f 0003 0000      	0x3409f
     b8e:	0000                	unimp
     b90:	7000                	ld	s0,32(s0)
     b92:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     b96:	0000                	unimp
     b98:	0100                	addi	s0,sp,128
     b9a:	5800                	lw	s0,48(s0)
     b9c:	038c                	addi	a1,sp,448
     b9e:	0000                	unimp
     ba0:	0000                	unimp
     ba2:	0000                	unimp
     ba4:	0394                	addi	a3,sp,448
     ba6:	0000                	unimp
     ba8:	0000                	unimp
     baa:	0000                	unimp
     bac:	0002                	0x2
     bae:	9f30                	0x9f30
     bb0:	0394                	addi	a3,sp,448
     bb2:	0000                	unimp
     bb4:	0000                	unimp
     bb6:	0000                	unimp
     bb8:	03a0                	addi	s0,sp,456
     bba:	0000                	unimp
     bbc:	0000                	unimp
     bbe:	0000                	unimp
     bc0:	0001                	nop
     bc2:	a458                	fsd	fa4,136(s0)
     bc4:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     bc8:	0000                	unimp
     bca:	bc00                	fsd	fs0,56(s0)
     bcc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     bd0:	0000                	unimp
     bd2:	0100                	addi	s0,sp,128
     bd4:	5800                	lw	s0,48(s0)
     bd6:	03bc                	addi	a5,sp,456
     bd8:	0000                	unimp
     bda:	0000                	unimp
     bdc:	0000                	unimp
     bde:	03c4                	addi	s1,sp,452
     be0:	0000                	unimp
     be2:	0000                	unimp
     be4:	0000                	unimp
     be6:	0001                	nop
     be8:	c45c                	sw	a5,12(s0)
     bea:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     bee:	0000                	unimp
     bf0:	cc00                	sw	s0,24(s0)
     bf2:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     bf6:	0000                	unimp
     bf8:	0200                	addi	s0,sp,256
     bfa:	3000                	fld	fs0,32(s0)
     bfc:	cc9f 0003 0000      	0x3cc9f
     c02:	0000                	unimp
     c04:	d000                	sw	s0,32(s0)
     c06:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     c0a:	0000                	unimp
     c0c:	0100                	addi	s0,sp,128
     c0e:	5c00                	lw	s0,56(s0)
     c10:	03e0                	addi	s0,sp,460
     c12:	0000                	unimp
     c14:	0000                	unimp
     c16:	0000                	unimp
     c18:	0404                	addi	s1,sp,512
     c1a:	0000                	unimp
     c1c:	0000                	unimp
     c1e:	0000                	unimp
     c20:	0001                	nop
     c22:	0458                	addi	a4,sp,516
     c24:	0004                	addi	s1,sp,0
     c26:	0000                	unimp
     c28:	0000                	unimp
     c2a:	1400                	addi	s0,sp,544
     c2c:	0004                	addi	s1,sp,0
     c2e:	0000                	unimp
     c30:	0000                	unimp
     c32:	0400                	addi	s0,sp,512
     c34:	0a00                	addi	s0,sp,272
     c36:	07ff                	0x7ff
     c38:	4c9f 0004 0000      	0x44c9f
     c3e:	0000                	unimp
     c40:	5400                	lw	s0,40(s0)
     c42:	0004                	addi	s1,sp,0
     c44:	0000                	unimp
     c46:	0000                	unimp
     c48:	0100                	addi	s0,sp,128
     c4a:	5c00                	lw	s0,56(s0)
     c4c:	045c                	addi	a5,sp,516
     c4e:	0000                	unimp
     c50:	0000                	unimp
     c52:	0000                	unimp
     c54:	0464                	addi	s1,sp,524
     c56:	0000                	unimp
     c58:	0000                	unimp
     c5a:	0000                	unimp
     c5c:	0001                	nop
     c5e:	6458                	ld	a4,136(s0)
     c60:	0004                	addi	s1,sp,0
     c62:	0000                	unimp
     c64:	0000                	unimp
     c66:	7c00                	ld	s0,56(s0)
     c68:	0004                	addi	s1,sp,0
     c6a:	0000                	unimp
     c6c:	0000                	unimp
     c6e:	0100                	addi	s0,sp,128
     c70:	5c00                	lw	s0,56(s0)
	...
     c82:	0068                	addi	a0,sp,12
     c84:	0000                	unimp
     c86:	0000                	unimp
     c88:	0000                	unimp
     c8a:	0070                	addi	a2,sp,12
     c8c:	0000                	unimp
     c8e:	0000                	unimp
     c90:	0000                	unimp
     c92:	0001                	nop
     c94:	705f 0000 0000      	0x705f
     c9a:	0000                	unimp
     c9c:	7400                	ld	s0,40(s0)
     c9e:	0000                	unimp
     ca0:	0000                	unimp
     ca2:	0000                	unimp
     ca4:	0e00                	addi	s0,sp,784
     ca6:	7f00                	ld	s0,56(a4)
     ca8:	1100                	addi	s0,sp,160
     caa:	ffff                	0xffff
     cac:	ffff                	0xffff
     cae:	ffff                	0xffff
     cb0:	bfff                	0xbfff
     cb2:	1a7f                	0x1a7f
     cb4:	749f 0000 0000      	0x749f
     cba:	0000                	unimp
     cbc:	8800                	0x8800
     cbe:	0000                	unimp
     cc0:	0000                	unimp
     cc2:	0000                	unimp
     cc4:	1500                	addi	s0,sp,672
     cc6:	7f00                	ld	s0,56(a4)
     cc8:	3100                	fld	fs0,32(a0)
     cca:	1025                	c.addi	zero,-23
     ccc:	ffff                	0xffff
     cce:	ffff                	0xffff
     cd0:	ffff                	0xffff
     cd2:	dfff                	0xdfff
     cd4:	1a7f                	0x1a7f
     cd6:	007f                	0x7f
     cd8:	1a31                	addi	s4,s4,-20
     cda:	9f21                	addw	a4,a4,s0
     cdc:	0088                	addi	a0,sp,64
     cde:	0000                	unimp
     ce0:	0000                	unimp
     ce2:	0000                	unimp
     ce4:	0090                	addi	a2,sp,64
     ce6:	0000                	unimp
     ce8:	0000                	unimp
     cea:	0000                	unimp
     cec:	007f0013          	addi	zero,t5,7 # 1a007 <__global_pointer$+0x7037>
     cf0:	2531                	addiw	a0,a0,12
     cf2:	ff10                	sd	a2,56(a4)
     cf4:	ffff                	0xffff
     cf6:	ffff                	0xffff
     cf8:	ffff                	0xffff
     cfa:	7fdf 7d1a 2100      	0x21007d1a7fdf
     d00:	909f 0000 0000      	0x909f
     d06:	0000                	unimp
     d08:	9400                	0x9400
     d0a:	0000                	unimp
     d0c:	0000                	unimp
     d0e:	0000                	unimp
     d10:	1100                	addi	s0,sp,160
     d12:	7f00                	ld	s0,56(a4)
     d14:	1000                	addi	s0,sp,32
     d16:	ffff                	0xffff
     d18:	ffff                	0xffff
     d1a:	ffff                	0xffff
     d1c:	dfff                	0xdfff
     d1e:	1a7f                	0x1a7f
     d20:	007d                	c.addi	zero,31
     d22:	9f21                	addw	a4,a4,s0
     d24:	00a4                	addi	s1,sp,72
     d26:	0000                	unimp
     d28:	0000                	unimp
     d2a:	0000                	unimp
     d2c:	00c0                	addi	s0,sp,68
     d2e:	0000                	unimp
     d30:	0000                	unimp
     d32:	0000                	unimp
     d34:	0001                	nop
     d36:	145f 0001 0000      	0x1145f
     d3c:	0000                	unimp
     d3e:	1c00                	addi	s0,sp,560
     d40:	0001                	nop
     d42:	0000                	unimp
     d44:	0000                	unimp
     d46:	0100                	addi	s0,sp,128
     d48:	5f00                	lw	s0,56(a4)
     d4a:	0190                	addi	a2,sp,192
     d4c:	0000                	unimp
     d4e:	0000                	unimp
     d50:	0000                	unimp
     d52:	01b0                	addi	a2,sp,200
     d54:	0000                	unimp
     d56:	0000                	unimp
     d58:	0000                	unimp
     d5a:	0001                	nop
     d5c:	c45f 0001 0000      	0x1c45f
     d62:	0000                	unimp
     d64:	d000                	sw	s0,32(s0)
     d66:	0001                	nop
     d68:	0000                	unimp
     d6a:	0000                	unimp
     d6c:	0800                	addi	s0,sp,16
     d6e:	7f00                	ld	s0,56(a4)
     d70:	7e00                	ld	s0,56(a2)
     d72:	2200                	fld	fs0,0(a2)
     d74:	2531                	addiw	a0,a0,12
     d76:	d09f 0001 0000      	0x1d09f
     d7c:	0000                	unimp
     d7e:	d400                	sw	s0,40(s0)
     d80:	0001                	nop
     d82:	0000                	unimp
     d84:	0000                	unimp
     d86:	0500                	addi	s0,sp,640
     d88:	7f00                	ld	s0,56(a4)
     d8a:	3100                	fld	fs0,32(a0)
     d8c:	9f25                	addw	a4,a4,s1
     d8e:	01f8                	addi	a4,sp,204
     d90:	0000                	unimp
     d92:	0000                	unimp
     d94:	0000                	unimp
     d96:	0214                	addi	a3,sp,256
     d98:	0000                	unimp
     d9a:	0000                	unimp
     d9c:	0000                	unimp
     d9e:	0001                	nop
     da0:	145f 0002 0000      	0x2145f
     da6:	0000                	unimp
     da8:	1800                	addi	s0,sp,48
     daa:	0002                	0x2
     dac:	0000                	unimp
     dae:	0000                	unimp
     db0:	0100                	addi	s0,sp,128
     db2:	5900                	lw	s0,48(a0)
     db4:	0278                	addi	a4,sp,268
     db6:	0000                	unimp
     db8:	0000                	unimp
     dba:	0000                	unimp
     dbc:	0280                	addi	s0,sp,320
     dbe:	0000                	unimp
     dc0:	0000                	unimp
     dc2:	0000                	unimp
     dc4:	0001                	nop
     dc6:	f05f 0002 0000      	0x2f05f
     dcc:	0000                	unimp
     dce:	f800                	sd	s0,48(s0)
     dd0:	0002                	0x2
     dd2:	0000                	unimp
     dd4:	0000                	unimp
     dd6:	0100                	addi	s0,sp,128
     dd8:	5e00                	lw	s0,56(a2)
     dda:	030c                	addi	a1,sp,384
     ddc:	0000                	unimp
     dde:	0000                	unimp
     de0:	0000                	unimp
     de2:	0328                	addi	a0,sp,392
     de4:	0000                	unimp
     de6:	0000                	unimp
     de8:	0000                	unimp
     dea:	0001                	nop
     dec:	445c                	lw	a5,12(s0)
     dee:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     df2:	0000                	unimp
     df4:	8400                	0x8400
     df6:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     dfa:	0000                	unimp
     dfc:	0100                	addi	s0,sp,128
     dfe:	5900                	lw	s0,48(a0)
     e00:	038c                	addi	a1,sp,448
     e02:	0000                	unimp
     e04:	0000                	unimp
     e06:	0000                	unimp
     e08:	0394                	addi	a3,sp,448
     e0a:	0000                	unimp
     e0c:	0000                	unimp
     e0e:	0000                	unimp
     e10:	0001                	nop
     e12:	945f 0003 0000      	0x3945f
     e18:	0000                	unimp
     e1a:	b800                	fsd	fs0,48(s0)
     e1c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     e20:	0000                	unimp
     e22:	0100                	addi	s0,sp,128
     e24:	5900                	lw	s0,48(a0)
     e26:	03b8                	addi	a4,sp,456
     e28:	0000                	unimp
     e2a:	0000                	unimp
     e2c:	0000                	unimp
     e2e:	03bc                	addi	a5,sp,456
     e30:	0000                	unimp
     e32:	0000                	unimp
     e34:	0000                	unimp
     e36:	0001                	nop
     e38:	cc5f 0003 0000      	0x3cc5f
     e3e:	0000                	unimp
     e40:	d000                	sw	s0,32(s0)
     e42:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     e46:	0000                	unimp
     e48:	0800                	addi	s0,sp,16
     e4a:	7f00                	ld	s0,56(a4)
     e4c:	7e00                	ld	s0,56(a2)
     e4e:	2200                	fld	fs0,0(a2)
     e50:	2531                	addiw	a0,a0,12
     e52:	d49f 0003 0000      	0x3d49f
     e58:	0000                	unimp
     e5a:	dc00                	sw	s0,56(s0)
     e5c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
     e60:	0000                	unimp
     e62:	0100                	addi	s0,sp,128
     e64:	5f00                	lw	s0,56(a4)
     e66:	03dc                	addi	a5,sp,452
     e68:	0000                	unimp
     e6a:	0000                	unimp
     e6c:	0000                	unimp
     e6e:	03f8                	addi	a4,sp,460
     e70:	0000                	unimp
     e72:	0000                	unimp
     e74:	0000                	unimp
     e76:	000e                	0xe
     e78:	007f                	0x7f
     e7a:	ff11                	bnez	a4,d96 <_start-0xf31a>
     e7c:	ffff                	0xffff
     e7e:	ffff                	0xffff
     e80:	ffff                	0xffff
     e82:	9f1a7fbf 000003f8 	0x3f89f1a7fbf
     e8a:	0000                	unimp
     e8c:	0000                	unimp
     e8e:	040c                	addi	a1,sp,512
     e90:	0000                	unimp
     e92:	0000                	unimp
     e94:	0000                	unimp
     e96:	0001                	nop
     e98:	145f 0004 0000      	0x4145f
     e9e:	0000                	unimp
     ea0:	2400                	fld	fs0,8(s0)
     ea2:	0004                	addi	s1,sp,0
     ea4:	0000                	unimp
     ea6:	0000                	unimp
     ea8:	0100                	addi	s0,sp,128
     eaa:	5f00                	lw	s0,56(a4)
     eac:	045c                	addi	a5,sp,516
     eae:	0000                	unimp
     eb0:	0000                	unimp
     eb2:	0000                	unimp
     eb4:	0460                	addi	s0,sp,524
     eb6:	0000                	unimp
     eb8:	0000                	unimp
     eba:	0000                	unimp
     ebc:	000e                	0xe
     ebe:	007f                	0x7f
     ec0:	ff11                	bnez	a4,ddc <_start-0xf2d4>
     ec2:	ffff                	0xffff
     ec4:	ffff                	0xffff
     ec6:	ffff                	0xffff
     ec8:	9f1a7fbf 00000000 	0x9f1a7fbf
	...
     edc:	043c                	addi	a5,sp,520
     ede:	0000                	unimp
     ee0:	0000                	unimp
     ee2:	0000                	unimp
     ee4:	044c                	addi	a1,sp,516
     ee6:	0000                	unimp
     ee8:	0000                	unimp
     eea:	0000                	unimp
     eec:	0001                	nop
     eee:	005a                	0x5a
	...
     efc:	0000                	unimp
     efe:	5000                	lw	s0,32(s0)
     f00:	0000                	unimp
     f02:	0000                	unimp
     f04:	0000                	unimp
     f06:	6000                	ld	s0,0(s0)
     f08:	0000                	unimp
     f0a:	0000                	unimp
     f0c:	0000                	unimp
     f0e:	0100                	addi	s0,sp,128
     f10:	5d00                	lw	s0,56(a0)
     f12:	0060                	addi	s0,sp,12
     f14:	0000                	unimp
     f16:	0000                	unimp
     f18:	0000                	unimp
     f1a:	0064                	addi	s1,sp,12
     f1c:	0000                	unimp
     f1e:	0000                	unimp
     f20:	0000                	unimp
     f22:	7f7d0003          	lb	zero,2039(s10) # 1a7f7 <__global_pointer$+0x7827>
     f26:	9c9f 0000 0000      	0x9c9f
     f2c:	0000                	unimp
     f2e:	a000                	fsd	fs0,0(s0)
     f30:	0000                	unimp
     f32:	0000                	unimp
     f34:	0000                	unimp
     f36:	0300                	addi	s0,sp,384
     f38:	7d00                	ld	s0,56(a0)
     f3a:	9f7f                	0x9f7f
     f3c:	00a0                	addi	s0,sp,72
     f3e:	0000                	unimp
     f40:	0000                	unimp
     f42:	0000                	unimp
     f44:	00a4                	addi	s1,sp,72
     f46:	0000                	unimp
     f48:	0000                	unimp
     f4a:	0000                	unimp
     f4c:	007c0007          	0x7c0007
     f50:	7820                	ld	s0,112(s0)
     f52:	2200                	fld	fs0,0(a2)
     f54:	c09f 0000 0000      	0xc09f
     f5a:	0000                	unimp
     f5c:	c400                	sw	s0,8(s0)
     f5e:	0000                	unimp
     f60:	0000                	unimp
     f62:	0000                	unimp
     f64:	0100                	addi	s0,sp,128
     f66:	5d00                	lw	s0,56(a0)
     f68:	00c4                	addi	s1,sp,68
     f6a:	0000                	unimp
     f6c:	0000                	unimp
     f6e:	0000                	unimp
     f70:	00f0                	addi	a2,sp,76
     f72:	0000                	unimp
     f74:	0000                	unimp
     f76:	0000                	unimp
     f78:	0001                	nop
     f7a:	0001005b          	0x1005b
     f7e:	0000                	unimp
     f80:	0000                	unimp
     f82:	0400                	addi	s0,sp,512
     f84:	0001                	nop
     f86:	0000                	unimp
     f88:	0000                	unimp
     f8a:	0100                	addi	s0,sp,128
     f8c:	5d00                	lw	s0,56(a0)
     f8e:	0104                	addi	s1,sp,128
     f90:	0000                	unimp
     f92:	0000                	unimp
     f94:	0000                	unimp
     f96:	010c                	addi	a1,sp,128
     f98:	0000                	unimp
     f9a:	0000                	unimp
     f9c:	0000                	unimp
     f9e:	0004                	addi	s1,sp,0
     fa0:	007d                	c.addi	zero,31
     fa2:	9f1f 010c 0000      	0x10c9f1f
     fa8:	0000                	unimp
     faa:	0000                	unimp
     fac:	0110                	addi	a2,sp,128
     fae:	0000                	unimp
     fb0:	0000                	unimp
     fb2:	0000                	unimp
     fb4:	0004                	addi	s1,sp,0
     fb6:	007d                	c.addi	zero,31
     fb8:	9f20                	0x9f20
     fba:	011c                	addi	a5,sp,128
     fbc:	0000                	unimp
     fbe:	0000                	unimp
     fc0:	0000                	unimp
     fc2:	0124                	addi	s1,sp,136
     fc4:	0000                	unimp
     fc6:	0000                	unimp
     fc8:	0000                	unimp
     fca:	0004                	addi	s1,sp,0
     fcc:	007d                	c.addi	zero,31
     fce:	9f20                	0x9f20
     fd0:	012c                	addi	a1,sp,136
     fd2:	0000                	unimp
     fd4:	0000                	unimp
     fd6:	0000                	unimp
     fd8:	0140                	addi	s0,sp,132
     fda:	0000                	unimp
     fdc:	0000                	unimp
     fde:	0000                	unimp
     fe0:	0004                	addi	s1,sp,0
     fe2:	007d                	c.addi	zero,31
     fe4:	9f1f 0140 0000      	0x1409f1f
     fea:	0000                	unimp
     fec:	0000                	unimp
     fee:	0144                	addi	s1,sp,132
     ff0:	0000                	unimp
     ff2:	0000                	unimp
     ff4:	0000                	unimp
     ff6:	0006                	0x6
     ff8:	007c                	addi	a5,sp,12
     ffa:	0078                	addi	a4,sp,12
     ffc:	9f1c                	0x9f1c
     ffe:	0144                	addi	s1,sp,132
    1000:	0000                	unimp
    1002:	0000                	unimp
    1004:	0000                	unimp
    1006:	0160                	addi	s0,sp,140
    1008:	0000                	unimp
    100a:	0000                	unimp
    100c:	0000                	unimp
    100e:	0001                	nop
    1010:	705d                	0x705d
    1012:	0001                	nop
    1014:	0000                	unimp
    1016:	0000                	unimp
    1018:	7c00                	ld	s0,56(s0)
    101a:	0001                	nop
    101c:	0000                	unimp
    101e:	0000                	unimp
    1020:	0100                	addi	s0,sp,128
    1022:	5d00                	lw	s0,56(a0)
    1024:	03bc                	addi	a5,sp,456
    1026:	0000                	unimp
    1028:	0000                	unimp
    102a:	0000                	unimp
    102c:	03c4                	addi	s1,sp,452
    102e:	0000                	unimp
    1030:	0000                	unimp
    1032:	0000                	unimp
    1034:	0004                	addi	s1,sp,0
    1036:	007d                	c.addi	zero,31
    1038:	9f1f 0464 0000      	0x4649f1f
    103e:	0000                	unimp
    1040:	0000                	unimp
    1042:	0468                	addi	a0,sp,524
    1044:	0000                	unimp
    1046:	0000                	unimp
    1048:	0000                	unimp
    104a:	0004                	addi	s1,sp,0
    104c:	007d                	c.addi	zero,31
    104e:	9f20                	0x9f20
    1050:	0468                	addi	a0,sp,524
    1052:	0000                	unimp
    1054:	0000                	unimp
    1056:	0000                	unimp
    1058:	0470                	addi	a2,sp,524
    105a:	0000                	unimp
    105c:	0000                	unimp
    105e:	0000                	unimp
    1060:	00780007          	0x780007
    1064:	007c                	addi	a5,sp,12
    1066:	201c                	fld	fa5,0(s0)
    1068:	009f 0000 0000      	0x9f
	...
    1076:	0000                	unimp
    1078:	e000                	sd	s0,0(s0)
    107a:	0001                	nop
    107c:	0000                	unimp
    107e:	0000                	unimp
    1080:	f000                	sd	s0,32(s0)
    1082:	0001                	nop
    1084:	0000                	unimp
    1086:	0000                	unimp
    1088:	0100                	addi	s0,sp,128
    108a:	5d00                	lw	s0,56(a0)
    108c:	01f0                	addi	a2,sp,204
    108e:	0000                	unimp
    1090:	0000                	unimp
    1092:	0000                	unimp
    1094:	01f4                	addi	a3,sp,204
    1096:	0000                	unimp
    1098:	0000                	unimp
    109a:	0000                	unimp
    109c:	7f7d0003          	lb	zero,2039(s10)
    10a0:	189f 0002 0000      	0x2189f
    10a6:	0000                	unimp
    10a8:	1c00                	addi	s0,sp,560
    10aa:	0002                	0x2
    10ac:	0000                	unimp
    10ae:	0000                	unimp
    10b0:	0300                	addi	s0,sp,384
    10b2:	7d00                	ld	s0,56(a0)
    10b4:	9f7f                	0x9f7f
    10b6:	021c                	addi	a5,sp,256
    10b8:	0000                	unimp
    10ba:	0000                	unimp
    10bc:	0000                	unimp
    10be:	0220                	addi	s0,sp,264
    10c0:	0000                	unimp
    10c2:	0000                	unimp
    10c4:	0000                	unimp
    10c6:	007c0007          	0x7c0007
    10ca:	7820                	ld	s0,112(s0)
    10cc:	2200                	fld	fs0,0(a2)
    10ce:	209f 0002 0000      	0x2209f
    10d4:	0000                	unimp
    10d6:	3000                	fld	fs0,32(s0)
    10d8:	0002                	0x2
    10da:	0000                	unimp
    10dc:	0000                	unimp
    10de:	0100                	addi	s0,sp,128
    10e0:	5a00                	lw	s0,48(a2)
    10e2:	0230                	addi	a2,sp,264
    10e4:	0000                	unimp
    10e6:	0000                	unimp
    10e8:	0000                	unimp
    10ea:	0234                	addi	a3,sp,264
    10ec:	0000                	unimp
    10ee:	0000                	unimp
    10f0:	0000                	unimp
    10f2:	0001                	nop
    10f4:	345d                	addiw	s0,s0,-9
    10f6:	0002                	0x2
    10f8:	0000                	unimp
    10fa:	0000                	unimp
    10fc:	5400                	lw	s0,40(s0)
    10fe:	0002                	0x2
    1100:	0000                	unimp
    1102:	0000                	unimp
    1104:	0100                	addi	s0,sp,128
    1106:	5a00                	lw	s0,48(a2)
    1108:	0264                	addi	s1,sp,268
    110a:	0000                	unimp
    110c:	0000                	unimp
    110e:	0000                	unimp
    1110:	0268                	addi	a0,sp,268
    1112:	0000                	unimp
    1114:	0000                	unimp
    1116:	0000                	unimp
    1118:	0001                	nop
    111a:	685d                	lui	a6,0x17
    111c:	0002                	0x2
    111e:	0000                	unimp
    1120:	0000                	unimp
    1122:	7000                	ld	s0,32(s0)
    1124:	0002                	0x2
    1126:	0000                	unimp
    1128:	0000                	unimp
    112a:	0400                	addi	s0,sp,512
    112c:	7d00                	ld	s0,56(a0)
    112e:	1f00                	addi	s0,sp,944
    1130:	709f 0002 0000      	0x2709f
    1136:	0000                	unimp
    1138:	7400                	ld	s0,40(s0)
    113a:	0002                	0x2
    113c:	0000                	unimp
    113e:	0000                	unimp
    1140:	0400                	addi	s0,sp,512
    1142:	7d00                	ld	s0,56(a0)
    1144:	2000                	fld	fs0,0(s0)
    1146:	809f 0002 0000      	0x2809f
    114c:	0000                	unimp
    114e:	8800                	0x8800
    1150:	0002                	0x2
    1152:	0000                	unimp
    1154:	0000                	unimp
    1156:	0400                	addi	s0,sp,512
    1158:	7d00                	ld	s0,56(a0)
    115a:	2000                	fld	fs0,0(s0)
    115c:	949f 0002 0000      	0x2949f
    1162:	0000                	unimp
    1164:	a800                	fsd	fs0,16(s0)
    1166:	0002                	0x2
    1168:	0000                	unimp
    116a:	0000                	unimp
    116c:	0400                	addi	s0,sp,512
    116e:	7d00                	ld	s0,56(a0)
    1170:	1f00                	addi	s0,sp,944
    1172:	a89f 0002 0000      	0x2a89f
    1178:	0000                	unimp
    117a:	ac00                	fsd	fs0,24(s0)
    117c:	0002                	0x2
    117e:	0000                	unimp
    1180:	0000                	unimp
    1182:	0600                	addi	s0,sp,768
    1184:	7c00                	ld	s0,56(s0)
    1186:	7800                	ld	s0,48(s0)
    1188:	1c00                	addi	s0,sp,560
    118a:	ac9f 0002 0000      	0x2ac9f
    1190:	0000                	unimp
    1192:	c800                	sw	s0,16(s0)
    1194:	0002                	0x2
    1196:	0000                	unimp
    1198:	0000                	unimp
    119a:	0100                	addi	s0,sp,128
    119c:	5d00                	lw	s0,56(a0)
    119e:	02d8                	addi	a4,sp,324
    11a0:	0000                	unimp
    11a2:	0000                	unimp
    11a4:	0000                	unimp
    11a6:	02e4                	addi	s1,sp,332
    11a8:	0000                	unimp
    11aa:	0000                	unimp
    11ac:	0000                	unimp
    11ae:	0001                	nop
    11b0:	e45d                	bnez	s0,125e <_start-0xee52>
    11b2:	0002                	0x2
    11b4:	0000                	unimp
    11b6:	0000                	unimp
    11b8:	fc00                	sd	s0,56(s0)
    11ba:	0002                	0x2
    11bc:	0000                	unimp
    11be:	0000                	unimp
    11c0:	0100                	addi	s0,sp,128
    11c2:	5a00                	lw	s0,48(a2)
    11c4:	0304                	addi	s1,sp,384
    11c6:	0000                	unimp
    11c8:	0000                	unimp
    11ca:	0000                	unimp
    11cc:	0338                	addi	a4,sp,392
    11ce:	0000                	unimp
    11d0:	0000                	unimp
    11d2:	0000                	unimp
    11d4:	0001                	nop
    11d6:	405a                	0x405a
    11d8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    11dc:	0000                	unimp
    11de:	5800                	lw	s0,48(s0)
    11e0:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    11e4:	0000                	unimp
    11e6:	0100                	addi	s0,sp,128
    11e8:	5a00                	lw	s0,48(a2)
    11ea:	0394                	addi	a3,sp,448
    11ec:	0000                	unimp
    11ee:	0000                	unimp
    11f0:	0000                	unimp
    11f2:	03a4                	addi	s1,sp,456
    11f4:	0000                	unimp
    11f6:	0000                	unimp
    11f8:	0000                	unimp
    11fa:	0001                	nop
    11fc:	4c5a                	lw	s8,148(sp)
    11fe:	0004                	addi	s1,sp,0
    1200:	0000                	unimp
    1202:	0000                	unimp
    1204:	5400                	lw	s0,40(s0)
    1206:	0004                	addi	s1,sp,0
    1208:	0000                	unimp
    120a:	0000                	unimp
    120c:	0400                	addi	s0,sp,512
    120e:	7d00                	ld	s0,56(a0)
    1210:	1f00                	addi	s0,sp,944
    1212:	709f 0004 0000      	0x4709f
    1218:	0000                	unimp
    121a:	7400                	ld	s0,40(s0)
    121c:	0004                	addi	s1,sp,0
    121e:	0000                	unimp
    1220:	0000                	unimp
    1222:	0400                	addi	s0,sp,512
    1224:	7d00                	ld	s0,56(a0)
    1226:	2000                	fld	fs0,0(s0)
    1228:	749f 0004 0000      	0x4749f
    122e:	0000                	unimp
    1230:	7c00                	ld	s0,56(s0)
    1232:	0004                	addi	s1,sp,0
    1234:	0000                	unimp
    1236:	0000                	unimp
    1238:	0700                	addi	s0,sp,896
    123a:	7800                	ld	s0,48(s0)
    123c:	7c00                	ld	s0,56(s0)
    123e:	1c00                	addi	s0,sp,560
    1240:	9f20                	0x9f20
	...
    1252:	0360                	addi	s0,sp,396
    1254:	0000                	unimp
    1256:	0000                	unimp
    1258:	0000                	unimp
    125a:	0364                	addi	s1,sp,396
    125c:	0000                	unimp
    125e:	0000                	unimp
    1260:	0000                	unimp
    1262:	0001                	nop
    1264:	645a                	ld	s0,400(sp)
    1266:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    126a:	0000                	unimp
    126c:	7400                	ld	s0,40(s0)
    126e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1272:	0000                	unimp
    1274:	0100                	addi	s0,sp,128
    1276:	5f00                	lw	s0,56(a4)
    1278:	0374                	addi	a3,sp,396
    127a:	0000                	unimp
    127c:	0000                	unimp
    127e:	0000                	unimp
    1280:	0380                	addi	s0,sp,448
    1282:	0000                	unimp
    1284:	0000                	unimp
    1286:	0000                	unimp
    1288:	0001                	nop
    128a:	a458                	fsd	fa4,136(s0)
    128c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1290:	0000                	unimp
    1292:	ac00                	fsd	fs0,24(s0)
    1294:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1298:	0000                	unimp
    129a:	0100                	addi	s0,sp,128
    129c:	5f00                	lw	s0,56(a4)
    129e:	03ac                	addi	a1,sp,456
    12a0:	0000                	unimp
    12a2:	0000                	unimp
    12a4:	0000                	unimp
    12a6:	03bc                	addi	a5,sp,456
    12a8:	0000                	unimp
    12aa:	0000                	unimp
    12ac:	0000                	unimp
    12ae:	787a0003          	lb	zero,1927(s4) # fffffffffffe9787 <__global_pointer$+0xfffffffffffd67b7>
    12b2:	009f 0000 0000      	0x9f
	...
    12c0:	0000                	unimp
    12c2:	a400                	fsd	fs0,8(s0)
    12c4:	0000                	unimp
    12c6:	0000                	unimp
    12c8:	0000                	unimp
    12ca:	c000                	sw	s0,0(s0)
    12cc:	0000                	unimp
    12ce:	0000                	unimp
    12d0:	0000                	unimp
    12d2:	0200                	addi	s0,sp,256
    12d4:	3000                	fld	fs0,32(s0)
    12d6:	009f 0000 0000      	0x9f
	...
    12ec:	0000                	unimp
    12ee:	6800                	ld	s0,16(s0)
    12f0:	0000                	unimp
    12f2:	0000                	unimp
    12f4:	0000                	unimp
    12f6:	0100                	addi	s0,sp,128
    12f8:	5a00                	lw	s0,48(a2)
    12fa:	0068                	addi	a0,sp,12
    12fc:	0000                	unimp
    12fe:	0000                	unimp
    1300:	0000                	unimp
    1302:	00e4                	addi	s1,sp,76
    1304:	0000                	unimp
    1306:	0000                	unimp
    1308:	0000                	unimp
    130a:	0006                	0x6
    130c:	0af503f3          	0xaf503f3
    1310:	9f2d                	addw	a4,a4,a1
    1312:	00e4                	addi	s1,sp,76
    1314:	0000                	unimp
    1316:	0000                	unimp
    1318:	0000                	unimp
    131a:	00ec                	addi	a1,sp,76
    131c:	0000                	unimp
    131e:	0000                	unimp
    1320:	0000                	unimp
    1322:	0001                	nop
    1324:	ec5a                	sd	s6,24(sp)
    1326:	0000                	unimp
    1328:	0000                	unimp
    132a:	0000                	unimp
    132c:	0800                	addi	s0,sp,16
    132e:	0001                	nop
    1330:	0000                	unimp
    1332:	0000                	unimp
    1334:	0600                	addi	s0,sp,768
    1336:	f300                	sd	s0,32(a4)
    1338:	2d0af503          	0x2d0af503
    133c:	089f 0001 0000      	0x1089f
    1342:	0000                	unimp
    1344:	2800                	fld	fs0,16(s0)
    1346:	0001                	nop
    1348:	0000                	unimp
    134a:	0000                	unimp
    134c:	0100                	addi	s0,sp,128
    134e:	5a00                	lw	s0,48(a2)
    1350:	0128                	addi	a0,sp,136
    1352:	0000                	unimp
    1354:	0000                	unimp
    1356:	0000                	unimp
    1358:	0388                	addi	a0,sp,448
    135a:	0000                	unimp
    135c:	0000                	unimp
    135e:	0000                	unimp
    1360:	0006                	0x6
    1362:	0af503f3          	0xaf503f3
    1366:	9f2d                	addw	a4,a4,a1
	...
    1380:	0068                	addi	a0,sp,12
    1382:	0000                	unimp
    1384:	0000                	unimp
    1386:	0000                	unimp
    1388:	0001                	nop
    138a:	0000685b          	0x685b
    138e:	0000                	unimp
    1390:	0000                	unimp
    1392:	8800                	0x8800
    1394:	0000                	unimp
    1396:	0000                	unimp
    1398:	0000                	unimp
    139a:	0100                	addi	s0,sp,128
    139c:	6700                	ld	s0,8(a4)
    139e:	0088                	addi	a0,sp,64
    13a0:	0000                	unimp
    13a2:	0000                	unimp
    13a4:	0000                	unimp
    13a6:	00e4                	addi	s1,sp,76
    13a8:	0000                	unimp
    13aa:	0000                	unimp
    13ac:	0000                	unimp
    13ae:	0006                	0x6
    13b0:	0bf503f3          	0xbf503f3
    13b4:	9f2d                	addw	a4,a4,a1
    13b6:	00e4                	addi	s1,sp,76
    13b8:	0000                	unimp
    13ba:	0000                	unimp
    13bc:	0000                	unimp
    13be:	000000ef          	jal	ra,13be <_start-0xecf2>
    13c2:	0000                	unimp
    13c4:	0000                	unimp
    13c6:	0001                	nop
    13c8:	0000ef5b          	0xef5b
    13cc:	0000                	unimp
    13ce:	0000                	unimp
    13d0:	0800                	addi	s0,sp,16
    13d2:	0001                	nop
    13d4:	0000                	unimp
    13d6:	0000                	unimp
    13d8:	0100                	addi	s0,sp,128
    13da:	6700                	ld	s0,8(a4)
    13dc:	0108                	addi	a0,sp,128
    13de:	0000                	unimp
    13e0:	0000                	unimp
    13e2:	0000                	unimp
    13e4:	0128                	addi	a0,sp,136
    13e6:	0000                	unimp
    13e8:	0000                	unimp
    13ea:	0000                	unimp
    13ec:	0001                	nop
    13ee:	0001285b          	0x1285b
    13f2:	0000                	unimp
    13f4:	0000                	unimp
    13f6:	8800                	0x8800
    13f8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    13fc:	0000                	unimp
    13fe:	0600                	addi	s0,sp,768
    1400:	f300                	sd	s0,32(a4)
    1402:	2d0bf503          	0x2d0bf503
    1406:	009f 0000 0000      	0x9f
	...
    141c:	0000                	unimp
    141e:	6c00                	ld	s0,24(s0)
    1420:	0000                	unimp
    1422:	0000                	unimp
    1424:	0000                	unimp
    1426:	0200                	addi	s0,sp,256
    1428:	3000                	fld	fs0,32(s0)
    142a:	e49f 0000 0000      	0xe49f
    1430:	0000                	unimp
    1432:	2800                	fld	fs0,16(s0)
    1434:	0001                	nop
    1436:	0000                	unimp
    1438:	0000                	unimp
    143a:	0200                	addi	s0,sp,256
    143c:	3000                	fld	fs0,32(s0)
    143e:	009f 0000 0000      	0x9f
	...
    144c:	0000                	unimp
    144e:	6800                	ld	s0,16(s0)
    1450:	0000                	unimp
    1452:	0000                	unimp
    1454:	0000                	unimp
    1456:	6c00                	ld	s0,24(s0)
    1458:	0000                	unimp
    145a:	0000                	unimp
    145c:	0000                	unimp
    145e:	0200                	addi	s0,sp,256
    1460:	3000                	fld	fs0,32(s0)
    1462:	6c9f 0000 0000      	0x6c9f
    1468:	0000                	unimp
    146a:	e400                	sd	s0,8(s0)
    146c:	0000                	unimp
    146e:	0000                	unimp
    1470:	0000                	unimp
    1472:	0100                	addi	s0,sp,128
    1474:	6500                	ld	s0,8(a0)
    1476:	0128                	addi	a0,sp,136
    1478:	0000                	unimp
    147a:	0000                	unimp
    147c:	0000                	unimp
    147e:	0178                	addi	a4,sp,140
    1480:	0000                	unimp
    1482:	0000                	unimp
    1484:	0000                	unimp
    1486:	0001                	nop
    1488:	7465                	lui	s0,0xffff9
    148a:	0002                	0x2
    148c:	0000                	unimp
    148e:	0000                	unimp
    1490:	a000                	fsd	fs0,0(s0)
    1492:	0002                	0x2
    1494:	0000                	unimp
    1496:	0000                	unimp
    1498:	0100                	addi	s0,sp,128
    149a:	6500                	ld	s0,8(a0)
    149c:	02ec                	addi	a1,sp,332
    149e:	0000                	unimp
    14a0:	0000                	unimp
    14a2:	0000                	unimp
    14a4:	02f4                	addi	a3,sp,332
    14a6:	0000                	unimp
    14a8:	0000                	unimp
    14aa:	0000                	unimp
    14ac:	0001                	nop
    14ae:	5465                	li	s0,-7
    14b0:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    14b4:	0000                	unimp
    14b6:	6800                	ld	s0,16(s0)
    14b8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    14bc:	0000                	unimp
    14be:	0100                	addi	s0,sp,128
    14c0:	6500                	ld	s0,8(a0)
	...
    14d2:	0048                	addi	a0,sp,4
    14d4:	0000                	unimp
    14d6:	0000                	unimp
    14d8:	0000                	unimp
    14da:	0198                	addi	a4,sp,192
    14dc:	0000                	unimp
    14de:	0000                	unimp
    14e0:	0000                	unimp
    14e2:	0006                	0x6
    14e4:	ff080083          	lb	ra,-16(a6) # 16ff0 <__global_pointer$+0x4020>
    14e8:	9f1a                	add	t5,t5,t1
    14ea:	0274                	addi	a3,sp,268
    14ec:	0000                	unimp
    14ee:	0000                	unimp
    14f0:	0000                	unimp
    14f2:	02a0                	addi	s0,sp,328
    14f4:	0000                	unimp
    14f6:	0000                	unimp
    14f8:	0000                	unimp
    14fa:	0006                	0x6
    14fc:	ff080083          	lb	ra,-16(a6)
    1500:	9f1a                	add	t5,t5,t1
    1502:	02ec                	addi	a1,sp,332
    1504:	0000                	unimp
    1506:	0000                	unimp
    1508:	0000                	unimp
    150a:	02f4                	addi	a3,sp,332
    150c:	0000                	unimp
    150e:	0000                	unimp
    1510:	0000                	unimp
    1512:	0006                	0x6
    1514:	ff080083          	lb	ra,-16(a6)
    1518:	9f1a                	add	t5,t5,t1
    151a:	0354                	addi	a3,sp,388
    151c:	0000                	unimp
    151e:	0000                	unimp
    1520:	0000                	unimp
    1522:	0368                	addi	a0,sp,396
    1524:	0000                	unimp
    1526:	0000                	unimp
    1528:	0000                	unimp
    152a:	0006                	0x6
    152c:	ff080083          	lb	ra,-16(a6)
    1530:	9f1a                	add	t5,t5,t1
	...
    1542:	0044                	addi	s1,sp,4
    1544:	0000                	unimp
    1546:	0000                	unimp
    1548:	0000                	unimp
    154a:	0068                	addi	a0,sp,12
    154c:	0000                	unimp
    154e:	0000                	unimp
    1550:	0000                	unimp
    1552:	00820007          	0x820007
    1556:	ff0a                	sd	sp,440(sp)
    1558:	1aff                	0x1aff
    155a:	689f 0000 0000      	0x689f
    1560:	0000                	unimp
    1562:	b800                	fsd	fs0,48(s0)
    1564:	0000                	unimp
    1566:	0000                	unimp
    1568:	0000                	unimp
    156a:	0100                	addi	s0,sp,128
    156c:	6200                	ld	s0,0(a2)
    156e:	00e4                	addi	s1,sp,76
    1570:	0000                	unimp
    1572:	0000                	unimp
    1574:	0000                	unimp
    1576:	00fc                	addi	a5,sp,76
    1578:	0000                	unimp
    157a:	0000                	unimp
    157c:	0000                	unimp
    157e:	00820007          	0x820007
    1582:	ff0a                	sd	sp,440(sp)
    1584:	1aff                	0x1aff
    1586:	089f 0001 0000      	0x1089f
    158c:	0000                	unimp
    158e:	0c00                	addi	s0,sp,528
    1590:	0001                	nop
    1592:	0000                	unimp
    1594:	0000                	unimp
    1596:	0700                	addi	s0,sp,896
    1598:	8200                	0x8200
    159a:	0a00                	addi	s0,sp,272
    159c:	ffff                	0xffff
    159e:	9f1a                	add	t5,t5,t1
    15a0:	010c                	addi	a1,sp,128
    15a2:	0000                	unimp
    15a4:	0000                	unimp
    15a6:	0000                	unimp
    15a8:	011c                	addi	a5,sp,128
    15aa:	0000                	unimp
    15ac:	0000                	unimp
    15ae:	0000                	unimp
    15b0:	007f0007          	0x7f0007
    15b4:	ff0a                	sd	sp,440(sp)
    15b6:	1aff                	0x1aff
    15b8:	1c9f 0001 0000      	0x11c9f
    15be:	0000                	unimp
    15c0:	2000                	fld	fs0,0(s0)
    15c2:	0001                	nop
    15c4:	0000                	unimp
    15c6:	0000                	unimp
    15c8:	0700                	addi	s0,sp,896
    15ca:	8200                	0x8200
    15cc:	0a00                	addi	s0,sp,272
    15ce:	ffff                	0xffff
    15d0:	9f1a                	add	t5,t5,t1
    15d2:	0120                	addi	s0,sp,136
    15d4:	0000                	unimp
    15d6:	0000                	unimp
    15d8:	0000                	unimp
    15da:	0128                	addi	a0,sp,136
    15dc:	0000                	unimp
    15de:	0000                	unimp
    15e0:	0000                	unimp
    15e2:	007f0007          	0x7f0007
    15e6:	ff0a                	sd	sp,440(sp)
    15e8:	1aff                	0x1aff
    15ea:	289f 0001 0000      	0x1289f
    15f0:	0000                	unimp
    15f2:	6c00                	ld	s0,24(s0)
    15f4:	0001                	nop
    15f6:	0000                	unimp
    15f8:	0000                	unimp
    15fa:	0100                	addi	s0,sp,128
    15fc:	6200                	ld	s0,0(a2)
	...
    160e:	0044                	addi	s1,sp,4
    1610:	0000                	unimp
    1612:	0000                	unimp
    1614:	0000                	unimp
    1616:	0054                	addi	a3,sp,4
    1618:	0000                	unimp
    161a:	0000                	unimp
    161c:	0000                	unimp
    161e:	0001                	nop
    1620:	5459                	li	s0,-10
    1622:	0000                	unimp
    1624:	0000                	unimp
    1626:	0000                	unimp
    1628:	5c00                	lw	s0,56(s0)
    162a:	0000                	unimp
    162c:	0000                	unimp
    162e:	0000                	unimp
    1630:	0800                	addi	s0,sp,16
    1632:	7900                	ld	s0,48(a0)
    1634:	4000                	lw	s0,0(s0)
    1636:	3008                	fld	fa0,32(s0)
    1638:	2124                	fld	fs1,64(a0)
    163a:	5c9f 0000 0000      	0x5c9f
    1640:	0000                	unimp
    1642:	6400                	ld	s0,8(s0)
    1644:	0000                	unimp
    1646:	0000                	unimp
    1648:	0000                	unimp
    164a:	1200                	addi	s0,sp,288
    164c:	7a00                	ld	s0,48(a2)
    164e:	1000                	addi	s0,sp,32
    1650:	ffff                	0xffff
    1652:	ffff                	0xffff
    1654:	ffff                	0xffff
    1656:	07ff                	0x7ff
    1658:	401a                	0x401a
    165a:	3008                	fld	fa0,32(s0)
    165c:	2124                	fld	fs1,64(a0)
    165e:	649f 0000 0000      	0x649f
    1664:	0000                	unimp
    1666:	8000                	0x8000
    1668:	0001                	nop
    166a:	0000                	unimp
    166c:	0000                	unimp
    166e:	0100                	addi	s0,sp,128
    1670:	5900                	lw	s0,48(a0)
    1672:	0274                	addi	a3,sp,268
    1674:	0000                	unimp
    1676:	0000                	unimp
    1678:	0000                	unimp
    167a:	02a0                	addi	s0,sp,328
    167c:	0000                	unimp
    167e:	0000                	unimp
    1680:	0000                	unimp
    1682:	0001                	nop
    1684:	ec59                	bnez	s0,1722 <_start-0xe98e>
    1686:	0002                	0x2
    1688:	0000                	unimp
    168a:	0000                	unimp
    168c:	f400                	sd	s0,40(s0)
    168e:	0002                	0x2
    1690:	0000                	unimp
    1692:	0000                	unimp
    1694:	0100                	addi	s0,sp,128
    1696:	5900                	lw	s0,48(a0)
    1698:	0354                	addi	a3,sp,388
    169a:	0000                	unimp
    169c:	0000                	unimp
    169e:	0000                	unimp
    16a0:	0368                	addi	a0,sp,396
    16a2:	0000                	unimp
    16a4:	0000                	unimp
    16a6:	0000                	unimp
    16a8:	0001                	nop
    16aa:	0059                	c.addi	zero,22
	...
    16b8:	0000                	unimp
    16ba:	a800                	fsd	fs0,16(s0)
    16bc:	0000                	unimp
    16be:	0000                	unimp
    16c0:	0000                	unimp
    16c2:	ac00                	fsd	fs0,24(s0)
    16c4:	0000                	unimp
    16c6:	0000                	unimp
    16c8:	0000                	unimp
    16ca:	0200                	addi	s0,sp,256
    16cc:	3000                	fld	fs0,32(s0)
    16ce:	ac9f 0000 0000      	0xac9f
    16d4:	0000                	unimp
    16d6:	e400                	sd	s0,8(s0)
    16d8:	0000                	unimp
    16da:	0000                	unimp
    16dc:	0000                	unimp
    16de:	0100                	addi	s0,sp,128
    16e0:	5d00                	lw	s0,56(a0)
    16e2:	016c                	addi	a1,sp,140
    16e4:	0000                	unimp
    16e6:	0000                	unimp
    16e8:	0000                	unimp
    16ea:	0000018f          	0x18f
    16ee:	0000                	unimp
    16f0:	0000                	unimp
    16f2:	0001                	nop
    16f4:	745d                	lui	s0,0xffff7
    16f6:	0002                	0x2
    16f8:	0000                	unimp
    16fa:	0000                	unimp
    16fc:	8000                	0x8000
    16fe:	0002                	0x2
    1700:	0000                	unimp
    1702:	0000                	unimp
    1704:	0100                	addi	s0,sp,128
    1706:	5d00                	lw	s0,56(a0)
    1708:	02ec                	addi	a1,sp,332
    170a:	0000                	unimp
    170c:	0000                	unimp
    170e:	0000                	unimp
    1710:	02f4                	addi	a3,sp,332
    1712:	0000                	unimp
    1714:	0000                	unimp
    1716:	0000                	unimp
    1718:	0001                	nop
    171a:	005d                	c.addi	zero,23
	...
    1728:	0000                	unimp
    172a:	8800                	0x8800
    172c:	0000                	unimp
    172e:	0000                	unimp
    1730:	0000                	unimp
    1732:	e400                	sd	s0,8(s0)
    1734:	0000                	unimp
    1736:	0000                	unimp
    1738:	0000                	unimp
    173a:	0600                	addi	s0,sp,768
    173c:	8700                	0x8700
    173e:	0800                	addi	s0,sp,16
    1740:	1aff                	0x1aff
    1742:	289f 0001 0000      	0x1289f
    1748:	0000                	unimp
    174a:	7c00                	ld	s0,56(s0)
    174c:	0001                	nop
    174e:	0000                	unimp
    1750:	0000                	unimp
    1752:	0600                	addi	s0,sp,768
    1754:	8700                	0x8700
    1756:	0800                	addi	s0,sp,16
    1758:	1aff                	0x1aff
    175a:	749f 0002 0000      	0x2749f
    1760:	0000                	unimp
    1762:	a000                	fsd	fs0,0(s0)
    1764:	0002                	0x2
    1766:	0000                	unimp
    1768:	0000                	unimp
    176a:	0600                	addi	s0,sp,768
    176c:	8700                	0x8700
    176e:	0800                	addi	s0,sp,16
    1770:	1aff                	0x1aff
    1772:	ec9f 0002 0000      	0x2ec9f
    1778:	0000                	unimp
    177a:	f400                	sd	s0,40(s0)
    177c:	0002                	0x2
    177e:	0000                	unimp
    1780:	0000                	unimp
    1782:	0600                	addi	s0,sp,768
    1784:	8700                	0x8700
    1786:	0800                	addi	s0,sp,16
    1788:	1aff                	0x1aff
    178a:	549f 0003 0000      	0x3549f
    1790:	0000                	unimp
    1792:	6800                	ld	s0,16(s0)
    1794:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1798:	0000                	unimp
    179a:	0600                	addi	s0,sp,768
    179c:	8700                	0x8700
    179e:	0800                	addi	s0,sp,16
    17a0:	1aff                	0x1aff
    17a2:	009f 0000 0000      	0x9f
	...
    17b0:	0000                	unimp
    17b2:	8400                	0x8400
    17b4:	0000                	unimp
    17b6:	0000                	unimp
    17b8:	0000                	unimp
    17ba:	a800                	fsd	fs0,16(s0)
    17bc:	0000                	unimp
    17be:	0000                	unimp
    17c0:	0000                	unimp
    17c2:	0700                	addi	s0,sp,896
    17c4:	7a00                	ld	s0,48(a2)
    17c6:	0a00                	addi	s0,sp,272
    17c8:	ffff                	0xffff
    17ca:	9f1a                	add	t5,t5,t1
    17cc:	00a8                	addi	a0,sp,72
    17ce:	0000                	unimp
    17d0:	0000                	unimp
    17d2:	0000                	unimp
    17d4:	00e4                	addi	s1,sp,76
    17d6:	0000                	unimp
    17d8:	0000                	unimp
    17da:	0000                	unimp
    17dc:	0001                	nop
    17de:	285a                	fld	fa6,400(sp)
    17e0:	0001                	nop
    17e2:	0000                	unimp
    17e4:	0000                	unimp
    17e6:	3000                	fld	fs0,32(s0)
    17e8:	0001                	nop
    17ea:	0000                	unimp
    17ec:	0000                	unimp
    17ee:	0700                	addi	s0,sp,896
    17f0:	7a00                	ld	s0,48(a2)
    17f2:	0a00                	addi	s0,sp,272
    17f4:	ffff                	0xffff
    17f6:	9f1a                	add	t5,t5,t1
    17f8:	0130                	addi	a2,sp,136
    17fa:	0000                	unimp
    17fc:	0000                	unimp
    17fe:	0000                	unimp
    1800:	00000133          	add	sp,zero,zero
    1804:	0000                	unimp
    1806:	0000                	unimp
    1808:	007f0007          	0x7f0007
    180c:	ff0a                	sd	sp,440(sp)
    180e:	1aff                	0x1aff
    1810:	4c9f 0001 0000      	0x14c9f
    1816:	0000                	unimp
    1818:	5000                	lw	s0,32(s0)
    181a:	0001                	nop
    181c:	0000                	unimp
    181e:	0000                	unimp
    1820:	0700                	addi	s0,sp,896
    1822:	7a00                	ld	s0,48(a2)
    1824:	0a00                	addi	s0,sp,272
    1826:	ffff                	0xffff
    1828:	9f1a                	add	t5,t5,t1
    182a:	0150                	addi	a2,sp,132
    182c:	0000                	unimp
    182e:	0000                	unimp
    1830:	0000                	unimp
    1832:	0160                	addi	s0,sp,140
    1834:	0000                	unimp
    1836:	0000                	unimp
    1838:	0000                	unimp
    183a:	007f0007          	0x7f0007
    183e:	ff0a                	sd	sp,440(sp)
    1840:	1aff                	0x1aff
    1842:	609f 0001 0000      	0x1609f
    1848:	0000                	unimp
    184a:	6400                	ld	s0,8(s0)
    184c:	0001                	nop
    184e:	0000                	unimp
    1850:	0000                	unimp
    1852:	0700                	addi	s0,sp,896
    1854:	7a00                	ld	s0,48(a2)
    1856:	0a00                	addi	s0,sp,272
    1858:	ffff                	0xffff
    185a:	9f1a                	add	t5,t5,t1
    185c:	0164                	addi	s1,sp,140
    185e:	0000                	unimp
    1860:	0000                	unimp
    1862:	0000                	unimp
    1864:	016c                	addi	a1,sp,140
    1866:	0000                	unimp
    1868:	0000                	unimp
    186a:	0000                	unimp
    186c:	007f0007          	0x7f0007
    1870:	ff0a                	sd	sp,440(sp)
    1872:	1aff                	0x1aff
    1874:	6c9f 0001 0000      	0x16c9f
    187a:	0000                	unimp
    187c:	8c00                	0x8c00
    187e:	0001                	nop
    1880:	0000                	unimp
    1882:	0000                	unimp
    1884:	0100                	addi	s0,sp,128
    1886:	5a00                	lw	s0,48(a2)
    1888:	0274                	addi	a3,sp,268
    188a:	0000                	unimp
    188c:	0000                	unimp
    188e:	0000                	unimp
    1890:	02a0                	addi	s0,sp,328
    1892:	0000                	unimp
    1894:	0000                	unimp
    1896:	0000                	unimp
    1898:	0001                	nop
    189a:	ec5a                	sd	s6,24(sp)
    189c:	0002                	0x2
    189e:	0000                	unimp
    18a0:	0000                	unimp
    18a2:	f400                	sd	s0,40(s0)
    18a4:	0002                	0x2
    18a6:	0000                	unimp
    18a8:	0000                	unimp
    18aa:	0100                	addi	s0,sp,128
    18ac:	5a00                	lw	s0,48(a2)
    18ae:	0354                	addi	a3,sp,388
    18b0:	0000                	unimp
    18b2:	0000                	unimp
    18b4:	0000                	unimp
    18b6:	0368                	addi	a0,sp,396
    18b8:	0000                	unimp
    18ba:	0000                	unimp
    18bc:	0000                	unimp
    18be:	0001                	nop
    18c0:	005a                	0x5a
	...
    18ce:	0000                	unimp
    18d0:	8400                	0x8400
    18d2:	0000                	unimp
    18d4:	0000                	unimp
    18d6:	0000                	unimp
    18d8:	9400                	0x9400
    18da:	0000                	unimp
    18dc:	0000                	unimp
    18de:	0000                	unimp
    18e0:	0100                	addi	s0,sp,128
    18e2:	5800                	lw	s0,48(s0)
    18e4:	0094                	addi	a3,sp,64
    18e6:	0000                	unimp
    18e8:	0000                	unimp
    18ea:	0000                	unimp
    18ec:	009c                	addi	a5,sp,64
    18ee:	0000                	unimp
    18f0:	0000                	unimp
    18f2:	0000                	unimp
    18f4:	0008                	addi	a0,sp,0
    18f6:	0078                	addi	a4,sp,12
    18f8:	0840                	addi	s0,sp,20
    18fa:	2430                	fld	fa2,72(s0)
    18fc:	9f21                	addw	a4,a4,s0
    18fe:	00a4                	addi	s1,sp,72
    1900:	0000                	unimp
    1902:	0000                	unimp
    1904:	0000                	unimp
    1906:	00e4                	addi	s1,sp,76
    1908:	0000                	unimp
    190a:	0000                	unimp
    190c:	0000                	unimp
    190e:	0001                	nop
    1910:	2858                	fld	fa4,144(s0)
    1912:	0001                	nop
    1914:	0000                	unimp
    1916:	0000                	unimp
    1918:	8400                	0x8400
    191a:	0001                	nop
    191c:	0000                	unimp
    191e:	0000                	unimp
    1920:	0100                	addi	s0,sp,128
    1922:	5800                	lw	s0,48(s0)
    1924:	0274                	addi	a3,sp,268
    1926:	0000                	unimp
    1928:	0000                	unimp
    192a:	0000                	unimp
    192c:	027c                	addi	a5,sp,268
    192e:	0000                	unimp
    1930:	0000                	unimp
    1932:	0000                	unimp
    1934:	0001                	nop
    1936:	ec58                	sd	a4,152(s0)
    1938:	0002                	0x2
    193a:	0000                	unimp
    193c:	0000                	unimp
    193e:	f400                	sd	s0,40(s0)
    1940:	0002                	0x2
    1942:	0000                	unimp
    1944:	0000                	unimp
    1946:	0100                	addi	s0,sp,128
    1948:	5800                	lw	s0,48(s0)
	...
    195a:	016c                	addi	a1,sp,140
    195c:	0000                	unimp
    195e:	0000                	unimp
    1960:	0000                	unimp
    1962:	0228                	addi	a0,sp,264
    1964:	0000                	unimp
    1966:	0000                	unimp
    1968:	0000                	unimp
    196a:	0002                	0x2
    196c:	9f30                	0x9f30
    196e:	0280                	addi	s0,sp,320
    1970:	0000                	unimp
    1972:	0000                	unimp
    1974:	0000                	unimp
    1976:	02a0                	addi	s0,sp,328
    1978:	0000                	unimp
    197a:	0000                	unimp
    197c:	0000                	unimp
    197e:	0001                	nop
    1980:	f45d                	bnez	s0,192e <_start-0xe782>
    1982:	0002                	0x2
    1984:	0000                	unimp
    1986:	0000                	unimp
    1988:	fc00                	sd	s0,56(s0)
    198a:	0002                	0x2
    198c:	0000                	unimp
    198e:	0000                	unimp
    1990:	0200                	addi	s0,sp,256
    1992:	3000                	fld	fs0,32(s0)
    1994:	009f 0000 0000      	0x9f
	...
    19a2:	0000                	unimp
    19a4:	c400                	sw	s0,8(s0)
    19a6:	0000                	unimp
    19a8:	0000                	unimp
    19aa:	0000                	unimp
    19ac:	e400                	sd	s0,8(s0)
    19ae:	0000                	unimp
    19b0:	0000                	unimp
    19b2:	0000                	unimp
    19b4:	0100                	addi	s0,sp,128
    19b6:	6400                	ld	s0,8(s0)
    19b8:	016c                	addi	a1,sp,140
    19ba:	0000                	unimp
    19bc:	0000                	unimp
    19be:	0000                	unimp
    19c0:	0278                	addi	a4,sp,268
    19c2:	0000                	unimp
    19c4:	0000                	unimp
    19c6:	0000                	unimp
    19c8:	0001                	nop
    19ca:	7864                	ld	s1,240(s0)
    19cc:	0002                	0x2
    19ce:	0000                	unimp
    19d0:	0000                	unimp
    19d2:	8000                	0x8000
    19d4:	0002                	0x2
    19d6:	0000                	unimp
    19d8:	0000                	unimp
    19da:	0600                	addi	s0,sp,768
    19dc:	8300                	0x8300
    19de:	0800                	addi	s0,sp,16
    19e0:	1aff                	0x1aff
    19e2:	809f 0002 0000      	0x2809f
    19e8:	0000                	unimp
    19ea:	d400                	sw	s0,40(s0)
    19ec:	0002                	0x2
    19ee:	0000                	unimp
    19f0:	0000                	unimp
    19f2:	0100                	addi	s0,sp,128
    19f4:	6400                	ld	s0,8(s0)
    19f6:	02ec                	addi	a1,sp,332
    19f8:	0000                	unimp
    19fa:	0000                	unimp
    19fc:	0000                	unimp
    19fe:	02f0                	addi	a2,sp,332
    1a00:	0000                	unimp
    1a02:	0000                	unimp
    1a04:	0000                	unimp
    1a06:	0001                	nop
    1a08:	f064                	sd	s1,224(s0)
    1a0a:	0002                	0x2
    1a0c:	0000                	unimp
    1a0e:	0000                	unimp
    1a10:	f400                	sd	s0,40(s0)
    1a12:	0002                	0x2
    1a14:	0000                	unimp
    1a16:	0000                	unimp
    1a18:	0600                	addi	s0,sp,768
    1a1a:	8700                	0x8700
    1a1c:	0800                	addi	s0,sp,16
    1a1e:	1aff                	0x1aff
    1a20:	f49f 0002 0000      	0x2f49f
    1a26:	0000                	unimp
    1a28:	6400                	ld	s0,8(s0)
    1a2a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1a2e:	0000                	unimp
    1a30:	0100                	addi	s0,sp,128
    1a32:	6400                	ld	s0,8(s0)
    1a34:	0368                	addi	a0,sp,396
    1a36:	0000                	unimp
    1a38:	0000                	unimp
    1a3a:	0000                	unimp
    1a3c:	0388                	addi	a0,sp,448
    1a3e:	0000                	unimp
    1a40:	0000                	unimp
    1a42:	0000                	unimp
    1a44:	0001                	nop
    1a46:	0064                	addi	s1,sp,12
	...
    1a54:	0000                	unimp
    1a56:	c800                	sw	s0,16(s0)
    1a58:	0000                	unimp
    1a5a:	0000                	unimp
    1a5c:	0000                	unimp
    1a5e:	e400                	sd	s0,8(s0)
    1a60:	0000                	unimp
    1a62:	0000                	unimp
    1a64:	0000                	unimp
    1a66:	0100                	addi	s0,sp,128
    1a68:	6600                	ld	s0,8(a2)
    1a6a:	016c                	addi	a1,sp,140
    1a6c:	0000                	unimp
    1a6e:	0000                	unimp
    1a70:	0000                	unimp
    1a72:	022c                	addi	a1,sp,264
    1a74:	0000                	unimp
    1a76:	0000                	unimp
    1a78:	0000                	unimp
    1a7a:	0001                	nop
    1a7c:	2c66                	fld	fs8,88(sp)
    1a7e:	0002                	0x2
    1a80:	0000                	unimp
    1a82:	0000                	unimp
    1a84:	7400                	ld	s0,40(s0)
    1a86:	0002                	0x2
    1a88:	0000                	unimp
    1a8a:	0000                	unimp
    1a8c:	0100                	addi	s0,sp,128
    1a8e:	5e00                	lw	s0,56(a2)
    1a90:	0274                	addi	a3,sp,268
    1a92:	0000                	unimp
    1a94:	0000                	unimp
    1a96:	0000                	unimp
    1a98:	02a0                	addi	s0,sp,328
    1a9a:	0000                	unimp
    1a9c:	0000                	unimp
    1a9e:	0000                	unimp
    1aa0:	0001                	nop
    1aa2:	a066                	fsd	fs9,0(sp)
    1aa4:	0002                	0x2
    1aa6:	0000                	unimp
    1aa8:	0000                	unimp
    1aaa:	b400                	fsd	fs0,40(s0)
    1aac:	0002                	0x2
    1aae:	0000                	unimp
    1ab0:	0000                	unimp
    1ab2:	0100                	addi	s0,sp,128
    1ab4:	5e00                	lw	s0,56(a2)
    1ab6:	02ec                	addi	a1,sp,332
    1ab8:	0000                	unimp
    1aba:	0000                	unimp
    1abc:	0000                	unimp
    1abe:	02f8                	addi	a4,sp,332
    1ac0:	0000                	unimp
    1ac2:	0000                	unimp
    1ac4:	0000                	unimp
    1ac6:	0001                	nop
    1ac8:	f866                	sd	s9,48(sp)
    1aca:	0002                	0x2
    1acc:	0000                	unimp
    1ace:	0000                	unimp
    1ad0:	fc00                	sd	s0,56(s0)
    1ad2:	0002                	0x2
    1ad4:	0000                	unimp
    1ad6:	0000                	unimp
    1ad8:	0300                	addi	s0,sp,384
    1ada:	8200                	0x8200
    1adc:	9f01                	subw	a4,a4,s0
    1ade:	02fc                	addi	a5,sp,332
    1ae0:	0000                	unimp
    1ae2:	0000                	unimp
    1ae4:	0000                	unimp
    1ae6:	0310                	addi	a2,sp,384
    1ae8:	0000                	unimp
    1aea:	0000                	unimp
    1aec:	0000                	unimp
    1aee:	0001                	nop
    1af0:	105e                	0x105e
    1af2:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1af6:	0000                	unimp
    1af8:	4800                	lw	s0,16(s0)
    1afa:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1afe:	0000                	unimp
    1b00:	0700                	addi	s0,sp,896
    1b02:	0b00                	addi	s0,sp,400
    1b04:	fc02                	sd	zero,56(sp)
    1b06:	0086                	slli	ra,ra,0x1
    1b08:	9f1c                	0x9f1c
    1b0a:	0348                	addi	a0,sp,388
    1b0c:	0000                	unimp
    1b0e:	0000                	unimp
    1b10:	0000                	unimp
    1b12:	034c                	addi	a1,sp,388
    1b14:	0000                	unimp
    1b16:	0000                	unimp
    1b18:	0000                	unimp
    1b1a:	0002                	0x2
    1b1c:	9f30                	0x9f30
    1b1e:	0354                	addi	a3,sp,388
    1b20:	0000                	unimp
    1b22:	0000                	unimp
    1b24:	0000                	unimp
    1b26:	0368                	addi	a0,sp,396
    1b28:	0000                	unimp
    1b2a:	0000                	unimp
    1b2c:	0000                	unimp
    1b2e:	0001                	nop
    1b30:	7466                	ld	s0,120(sp)
    1b32:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1b36:	0000                	unimp
    1b38:	7c00                	ld	s0,56(s0)
    1b3a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1b3e:	0000                	unimp
    1b40:	0100                	addi	s0,sp,128
    1b42:	5e00                	lw	s0,56(a2)
    1b44:	037c                	addi	a5,sp,396
    1b46:	0000                	unimp
    1b48:	0000                	unimp
    1b4a:	0000                	unimp
    1b4c:	0384                	addi	s1,sp,448
    1b4e:	0000                	unimp
    1b50:	0000                	unimp
    1b52:	0000                	unimp
    1b54:	020b0007          	0x20b0007
    1b58:	86fc                	0x86fc
    1b5a:	1c00                	addi	s0,sp,560
    1b5c:	849f 0003 0000      	0x3849f
    1b62:	0000                	unimp
    1b64:	8800                	0x8800
    1b66:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1b6a:	0000                	unimp
    1b6c:	0a00                	addi	s0,sp,272
    1b6e:	7e00                	ld	s0,56(a2)
    1b70:	8600                	0x8600
    1b72:	1c00                	addi	s0,sp,560
    1b74:	ff0a                	sd	sp,440(sp)
    1b76:	009f1c03          	lh	s8,9(t5)
	...
    1b86:	0000                	unimp
    1b88:	1400                	addi	s0,sp,544
    1b8a:	0002                	0x2
    1b8c:	0000                	unimp
    1b8e:	0000                	unimp
    1b90:	2400                	fld	fs0,8(s0)
    1b92:	0002                	0x2
    1b94:	0000                	unimp
    1b96:	0000                	unimp
    1b98:	0100                	addi	s0,sp,128
    1b9a:	5800                	lw	s0,48(s0)
    1b9c:	0224                	addi	s1,sp,264
    1b9e:	0000                	unimp
    1ba0:	0000                	unimp
    1ba2:	0000                	unimp
    1ba4:	0228                	addi	a0,sp,264
    1ba6:	0000                	unimp
    1ba8:	0000                	unimp
    1baa:	0000                	unimp
    1bac:	002a                	0x2a
    1bae:	007a                	0x7a
    1bb0:	007e                	0x7e
    1bb2:	081a                	slli	a6,a6,0x6
    1bb4:	2420                	fld	fs0,72(s0)
    1bb6:	08220083          	lb	ra,130(tp) # 18082 <__global_pointer$+0x50b2>
    1bba:	007a2537          	lui	a0,0x7a2
    1bbe:	2008                	fld	fa0,0(s0)
    1bc0:	8525                	srai	a0,a0,0x9
    1bc2:	2200                	fld	fs0,0(a2)
    1bc4:	2439                	addiw	s0,s0,14
    1bc6:	7a21                	lui	s4,0xfffe8
    1bc8:	7e00                	ld	s0,56(a2)
    1bca:	1a00                	addi	s0,sp,304
    1bcc:	2008                	fld	fa0,0(s0)
    1bce:	8324                	0x8324
    1bd0:	2200                	fld	fs0,0(a2)
    1bd2:	2439                	addiw	s0,s0,14
    1bd4:	2e30                	fld	fa2,88(a2)
    1bd6:	9f21                	addw	a4,a4,s0
    1bd8:	0228                	addi	a0,sp,264
    1bda:	0000                	unimp
    1bdc:	0000                	unimp
    1bde:	0000                	unimp
    1be0:	0264                	addi	s1,sp,268
    1be2:	0000                	unimp
    1be4:	0000                	unimp
    1be6:	0000                	unimp
    1be8:	0001                	nop
    1bea:	6458                	ld	a4,136(s0)
    1bec:	0002                	0x2
    1bee:	0000                	unimp
    1bf0:	0000                	unimp
    1bf2:	7000                	ld	s0,32(s0)
    1bf4:	0002                	0x2
    1bf6:	0000                	unimp
    1bf8:	0000                	unimp
    1bfa:	0500                	addi	s0,sp,640
    1bfc:	7800                	ld	s0,48(s0)
    1bfe:	3300                	fld	fs0,32(a4)
    1c00:	9f25                	addw	a4,a4,s1
    1c02:	0270                	addi	a2,sp,268
    1c04:	0000                	unimp
    1c06:	0000                	unimp
    1c08:	0000                	unimp
    1c0a:	0274                	addi	a3,sp,268
    1c0c:	0000                	unimp
    1c0e:	0000                	unimp
    1c10:	0000                	unimp
    1c12:	0001                	nop
    1c14:	805f 0002 0000      	0x2805f
    1c1a:	0000                	unimp
    1c1c:	a000                	fsd	fs0,0(s0)
    1c1e:	0002                	0x2
    1c20:	0000                	unimp
    1c22:	0000                	unimp
    1c24:	0100                	addi	s0,sp,128
    1c26:	5800                	lw	s0,48(s0)
    1c28:	02a0                	addi	s0,sp,328
    1c2a:	0000                	unimp
    1c2c:	0000                	unimp
    1c2e:	0000                	unimp
    1c30:	02b8                	addi	a4,sp,328
    1c32:	0000                	unimp
    1c34:	0000                	unimp
    1c36:	0000                	unimp
    1c38:	0001                	nop
    1c3a:	f45f 0002 0000      	0x2f45f
    1c40:	0000                	unimp
    1c42:	2000                	fld	fs0,0(s0)
    1c44:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1c48:	0000                	unimp
    1c4a:	0100                	addi	s0,sp,128
    1c4c:	5800                	lw	s0,48(s0)
    1c4e:	0328                	addi	a0,sp,392
    1c50:	0000                	unimp
    1c52:	0000                	unimp
    1c54:	0000                	unimp
    1c56:	034c                	addi	a1,sp,388
    1c58:	0000                	unimp
    1c5a:	0000                	unimp
    1c5c:	0000                	unimp
    1c5e:	0001                	nop
    1c60:	7458                	ld	a4,168(s0)
    1c62:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1c66:	0000                	unimp
    1c68:	8800                	0x8800
    1c6a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    1c6e:	0000                	unimp
    1c70:	0100                	addi	s0,sp,128
    1c72:	5800                	lw	s0,48(s0)
	...
    1c84:	02c4                	addi	s1,sp,324
    1c86:	0000                	unimp
    1c88:	0000                	unimp
    1c8a:	0000                	unimp
    1c8c:	02e4                	addi	s1,sp,332
    1c8e:	0000                	unimp
    1c90:	0000                	unimp
    1c92:	0000                	unimp
    1c94:	0008                	addi	a0,sp,0
    1c96:	007f                	0x7f
    1c98:	007a                	0x7a
    1c9a:	f921                	bnez	a0,1bea <_start-0xe4c6>
    1c9c:	9f2d                	addw	a4,a4,a1
    1c9e:	02e4                	addi	s1,sp,332
    1ca0:	0000                	unimp
    1ca2:	0000                	unimp
    1ca4:	0000                	unimp
    1ca6:	02ec                	addi	a1,sp,332
    1ca8:	0000                	unimp
    1caa:	0000                	unimp
    1cac:	0000                	unimp
    1cae:	0001                	nop
    1cb0:	005a                	0x5a
	...
    1cbe:	0000                	unimp
    1cc0:	f400                	sd	s0,40(s0)
    1cc2:	0000                	unimp
    1cc4:	0000                	unimp
    1cc6:	0000                	unimp
    1cc8:	0800                	addi	s0,sp,16
    1cca:	0001                	nop
    1ccc:	0000                	unimp
    1cce:	0000                	unimp
    1cd0:	0300                	addi	s0,sp,384
    1cd2:	7a00                	ld	s0,48(a2)
    1cd4:	9f75                	0x9f75
	...
    1ce6:	0138                	addi	a4,sp,136
    1ce8:	0000                	unimp
    1cea:	0000                	unimp
    1cec:	0000                	unimp
    1cee:	0148                	addi	a0,sp,132
    1cf0:	0000                	unimp
    1cf2:	0000                	unimp
    1cf4:	0000                	unimp
    1cf6:	757a0003          	lb	zero,1879(s4) # fffffffffffe8757 <__global_pointer$+0xfffffffffffd5787>
    1cfa:	009f 0000 0000      	0x9f
	...
    1d08:	0000                	unimp
    1d0a:	f400                	sd	s0,40(s0)
    1d0c:	0001                	nop
    1d0e:	0000                	unimp
    1d10:	0000                	unimp
    1d12:	0000                	unimp
    1d14:	0002                	0x2
    1d16:	0000                	unimp
    1d18:	0000                	unimp
    1d1a:	0100                	addi	s0,sp,128
    1d1c:	5f00                	lw	s0,56(a4)
    1d1e:	0200                	addi	s0,sp,256
    1d20:	0000                	unimp
    1d22:	0000                	unimp
    1d24:	0000                	unimp
    1d26:	0214                	addi	a3,sp,256
    1d28:	0000                	unimp
    1d2a:	0000                	unimp
    1d2c:	0000                	unimp
    1d2e:	000c                	addi	a1,sp,0
    1d30:	007a                	0x7a
    1d32:	007e                	0x7e
    1d34:	081a                	slli	a6,a6,0x6
    1d36:	2420                	fld	fs0,72(s0)
    1d38:	9f220083          	lb	ra,-1550(tp) # fffffffffffff9f2 <__global_pointer$+0xfffffffffffeca22>
    1d3c:	0214                	addi	a3,sp,256
    1d3e:	0000                	unimp
    1d40:	0000                	unimp
    1d42:	0000                	unimp
    1d44:	0224                	addi	s1,sp,264
    1d46:	0000                	unimp
    1d48:	0000                	unimp
    1d4a:	0000                	unimp
    1d4c:	0001                	nop
    1d4e:	2458                	fld	fa4,136(s0)
    1d50:	0002                	0x2
    1d52:	0000                	unimp
    1d54:	0000                	unimp
    1d56:	2800                	fld	fs0,16(s0)
    1d58:	0002                	0x2
    1d5a:	0000                	unimp
    1d5c:	0000                	unimp
    1d5e:	2a00                	fld	fs0,16(a2)
    1d60:	7a00                	ld	s0,48(a2)
    1d62:	7e00                	ld	s0,56(a2)
    1d64:	1a00                	addi	s0,sp,304
    1d66:	2008                	fld	fa0,0(s0)
    1d68:	8324                	0x8324
    1d6a:	2200                	fld	fs0,0(a2)
    1d6c:	3708                	fld	fa0,40(a4)
    1d6e:	7a25                	lui	s4,0xfffe9
    1d70:	0800                	addi	s0,sp,16
    1d72:	2520                	fld	fs0,72(a0)
    1d74:	0085                	addi	ra,ra,1
    1d76:	3922                	fld	fs2,40(sp)
    1d78:	2124                	fld	fs1,64(a0)
    1d7a:	007a                	0x7a
    1d7c:	007e                	0x7e
    1d7e:	081a                	slli	a6,a6,0x6
    1d80:	2420                	fld	fs0,72(s0)
    1d82:	39220083          	lb	ra,914(tp) # 392 <_start-0xfd1e>
    1d86:	3024                	fld	fs1,96(s0)
    1d88:	212e                	fld	ft2,200(sp)
    1d8a:	f49f 0002 0000      	0x2f49f
    1d90:	0000                	unimp
    1d92:	fc00                	sd	s0,56(s0)
    1d94:	0002                	0x2
    1d96:	0000                	unimp
    1d98:	0000                	unimp
    1d9a:	0100                	addi	s0,sp,128
    1d9c:	5800                	lw	s0,48(s0)
	...
    1dae:	01dc                	addi	a5,sp,196
    1db0:	0000                	unimp
    1db2:	0000                	unimp
    1db4:	0000                	unimp
    1db6:	020c                	addi	a1,sp,256
    1db8:	0000                	unimp
    1dba:	0000                	unimp
    1dbc:	0000                	unimp
    1dbe:	0009                	c.addi	zero,2
    1dc0:	007a                	0x7a
    1dc2:	2008                	fld	fa0,0(s0)
    1dc4:	8525                	srai	a0,a0,0x9
    1dc6:	2200                	fld	fs0,0(a2)
    1dc8:	0c9f 0002 0000      	0x20c9f
    1dce:	0000                	unimp
    1dd0:	1000                	addi	s0,sp,32
    1dd2:	0002                	0x2
    1dd4:	0000                	unimp
    1dd6:	0000                	unimp
    1dd8:	0100                	addi	s0,sp,128
    1dda:	5800                	lw	s0,48(s0)
    1ddc:	0210                	addi	a2,sp,256
    1dde:	0000                	unimp
    1de0:	0000                	unimp
    1de2:	0000                	unimp
    1de4:	0214                	addi	a3,sp,256
    1de6:	0000                	unimp
    1de8:	0000                	unimp
    1dea:	0000                	unimp
    1dec:	0009                	c.addi	zero,2
    1dee:	007a                	0x7a
    1df0:	2008                	fld	fa0,0(s0)
    1df2:	8525                	srai	a0,a0,0x9
    1df4:	2200                	fld	fs0,0(a2)
    1df6:	149f 0002 0000      	0x2149f
    1dfc:	0000                	unimp
    1dfe:	2800                	fld	fs0,16(s0)
    1e00:	0002                	0x2
    1e02:	0000                	unimp
    1e04:	0000                	unimp
    1e06:	0c00                	addi	s0,sp,528
    1e08:	7a00                	ld	s0,48(a2)
    1e0a:	0800                	addi	s0,sp,16
    1e0c:	2520                	fld	fs0,72(a0)
    1e0e:	0085                	addi	ra,ra,1
    1e10:	0822                	slli	a6,a6,0x8
    1e12:	f49f2537          	lui	a0,0xf49f2
    1e16:	0002                	0x2
    1e18:	0000                	unimp
    1e1a:	0000                	unimp
    1e1c:	fc00                	sd	s0,56(s0)
    1e1e:	0002                	0x2
    1e20:	0000                	unimp
    1e22:	0000                	unimp
    1e24:	0c00                	addi	s0,sp,528
    1e26:	7a00                	ld	s0,48(a2)
    1e28:	0800                	addi	s0,sp,16
    1e2a:	2520                	fld	fs0,72(a0)
    1e2c:	0085                	addi	ra,ra,1
    1e2e:	0822                	slli	a6,a6,0x8
    1e30:	009f2537          	lui	a0,0x9f2
	...
    1e40:	0000                	unimp
    1e42:	9800                	0x9800
    1e44:	0001                	nop
    1e46:	0000                	unimp
    1e48:	0000                	unimp
    1e4a:	9c00                	0x9c00
    1e4c:	0001                	nop
    1e4e:	0000                	unimp
    1e50:	0000                	unimp
    1e52:	0100                	addi	s0,sp,128
    1e54:	5a00                	lw	s0,48(a2)
    1e56:	019c                	addi	a5,sp,192
    1e58:	0000                	unimp
    1e5a:	0000                	unimp
    1e5c:	0000                	unimp
    1e5e:	01f0                	addi	a2,sp,204
    1e60:	0000                	unimp
    1e62:	0000                	unimp
    1e64:	0000                	unimp
    1e66:	0001                	nop
    1e68:	00000063          	beqz	zero,1e68 <_start-0xe248>
	...
    1e78:	9800                	0x9800
    1e7a:	0001                	nop
    1e7c:	0000                	unimp
    1e7e:	0000                	unimp
    1e80:	c400                	sw	s0,8(s0)
    1e82:	0001                	nop
    1e84:	0000                	unimp
    1e86:	0000                	unimp
    1e88:	0600                	addi	s0,sp,768
    1e8a:	8700                	0x8700
    1e8c:	7900                	ld	s0,48(a0)
    1e8e:	1e00                	addi	s0,sp,816
    1e90:	c49f 0001 0000      	0x1c49f
    1e96:	0000                	unimp
    1e98:	cc00                	sw	s0,24(s0)
    1e9a:	0001                	nop
    1e9c:	0000                	unimp
    1e9e:	0000                	unimp
    1ea0:	0c00                	addi	s0,sp,528
    1ea2:	8700                	0x8700
    1ea4:	7900                	ld	s0,48(a0)
    1ea6:	1e00                	addi	s0,sp,816
    1ea8:	20080083          	lb	ra,512(a6)
    1eac:	2225                	addiw	tp,tp,9
    1eae:	cc9f 0001 0000      	0x1cc9f
    1eb4:	0000                	unimp
    1eb6:	2800                	fld	fs0,16(s0)
    1eb8:	0002                	0x2
    1eba:	0000                	unimp
    1ebc:	0000                	unimp
    1ebe:	0100                	addi	s0,sp,128
    1ec0:	5a00                	lw	s0,48(a2)
    1ec2:	02f4                	addi	a3,sp,332
    1ec4:	0000                	unimp
    1ec6:	0000                	unimp
    1ec8:	0000                	unimp
    1eca:	02fc                	addi	a5,sp,332
    1ecc:	0000                	unimp
    1ece:	0000                	unimp
    1ed0:	0000                	unimp
    1ed2:	0001                	nop
    1ed4:	005a                	0x5a
	...
    1ee2:	0000                	unimp
    1ee4:	a400                	fsd	fs0,8(s0)
    1ee6:	0001                	nop
    1ee8:	0000                	unimp
    1eea:	0000                	unimp
    1eec:	f800                	sd	s0,48(s0)
    1eee:	0001                	nop
    1ef0:	0000                	unimp
    1ef2:	0000                	unimp
    1ef4:	0100                	addi	s0,sp,128
    1ef6:	5800                	lw	s0,48(s0)
	...
    1f08:	01b4                	addi	a3,sp,200
    1f0a:	0000                	unimp
    1f0c:	0000                	unimp
    1f0e:	0000                	unimp
    1f10:	01bc                	addi	a5,sp,200
    1f12:	0000                	unimp
    1f14:	0000                	unimp
    1f16:	0000                	unimp
    1f18:	0001                	nop
    1f1a:	bc5a                	fsd	fs6,56(sp)
    1f1c:	0001                	nop
    1f1e:	0000                	unimp
    1f20:	0000                	unimp
    1f22:	2800                	fld	fs0,16(s0)
    1f24:	0002                	0x2
    1f26:	0000                	unimp
    1f28:	0000                	unimp
    1f2a:	0100                	addi	s0,sp,128
    1f2c:	6500                	ld	s0,8(a0)
    1f2e:	02f4                	addi	a3,sp,332
    1f30:	0000                	unimp
    1f32:	0000                	unimp
    1f34:	0000                	unimp
    1f36:	02fc                	addi	a5,sp,332
    1f38:	0000                	unimp
    1f3a:	0000                	unimp
    1f3c:	0000                	unimp
    1f3e:	0001                	nop
    1f40:	0065                	c.addi	zero,25
	...
    1f4e:	0000                	unimp
    1f50:	6c00                	ld	s0,24(s0)
    1f52:	0001                	nop
    1f54:	0000                	unimp
    1f56:	0000                	unimp
    1f58:	8000                	0x8000
    1f5a:	0001                	nop
    1f5c:	0000                	unimp
    1f5e:	0000                	unimp
    1f60:	0100                	addi	s0,sp,128
    1f62:	5900                	lw	s0,48(a0)
	...
    1f74:	0178                	addi	a4,sp,140
    1f76:	0000                	unimp
    1f78:	0000                	unimp
    1f7a:	0000                	unimp
    1f7c:	0184                	addi	s1,sp,192
    1f7e:	0000                	unimp
    1f80:	0000                	unimp
    1f82:	0000                	unimp
    1f84:	0001                	nop
    1f86:	0058                	addi	a4,sp,4
	...
    1f94:	0000                	unimp
    1f96:	7800                	ld	s0,48(s0)
    1f98:	0001                	nop
    1f9a:	0000                	unimp
    1f9c:	0000                	unimp
    1f9e:	b400                	fsd	fs0,40(s0)
    1fa0:	0001                	nop
    1fa2:	0000                	unimp
    1fa4:	0000                	unimp
    1fa6:	0100                	addi	s0,sp,128
    1fa8:	6500                	ld	s0,8(a0)
	...
    1fba:	017c                	addi	a5,sp,140
    1fbc:	0000                	unimp
    1fbe:	0000                	unimp
    1fc0:	0000                	unimp
    1fc2:	0228                	addi	a0,sp,264
    1fc4:	0000                	unimp
    1fc6:	0000                	unimp
    1fc8:	0000                	unimp
    1fca:	0001                	nop
    1fcc:	0002f467          	0x2f467
    1fd0:	0000                	unimp
    1fd2:	0000                	unimp
    1fd4:	fc00                	sd	s0,56(s0)
    1fd6:	0002                	0x2
    1fd8:	0000                	unimp
    1fda:	0000                	unimp
    1fdc:	0100                	addi	s0,sp,128
    1fde:	6700                	ld	s0,8(a4)
	...
    1ff8:	0020                	addi	s0,sp,8
    1ffa:	0000                	unimp
    1ffc:	0000                	unimp
    1ffe:	0000                	unimp
    2000:	0001                	nop
    2002:	205a                	fld	ft0,400(sp)
    2004:	0000                	unimp
    2006:	0000                	unimp
    2008:	0000                	unimp
    200a:	7800                	ld	s0,48(s0)
    200c:	0004                	addi	s1,sp,0
    200e:	0000                	unimp
    2010:	0000                	unimp
    2012:	0600                	addi	s0,sp,768
    2014:	f300                	sd	s0,32(a4)
    2016:	2d0af503          	0x2d0af503
    201a:	009f 0000 0000      	0x9f
	...
    2030:	0000                	unimp
    2032:	4800                	lw	s0,16(s0)
    2034:	0000                	unimp
    2036:	0000                	unimp
    2038:	0000                	unimp
    203a:	0100                	addi	s0,sp,128
    203c:	5b00                	lw	s0,48(a4)
    203e:	0048                	addi	a0,sp,4
    2040:	0000                	unimp
    2042:	0000                	unimp
    2044:	0000                	unimp
    2046:	0478                	addi	a4,sp,524
    2048:	0000                	unimp
    204a:	0000                	unimp
    204c:	0000                	unimp
    204e:	0006                	0x6
    2050:	0bf503f3          	0xbf503f3
    2054:	9f2d                	addw	a4,a4,a1
	...
    206e:	012c                	addi	a1,sp,136
    2070:	0000                	unimp
    2072:	0000                	unimp
    2074:	0000                	unimp
    2076:	0002                	0x2
    2078:	9f30                	0x9f30
    207a:	0134                	addi	a3,sp,136
    207c:	0000                	unimp
    207e:	0000                	unimp
    2080:	0000                	unimp
    2082:	01b8                	addi	a4,sp,200
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	0000                	unimp
    208a:	0002                	0x2
    208c:	9f30                	0x9f30
    208e:	01e4                	addi	s1,sp,204
    2090:	0000                	unimp
    2092:	0000                	unimp
    2094:	0000                	unimp
    2096:	0314                	addi	a3,sp,384
    2098:	0000                	unimp
    209a:	0000                	unimp
    209c:	0000                	unimp
    209e:	0002                	0x2
    20a0:	9f30                	0x9f30
    20a2:	031c                	addi	a5,sp,384
    20a4:	0000                	unimp
    20a6:	0000                	unimp
    20a8:	0000                	unimp
    20aa:	0344                	addi	s1,sp,388
    20ac:	0000                	unimp
    20ae:	0000                	unimp
    20b0:	0000                	unimp
    20b2:	0002                	0x2
    20b4:	9f30                	0x9f30
    20b6:	0358                	addi	a4,sp,388
    20b8:	0000                	unimp
    20ba:	0000                	unimp
    20bc:	0000                	unimp
    20be:	03e4                	addi	s1,sp,460
    20c0:	0000                	unimp
    20c2:	0000                	unimp
    20c4:	0000                	unimp
    20c6:	0002                	0x2
    20c8:	9f30                	0x9f30
    20ca:	045c                	addi	a5,sp,516
    20cc:	0000                	unimp
    20ce:	0000                	unimp
    20d0:	0000                	unimp
    20d2:	0468                	addi	a0,sp,524
    20d4:	0000                	unimp
    20d6:	0000                	unimp
    20d8:	0000                	unimp
    20da:	0002                	0x2
    20dc:	9f30                	0x9f30
	...
    20ee:	0040                	addi	s0,sp,4
    20f0:	0000                	unimp
    20f2:	0000                	unimp
    20f4:	0000                	unimp
    20f6:	012c                	addi	a1,sp,136
    20f8:	0000                	unimp
    20fa:	0000                	unimp
    20fc:	0000                	unimp
    20fe:	0001                	nop
    2100:	3462                	fld	fs0,56(sp)
    2102:	0001                	nop
    2104:	0000                	unimp
    2106:	0000                	unimp
    2108:	b800                	fsd	fs0,48(s0)
    210a:	0001                	nop
    210c:	0000                	unimp
    210e:	0000                	unimp
    2110:	0100                	addi	s0,sp,128
    2112:	6200                	ld	s0,0(a2)
    2114:	01d4                	addi	a3,sp,196
    2116:	0000                	unimp
    2118:	0000                	unimp
    211a:	0000                	unimp
    211c:	0220                	addi	s0,sp,264
    211e:	0000                	unimp
    2120:	0000                	unimp
    2122:	0000                	unimp
    2124:	0001                	nop
    2126:	3462                	fld	fs0,56(sp)
    2128:	0002                	0x2
    212a:	0000                	unimp
    212c:	0000                	unimp
    212e:	1800                	addi	s0,sp,48
    2130:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2134:	0000                	unimp
    2136:	0100                	addi	s0,sp,128
    2138:	6200                	ld	s0,0(a2)
    213a:	031c                	addi	a5,sp,384
    213c:	0000                	unimp
    213e:	0000                	unimp
    2140:	0000                	unimp
    2142:	0370                	addi	a2,sp,396
    2144:	0000                	unimp
    2146:	0000                	unimp
    2148:	0000                	unimp
    214a:	0001                	nop
    214c:	ac62                	fsd	fs8,24(sp)
    214e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2152:	0000                	unimp
    2154:	bc00                	fsd	fs0,56(s0)
    2156:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    215a:	0000                	unimp
    215c:	0100                	addi	s0,sp,128
    215e:	6200                	ld	s0,0(a2)
    2160:	03d4                	addi	a3,sp,452
    2162:	0000                	unimp
    2164:	0000                	unimp
    2166:	0000                	unimp
    2168:	03e4                	addi	s1,sp,460
    216a:	0000                	unimp
    216c:	0000                	unimp
    216e:	0000                	unimp
    2170:	0001                	nop
    2172:	5c62                	lw	s8,56(sp)
    2174:	0004                	addi	s1,sp,0
    2176:	0000                	unimp
    2178:	0000                	unimp
    217a:	6400                	ld	s0,8(s0)
    217c:	0004                	addi	s1,sp,0
    217e:	0000                	unimp
    2180:	0000                	unimp
    2182:	0100                	addi	s0,sp,128
    2184:	6200                	ld	s0,0(a2)
    2186:	0468                	addi	a0,sp,524
    2188:	0000                	unimp
    218a:	0000                	unimp
    218c:	0000                	unimp
    218e:	046c                	addi	a1,sp,524
    2190:	0000                	unimp
    2192:	0000                	unimp
    2194:	0000                	unimp
    2196:	0001                	nop
    2198:	0062                	0x62
	...
    21a6:	0000                	unimp
    21a8:	4000                	lw	s0,0(s0)
    21aa:	0000                	unimp
    21ac:	0000                	unimp
    21ae:	0000                	unimp
    21b0:	7c00                	ld	s0,56(s0)
    21b2:	0000                	unimp
    21b4:	0000                	unimp
    21b6:	0000                	unimp
    21b8:	0100                	addi	s0,sp,128
    21ba:	5800                	lw	s0,48(s0)
    21bc:	007c                	addi	a5,sp,12
    21be:	0000                	unimp
    21c0:	0000                	unimp
    21c2:	0000                	unimp
    21c4:	00b0                	addi	a2,sp,72
    21c6:	0000                	unimp
    21c8:	0000                	unimp
    21ca:	0000                	unimp
    21cc:	0001                	nop
    21ce:	b060                	fsd	fs0,224(s0)
    21d0:	0000                	unimp
    21d2:	0000                	unimp
    21d4:	0000                	unimp
    21d6:	1c00                	addi	s0,sp,560
    21d8:	0001                	nop
    21da:	0000                	unimp
    21dc:	0000                	unimp
    21de:	0100                	addi	s0,sp,128
    21e0:	5800                	lw	s0,48(s0)
    21e2:	011c                	addi	a5,sp,128
    21e4:	0000                	unimp
    21e6:	0000                	unimp
    21e8:	0000                	unimp
    21ea:	0120                	addi	s0,sp,136
    21ec:	0000                	unimp
    21ee:	0000                	unimp
    21f0:	0000                	unimp
    21f2:	0001                	nop
    21f4:	2060                	fld	fs0,192(s0)
    21f6:	0001                	nop
    21f8:	0000                	unimp
    21fa:	0000                	unimp
    21fc:	3000                	fld	fs0,32(s0)
    21fe:	0001                	nop
    2200:	0000                	unimp
    2202:	0000                	unimp
    2204:	0100                	addi	s0,sp,128
    2206:	5800                	lw	s0,48(s0)
    2208:	0130                	addi	a2,sp,136
    220a:	0000                	unimp
    220c:	0000                	unimp
    220e:	0000                	unimp
    2210:	0134                	addi	a3,sp,136
    2212:	0000                	unimp
    2214:	0000                	unimp
    2216:	0000                	unimp
    2218:	0001                	nop
    221a:	3460                	fld	fs0,232(s0)
    221c:	0001                	nop
    221e:	0000                	unimp
    2220:	0000                	unimp
    2222:	b800                	fsd	fs0,48(s0)
    2224:	0001                	nop
    2226:	0000                	unimp
    2228:	0000                	unimp
    222a:	0100                	addi	s0,sp,128
    222c:	5800                	lw	s0,48(s0)
    222e:	01d4                	addi	a3,sp,196
    2230:	0000                	unimp
    2232:	0000                	unimp
    2234:	0000                	unimp
    2236:	01f8                	addi	a4,sp,204
    2238:	0000                	unimp
    223a:	0000                	unimp
    223c:	0000                	unimp
    223e:	0001                	nop
    2240:	f858                	sd	a4,176(s0)
    2242:	0001                	nop
    2244:	0000                	unimp
    2246:	0000                	unimp
    2248:	fc00                	sd	s0,56(s0)
    224a:	0001                	nop
    224c:	0000                	unimp
    224e:	0000                	unimp
    2250:	0100                	addi	s0,sp,128
    2252:	6000                	ld	s0,0(s0)
    2254:	01fc                	addi	a5,sp,204
    2256:	0000                	unimp
    2258:	0000                	unimp
    225a:	0000                	unimp
    225c:	0218                	addi	a4,sp,256
    225e:	0000                	unimp
    2260:	0000                	unimp
    2262:	0000                	unimp
    2264:	0001                	nop
    2266:	3458                	fld	fa4,168(s0)
    2268:	0002                	0x2
    226a:	0000                	unimp
    226c:	0000                	unimp
    226e:	9c00                	0x9c00
    2270:	0002                	0x2
    2272:	0000                	unimp
    2274:	0000                	unimp
    2276:	0100                	addi	s0,sp,128
    2278:	5800                	lw	s0,48(s0)
    227a:	02a0                	addi	s0,sp,328
    227c:	0000                	unimp
    227e:	0000                	unimp
    2280:	0000                	unimp
    2282:	02b0                	addi	a2,sp,328
    2284:	0000                	unimp
    2286:	0000                	unimp
    2288:	0000                	unimp
    228a:	0001                	nop
    228c:	b458                	fsd	fa4,168(s0)
    228e:	0002                	0x2
    2290:	0000                	unimp
    2292:	0000                	unimp
    2294:	1400                	addi	s0,sp,544
    2296:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    229a:	0000                	unimp
    229c:	0100                	addi	s0,sp,128
    229e:	5800                	lw	s0,48(s0)
    22a0:	0314                	addi	a3,sp,384
    22a2:	0000                	unimp
    22a4:	0000                	unimp
    22a6:	0000                	unimp
    22a8:	031c                	addi	a5,sp,384
    22aa:	0000                	unimp
    22ac:	0000                	unimp
    22ae:	0000                	unimp
    22b0:	0001                	nop
    22b2:	1c60                	addi	s0,sp,572
    22b4:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    22b8:	0000                	unimp
    22ba:	5400                	lw	s0,40(s0)
    22bc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    22c0:	0000                	unimp
    22c2:	0100                	addi	s0,sp,128
    22c4:	5800                	lw	s0,48(s0)
    22c6:	0354                	addi	a3,sp,388
    22c8:	0000                	unimp
    22ca:	0000                	unimp
    22cc:	0000                	unimp
    22ce:	0358                	addi	a4,sp,388
    22d0:	0000                	unimp
    22d2:	0000                	unimp
    22d4:	0000                	unimp
    22d6:	0001                	nop
    22d8:	5860                	lw	s0,116(s0)
    22da:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    22de:	0000                	unimp
    22e0:	7000                	ld	s0,32(s0)
    22e2:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    22e6:	0000                	unimp
    22e8:	0100                	addi	s0,sp,128
    22ea:	5800                	lw	s0,48(s0)
    22ec:	03ac                	addi	a1,sp,456
    22ee:	0000                	unimp
    22f0:	0000                	unimp
    22f2:	0000                	unimp
    22f4:	03b8                	addi	a4,sp,456
    22f6:	0000                	unimp
    22f8:	0000                	unimp
    22fa:	0000                	unimp
    22fc:	0001                	nop
    22fe:	b858                	fsd	fa4,176(s0)
    2300:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2304:	0000                	unimp
    2306:	bc00                	fsd	fs0,56(s0)
    2308:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    230c:	0000                	unimp
    230e:	0100                	addi	s0,sp,128
    2310:	6000                	ld	s0,0(s0)
    2312:	03d4                	addi	a3,sp,452
    2314:	0000                	unimp
    2316:	0000                	unimp
    2318:	0000                	unimp
    231a:	03d8                	addi	a4,sp,452
    231c:	0000                	unimp
    231e:	0000                	unimp
    2320:	0000                	unimp
    2322:	0001                	nop
    2324:	d858                	sw	a4,52(s0)
    2326:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    232a:	0000                	unimp
    232c:	dc00                	sw	s0,56(s0)
    232e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2332:	0000                	unimp
    2334:	0100                	addi	s0,sp,128
    2336:	6000                	ld	s0,0(s0)
    2338:	03dc                	addi	a5,sp,452
    233a:	0000                	unimp
    233c:	0000                	unimp
    233e:	0000                	unimp
    2340:	03e0                	addi	s0,sp,460
    2342:	0000                	unimp
    2344:	0000                	unimp
    2346:	0000                	unimp
    2348:	0001                	nop
    234a:	e058                	sd	a4,128(s0)
    234c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2350:	0000                	unimp
    2352:	e400                	sd	s0,8(s0)
    2354:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2358:	0000                	unimp
    235a:	0100                	addi	s0,sp,128
    235c:	6000                	ld	s0,0(s0)
    235e:	045c                	addi	a5,sp,516
    2360:	0000                	unimp
    2362:	0000                	unimp
    2364:	0000                	unimp
    2366:	0460                	addi	s0,sp,524
    2368:	0000                	unimp
    236a:	0000                	unimp
    236c:	0000                	unimp
    236e:	0001                	nop
    2370:	6858                	ld	a4,144(s0)
    2372:	0004                	addi	s1,sp,0
    2374:	0000                	unimp
    2376:	0000                	unimp
    2378:	7000                	ld	s0,32(s0)
    237a:	0004                	addi	s1,sp,0
    237c:	0000                	unimp
    237e:	0000                	unimp
    2380:	0100                	addi	s0,sp,128
    2382:	5800                	lw	s0,48(s0)
	...
    2394:	0010                	addi	a2,sp,0
    2396:	0000                	unimp
    2398:	0000                	unimp
    239a:	0000                	unimp
    239c:	0080                	addi	s0,sp,64
    239e:	0000                	unimp
    23a0:	0000                	unimp
    23a2:	0000                	unimp
    23a4:	0001                	nop
    23a6:	b05e                	fsd	fs7,32(sp)
    23a8:	0000                	unimp
    23aa:	0000                	unimp
    23ac:	0000                	unimp
    23ae:	5800                	lw	s0,48(s0)
    23b0:	0001                	nop
    23b2:	0000                	unimp
    23b4:	0000                	unimp
    23b6:	0100                	addi	s0,sp,128
    23b8:	5e00                	lw	s0,56(a2)
    23ba:	015c                	addi	a5,sp,132
    23bc:	0000                	unimp
    23be:	0000                	unimp
    23c0:	0000                	unimp
    23c2:	016c                	addi	a1,sp,140
    23c4:	0000                	unimp
    23c6:	0000                	unimp
    23c8:	0000                	unimp
    23ca:	0001                	nop
    23cc:	745e                	ld	s0,496(sp)
    23ce:	0001                	nop
    23d0:	0000                	unimp
    23d2:	0000                	unimp
    23d4:	a800                	fsd	fs0,16(s0)
    23d6:	0001                	nop
    23d8:	0000                	unimp
    23da:	0000                	unimp
    23dc:	0100                	addi	s0,sp,128
    23de:	5e00                	lw	s0,56(a2)
    23e0:	01d4                	addi	a3,sp,196
    23e2:	0000                	unimp
    23e4:	0000                	unimp
    23e6:	0000                	unimp
    23e8:	021c                	addi	a5,sp,256
    23ea:	0000                	unimp
    23ec:	0000                	unimp
    23ee:	0000                	unimp
    23f0:	0001                	nop
    23f2:	345e                	fld	fs0,496(sp)
    23f4:	0002                	0x2
    23f6:	0000                	unimp
    23f8:	0000                	unimp
    23fa:	d800                	sw	s0,48(s0)
    23fc:	0002                	0x2
    23fe:	0000                	unimp
    2400:	0000                	unimp
    2402:	0100                	addi	s0,sp,128
    2404:	5e00                	lw	s0,56(a2)
    2406:	02dc                	addi	a5,sp,324
    2408:	0000                	unimp
    240a:	0000                	unimp
    240c:	0000                	unimp
    240e:	02ec                	addi	a1,sp,332
    2410:	0000                	unimp
    2412:	0000                	unimp
    2414:	0000                	unimp
    2416:	0001                	nop
    2418:	f45e                	sd	s7,40(sp)
    241a:	0002                	0x2
    241c:	0000                	unimp
    241e:	0000                	unimp
    2420:	7000                	ld	s0,32(s0)
    2422:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2426:	0000                	unimp
    2428:	0100                	addi	s0,sp,128
    242a:	5e00                	lw	s0,56(a2)
    242c:	03ac                	addi	a1,sp,456
    242e:	0000                	unimp
    2430:	0000                	unimp
    2432:	0000                	unimp
    2434:	03bc                	addi	a5,sp,456
    2436:	0000                	unimp
    2438:	0000                	unimp
    243a:	0000                	unimp
    243c:	0001                	nop
    243e:	d45e                	sw	s7,40(sp)
    2440:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2444:	0000                	unimp
    2446:	e000                	sd	s0,0(s0)
    2448:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    244c:	0000                	unimp
    244e:	0100                	addi	s0,sp,128
    2450:	5e00                	lw	s0,56(a2)
    2452:	045c                	addi	a5,sp,516
    2454:	0000                	unimp
    2456:	0000                	unimp
    2458:	0000                	unimp
    245a:	0470                	addi	a2,sp,524
    245c:	0000                	unimp
    245e:	0000                	unimp
    2460:	0000                	unimp
    2462:	0001                	nop
    2464:	005e                	0x5e
	...
    2472:	0000                	unimp
    2474:	4800                	lw	s0,16(s0)
    2476:	0000                	unimp
    2478:	0000                	unimp
    247a:	0000                	unimp
    247c:	5800                	lw	s0,48(s0)
    247e:	0000                	unimp
    2480:	0000                	unimp
    2482:	0000                	unimp
    2484:	0600                	addi	s0,sp,768
    2486:	7b00                	ld	s0,48(a4)
    2488:	0800                	addi	s0,sp,16
    248a:	1aff                	0x1aff
    248c:	589f 0000 0000      	0x589f
    2492:	0000                	unimp
    2494:	7800                	ld	s0,48(s0)
    2496:	0000                	unimp
    2498:	0000                	unimp
    249a:	0000                	unimp
    249c:	0100                	addi	s0,sp,128
    249e:	5b00                	lw	s0,48(a4)
    24a0:	00b0                	addi	a2,sp,72
    24a2:	0000                	unimp
    24a4:	0000                	unimp
    24a6:	0000                	unimp
    24a8:	00b8                	addi	a4,sp,72
    24aa:	0000                	unimp
    24ac:	0000                	unimp
    24ae:	0000                	unimp
    24b0:	0001                	nop
    24b2:	0000c05b          	0xc05b
    24b6:	0000                	unimp
    24b8:	0000                	unimp
    24ba:	ec00                	sd	s0,24(s0)
    24bc:	0000                	unimp
    24be:	0000                	unimp
    24c0:	0000                	unimp
    24c2:	0100                	addi	s0,sp,128
    24c4:	5b00                	lw	s0,48(a4)
    24c6:	0100                	addi	s0,sp,128
    24c8:	0000                	unimp
    24ca:	0000                	unimp
    24cc:	0000                	unimp
    24ce:	0110                	addi	a2,sp,128
    24d0:	0000                	unimp
    24d2:	0000                	unimp
    24d4:	0000                	unimp
    24d6:	0001                	nop
    24d8:	0001345b          	0x1345b
    24dc:	0000                	unimp
    24de:	0000                	unimp
    24e0:	4c00                	lw	s0,24(s0)
    24e2:	0001                	nop
    24e4:	0000                	unimp
    24e6:	0000                	unimp
    24e8:	0100                	addi	s0,sp,128
    24ea:	5b00                	lw	s0,48(a4)
    24ec:	0178                	addi	a4,sp,140
    24ee:	0000                	unimp
    24f0:	0000                	unimp
    24f2:	0000                	unimp
    24f4:	0180                	addi	s0,sp,192
    24f6:	0000                	unimp
    24f8:	0000                	unimp
    24fa:	0000                	unimp
    24fc:	0001                	nop
    24fe:	0001fc5b          	0x1fc5b
    2502:	0000                	unimp
    2504:	0000                	unimp
    2506:	1000                	addi	s0,sp,32
    2508:	0002                	0x2
    250a:	0000                	unimp
    250c:	0000                	unimp
    250e:	0100                	addi	s0,sp,128
    2510:	5b00                	lw	s0,48(a4)
    2512:	0234                	addi	a3,sp,264
    2514:	0000                	unimp
    2516:	0000                	unimp
    2518:	0000                	unimp
    251a:	026c                	addi	a1,sp,268
    251c:	0000                	unimp
    251e:	0000                	unimp
    2520:	0000                	unimp
    2522:	0001                	nop
    2524:	0002805b          	0x2805b
    2528:	0000                	unimp
    252a:	0000                	unimp
    252c:	1400                	addi	s0,sp,544
    252e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2532:	0000                	unimp
    2534:	0100                	addi	s0,sp,128
    2536:	5b00                	lw	s0,48(a4)
    2538:	031c                	addi	a5,sp,384
    253a:	0000                	unimp
    253c:	0000                	unimp
    253e:	0000                	unimp
    2540:	034c                	addi	a1,sp,388
    2542:	0000                	unimp
    2544:	0000                	unimp
    2546:	0000                	unimp
    2548:	0001                	nop
    254a:	0003585b          	0x3585b
    254e:	0000                	unimp
    2550:	0000                	unimp
    2552:	7000                	ld	s0,32(s0)
    2554:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2558:	0000                	unimp
    255a:	0100                	addi	s0,sp,128
    255c:	5b00                	lw	s0,48(a4)
    255e:	03ac                	addi	a1,sp,456
    2560:	0000                	unimp
    2562:	0000                	unimp
    2564:	0000                	unimp
    2566:	03bc                	addi	a5,sp,456
    2568:	0000                	unimp
    256a:	0000                	unimp
    256c:	0000                	unimp
    256e:	0001                	nop
    2570:	0003d45b          	0x3d45b
    2574:	0000                	unimp
    2576:	0000                	unimp
    2578:	dc00                	sw	s0,56(s0)
    257a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    257e:	0000                	unimp
    2580:	0100                	addi	s0,sp,128
    2582:	5b00                	lw	s0,48(a4)
    2584:	045c                	addi	a5,sp,516
    2586:	0000                	unimp
    2588:	0000                	unimp
    258a:	0000                	unimp
    258c:	0470                	addi	a2,sp,524
    258e:	0000                	unimp
    2590:	0000                	unimp
    2592:	0000                	unimp
    2594:	0001                	nop
    2596:	0000005b          	0x5b
	...
    25a6:	4400                	lw	s0,8(s0)
    25a8:	0000                	unimp
    25aa:	0000                	unimp
    25ac:	0000                	unimp
    25ae:	b800                	fsd	fs0,48(s0)
    25b0:	0001                	nop
    25b2:	0000                	unimp
    25b4:	0000                	unimp
    25b6:	0100                	addi	s0,sp,128
    25b8:	5a00                	lw	s0,48(a2)
    25ba:	01d4                	addi	a3,sp,196
    25bc:	0000                	unimp
    25be:	0000                	unimp
    25c0:	0000                	unimp
    25c2:	0374                	addi	a3,sp,396
    25c4:	0000                	unimp
    25c6:	0000                	unimp
    25c8:	0000                	unimp
    25ca:	0001                	nop
    25cc:	ac5a                	fsd	fs6,24(sp)
    25ce:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    25d2:	0000                	unimp
    25d4:	bc00                	fsd	fs0,56(s0)
    25d6:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    25da:	0000                	unimp
    25dc:	0100                	addi	s0,sp,128
    25de:	5a00                	lw	s0,48(a2)
    25e0:	03d4                	addi	a3,sp,452
    25e2:	0000                	unimp
    25e4:	0000                	unimp
    25e6:	0000                	unimp
    25e8:	03e4                	addi	s1,sp,460
    25ea:	0000                	unimp
    25ec:	0000                	unimp
    25ee:	0000                	unimp
    25f0:	0001                	nop
    25f2:	5c5a                	lw	s8,180(sp)
    25f4:	0004                	addi	s1,sp,0
    25f6:	0000                	unimp
    25f8:	0000                	unimp
    25fa:	7000                	ld	s0,32(s0)
    25fc:	0004                	addi	s1,sp,0
    25fe:	0000                	unimp
    2600:	0000                	unimp
    2602:	0100                	addi	s0,sp,128
    2604:	5a00                	lw	s0,48(a2)
	...
    2616:	0044                	addi	s1,sp,4
    2618:	0000                	unimp
    261a:	0000                	unimp
    261c:	0000                	unimp
    261e:	007c                	addi	a5,sp,12
    2620:	0000                	unimp
    2622:	0000                	unimp
    2624:	0000                	unimp
    2626:	0001                	nop
    2628:	b05f 0000 0000      	0xb05f
    262e:	0000                	unimp
    2630:	bc00                	fsd	fs0,56(s0)
    2632:	0000                	unimp
    2634:	0000                	unimp
    2636:	0000                	unimp
    2638:	0100                	addi	s0,sp,128
    263a:	5f00                	lw	s0,56(a4)
    263c:	00c0                	addi	s0,sp,68
    263e:	0000                	unimp
    2640:	0000                	unimp
    2642:	0000                	unimp
    2644:	00e0                	addi	s0,sp,76
    2646:	0000                	unimp
    2648:	0000                	unimp
    264a:	0000                	unimp
    264c:	0001                	nop
    264e:	e45f 0000 0000      	0xe45f
    2654:	0000                	unimp
    2656:	f400                	sd	s0,40(s0)
    2658:	0000                	unimp
    265a:	0000                	unimp
    265c:	0000                	unimp
    265e:	0100                	addi	s0,sp,128
    2660:	5f00                	lw	s0,56(a4)
    2662:	00fc                	addi	a5,sp,76
    2664:	0000                	unimp
    2666:	0000                	unimp
    2668:	0000                	unimp
    266a:	0118                	addi	a4,sp,128
    266c:	0000                	unimp
    266e:	0000                	unimp
    2670:	0000                	unimp
    2672:	0001                	nop
    2674:	205f 0001 0000      	0x1205f
    267a:	0000                	unimp
    267c:	2c00                	fld	fs0,24(s0)
    267e:	0001                	nop
    2680:	0000                	unimp
    2682:	0000                	unimp
    2684:	0100                	addi	s0,sp,128
    2686:	5f00                	lw	s0,56(a4)
    2688:	0134                	addi	a3,sp,136
    268a:	0000                	unimp
    268c:	0000                	unimp
    268e:	0000                	unimp
    2690:	0198                	addi	a4,sp,192
    2692:	0000                	unimp
    2694:	0000                	unimp
    2696:	0000                	unimp
    2698:	0001                	nop
    269a:	d45f 0001 0000      	0x1d45f
    26a0:	0000                	unimp
    26a2:	e000                	sd	s0,0(s0)
    26a4:	0001                	nop
    26a6:	0000                	unimp
    26a8:	0000                	unimp
    26aa:	0100                	addi	s0,sp,128
    26ac:	5f00                	lw	s0,56(a4)
    26ae:	01e4                	addi	s1,sp,204
    26b0:	0000                	unimp
    26b2:	0000                	unimp
    26b4:	0000                	unimp
    26b6:	01f0                	addi	a2,sp,204
    26b8:	0000                	unimp
    26ba:	0000                	unimp
    26bc:	0000                	unimp
    26be:	0001                	nop
    26c0:	fc5f 0001 0000      	0x1fc5f
    26c6:	0000                	unimp
    26c8:	1400                	addi	s0,sp,544
    26ca:	0002                	0x2
    26cc:	0000                	unimp
    26ce:	0000                	unimp
    26d0:	0100                	addi	s0,sp,128
    26d2:	5f00                	lw	s0,56(a4)
    26d4:	0234                	addi	a3,sp,264
    26d6:	0000                	unimp
    26d8:	0000                	unimp
    26da:	0000                	unimp
    26dc:	0248                	addi	a0,sp,260
    26de:	0000                	unimp
    26e0:	0000                	unimp
    26e2:	0000                	unimp
    26e4:	0001                	nop
    26e6:	4c5f 0002 0000      	0x24c5f
    26ec:	0000                	unimp
    26ee:	7400                	ld	s0,40(s0)
    26f0:	0002                	0x2
    26f2:	0000                	unimp
    26f4:	0000                	unimp
    26f6:	0100                	addi	s0,sp,128
    26f8:	5f00                	lw	s0,56(a4)
    26fa:	027c                	addi	a5,sp,268
    26fc:	0000                	unimp
    26fe:	0000                	unimp
    2700:	0000                	unimp
    2702:	0298                	addi	a4,sp,320
    2704:	0000                	unimp
    2706:	0000                	unimp
    2708:	0000                	unimp
    270a:	0001                	nop
    270c:	a05f 0002 0000      	0x2a05f
    2712:	0000                	unimp
    2714:	1400                	addi	s0,sp,544
    2716:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    271a:	0000                	unimp
    271c:	0100                	addi	s0,sp,128
    271e:	5f00                	lw	s0,56(a4)
    2720:	031c                	addi	a5,sp,384
    2722:	0000                	unimp
    2724:	0000                	unimp
    2726:	0000                	unimp
    2728:	0330                	addi	a2,sp,392
    272a:	0000                	unimp
    272c:	0000                	unimp
    272e:	0000                	unimp
    2730:	0001                	nop
    2732:	445f 0003 0000      	0x3445f
    2738:	0000                	unimp
    273a:	5000                	lw	s0,32(s0)
    273c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2740:	0000                	unimp
    2742:	0100                	addi	s0,sp,128
    2744:	5f00                	lw	s0,56(a4)
    2746:	0358                	addi	a4,sp,388
    2748:	0000                	unimp
    274a:	0000                	unimp
    274c:	0000                	unimp
    274e:	0370                	addi	a2,sp,396
    2750:	0000                	unimp
    2752:	0000                	unimp
    2754:	0000                	unimp
    2756:	0001                	nop
    2758:	ac5f 0003 0000      	0x3ac5f
    275e:	0000                	unimp
    2760:	b400                	fsd	fs0,40(s0)
    2762:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2766:	0000                	unimp
    2768:	0100                	addi	s0,sp,128
    276a:	5f00                	lw	s0,56(a4)
    276c:	03d4                	addi	a3,sp,452
    276e:	0000                	unimp
    2770:	0000                	unimp
    2772:	0000                	unimp
    2774:	03e0                	addi	s0,sp,460
    2776:	0000                	unimp
    2778:	0000                	unimp
    277a:	0000                	unimp
    277c:	0001                	nop
    277e:	5c5f 0004 0000      	0x45c5f
    2784:	0000                	unimp
    2786:	6000                	ld	s0,0(s0)
    2788:	0004                	addi	s1,sp,0
    278a:	0000                	unimp
    278c:	0000                	unimp
    278e:	0100                	addi	s0,sp,128
    2790:	5f00                	lw	s0,56(a4)
    2792:	0468                	addi	a0,sp,524
    2794:	0000                	unimp
    2796:	0000                	unimp
    2798:	0000                	unimp
    279a:	0470                	addi	a2,sp,524
    279c:	0000                	unimp
    279e:	0000                	unimp
    27a0:	0000                	unimp
    27a2:	0001                	nop
    27a4:	005f 0000 0000      	0x5f
	...
    27b2:	0000                	unimp
    27b4:	6400                	ld	s0,8(s0)
    27b6:	0000                	unimp
    27b8:	0000                	unimp
    27ba:	0000                	unimp
    27bc:	b800                	fsd	fs0,48(s0)
    27be:	0000                	unimp
    27c0:	0000                	unimp
    27c2:	0000                	unimp
    27c4:	0100                	addi	s0,sp,128
    27c6:	6200                	ld	s0,0(a2)
    27c8:	00c0                	addi	s0,sp,68
    27ca:	0000                	unimp
    27cc:	0000                	unimp
    27ce:	0000                	unimp
    27d0:	012c                	addi	a1,sp,136
    27d2:	0000                	unimp
    27d4:	0000                	unimp
    27d6:	0000                	unimp
    27d8:	0001                	nop
    27da:	3462                	fld	fs0,56(sp)
    27dc:	0001                	nop
    27de:	0000                	unimp
    27e0:	0000                	unimp
    27e2:	d800                	sw	s0,48(s0)
    27e4:	0001                	nop
    27e6:	0000                	unimp
    27e8:	0000                	unimp
    27ea:	0100                	addi	s0,sp,128
    27ec:	6200                	ld	s0,0(a2)
    27ee:	01e4                	addi	s1,sp,204
    27f0:	0000                	unimp
    27f2:	0000                	unimp
    27f4:	0000                	unimp
    27f6:	01fc                	addi	a5,sp,204
    27f8:	0000                	unimp
    27fa:	0000                	unimp
    27fc:	0000                	unimp
    27fe:	0001                	nop
    2800:	0062                	0x62
    2802:	0002                	0x2
    2804:	0000                	unimp
    2806:	0000                	unimp
    2808:	1800                	addi	s0,sp,48
    280a:	0002                	0x2
    280c:	0000                	unimp
    280e:	0000                	unimp
    2810:	0100                	addi	s0,sp,128
    2812:	6200                	ld	s0,0(a2)
    2814:	0218                	addi	a4,sp,256
    2816:	0000                	unimp
    2818:	0000                	unimp
    281a:	0000                	unimp
    281c:	0234                	addi	a3,sp,264
    281e:	0000                	unimp
    2820:	0000                	unimp
    2822:	0000                	unimp
    2824:	0001                	nop
    2826:	0002345b          	0x2345b
    282a:	0000                	unimp
    282c:	0000                	unimp
    282e:	8000                	0x8000
    2830:	0002                	0x2
    2832:	0000                	unimp
    2834:	0000                	unimp
    2836:	0100                	addi	s0,sp,128
    2838:	6200                	ld	s0,0(a2)
    283a:	0284                	addi	s1,sp,320
    283c:	0000                	unimp
    283e:	0000                	unimp
    2840:	0000                	unimp
    2842:	02f8                	addi	a4,sp,332
    2844:	0000                	unimp
    2846:	0000                	unimp
    2848:	0000                	unimp
    284a:	0001                	nop
    284c:	0003245b          	0x3245b
    2850:	0000                	unimp
    2852:	0000                	unimp
    2854:	4400                	lw	s0,8(s0)
    2856:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    285a:	0000                	unimp
    285c:	0100                	addi	s0,sp,128
    285e:	6200                	ld	s0,0(a2)
    2860:	035c                	addi	a5,sp,388
    2862:	0000                	unimp
    2864:	0000                	unimp
    2866:	0000                	unimp
    2868:	036c                	addi	a1,sp,396
    286a:	0000                	unimp
    286c:	0000                	unimp
    286e:	0000                	unimp
    2870:	0001                	nop
    2872:	6c62                	ld	s8,24(sp)
    2874:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2878:	0000                	unimp
    287a:	7000                	ld	s0,32(s0)
    287c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2880:	0000                	unimp
    2882:	0100                	addi	s0,sp,128
    2884:	5b00                	lw	s0,48(a4)
    2886:	0370                	addi	a2,sp,396
    2888:	0000                	unimp
    288a:	0000                	unimp
    288c:	0000                	unimp
    288e:	03e4                	addi	s1,sp,460
    2890:	0000                	unimp
    2892:	0000                	unimp
    2894:	0000                	unimp
    2896:	0001                	nop
    2898:	2462                	fld	fs0,24(sp)
    289a:	0004                	addi	s1,sp,0
    289c:	0000                	unimp
    289e:	0000                	unimp
    28a0:	4400                	lw	s0,8(s0)
    28a2:	0004                	addi	s1,sp,0
    28a4:	0000                	unimp
    28a6:	0000                	unimp
    28a8:	0100                	addi	s0,sp,128
    28aa:	6200                	ld	s0,0(a2)
    28ac:	045c                	addi	a5,sp,516
    28ae:	0000                	unimp
    28b0:	0000                	unimp
    28b2:	0000                	unimp
    28b4:	0460                	addi	s0,sp,524
    28b6:	0000                	unimp
    28b8:	0000                	unimp
    28ba:	0000                	unimp
    28bc:	0001                	nop
    28be:	0000005b          	0x5b
	...
    28ce:	6800                	ld	s0,16(s0)
    28d0:	0000                	unimp
    28d2:	0000                	unimp
    28d4:	0000                	unimp
    28d6:	b800                	fsd	fs0,48(s0)
    28d8:	0000                	unimp
    28da:	0000                	unimp
    28dc:	0000                	unimp
    28de:	0100                	addi	s0,sp,128
    28e0:	5800                	lw	s0,48(s0)
    28e2:	00c0                	addi	s0,sp,68
    28e4:	0000                	unimp
    28e6:	0000                	unimp
    28e8:	0000                	unimp
    28ea:	0100                	addi	s0,sp,128
    28ec:	0000                	unimp
    28ee:	0000                	unimp
    28f0:	0000                	unimp
    28f2:	0001                	nop
    28f4:	0458                	addi	a4,sp,516
    28f6:	0001                	nop
    28f8:	0000                	unimp
    28fa:	0000                	unimp
    28fc:	2c00                	fld	fs0,24(s0)
    28fe:	0001                	nop
    2900:	0000                	unimp
    2902:	0000                	unimp
    2904:	0100                	addi	s0,sp,128
    2906:	5a00                	lw	s0,48(a2)
    2908:	0134                	addi	a3,sp,136
    290a:	0000                	unimp
    290c:	0000                	unimp
    290e:	0000                	unimp
    2910:	0178                	addi	a4,sp,140
    2912:	0000                	unimp
    2914:	0000                	unimp
    2916:	0000                	unimp
    2918:	0001                	nop
    291a:	8c5a                	mv	s8,s6
    291c:	0001                	nop
    291e:	0000                	unimp
    2920:	0000                	unimp
    2922:	b400                	fsd	fs0,40(s0)
    2924:	0001                	nop
    2926:	0000                	unimp
    2928:	0000                	unimp
    292a:	0200                	addi	s0,sp,256
    292c:	3000                	fld	fs0,32(s0)
    292e:	b49f 0001 0000      	0x1b49f
    2934:	0000                	unimp
    2936:	b800                	fsd	fs0,48(s0)
    2938:	0001                	nop
    293a:	0000                	unimp
    293c:	0000                	unimp
    293e:	0200                	addi	s0,sp,256
    2940:	3100                	fld	fs0,32(a0)
    2942:	b89f 0001 0000      	0x1b89f
    2948:	0000                	unimp
    294a:	d400                	sw	s0,40(s0)
    294c:	0001                	nop
    294e:	0000                	unimp
    2950:	0000                	unimp
    2952:	0100                	addi	s0,sp,128
    2954:	5800                	lw	s0,48(s0)
    2956:	01d4                	addi	a3,sp,196
    2958:	0000                	unimp
    295a:	0000                	unimp
    295c:	0000                	unimp
    295e:	01e4                	addi	s1,sp,204
    2960:	0000                	unimp
    2962:	0000                	unimp
    2964:	0000                	unimp
    2966:	0004                	addi	s1,sp,0
    2968:	ff0a                	sd	sp,440(sp)
    296a:	01e49f07          	0x1e49f07
    296e:	0000                	unimp
    2970:	0000                	unimp
    2972:	0000                	unimp
    2974:	01fc                	addi	a5,sp,204
    2976:	0000                	unimp
    2978:	0000                	unimp
    297a:	0000                	unimp
    297c:	0001                	nop
    297e:	005c                	addi	a5,sp,4
    2980:	0002                	0x2
    2982:	0000                	unimp
    2984:	0000                	unimp
    2986:	8000                	0x8000
    2988:	0002                	0x2
    298a:	0000                	unimp
    298c:	0000                	unimp
    298e:	0100                	addi	s0,sp,128
    2990:	5800                	lw	s0,48(s0)
    2992:	0284                	addi	s1,sp,320
    2994:	0000                	unimp
    2996:	0000                	unimp
    2998:	0000                	unimp
    299a:	02f8                	addi	a4,sp,332
    299c:	0000                	unimp
    299e:	0000                	unimp
    29a0:	0000                	unimp
    29a2:	0001                	nop
    29a4:	0c5a                	slli	s8,s8,0x16
    29a6:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    29aa:	0000                	unimp
    29ac:	1400                	addi	s0,sp,544
    29ae:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    29b2:	0000                	unimp
    29b4:	0200                	addi	s0,sp,256
    29b6:	3000                	fld	fs0,32(s0)
    29b8:	1c9f 0003 0000      	0x31c9f
    29be:	0000                	unimp
    29c0:	4400                	lw	s0,8(s0)
    29c2:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    29c6:	0000                	unimp
    29c8:	0200                	addi	s0,sp,256
    29ca:	3000                	fld	fs0,32(s0)
    29cc:	449f 0003 0000      	0x3449f
    29d2:	0000                	unimp
    29d4:	5800                	lw	s0,48(s0)
    29d6:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    29da:	0000                	unimp
    29dc:	0400                	addi	s0,sp,512
    29de:	0a00                	addi	s0,sp,272
    29e0:	07ff                	0x7ff
    29e2:	589f 0003 0000      	0x3589f
    29e8:	0000                	unimp
    29ea:	8800                	0x8800
    29ec:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    29f0:	0000                	unimp
    29f2:	0100                	addi	s0,sp,128
    29f4:	5800                	lw	s0,48(s0)
    29f6:	03a4                	addi	s1,sp,456
    29f8:	0000                	unimp
    29fa:	0000                	unimp
    29fc:	0000                	unimp
    29fe:	03ac                	addi	a1,sp,456
    2a00:	0000                	unimp
    2a02:	0000                	unimp
    2a04:	0000                	unimp
    2a06:	0002                	0x2
    2a08:	9f30                	0x9f30
    2a0a:	03ac                	addi	a1,sp,456
    2a0c:	0000                	unimp
    2a0e:	0000                	unimp
    2a10:	0000                	unimp
    2a12:	03b8                	addi	a4,sp,456
    2a14:	0000                	unimp
    2a16:	0000                	unimp
    2a18:	0000                	unimp
    2a1a:	0001                	nop
    2a1c:	b858                	fsd	fa4,176(s0)
    2a1e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2a22:	0000                	unimp
    2a24:	bc00                	fsd	fs0,56(s0)
    2a26:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2a2a:	0000                	unimp
    2a2c:	0100                	addi	s0,sp,128
    2a2e:	6000                	ld	s0,0(s0)
    2a30:	03bc                	addi	a5,sp,456
    2a32:	0000                	unimp
    2a34:	0000                	unimp
    2a36:	0000                	unimp
    2a38:	03d4                	addi	a3,sp,452
    2a3a:	0000                	unimp
    2a3c:	0000                	unimp
    2a3e:	0000                	unimp
    2a40:	0001                	nop
    2a42:	d458                	sw	a4,44(s0)
    2a44:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2a48:	0000                	unimp
    2a4a:	dc00                	sw	s0,56(s0)
    2a4c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2a50:	0000                	unimp
    2a52:	0100                	addi	s0,sp,128
    2a54:	5a00                	lw	s0,48(a2)
    2a56:	03dc                	addi	a5,sp,452
    2a58:	0000                	unimp
    2a5a:	0000                	unimp
    2a5c:	0000                	unimp
    2a5e:	03e0                	addi	s0,sp,460
    2a60:	0000                	unimp
    2a62:	0000                	unimp
    2a64:	0000                	unimp
    2a66:	0001                	nop
    2a68:	f05c                	sd	a5,160(s0)
    2a6a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2a6e:	0000                	unimp
    2a70:	1400                	addi	s0,sp,544
    2a72:	0004                	addi	s1,sp,0
    2a74:	0000                	unimp
    2a76:	0000                	unimp
    2a78:	0100                	addi	s0,sp,128
    2a7a:	5800                	lw	s0,48(s0)
    2a7c:	0414                	addi	a3,sp,512
    2a7e:	0000                	unimp
    2a80:	0000                	unimp
    2a82:	0000                	unimp
    2a84:	0424                	addi	s1,sp,520
    2a86:	0000                	unimp
    2a88:	0000                	unimp
    2a8a:	0000                	unimp
    2a8c:	0004                	addi	s1,sp,0
    2a8e:	ff0a                	sd	sp,440(sp)
    2a90:	045c9f07          	0x45c9f07
    2a94:	0000                	unimp
    2a96:	0000                	unimp
    2a98:	0000                	unimp
    2a9a:	0460                	addi	s0,sp,524
    2a9c:	0000                	unimp
    2a9e:	0000                	unimp
    2aa0:	0000                	unimp
    2aa2:	0001                	nop
    2aa4:	685a                	ld	a6,400(sp)
    2aa6:	0004                	addi	s1,sp,0
    2aa8:	0000                	unimp
    2aaa:	0000                	unimp
    2aac:	7000                	ld	s0,32(s0)
    2aae:	0004                	addi	s1,sp,0
    2ab0:	0000                	unimp
    2ab2:	0000                	unimp
    2ab4:	0400                	addi	s0,sp,512
    2ab6:	0a00                	addi	s0,sp,272
    2ab8:	07ff                	0x7ff
    2aba:	709f 0004 0000      	0x4709f
    2ac0:	0000                	unimp
    2ac2:	7800                	ld	s0,48(s0)
    2ac4:	0004                	addi	s1,sp,0
    2ac6:	0000                	unimp
    2ac8:	0000                	unimp
    2aca:	0100                	addi	s0,sp,128
    2acc:	5800                	lw	s0,48(s0)
	...
    2ade:	007c                	addi	a5,sp,12
    2ae0:	0000                	unimp
    2ae2:	0000                	unimp
    2ae4:	0000                	unimp
    2ae6:	0084                	addi	s1,sp,64
    2ae8:	0000                	unimp
    2aea:	0000                	unimp
    2aec:	0000                	unimp
    2aee:	0001                	nop
    2af0:	845f 0000 0000      	0x845f
    2af6:	0000                	unimp
    2af8:	8800                	0x8800
    2afa:	0000                	unimp
    2afc:	0000                	unimp
    2afe:	0000                	unimp
    2b00:	0e00                	addi	s0,sp,784
    2b02:	7f00                	ld	s0,56(a4)
    2b04:	1100                	addi	s0,sp,160
    2b06:	ffff                	0xffff
    2b08:	ffff                	0xffff
    2b0a:	ffff                	0xffff
    2b0c:	bfff                	0xbfff
    2b0e:	1a7f                	0x1a7f
    2b10:	889f 0000 0000      	0x889f
    2b16:	0000                	unimp
    2b18:	9c00                	0x9c00
    2b1a:	0000                	unimp
    2b1c:	0000                	unimp
    2b1e:	0000                	unimp
    2b20:	1500                	addi	s0,sp,672
    2b22:	7f00                	ld	s0,56(a4)
    2b24:	3100                	fld	fs0,32(a0)
    2b26:	1025                	c.addi	zero,-23
    2b28:	ffff                	0xffff
    2b2a:	ffff                	0xffff
    2b2c:	ffff                	0xffff
    2b2e:	dfff                	0xdfff
    2b30:	1a7f                	0x1a7f
    2b32:	007f                	0x7f
    2b34:	1a31                	addi	s4,s4,-20
    2b36:	9f21                	addw	a4,a4,s0
    2b38:	009c                	addi	a5,sp,64
    2b3a:	0000                	unimp
    2b3c:	0000                	unimp
    2b3e:	0000                	unimp
    2b40:	00a4                	addi	s1,sp,72
    2b42:	0000                	unimp
    2b44:	0000                	unimp
    2b46:	0000                	unimp
    2b48:	007f0013          	addi	zero,t5,7
    2b4c:	2531                	addiw	a0,a0,12
    2b4e:	ff10                	sd	a2,56(a4)
    2b50:	ffff                	0xffff
    2b52:	ffff                	0xffff
    2b54:	ffff                	0xffff
    2b56:	7fdf 7d1a 2100      	0x21007d1a7fdf
    2b5c:	a49f 0000 0000      	0xa49f
    2b62:	0000                	unimp
    2b64:	a800                	fsd	fs0,16(s0)
    2b66:	0000                	unimp
    2b68:	0000                	unimp
    2b6a:	0000                	unimp
    2b6c:	1100                	addi	s0,sp,160
    2b6e:	7f00                	ld	s0,56(a4)
    2b70:	1000                	addi	s0,sp,32
    2b72:	ffff                	0xffff
    2b74:	ffff                	0xffff
    2b76:	ffff                	0xffff
    2b78:	dfff                	0xdfff
    2b7a:	1a7f                	0x1a7f
    2b7c:	007d                	c.addi	zero,31
    2b7e:	9f21                	addw	a4,a4,s0
    2b80:	0118                	addi	a4,sp,128
    2b82:	0000                	unimp
    2b84:	0000                	unimp
    2b86:	0000                	unimp
    2b88:	0120                	addi	s0,sp,136
    2b8a:	0000                	unimp
    2b8c:	0000                	unimp
    2b8e:	0000                	unimp
    2b90:	0001                	nop
    2b92:	985f 0001 0000      	0x1985f
    2b98:	0000                	unimp
    2b9a:	d400                	sw	s0,40(s0)
    2b9c:	0001                	nop
    2b9e:	0000                	unimp
    2ba0:	0000                	unimp
    2ba2:	0100                	addi	s0,sp,128
    2ba4:	5f00                	lw	s0,56(a4)
    2ba6:	01e4                	addi	s1,sp,204
    2ba8:	0000                	unimp
    2baa:	0000                	unimp
    2bac:	0000                	unimp
    2bae:	01f0                	addi	a2,sp,204
    2bb0:	0000                	unimp
    2bb2:	0000                	unimp
    2bb4:	0000                	unimp
    2bb6:	0008                	addi	a0,sp,0
    2bb8:	007e                	0x7e
    2bba:	007f                	0x7f
    2bbc:	3122                	fld	ft2,40(sp)
    2bbe:	9f25                	addw	a4,a4,s1
    2bc0:	01f0                	addi	a2,sp,204
    2bc2:	0000                	unimp
    2bc4:	0000                	unimp
    2bc6:	0000                	unimp
    2bc8:	01f4                	addi	a3,sp,204
    2bca:	0000                	unimp
    2bcc:	0000                	unimp
    2bce:	0000                	unimp
    2bd0:	0005                	c.addi	zero,1
    2bd2:	007f                	0x7f
    2bd4:	2531                	addiw	a0,a0,12
    2bd6:	149f 0002 0000      	0x2149f
    2bdc:	0000                	unimp
    2bde:	3000                	fld	fs0,32(s0)
    2be0:	0002                	0x2
    2be2:	0000                	unimp
    2be4:	0000                	unimp
    2be6:	0100                	addi	s0,sp,128
    2be8:	5f00                	lw	s0,56(a4)
    2bea:	0230                	addi	a2,sp,264
    2bec:	0000                	unimp
    2bee:	0000                	unimp
    2bf0:	0000                	unimp
    2bf2:	0234                	addi	a3,sp,264
    2bf4:	0000                	unimp
    2bf6:	0000                	unimp
    2bf8:	0000                	unimp
    2bfa:	0001                	nop
    2bfc:	9859                	andi	s0,s0,-10
    2bfe:	0002                	0x2
    2c00:	0000                	unimp
    2c02:	0000                	unimp
    2c04:	a000                	fsd	fs0,0(s0)
    2c06:	0002                	0x2
    2c08:	0000                	unimp
    2c0a:	0000                	unimp
    2c0c:	0100                	addi	s0,sp,128
    2c0e:	5f00                	lw	s0,56(a4)
    2c10:	0310                	addi	a2,sp,384
    2c12:	0000                	unimp
    2c14:	0000                	unimp
    2c16:	0000                	unimp
    2c18:	0314                	addi	a3,sp,384
    2c1a:	0000                	unimp
    2c1c:	0000                	unimp
    2c1e:	0000                	unimp
    2c20:	0001                	nop
    2c22:	245f 0003 0000      	0x3245f
    2c28:	0000                	unimp
    2c2a:	4400                	lw	s0,8(s0)
    2c2c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2c30:	0000                	unimp
    2c32:	0100                	addi	s0,sp,128
    2c34:	5c00                	lw	s0,56(s0)
    2c36:	035c                	addi	a5,sp,388
    2c38:	0000                	unimp
    2c3a:	0000                	unimp
    2c3c:	0000                	unimp
    2c3e:	039c                	addi	a5,sp,448
    2c40:	0000                	unimp
    2c42:	0000                	unimp
    2c44:	0000                	unimp
    2c46:	0001                	nop
    2c48:	a459                	j	2ece <_start-0xd1e2>
    2c4a:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2c4e:	0000                	unimp
    2c50:	ac00                	fsd	fs0,24(s0)
    2c52:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2c56:	0000                	unimp
    2c58:	0100                	addi	s0,sp,128
    2c5a:	5f00                	lw	s0,56(a4)
    2c5c:	03ac                	addi	a1,sp,456
    2c5e:	0000                	unimp
    2c60:	0000                	unimp
    2c62:	0000                	unimp
    2c64:	03d0                	addi	a2,sp,452
    2c66:	0000                	unimp
    2c68:	0000                	unimp
    2c6a:	0000                	unimp
    2c6c:	0001                	nop
    2c6e:	d059                	beqz	s0,2bf4 <_start-0xd4bc>
    2c70:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2c74:	0000                	unimp
    2c76:	d400                	sw	s0,40(s0)
    2c78:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2c7c:	0000                	unimp
    2c7e:	0100                	addi	s0,sp,128
    2c80:	5f00                	lw	s0,56(a4)
    2c82:	03dc                	addi	a5,sp,452
    2c84:	0000                	unimp
    2c86:	0000                	unimp
    2c88:	0000                	unimp
    2c8a:	03e0                	addi	s0,sp,460
    2c8c:	0000                	unimp
    2c8e:	0000                	unimp
    2c90:	0000                	unimp
    2c92:	0008                	addi	a0,sp,0
    2c94:	007e                	0x7e
    2c96:	007f                	0x7f
    2c98:	3122                	fld	ft2,40(sp)
    2c9a:	9f25                	addw	a4,a4,s1
    2c9c:	03e4                	addi	s1,sp,460
    2c9e:	0000                	unimp
    2ca0:	0000                	unimp
    2ca2:	0000                	unimp
    2ca4:	03ec                	addi	a1,sp,460
    2ca6:	0000                	unimp
    2ca8:	0000                	unimp
    2caa:	0000                	unimp
    2cac:	0001                	nop
    2cae:	ec5f 0003 0000      	0x3ec5f
    2cb4:	0000                	unimp
    2cb6:	0800                	addi	s0,sp,16
    2cb8:	0004                	addi	s1,sp,0
    2cba:	0000                	unimp
    2cbc:	0000                	unimp
    2cbe:	0e00                	addi	s0,sp,784
    2cc0:	7f00                	ld	s0,56(a4)
    2cc2:	1100                	addi	s0,sp,160
    2cc4:	ffff                	0xffff
    2cc6:	ffff                	0xffff
    2cc8:	ffff                	0xffff
    2cca:	bfff                	0xbfff
    2ccc:	1a7f                	0x1a7f
    2cce:	089f 0004 0000      	0x4089f
    2cd4:	0000                	unimp
    2cd6:	1c00                	addi	s0,sp,560
    2cd8:	0004                	addi	s1,sp,0
    2cda:	0000                	unimp
    2cdc:	0000                	unimp
    2cde:	0100                	addi	s0,sp,128
    2ce0:	5f00                	lw	s0,56(a4)
    2ce2:	0424                	addi	s1,sp,520
    2ce4:	0000                	unimp
    2ce6:	0000                	unimp
    2ce8:	0000                	unimp
    2cea:	0434                	addi	a3,sp,520
    2cec:	0000                	unimp
    2cee:	0000                	unimp
    2cf0:	0000                	unimp
    2cf2:	0001                	nop
    2cf4:	705f 0004 0000      	0x4705f
    2cfa:	0000                	unimp
    2cfc:	7400                	ld	s0,40(s0)
    2cfe:	0004                	addi	s1,sp,0
    2d00:	0000                	unimp
    2d02:	0000                	unimp
    2d04:	0e00                	addi	s0,sp,784
    2d06:	7f00                	ld	s0,56(a4)
    2d08:	1100                	addi	s0,sp,160
    2d0a:	ffff                	0xffff
    2d0c:	ffff                	0xffff
    2d0e:	ffff                	0xffff
    2d10:	bfff                	0xbfff
    2d12:	1a7f                	0x1a7f
    2d14:	009f 0000 0000      	0x9f
	...
    2d22:	0000                	unimp
    2d24:	4c00                	lw	s0,24(s0)
    2d26:	0004                	addi	s1,sp,0
    2d28:	0000                	unimp
    2d2a:	0000                	unimp
    2d2c:	5c00                	lw	s0,56(s0)
    2d2e:	0004                	addi	s1,sp,0
    2d30:	0000                	unimp
    2d32:	0000                	unimp
    2d34:	0100                	addi	s0,sp,128
    2d36:	5a00                	lw	s0,48(a2)
	...
    2d48:	0074                	addi	a3,sp,12
    2d4a:	0000                	unimp
    2d4c:	0000                	unimp
    2d4e:	0000                	unimp
    2d50:	0078                	addi	a4,sp,12
    2d52:	0000                	unimp
    2d54:	0000                	unimp
    2d56:	0000                	unimp
    2d58:	7f7d0003          	lb	zero,2039(s10)
    2d5c:	b09f 0000 0000      	0xb09f
    2d62:	0000                	unimp
    2d64:	b400                	fsd	fs0,40(s0)
    2d66:	0000                	unimp
    2d68:	0000                	unimp
    2d6a:	0000                	unimp
    2d6c:	0300                	addi	s0,sp,384
    2d6e:	7d00                	ld	s0,56(a0)
    2d70:	9f7f                	0x9f7f
    2d72:	00b4                	addi	a3,sp,72
    2d74:	0000                	unimp
    2d76:	0000                	unimp
    2d78:	0000                	unimp
    2d7a:	00b8                	addi	a4,sp,72
    2d7c:	0000                	unimp
    2d7e:	0000                	unimp
    2d80:	0000                	unimp
    2d82:	007a0007          	0x7a0007
    2d86:	8020                	0x8020
    2d88:	2200                	fld	fs0,0(a2)
    2d8a:	d49f 0000 0000      	0xd49f
    2d90:	0000                	unimp
    2d92:	f000                	sd	s0,32(s0)
    2d94:	0000                	unimp
    2d96:	0000                	unimp
    2d98:	0000                	unimp
    2d9a:	0100                	addi	s0,sp,128
    2d9c:	5c00                	lw	s0,56(s0)
    2d9e:	0104                	addi	s1,sp,128
    2da0:	0000                	unimp
    2da2:	0000                	unimp
    2da4:	0000                	unimp
    2da6:	010c                	addi	a1,sp,128
    2da8:	0000                	unimp
    2daa:	0000                	unimp
    2dac:	0000                	unimp
    2dae:	0004                	addi	s1,sp,0
    2db0:	007d                	c.addi	zero,31
    2db2:	9f1f 010c 0000      	0x10c9f1f
    2db8:	0000                	unimp
    2dba:	0000                	unimp
    2dbc:	0114                	addi	a3,sp,128
    2dbe:	0000                	unimp
    2dc0:	0000                	unimp
    2dc2:	0000                	unimp
    2dc4:	0004                	addi	s1,sp,0
    2dc6:	007d                	c.addi	zero,31
    2dc8:	9f20                	0x9f20
    2dca:	0120                	addi	s0,sp,136
    2dcc:	0000                	unimp
    2dce:	0000                	unimp
    2dd0:	0000                	unimp
    2dd2:	0128                	addi	a0,sp,136
    2dd4:	0000                	unimp
    2dd6:	0000                	unimp
    2dd8:	0000                	unimp
    2dda:	0004                	addi	s1,sp,0
    2ddc:	007d                	c.addi	zero,31
    2dde:	9f20                	0x9f20
    2de0:	0128                	addi	a0,sp,136
    2de2:	0000                	unimp
    2de4:	0000                	unimp
    2de6:	0000                	unimp
    2de8:	012c                	addi	a1,sp,136
    2dea:	0000                	unimp
    2dec:	0000                	unimp
    2dee:	0000                	unimp
    2df0:	00800007          	0x800007
    2df4:	007a                	0x7a
    2df6:	201c                	fld	fa5,0(s0)
    2df8:	349f 0001 0000      	0x1349f
    2dfe:	0000                	unimp
    2e00:	4800                	lw	s0,16(s0)
    2e02:	0001                	nop
    2e04:	0000                	unimp
    2e06:	0000                	unimp
    2e08:	0400                	addi	s0,sp,512
    2e0a:	7d00                	ld	s0,56(a0)
    2e0c:	1f00                	addi	s0,sp,944
    2e0e:	489f 0001 0000      	0x1489f
    2e14:	0000                	unimp
    2e16:	4c00                	lw	s0,24(s0)
    2e18:	0001                	nop
    2e1a:	0000                	unimp
    2e1c:	0000                	unimp
    2e1e:	0600                	addi	s0,sp,768
    2e20:	7a00                	ld	s0,48(a2)
    2e22:	8000                	0x8000
    2e24:	1c00                	addi	s0,sp,560
    2e26:	4c9f 0001 0000      	0x14c9f
    2e2c:	0000                	unimp
    2e2e:	6800                	ld	s0,16(s0)
    2e30:	0001                	nop
    2e32:	0000                	unimp
    2e34:	0000                	unimp
    2e36:	0100                	addi	s0,sp,128
    2e38:	5d00                	lw	s0,56(a0)
    2e3a:	03d4                	addi	a3,sp,452
    2e3c:	0000                	unimp
    2e3e:	0000                	unimp
    2e40:	0000                	unimp
    2e42:	03dc                	addi	a5,sp,452
    2e44:	0000                	unimp
    2e46:	0000                	unimp
    2e48:	0000                	unimp
    2e4a:	0004                	addi	s1,sp,0
    2e4c:	007d                	c.addi	zero,31
    2e4e:	9f1f 0000 0000      	0x9f1f
	...
    2e60:	020c                	addi	a1,sp,256
    2e62:	0000                	unimp
    2e64:	0000                	unimp
    2e66:	0000                	unimp
    2e68:	0210                	addi	a2,sp,256
    2e6a:	0000                	unimp
    2e6c:	0000                	unimp
    2e6e:	0000                	unimp
    2e70:	7f7d0003          	lb	zero,2039(s10)
    2e74:	349f 0002 0000      	0x2349f
    2e7a:	0000                	unimp
    2e7c:	3800                	fld	fs0,48(s0)
    2e7e:	0002                	0x2
    2e80:	0000                	unimp
    2e82:	0000                	unimp
    2e84:	0300                	addi	s0,sp,384
    2e86:	7d00                	ld	s0,56(a0)
    2e88:	9f7f                	0x9f7f
    2e8a:	0238                	addi	a4,sp,264
    2e8c:	0000                	unimp
    2e8e:	0000                	unimp
    2e90:	0000                	unimp
    2e92:	023c                	addi	a5,sp,264
    2e94:	0000                	unimp
    2e96:	0000                	unimp
    2e98:	0000                	unimp
    2e9a:	007a0007          	0x7a0007
    2e9e:	8020                	0x8020
    2ea0:	2200                	fld	fs0,0(a2)
    2ea2:	3c9f 0002 0000      	0x23c9f
    2ea8:	0000                	unimp
    2eaa:	4c00                	lw	s0,24(s0)
    2eac:	0002                	0x2
    2eae:	0000                	unimp
    2eb0:	0000                	unimp
    2eb2:	0100                	addi	s0,sp,128
    2eb4:	5c00                	lw	s0,56(s0)
    2eb6:	0264                	addi	s1,sp,268
    2eb8:	0000                	unimp
    2eba:	0000                	unimp
    2ebc:	0000                	unimp
    2ebe:	0270                	addi	a2,sp,268
    2ec0:	0000                	unimp
    2ec2:	0000                	unimp
    2ec4:	0000                	unimp
    2ec6:	0001                	nop
    2ec8:	845c                	0x845c
    2eca:	0002                	0x2
    2ecc:	0000                	unimp
    2ece:	0000                	unimp
    2ed0:	8c00                	0x8c00
    2ed2:	0002                	0x2
    2ed4:	0000                	unimp
    2ed6:	0000                	unimp
    2ed8:	0400                	addi	s0,sp,512
    2eda:	7d00                	ld	s0,56(a0)
    2edc:	1f00                	addi	s0,sp,944
    2ede:	8c9f 0002 0000      	0x28c9f
    2ee4:	0000                	unimp
    2ee6:	9400                	0x9400
    2ee8:	0002                	0x2
    2eea:	0000                	unimp
    2eec:	0000                	unimp
    2eee:	0400                	addi	s0,sp,512
    2ef0:	7d00                	ld	s0,56(a0)
    2ef2:	2000                	fld	fs0,0(s0)
    2ef4:	a09f 0002 0000      	0x2a09f
    2efa:	0000                	unimp
    2efc:	a800                	fsd	fs0,16(s0)
    2efe:	0002                	0x2
    2f00:	0000                	unimp
    2f02:	0000                	unimp
    2f04:	0400                	addi	s0,sp,512
    2f06:	7d00                	ld	s0,56(a0)
    2f08:	2000                	fld	fs0,0(s0)
    2f0a:	b49f 0002 0000      	0x2b49f
    2f10:	0000                	unimp
    2f12:	c800                	sw	s0,16(s0)
    2f14:	0002                	0x2
    2f16:	0000                	unimp
    2f18:	0000                	unimp
    2f1a:	0400                	addi	s0,sp,512
    2f1c:	7d00                	ld	s0,56(a0)
    2f1e:	1f00                	addi	s0,sp,944
    2f20:	c89f 0002 0000      	0x2c89f
    2f26:	0000                	unimp
    2f28:	cc00                	sw	s0,24(s0)
    2f2a:	0002                	0x2
    2f2c:	0000                	unimp
    2f2e:	0000                	unimp
    2f30:	0600                	addi	s0,sp,768
    2f32:	7a00                	ld	s0,48(a2)
    2f34:	8000                	0x8000
    2f36:	1c00                	addi	s0,sp,560
    2f38:	cc9f 0002 0000      	0x2cc9f
    2f3e:	0000                	unimp
    2f40:	e800                	sd	s0,16(s0)
    2f42:	0002                	0x2
    2f44:	0000                	unimp
    2f46:	0000                	unimp
    2f48:	0100                	addi	s0,sp,128
    2f4a:	5d00                	lw	s0,56(a0)
    2f4c:	045c                	addi	a5,sp,516
    2f4e:	0000                	unimp
    2f50:	0000                	unimp
    2f52:	0000                	unimp
    2f54:	0460                	addi	s0,sp,524
    2f56:	0000                	unimp
    2f58:	0000                	unimp
    2f5a:	0000                	unimp
    2f5c:	0004                	addi	s1,sp,0
    2f5e:	007d                	c.addi	zero,31
    2f60:	9f1f 0000 0000      	0x9f1f
	...
    2f72:	0378                	addi	a4,sp,396
    2f74:	0000                	unimp
    2f76:	0000                	unimp
    2f78:	0000                	unimp
    2f7a:	037c                	addi	a5,sp,396
    2f7c:	0000                	unimp
    2f7e:	0000                	unimp
    2f80:	0000                	unimp
    2f82:	0001                	nop
    2f84:	7c5a                	ld	s8,432(sp)
    2f86:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2f8a:	0000                	unimp
    2f8c:	8c00                	0x8c00
    2f8e:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2f92:	0000                	unimp
    2f94:	0100                	addi	s0,sp,128
    2f96:	5f00                	lw	s0,56(a4)
    2f98:	038c                	addi	a1,sp,448
    2f9a:	0000                	unimp
    2f9c:	0000                	unimp
    2f9e:	0000                	unimp
    2fa0:	0398                	addi	a4,sp,448
    2fa2:	0000                	unimp
    2fa4:	0000                	unimp
    2fa6:	0000                	unimp
    2fa8:	0001                	nop
    2faa:	bc58                	fsd	fa4,184(s0)
    2fac:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2fb0:	0000                	unimp
    2fb2:	c400                	sw	s0,8(s0)
    2fb4:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
    2fb8:	0000                	unimp
    2fba:	0100                	addi	s0,sp,128
    2fbc:	5f00                	lw	s0,56(a4)
    2fbe:	03c4                	addi	s1,sp,452
    2fc0:	0000                	unimp
    2fc2:	0000                	unimp
    2fc4:	0000                	unimp
    2fc6:	03d4                	addi	a3,sp,452
    2fc8:	0000                	unimp
    2fca:	0000                	unimp
    2fcc:	0000                	unimp
    2fce:	787a0003          	lb	zero,1927(s4) # fffffffffffe9787 <__global_pointer$+0xfffffffffffd67b7>
    2fd2:	009f 0000 0000      	0x9f
	...
    2fe0:	0000                	unimp
    2fe2:	b800                	fsd	fs0,48(s0)
    2fe4:	0001                	nop
    2fe6:	0000                	unimp
    2fe8:	0000                	unimp
    2fea:	d400                	sw	s0,40(s0)
    2fec:	0001                	nop
    2fee:	0000                	unimp
    2ff0:	0000                	unimp
    2ff2:	0200                	addi	s0,sp,256
    2ff4:	3000                	fld	fs0,32(s0)
    2ff6:	009f 0000 0000      	0x9f
	...
    300c:	0000                	unimp
    300e:	3000                	fld	fs0,32(s0)
    3010:	0000                	unimp
    3012:	0000                	unimp
    3014:	0000                	unimp
    3016:	0100                	addi	s0,sp,128
    3018:	5a00                	lw	s0,48(a2)
    301a:	0030                	addi	a2,sp,8
    301c:	0000                	unimp
    301e:	0000                	unimp
    3020:	0000                	unimp
    3022:	007c                	addi	a5,sp,12
    3024:	0000                	unimp
    3026:	0000                	unimp
    3028:	0000                	unimp
    302a:	0004                	addi	s1,sp,0
    302c:	9f5a01f3          	0x9f5a01f3
    3030:	007c                	addi	a5,sp,12
    3032:	0000                	unimp
    3034:	0000                	unimp
    3036:	0000                	unimp
    3038:	008c                	addi	a1,sp,64
    303a:	0000                	unimp
    303c:	0000                	unimp
    303e:	0000                	unimp
    3040:	0001                	nop
    3042:	005a                	0x5a
	...
    3050:	0000                	unimp
    3052:	1c00                	addi	s0,sp,560
    3054:	0000                	unimp
    3056:	0000                	unimp
    3058:	0000                	unimp
    305a:	7000                	ld	s0,32(s0)
    305c:	0000                	unimp
    305e:	0000                	unimp
    3060:	0000                	unimp
    3062:	0100                	addi	s0,sp,128
    3064:	5900                	lw	s0,48(a0)
	...
    3076:	003c                	addi	a5,sp,8
    3078:	0000                	unimp
    307a:	0000                	unimp
    307c:	0000                	unimp
    307e:	0060                	addi	s0,sp,12
    3080:	0000                	unimp
    3082:	0000                	unimp
    3084:	0000                	unimp
    3086:	0001                	nop
    3088:	005e                	0x5e
	...
    3096:	0000                	unimp
    3098:	3c00                	fld	fs0,56(s0)
    309a:	0000                	unimp
    309c:	0000                	unimp
    309e:	0000                	unimp
    30a0:	4800                	lw	s0,16(s0)
    30a2:	0000                	unimp
    30a4:	0000                	unimp
    30a6:	0000                	unimp
    30a8:	0100                	addi	s0,sp,128
    30aa:	5800                	lw	s0,48(s0)
    30ac:	0048                	addi	a0,sp,4
    30ae:	0000                	unimp
    30b0:	0000                	unimp
    30b2:	0000                	unimp
    30b4:	0054                	addi	a3,sp,4
    30b6:	0000                	unimp
    30b8:	0000                	unimp
    30ba:	0000                	unimp
    30bc:	0001                	nop
    30be:	005f 0000 0000      	0x5f
	...
    30cc:	0000                	unimp
    30ce:	6c00                	ld	s0,24(s0)
    30d0:	0000                	unimp
    30d2:	0000                	unimp
    30d4:	0000                	unimp
    30d6:	7400                	ld	s0,40(s0)
    30d8:	0000                	unimp
    30da:	0000                	unimp
    30dc:	0000                	unimp
    30de:	0800                	addi	s0,sp,16
    30e0:	7f00                	ld	s0,56(a4)
    30e2:	7a00                	ld	s0,48(a2)
    30e4:	2100                	fld	fs0,0(a0)
    30e6:	2df9                	addiw	s11,s11,30
    30e8:	749f 0000 0000      	0x749f
    30ee:	0000                	unimp
    30f0:	7c00                	ld	s0,56(s0)
    30f2:	0000                	unimp
    30f4:	0000                	unimp
    30f6:	0000                	unimp
    30f8:	0100                	addi	s0,sp,128
    30fa:	5a00                	lw	s0,48(a2)
	...
    310c:	0018                	addi	a4,sp,0
    310e:	0000                	unimp
    3110:	0000                	unimp
    3112:	0000                	unimp
    3114:	00000033          	add	zero,zero,zero
    3118:	0000                	unimp
    311a:	0000                	unimp
    311c:	0001                	nop
    311e:	005f 0000 0000      	0x5f
	...
    312c:	0000                	unimp
    312e:	3400                	fld	fs0,40(s0)
    3130:	0000                	unimp
    3132:	0000                	unimp
    3134:	0000                	unimp
    3136:	4800                	lw	s0,16(s0)
    3138:	0000                	unimp
    313a:	0000                	unimp
    313c:	0000                	unimp
    313e:	0100                	addi	s0,sp,128
    3140:	5a00                	lw	s0,48(a2)
	...
    315a:	002c                	addi	a1,sp,8
    315c:	0000                	unimp
    315e:	0000                	unimp
    3160:	0000                	unimp
    3162:	0001                	nop
    3164:	2c5a                	fld	fs8,400(sp)
    3166:	0000                	unimp
    3168:	0000                	unimp
    316a:	0000                	unimp
    316c:	c000                	sw	s0,0(s0)
    316e:	0000                	unimp
    3170:	0000                	unimp
    3172:	0000                	unimp
    3174:	0600                	addi	s0,sp,768
    3176:	f300                	sd	s0,32(a4)
    3178:	340af503          	0x340af503
    317c:	009f 0000 0000      	0x9f
	...
    318a:	0000                	unimp
    318c:	4000                	lw	s0,0(s0)
    318e:	0000                	unimp
    3190:	0000                	unimp
    3192:	0000                	unimp
    3194:	7800                	ld	s0,48(s0)
    3196:	0000                	unimp
    3198:	0000                	unimp
    319a:	0000                	unimp
    319c:	0600                	addi	s0,sp,768
    319e:	7900                	ld	s0,48(a0)
    31a0:	0800                	addi	s0,sp,16
    31a2:	1aff                	0x1aff
    31a4:	809f 0000 0000      	0x809f
    31aa:	0000                	unimp
    31ac:	c000                	sw	s0,0(s0)
    31ae:	0000                	unimp
    31b0:	0000                	unimp
    31b2:	0000                	unimp
    31b4:	0600                	addi	s0,sp,768
    31b6:	7900                	ld	s0,48(a0)
    31b8:	0800                	addi	s0,sp,16
    31ba:	1aff                	0x1aff
    31bc:	009f 0000 0000      	0x9f
	...
    31ca:	0000                	unimp
    31cc:	3c00                	fld	fs0,56(s0)
    31ce:	0000                	unimp
    31d0:	0000                	unimp
    31d2:	0000                	unimp
    31d4:	4c00                	lw	s0,24(s0)
    31d6:	0000                	unimp
    31d8:	0000                	unimp
    31da:	0000                	unimp
    31dc:	0100                	addi	s0,sp,128
    31de:	5f00                	lw	s0,56(a4)
    31e0:	0080                	addi	s0,sp,64
    31e2:	0000                	unimp
    31e4:	0000                	unimp
    31e6:	0000                	unimp
    31e8:	00000093          	li	ra,0
    31ec:	0000                	unimp
    31ee:	0000                	unimp
    31f0:	0001                	nop
    31f2:	a85f 0000 0000      	0xa85f
    31f8:	0000                	unimp
    31fa:	c000                	sw	s0,0(s0)
    31fc:	0000                	unimp
    31fe:	0000                	unimp
    3200:	0000                	unimp
    3202:	0100                	addi	s0,sp,128
    3204:	5f00                	lw	s0,56(a4)
	...
    3216:	003c                	addi	a5,sp,8
    3218:	0000                	unimp
    321a:	0000                	unimp
    321c:	0000                	unimp
    321e:	004c                	addi	a1,sp,4
    3220:	0000                	unimp
    3222:	0000                	unimp
    3224:	0000                	unimp
    3226:	0001                	nop
    3228:	8058                	0x8058
    322a:	0000                	unimp
    322c:	0000                	unimp
    322e:	0000                	unimp
    3230:	9c00                	0x9c00
    3232:	0000                	unimp
    3234:	0000                	unimp
    3236:	0000                	unimp
    3238:	0100                	addi	s0,sp,128
    323a:	5800                	lw	s0,48(s0)
    323c:	00a8                	addi	a0,sp,72
    323e:	0000                	unimp
    3240:	0000                	unimp
    3242:	0000                	unimp
    3244:	00b4                	addi	a3,sp,72
    3246:	0000                	unimp
    3248:	0000                	unimp
    324a:	0000                	unimp
    324c:	0001                	nop
    324e:	0058                	addi	a4,sp,4
	...
    325c:	0000                	unimp
    325e:	4800                	lw	s0,16(s0)
    3260:	0000                	unimp
    3262:	0000                	unimp
    3264:	0000                	unimp
    3266:	5000                	lw	s0,32(s0)
    3268:	0000                	unimp
    326a:	0000                	unimp
    326c:	0000                	unimp
    326e:	0100                	addi	s0,sp,128
    3270:	5a00                	lw	s0,48(a2)
    3272:	00a4                	addi	s1,sp,72
    3274:	0000                	unimp
    3276:	0000                	unimp
    3278:	0000                	unimp
    327a:	00a8                	addi	a0,sp,72
    327c:	0000                	unimp
    327e:	0000                	unimp
    3280:	0000                	unimp
    3282:	0001                	nop
    3284:	a85a                	fsd	fs6,16(sp)
    3286:	0000                	unimp
    3288:	0000                	unimp
    328a:	0000                	unimp
    328c:	c000                	sw	s0,0(s0)
    328e:	0000                	unimp
    3290:	0000                	unimp
    3292:	0000                	unimp
    3294:	0400                	addi	s0,sp,512
    3296:	0a00                	addi	s0,sp,272
    3298:	07ff                	0x7ff
    329a:	009f 0000 0000      	0x9f
	...
    32a8:	0000                	unimp
    32aa:	4000                	lw	s0,0(s0)
    32ac:	0000                	unimp
    32ae:	0000                	unimp
    32b0:	0000                	unimp
    32b2:	6000                	ld	s0,0(s0)
    32b4:	0000                	unimp
    32b6:	0000                	unimp
    32b8:	0000                	unimp
    32ba:	0100                	addi	s0,sp,128
    32bc:	5800                	lw	s0,48(s0)
    32be:	0080                	addi	s0,sp,64
    32c0:	0000                	unimp
    32c2:	0000                	unimp
    32c4:	0000                	unimp
    32c6:	00c0                	addi	s0,sp,68
    32c8:	0000                	unimp
    32ca:	0000                	unimp
    32cc:	0000                	unimp
    32ce:	0001                	nop
    32d0:	0058                	addi	a4,sp,4
	...
    32de:	0000                	unimp
    32e0:	6800                	ld	s0,16(s0)
    32e2:	0000                	unimp
    32e4:	0000                	unimp
    32e6:	0000                	unimp
    32e8:	6c00                	ld	s0,24(s0)
    32ea:	0000                	unimp
    32ec:	0000                	unimp
    32ee:	0000                	unimp
    32f0:	0800                	addi	s0,sp,16
    32f2:	7800                	ld	s0,48(s0)
    32f4:	7a00                	ld	s0,48(a2)
    32f6:	2100                	fld	fs0,0(a0)
    32f8:	2df9                	addiw	s11,s11,30
    32fa:	6c9f 0000 0000      	0x6c9f
    3300:	0000                	unimp
    3302:	8000                	0x8000
    3304:	0000                	unimp
    3306:	0000                	unimp
    3308:	0000                	unimp
    330a:	0100                	addi	s0,sp,128
    330c:	5a00                	lw	s0,48(a2)
	...
    331e:	0094                	addi	a3,sp,64
    3320:	0000                	unimp
    3322:	0000                	unimp
    3324:	0000                	unimp
    3326:	00a4                	addi	s1,sp,72
    3328:	0000                	unimp
    332a:	0000                	unimp
    332c:	0000                	unimp
    332e:	0001                	nop
    3330:	005a                	0x5a
	...
    3346:	0000                	unimp
    3348:	2400                	fld	fs0,8(s0)
    334a:	0000                	unimp
    334c:	0000                	unimp
    334e:	0000                	unimp
    3350:	0100                	addi	s0,sp,128
    3352:	5a00                	lw	s0,48(a2)
    3354:	0024                	addi	s1,sp,8
    3356:	0000                	unimp
    3358:	0000                	unimp
    335a:	0000                	unimp
    335c:	0154                	addi	a3,sp,132
    335e:	0000                	unimp
    3360:	0000                	unimp
    3362:	0000                	unimp
    3364:	0006                	0x6
    3366:	0af503f3          	0xaf503f3
    336a:	9f2d                	addw	a4,a4,a1
	...
    3384:	0070                	addi	a2,sp,12
    3386:	0000                	unimp
    3388:	0000                	unimp
    338a:	0000                	unimp
    338c:	0002                	0x2
    338e:	9f30                	0x9f30
    3390:	007c                	addi	a5,sp,12
    3392:	0000                	unimp
    3394:	0000                	unimp
    3396:	0000                	unimp
    3398:	00bc                	addi	a5,sp,72
    339a:	0000                	unimp
    339c:	0000                	unimp
    339e:	0000                	unimp
    33a0:	0002                	0x2
    33a2:	9f30                	0x9f30
    33a4:	0130                	addi	a2,sp,136
    33a6:	0000                	unimp
    33a8:	0000                	unimp
    33aa:	0000                	unimp
    33ac:	0138                	addi	a4,sp,136
    33ae:	0000                	unimp
    33b0:	0000                	unimp
    33b2:	0000                	unimp
    33b4:	0002                	0x2
    33b6:	9f30                	0x9f30
	...
    33c8:	0024                	addi	s1,sp,8
    33ca:	0000                	unimp
    33cc:	0000                	unimp
    33ce:	0000                	unimp
    33d0:	00f4                	addi	a3,sp,76
    33d2:	0000                	unimp
    33d4:	0000                	unimp
    33d6:	0000                	unimp
    33d8:	0001                	nop
    33da:	305a                	fld	ft0,432(sp)
    33dc:	0001                	nop
    33de:	0000                	unimp
    33e0:	0000                	unimp
    33e2:	5400                	lw	s0,40(s0)
    33e4:	0001                	nop
    33e6:	0000                	unimp
    33e8:	0000                	unimp
    33ea:	0100                	addi	s0,sp,128
    33ec:	5a00                	lw	s0,48(a2)
	...
    33fe:	0018                	addi	a4,sp,0
    3400:	0000                	unimp
    3402:	0000                	unimp
    3404:	0000                	unimp
    3406:	0030                	addi	a2,sp,8
    3408:	0000                	unimp
    340a:	0000                	unimp
    340c:	0000                	unimp
    340e:	0001                	nop
    3410:	305e                	fld	ft0,496(sp)
    3412:	0000                	unimp
    3414:	0000                	unimp
    3416:	0000                	unimp
    3418:	4800                	lw	s0,16(s0)
    341a:	0000                	unimp
    341c:	0000                	unimp
    341e:	0000                	unimp
    3420:	0400                	addi	s0,sp,512
    3422:	7e00                	ld	s0,56(a2)
    3424:	0780                	addi	s0,sp,960
    3426:	7c9f 0000 0000      	0x7c9f
    342c:	0000                	unimp
    342e:	8800                	0x8800
    3430:	0000                	unimp
    3432:	0000                	unimp
    3434:	0000                	unimp
    3436:	0400                	addi	s0,sp,512
    3438:	7e00                	ld	s0,56(a2)
    343a:	0780                	addi	s0,sp,960
    343c:	909f 0000 0000      	0x909f
    3442:	0000                	unimp
    3444:	a000                	fsd	fs0,0(s0)
    3446:	0000                	unimp
    3448:	0000                	unimp
    344a:	0000                	unimp
    344c:	0100                	addi	s0,sp,128
    344e:	5e00                	lw	s0,56(a2)
    3450:	00b4                	addi	a3,sp,72
    3452:	0000                	unimp
    3454:	0000                	unimp
    3456:	0000                	unimp
    3458:	00bc                	addi	a5,sp,72
    345a:	0000                	unimp
    345c:	0000                	unimp
    345e:	0000                	unimp
    3460:	0004                	addi	s1,sp,0
    3462:	807e                	0x807e
    3464:	01309f07          	0x1309f07
    3468:	0000                	unimp
    346a:	0000                	unimp
    346c:	0000                	unimp
    346e:	0138                	addi	a4,sp,136
    3470:	0000                	unimp
    3472:	0000                	unimp
    3474:	0000                	unimp
    3476:	0004                	addi	s1,sp,0
    3478:	807e                	0x807e
    347a:	00009f07          	0x9f07
	...
    348a:	0000                	unimp
    348c:	0018                	addi	a4,sp,0
    348e:	0000                	unimp
    3490:	0000                	unimp
    3492:	0000                	unimp
    3494:	0028                	addi	a0,sp,8
    3496:	0000                	unimp
    3498:	0000                	unimp
    349a:	0000                	unimp
    349c:	0001                	nop
    349e:	285d                	addiw	a6,a6,23
    34a0:	0000                	unimp
    34a2:	0000                	unimp
    34a4:	0000                	unimp
    34a6:	6400                	ld	s0,8(s0)
    34a8:	0000                	unimp
    34aa:	0000                	unimp
    34ac:	0000                	unimp
    34ae:	0100                	addi	s0,sp,128
    34b0:	5f00                	lw	s0,56(a4)
    34b2:	006c                	addi	a1,sp,12
    34b4:	0000                	unimp
    34b6:	0000                	unimp
    34b8:	0000                	unimp
    34ba:	0070                	addi	a2,sp,12
    34bc:	0000                	unimp
    34be:	0000                	unimp
    34c0:	0000                	unimp
    34c2:	0001                	nop
    34c4:	7c5f 0000 0000      	0x7c5f
    34ca:	0000                	unimp
    34cc:	8400                	0x8400
    34ce:	0000                	unimp
    34d0:	0000                	unimp
    34d2:	0000                	unimp
    34d4:	0100                	addi	s0,sp,128
    34d6:	5f00                	lw	s0,56(a4)
    34d8:	0090                	addi	a2,sp,64
    34da:	0000                	unimp
    34dc:	0000                	unimp
    34de:	0000                	unimp
    34e0:	0098                	addi	a4,sp,64
    34e2:	0000                	unimp
    34e4:	0000                	unimp
    34e6:	0000                	unimp
    34e8:	0001                	nop
    34ea:	985f 0000 0000      	0x985f
    34f0:	0000                	unimp
    34f2:	9c00                	0x9c00
    34f4:	0000                	unimp
    34f6:	0000                	unimp
    34f8:	0000                	unimp
    34fa:	0500                	addi	s0,sp,640
    34fc:	7d00                	ld	s0,56(a0)
    34fe:	3300                	fld	fs0,32(a4)
    3500:	9f24                	0x9f24
    3502:	009c                	addi	a5,sp,64
    3504:	0000                	unimp
    3506:	0000                	unimp
    3508:	0000                	unimp
    350a:	00a4                	addi	s1,sp,72
    350c:	0000                	unimp
    350e:	0000                	unimp
    3510:	0000                	unimp
    3512:	0001                	nop
    3514:	a45f 0000 0000      	0xa45f
    351a:	0000                	unimp
    351c:	a800                	fsd	fs0,16(s0)
    351e:	0000                	unimp
    3520:	0000                	unimp
    3522:	0000                	unimp
    3524:	0500                	addi	s0,sp,640
    3526:	7f00                	ld	s0,56(a4)
    3528:	4d00                	lw	s0,24(a0)
    352a:	9f25                	addw	a4,a4,s1
    352c:	00a8                	addi	a0,sp,72
    352e:	0000                	unimp
    3530:	0000                	unimp
    3532:	0000                	unimp
    3534:	00ac                	addi	a1,sp,72
    3536:	0000                	unimp
    3538:	0000                	unimp
    353a:	0000                	unimp
    353c:	0001                	nop
    353e:	ac5f 0000 0000      	0xac5f
    3544:	0000                	unimp
    3546:	b000                	fsd	fs0,32(s0)
    3548:	0000                	unimp
    354a:	0000                	unimp
    354c:	0000                	unimp
    354e:	0700                	addi	s0,sp,896
    3550:	7d00                	ld	s0,56(a0)
    3552:	3300                	fld	fs0,32(a4)
    3554:	4d24                	lw	s1,88(a0)
    3556:	9f25                	addw	a4,a4,s1
    3558:	00b4                	addi	a3,sp,72
    355a:	0000                	unimp
    355c:	0000                	unimp
    355e:	0000                	unimp
    3560:	00b8                	addi	a4,sp,72
    3562:	0000                	unimp
    3564:	0000                	unimp
    3566:	0000                	unimp
    3568:	0001                	nop
    356a:	b85f 0000 0000      	0xb85f
    3570:	0000                	unimp
    3572:	bc00                	fsd	fs0,56(s0)
    3574:	0000                	unimp
    3576:	0000                	unimp
    3578:	0000                	unimp
    357a:	0500                	addi	s0,sp,640
    357c:	7d00                	ld	s0,56(a0)
    357e:	3300                	fld	fs0,32(a4)
    3580:	9f24                	0x9f24
    3582:	0130                	addi	a2,sp,136
    3584:	0000                	unimp
    3586:	0000                	unimp
    3588:	0000                	unimp
    358a:	0134                	addi	a3,sp,136
    358c:	0000                	unimp
    358e:	0000                	unimp
    3590:	0000                	unimp
    3592:	0001                	nop
    3594:	005f 0000 0000      	0x5f
	...
    35a2:	0000                	unimp
    35a4:	2800                	fld	fs0,16(s0)
    35a6:	0000                	unimp
    35a8:	0000                	unimp
    35aa:	0000                	unimp
    35ac:	2800                	fld	fs0,16(s0)
    35ae:	0001                	nop
    35b0:	0000                	unimp
    35b2:	0000                	unimp
    35b4:	0100                	addi	s0,sp,128
    35b6:	5a00                	lw	s0,48(a2)
    35b8:	0130                	addi	a2,sp,136
    35ba:	0000                	unimp
    35bc:	0000                	unimp
    35be:	0000                	unimp
    35c0:	0154                	addi	a3,sp,132
    35c2:	0000                	unimp
    35c4:	0000                	unimp
    35c6:	0000                	unimp
    35c8:	0001                	nop
    35ca:	005a                	0x5a
	...
    35d8:	0000                	unimp
    35da:	3000                	fld	fs0,32(s0)
    35dc:	0000                	unimp
    35de:	0000                	unimp
    35e0:	0000                	unimp
    35e2:	4800                	lw	s0,16(s0)
    35e4:	0000                	unimp
    35e6:	0000                	unimp
    35e8:	0000                	unimp
    35ea:	0100                	addi	s0,sp,128
    35ec:	5e00                	lw	s0,56(a2)
    35ee:	0070                	addi	a2,sp,12
    35f0:	0000                	unimp
    35f2:	0000                	unimp
    35f4:	0000                	unimp
    35f6:	0088                	addi	a0,sp,64
    35f8:	0000                	unimp
    35fa:	0000                	unimp
    35fc:	0000                	unimp
    35fe:	0001                	nop
    3600:	945e                	add	s0,s0,s7
    3602:	0000                	unimp
    3604:	0000                	unimp
    3606:	0000                	unimp
    3608:	9c00                	0x9c00
    360a:	0000                	unimp
    360c:	0000                	unimp
    360e:	0000                	unimp
    3610:	0200                	addi	s0,sp,256
    3612:	3000                	fld	fs0,32(s0)
    3614:	9c9f 0000 0000      	0x9c9f
    361a:	0000                	unimp
    361c:	b400                	fsd	fs0,40(s0)
    361e:	0000                	unimp
    3620:	0000                	unimp
    3622:	0000                	unimp
    3624:	0300                	addi	s0,sp,384
    3626:	0800                	addi	s0,sp,16
    3628:	9fff                	0x9fff
    362a:	00b4                	addi	a3,sp,72
    362c:	0000                	unimp
    362e:	0000                	unimp
    3630:	0000                	unimp
    3632:	00bc                	addi	a5,sp,72
    3634:	0000                	unimp
    3636:	0000                	unimp
    3638:	0000                	unimp
    363a:	0001                	nop
    363c:	c85e                	sw	s7,16(sp)
    363e:	0000                	unimp
    3640:	0000                	unimp
    3642:	0000                	unimp
    3644:	e800                	sd	s0,16(s0)
    3646:	0000                	unimp
    3648:	0000                	unimp
    364a:	0000                	unimp
    364c:	0100                	addi	s0,sp,128
    364e:	5e00                	lw	s0,56(a2)
    3650:	00e8                	addi	a0,sp,76
    3652:	0000                	unimp
    3654:	0000                	unimp
    3656:	0000                	unimp
    3658:	00f4                	addi	a3,sp,76
    365a:	0000                	unimp
    365c:	0000                	unimp
    365e:	0000                	unimp
    3660:	ff080003          	lb	zero,-16(a6)
    3664:	309f 0001 0000      	0x1309f
    366a:	0000                	unimp
    366c:	5400                	lw	s0,40(s0)
    366e:	0001                	nop
    3670:	0000                	unimp
    3672:	0000                	unimp
    3674:	0100                	addi	s0,sp,128
    3676:	5e00                	lw	s0,56(a2)
	...
    3688:	0070                	addi	a2,sp,12
    368a:	0000                	unimp
    368c:	0000                	unimp
    368e:	0000                	unimp
    3690:	007c                	addi	a5,sp,12
    3692:	0000                	unimp
    3694:	0000                	unimp
    3696:	0000                	unimp
    3698:	0001                	nop
    369a:	8c5f 0000 0000      	0x8c5f
    36a0:	0000                	unimp
    36a2:	9000                	0x9000
    36a4:	0000                	unimp
    36a6:	0000                	unimp
    36a8:	0000                	unimp
    36aa:	0100                	addi	s0,sp,128
    36ac:	5f00                	lw	s0,56(a4)
    36ae:	00a4                	addi	s1,sp,72
    36b0:	0000                	unimp
    36b2:	0000                	unimp
    36b4:	0000                	unimp
    36b6:	00a8                	addi	a0,sp,72
    36b8:	0000                	unimp
    36ba:	0000                	unimp
    36bc:	0000                	unimp
    36be:	0005                	c.addi	zero,1
    36c0:	007f                	0x7f
    36c2:	254d                	addiw	a0,a0,19
    36c4:	a89f 0000 0000      	0xa89f
    36ca:	0000                	unimp
    36cc:	b400                	fsd	fs0,40(s0)
    36ce:	0000                	unimp
    36d0:	0000                	unimp
    36d2:	0000                	unimp
    36d4:	0100                	addi	s0,sp,128
    36d6:	5f00                	lw	s0,56(a4)
    36d8:	00bc                	addi	a5,sp,72
    36da:	0000                	unimp
    36dc:	0000                	unimp
    36de:	0000                	unimp
    36e0:	00c4                	addi	s1,sp,68
    36e2:	0000                	unimp
    36e4:	0000                	unimp
    36e6:	0000                	unimp
    36e8:	0001                	nop
    36ea:	c45f 0000 0000      	0xc45f
    36f0:	0000                	unimp
    36f2:	dc00                	sw	s0,56(s0)
    36f4:	0000                	unimp
    36f6:	0000                	unimp
    36f8:	0000                	unimp
    36fa:	0900                	addi	s0,sp,144
    36fc:	7f00                	ld	s0,56(a4)
    36fe:	1100                	addi	s0,sp,160
    3700:	ffff                	0xffff
    3702:	5fff                	0x5fff
    3704:	9f1a                	add	t5,t5,t1
    3706:	00dc                	addi	a5,sp,68
    3708:	0000                	unimp
    370a:	0000                	unimp
    370c:	0000                	unimp
    370e:	00f0                	addi	a2,sp,76
    3710:	0000                	unimp
    3712:	0000                	unimp
    3714:	0000                	unimp
    3716:	0001                	nop
    3718:	f45f 0000 0000      	0xf45f
    371e:	0000                	unimp
    3720:	0000                	unimp
    3722:	0001                	nop
    3724:	0000                	unimp
    3726:	0000                	unimp
    3728:	0100                	addi	s0,sp,128
    372a:	5f00                	lw	s0,56(a4)
    372c:	0138                	addi	a4,sp,136
    372e:	0000                	unimp
    3730:	0000                	unimp
    3732:	0000                	unimp
    3734:	014c                	addi	a1,sp,132
    3736:	0000                	unimp
    3738:	0000                	unimp
    373a:	0000                	unimp
    373c:	0001                	nop
    373e:	4c5f 0001 0000      	0x14c5f
    3744:	0000                	unimp
    3746:	5000                	lw	s0,32(s0)
    3748:	0001                	nop
    374a:	0000                	unimp
    374c:	0000                	unimp
    374e:	0900                	addi	s0,sp,144
    3750:	7f00                	ld	s0,56(a4)
    3752:	1100                	addi	s0,sp,160
    3754:	ffff                	0xffff
    3756:	5fff                	0x5fff
    3758:	9f1a                	add	t5,t5,t1
	...
    376a:	0070                	addi	a2,sp,12
    376c:	0000                	unimp
    376e:	0000                	unimp
    3770:	0000                	unimp
    3772:	007c                	addi	a5,sp,12
    3774:	0000                	unimp
    3776:	0000                	unimp
    3778:	0000                	unimp
    377a:	0002                	0x2
    377c:	9f30                	0x9f30
    377e:	0138                	addi	a4,sp,136
    3780:	0000                	unimp
    3782:	0000                	unimp
    3784:	0000                	unimp
    3786:	014c                	addi	a1,sp,132
    3788:	0000                	unimp
    378a:	0000                	unimp
    378c:	0000                	unimp
    378e:	0002                	0x2
    3790:	9f30                	0x9f30
	...
    37aa:	0028                	addi	a0,sp,8
    37ac:	0000                	unimp
    37ae:	0000                	unimp
    37b0:	0000                	unimp
    37b2:	0001                	nop
    37b4:	285a                	fld	fa6,400(sp)
    37b6:	0000                	unimp
    37b8:	0000                	unimp
    37ba:	0000                	unimp
    37bc:	3c00                	fld	fs0,56(s0)
    37be:	0000                	unimp
    37c0:	0000                	unimp
    37c2:	0000                	unimp
    37c4:	0400                	addi	s0,sp,512
    37c6:	f300                	sd	s0,32(a4)
    37c8:	5a01                	li	s4,-32
    37ca:	009f 0000 0000      	0x9f
	...
    37e0:	0000                	unimp
    37e2:	2800                	fld	fs0,16(s0)
    37e4:	0000                	unimp
    37e6:	0000                	unimp
    37e8:	0000                	unimp
    37ea:	0100                	addi	s0,sp,128
    37ec:	5a00                	lw	s0,48(a2)
    37ee:	0028                	addi	a0,sp,8
    37f0:	0000                	unimp
    37f2:	0000                	unimp
    37f4:	0000                	unimp
    37f6:	003c                	addi	a5,sp,8
    37f8:	0000                	unimp
    37fa:	0000                	unimp
    37fc:	0000                	unimp
    37fe:	0004                	addi	s1,sp,0
    3800:	9f5a01f3          	0x9f5a01f3
	...
    381c:	0004                	addi	s1,sp,0
    381e:	0000                	unimp
    3820:	0000                	unimp
    3822:	0000                	unimp
    3824:	38080003          	lb	zero,896(a6)
    3828:	049f 0000 0000      	0x49f
    382e:	0000                	unimp
    3830:	2400                	fld	fs0,8(s0)
    3832:	0000                	unimp
    3834:	0000                	unimp
    3836:	0000                	unimp
    3838:	0100                	addi	s0,sp,128
    383a:	5f00                	lw	s0,56(a4)
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	0004                	addi	s1,sp,0
   2:	0000                	unimp
   4:	0000                	unimp
   6:	0000                	unimp
   8:	000c                	addi	a1,sp,0
   a:	0000                	unimp
   c:	0000                	unimp
   e:	0000                	unimp
  10:	0014                	addi	a3,sp,0
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	001c                	addi	a5,sp,0
  1a:	0000                	unimp
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0024                	addi	s1,sp,8
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0028                	addi	a0,sp,8
  2a:	0000                	unimp
  2c:	0000                	unimp
  2e:	0000                	unimp
  30:	0034                	addi	a3,sp,8
  32:	0000                	unimp
  34:	0000                	unimp
  36:	0000                	unimp
  38:	0038                	addi	a4,sp,8
	...
  4e:	0000                	unimp
  50:	000c                	addi	a1,sp,0
  52:	0000                	unimp
  54:	0000                	unimp
  56:	0000                	unimp
  58:	0010                	addi	a2,sp,0
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	0000                	unimp
  60:	0020                	addi	s0,sp,8
  62:	0000                	unimp
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0024                	addi	s1,sp,8
  6a:	0000                	unimp
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0028                	addi	a0,sp,8
  72:	0000                	unimp
  74:	0000                	unimp
  76:	0000                	unimp
  78:	002c                	addi	a1,sp,8
  7a:	0000                	unimp
  7c:	0000                	unimp
  7e:	0000                	unimp
  80:	0038                	addi	a4,sp,8
  82:	0000                	unimp
  84:	0000                	unimp
  86:	0000                	unimp
  88:	003c                	addi	a5,sp,8
  8a:	0000                	unimp
  8c:	0000                	unimp
  8e:	0000                	unimp
  90:	0114                	addi	a3,sp,128
  92:	0000                	unimp
  94:	0000                	unimp
  96:	0000                	unimp
  98:	0118                	addi	a4,sp,128
  9a:	0000                	unimp
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	01d4                	addi	a3,sp,196
  a2:	0000                	unimp
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	01dc                	addi	a5,sp,196
  aa:	0000                	unimp
  ac:	0000                	unimp
  ae:	0000                	unimp
  b0:	0278                	addi	a4,sp,268
  b2:	0000                	unimp
  b4:	0000                	unimp
  b6:	0000                	unimp
  b8:	027c                	addi	a5,sp,268
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	0000                	unimp
  c0:	0450                	addi	a2,sp,516
  c2:	0000                	unimp
  c4:	0000                	unimp
  c6:	0000                	unimp
  c8:	0454                	addi	a3,sp,516
	...
  de:	0000                	unimp
  e0:	004c                	addi	a1,sp,4
  e2:	0000                	unimp
  e4:	0000                	unimp
  e6:	0000                	unimp
  e8:	00a4                	addi	s1,sp,72
  ea:	0000                	unimp
  ec:	0000                	unimp
  ee:	0000                	unimp
  f0:	00c0                	addi	s0,sp,68
  f2:	0000                	unimp
  f4:	0000                	unimp
  f6:	0000                	unimp
  f8:	0114                	addi	a3,sp,128
  fa:	0000                	unimp
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	0118                	addi	a4,sp,128
 102:	0000                	unimp
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0124                	addi	s1,sp,136
 10a:	0000                	unimp
 10c:	0000                	unimp
 10e:	0000                	unimp
 110:	012c                	addi	a1,sp,136
 112:	0000                	unimp
 114:	0000                	unimp
 116:	0000                	unimp
 118:	01b4                	addi	a3,sp,200
 11a:	0000                	unimp
 11c:	0000                	unimp
 11e:	0000                	unimp
 120:	01c4                	addi	s1,sp,196
 122:	0000                	unimp
 124:	0000                	unimp
 126:	0000                	unimp
 128:	01d4                	addi	a3,sp,196
 12a:	0000                	unimp
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	03cc                	addi	a1,sp,452
 132:	0000                	unimp
 134:	0000                	unimp
 136:	0000                	unimp
 138:	03d4                	addi	a3,sp,452
	...
 14e:	0000                	unimp
 150:	00a4                	addi	s1,sp,72
 152:	0000                	unimp
 154:	0000                	unimp
 156:	0000                	unimp
 158:	00c0                	addi	s0,sp,68
 15a:	0000                	unimp
 15c:	0000                	unimp
 15e:	0000                	unimp
 160:	03d4                	addi	a3,sp,452
 162:	0000                	unimp
 164:	0000                	unimp
 166:	0000                	unimp
 168:	0414                	addi	a3,sp,512
 16a:	0000                	unimp
 16c:	0000                	unimp
 16e:	0000                	unimp
 170:	045c                	addi	a5,sp,516
 172:	0000                	unimp
 174:	0000                	unimp
 176:	0000                	unimp
 178:	047c                	addi	a5,sp,524
	...
 18e:	0000                	unimp
 190:	01b4                	addi	a3,sp,200
 192:	0000                	unimp
 194:	0000                	unimp
 196:	0000                	unimp
 198:	01c4                	addi	s1,sp,196
 19a:	0000                	unimp
 19c:	0000                	unimp
 19e:	0000                	unimp
 1a0:	01dc                	addi	a5,sp,196
 1a2:	0000                	unimp
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	0278                	addi	a4,sp,268
 1aa:	0000                	unimp
 1ac:	0000                	unimp
 1ae:	0000                	unimp
 1b0:	027c                	addi	a5,sp,268
 1b2:	0000                	unimp
 1b4:	0000                	unimp
 1b6:	0000                	unimp
 1b8:	0288                	addi	a0,sp,320
 1ba:	0000                	unimp
 1bc:	0000                	unimp
 1be:	0000                	unimp
 1c0:	028c                	addi	a1,sp,320
 1c2:	0000                	unimp
 1c4:	0000                	unimp
 1c6:	0000                	unimp
 1c8:	03bc                	addi	a5,sp,456
 1ca:	0000                	unimp
 1cc:	0000                	unimp
 1ce:	0000                	unimp
 1d0:	0454                	addi	a3,sp,516
 1d2:	0000                	unimp
 1d4:	0000                	unimp
 1d6:	0000                	unimp
 1d8:	045c                	addi	a5,sp,516
	...
 1ee:	0000                	unimp
 1f0:	0208                	addi	a0,sp,256
 1f2:	0000                	unimp
 1f4:	0000                	unimp
 1f6:	0000                	unimp
 1f8:	0218                	addi	a4,sp,256
 1fa:	0000                	unimp
 1fc:	0000                	unimp
 1fe:	0000                	unimp
 200:	0358                	addi	a4,sp,388
 202:	0000                	unimp
 204:	0000                	unimp
 206:	0000                	unimp
 208:	0394                	addi	a3,sp,448
 20a:	0000                	unimp
 20c:	0000                	unimp
 20e:	0000                	unimp
 210:	03a4                	addi	s1,sp,456
 212:	0000                	unimp
 214:	0000                	unimp
 216:	0000                	unimp
 218:	03bc                	addi	a5,sp,456
	...
 22e:	0000                	unimp
 230:	0414                	addi	a3,sp,512
 232:	0000                	unimp
 234:	0000                	unimp
 236:	0000                	unimp
 238:	0424                	addi	s1,sp,520
 23a:	0000                	unimp
 23c:	0000                	unimp
 23e:	0000                	unimp
 240:	042c                	addi	a1,sp,520
 242:	0000                	unimp
 244:	0000                	unimp
 246:	0000                	unimp
 248:	043c                	addi	a5,sp,520
	...
 25e:	0000                	unimp
 260:	0008                	addi	a0,sp,0
 262:	0000                	unimp
 264:	0000                	unimp
 266:	0000                	unimp
 268:	000c                	addi	a1,sp,0
 26a:	0000                	unimp
 26c:	0000                	unimp
 26e:	0000                	unimp
 270:	0010                	addi	a2,sp,0
 272:	0000                	unimp
 274:	0000                	unimp
 276:	0000                	unimp
 278:	0018                	addi	a4,sp,0
 27a:	0000                	unimp
 27c:	0000                	unimp
 27e:	0000                	unimp
 280:	0020                	addi	s0,sp,8
 282:	0000                	unimp
 284:	0000                	unimp
 286:	0000                	unimp
 288:	0024                	addi	s1,sp,8
 28a:	0000                	unimp
 28c:	0000                	unimp
 28e:	0000                	unimp
 290:	0040                	addi	s0,sp,4
 292:	0000                	unimp
 294:	0000                	unimp
 296:	0000                	unimp
 298:	0048                	addi	a0,sp,4
 29a:	0000                	unimp
 29c:	0000                	unimp
 29e:	0000                	unimp
 2a0:	0274                	addi	a3,sp,268
 2a2:	0000                	unimp
 2a4:	0000                	unimp
 2a6:	0000                	unimp
 2a8:	0278                	addi	a4,sp,268
	...
 2be:	0000                	unimp
 2c0:	0068                	addi	a0,sp,12
 2c2:	0000                	unimp
 2c4:	0000                	unimp
 2c6:	0000                	unimp
 2c8:	006c                	addi	a1,sp,12
 2ca:	0000                	unimp
 2cc:	0000                	unimp
 2ce:	0000                	unimp
 2d0:	00e8                	addi	a0,sp,76
 2d2:	0000                	unimp
 2d4:	0000                	unimp
 2d6:	0000                	unimp
 2d8:	0108                	addi	a0,sp,128
	...
 2ee:	0000                	unimp
 2f0:	006c                	addi	a1,sp,12
 2f2:	0000                	unimp
 2f4:	0000                	unimp
 2f6:	0000                	unimp
 2f8:	007c                	addi	a5,sp,12
 2fa:	0000                	unimp
 2fc:	0000                	unimp
 2fe:	0000                	unimp
 300:	0080                	addi	s0,sp,64
 302:	0000                	unimp
 304:	0000                	unimp
 306:	0000                	unimp
 308:	0088                	addi	a0,sp,64
 30a:	0000                	unimp
 30c:	0000                	unimp
 30e:	0000                	unimp
 310:	02ec                	addi	a1,sp,332
 312:	0000                	unimp
 314:	0000                	unimp
 316:	0000                	unimp
 318:	02f4                	addi	a3,sp,332
	...
 32e:	0000                	unimp
 330:	00a8                	addi	a0,sp,72
 332:	0000                	unimp
 334:	0000                	unimp
 336:	0000                	unimp
 338:	00ac                	addi	a1,sp,72
 33a:	0000                	unimp
 33c:	0000                	unimp
 33e:	0000                	unimp
 340:	012c                	addi	a1,sp,136
 342:	0000                	unimp
 344:	0000                	unimp
 346:	0000                	unimp
 348:	014c                	addi	a1,sp,132
	...
 35e:	0000                	unimp
 360:	0174                	addi	a3,sp,140
 362:	0000                	unimp
 364:	0000                	unimp
 366:	0000                	unimp
 368:	01f4                	addi	a3,sp,204
 36a:	0000                	unimp
 36c:	0000                	unimp
 36e:	0000                	unimp
 370:	0204                	addi	s1,sp,256
 372:	0000                	unimp
 374:	0000                	unimp
 376:	0000                	unimp
 378:	020c                	addi	a1,sp,256
	...
 38e:	0000                	unimp
 390:	02a0                	addi	s0,sp,328
 392:	0000                	unimp
 394:	0000                	unimp
 396:	0000                	unimp
 398:	02a8                	addi	a0,sp,328
 39a:	0000                	unimp
 39c:	0000                	unimp
 39e:	0000                	unimp
 3a0:	02b0                	addi	a2,sp,328
 3a2:	0000                	unimp
 3a4:	0000                	unimp
 3a6:	0000                	unimp
 3a8:	02c4                	addi	s1,sp,324
	...
 3be:	0000                	unimp
 3c0:	02fc                	addi	a5,sp,332
 3c2:	0000                	unimp
 3c4:	0000                	unimp
 3c6:	0000                	unimp
 3c8:	0354                	addi	a3,sp,388
 3ca:	0000                	unimp
 3cc:	0000                	unimp
 3ce:	0000                	unimp
 3d0:	0374                	addi	a3,sp,396
 3d2:	0000                	unimp
 3d4:	0000                	unimp
 3d6:	0000                	unimp
 3d8:	0388                	addi	a0,sp,448
	...
 3f6:	0000                	unimp
 3f8:	0004                	addi	s1,sp,0
 3fa:	0000                	unimp
 3fc:	0000                	unimp
 3fe:	0000                	unimp
 400:	0008                	addi	a0,sp,0
 402:	0000                	unimp
 404:	0000                	unimp
 406:	0000                	unimp
 408:	0014                	addi	a3,sp,0
 40a:	0000                	unimp
 40c:	0000                	unimp
 40e:	0000                	unimp
 410:	0018                	addi	a4,sp,0
 412:	0000                	unimp
 414:	0000                	unimp
 416:	0000                	unimp
 418:	001c                	addi	a5,sp,0
 41a:	0000                	unimp
 41c:	0000                	unimp
 41e:	0000                	unimp
 420:	0028                	addi	a0,sp,8
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	002c                	addi	a1,sp,8
 42a:	0000                	unimp
 42c:	0000                	unimp
 42e:	0000                	unimp
 430:	003c                	addi	a5,sp,8
 432:	0000                	unimp
 434:	0000                	unimp
 436:	0000                	unimp
 438:	0040                	addi	s0,sp,4
	...
 44e:	0000                	unimp
 450:	001c                	addi	a5,sp,0
 452:	0000                	unimp
 454:	0000                	unimp
 456:	0000                	unimp
 458:	0024                	addi	s1,sp,8
 45a:	0000                	unimp
 45c:	0000                	unimp
 45e:	0000                	unimp
 460:	0034                	addi	a3,sp,8
 462:	0000                	unimp
 464:	0000                	unimp
 466:	0000                	unimp
 468:	0038                	addi	a4,sp,8
 46a:	0000                	unimp
 46c:	0000                	unimp
 46e:	0000                	unimp
 470:	0044                	addi	s1,sp,4
 472:	0000                	unimp
 474:	0000                	unimp
 476:	0000                	unimp
 478:	0048                	addi	a0,sp,4
 47a:	0000                	unimp
 47c:	0000                	unimp
 47e:	0000                	unimp
 480:	0118                	addi	a4,sp,128
 482:	0000                	unimp
 484:	0000                	unimp
 486:	0000                	unimp
 488:	011c                	addi	a5,sp,128
 48a:	0000                	unimp
 48c:	0000                	unimp
 48e:	0000                	unimp
 490:	0298                	addi	a4,sp,320
 492:	0000                	unimp
 494:	0000                	unimp
 496:	0000                	unimp
 498:	029c                	addi	a5,sp,320
 49a:	0000                	unimp
 49c:	0000                	unimp
 49e:	0000                	unimp
 4a0:	03d4                	addi	a3,sp,452
 4a2:	0000                	unimp
 4a4:	0000                	unimp
 4a6:	0000                	unimp
 4a8:	03dc                	addi	a5,sp,452
 4aa:	0000                	unimp
 4ac:	0000                	unimp
 4ae:	0000                	unimp
 4b0:	045c                	addi	a5,sp,516
 4b2:	0000                	unimp
 4b4:	0000                	unimp
 4b6:	0000                	unimp
 4b8:	0460                	addi	s0,sp,524
	...
 4ce:	0000                	unimp
 4d0:	0064                	addi	s1,sp,12
 4d2:	0000                	unimp
 4d4:	0000                	unimp
 4d6:	0000                	unimp
 4d8:	00b8                	addi	a4,sp,72
 4da:	0000                	unimp
 4dc:	0000                	unimp
 4de:	0000                	unimp
 4e0:	00c0                	addi	s0,sp,68
 4e2:	0000                	unimp
 4e4:	0000                	unimp
 4e6:	0000                	unimp
 4e8:	0118                	addi	a4,sp,128
 4ea:	0000                	unimp
 4ec:	0000                	unimp
 4ee:	0000                	unimp
 4f0:	011c                	addi	a5,sp,128
 4f2:	0000                	unimp
 4f4:	0000                	unimp
 4f6:	0000                	unimp
 4f8:	012c                	addi	a1,sp,136
 4fa:	0000                	unimp
 4fc:	0000                	unimp
 4fe:	0000                	unimp
 500:	0134                	addi	a3,sp,136
 502:	0000                	unimp
 504:	0000                	unimp
 506:	0000                	unimp
 508:	01b8                	addi	a4,sp,200
 50a:	0000                	unimp
 50c:	0000                	unimp
 50e:	0000                	unimp
 510:	01d4                	addi	a3,sp,196
 512:	0000                	unimp
 514:	0000                	unimp
 516:	0000                	unimp
 518:	01d8                	addi	a4,sp,196
 51a:	0000                	unimp
 51c:	0000                	unimp
 51e:	0000                	unimp
 520:	01e4                	addi	s1,sp,204
 522:	0000                	unimp
 524:	0000                	unimp
 526:	0000                	unimp
 528:	01fc                	addi	a5,sp,204
 52a:	0000                	unimp
 52c:	0000                	unimp
 52e:	0000                	unimp
 530:	03dc                	addi	a5,sp,452
 532:	0000                	unimp
 534:	0000                	unimp
 536:	0000                	unimp
 538:	03e4                	addi	s1,sp,460
	...
 54e:	0000                	unimp
 550:	00b8                	addi	a4,sp,72
 552:	0000                	unimp
 554:	0000                	unimp
 556:	0000                	unimp
 558:	00c0                	addi	s0,sp,68
 55a:	0000                	unimp
 55c:	0000                	unimp
 55e:	0000                	unimp
 560:	012c                	addi	a1,sp,136
 562:	0000                	unimp
 564:	0000                	unimp
 566:	0000                	unimp
 568:	0134                	addi	a3,sp,136
 56a:	0000                	unimp
 56c:	0000                	unimp
 56e:	0000                	unimp
 570:	01d8                	addi	a4,sp,196
 572:	0000                	unimp
 574:	0000                	unimp
 576:	0000                	unimp
 578:	01e4                	addi	s1,sp,204
 57a:	0000                	unimp
 57c:	0000                	unimp
 57e:	0000                	unimp
 580:	01fc                	addi	a5,sp,204
 582:	0000                	unimp
 584:	0000                	unimp
 586:	0000                	unimp
 588:	0298                	addi	a4,sp,320
 58a:	0000                	unimp
 58c:	0000                	unimp
 58e:	0000                	unimp
 590:	029c                	addi	a5,sp,320
 592:	0000                	unimp
 594:	0000                	unimp
 596:	0000                	unimp
 598:	03d4                	addi	a3,sp,452
 59a:	0000                	unimp
 59c:	0000                	unimp
 59e:	0000                	unimp
 5a0:	0460                	addi	s0,sp,524
 5a2:	0000                	unimp
 5a4:	0000                	unimp
 5a6:	0000                	unimp
 5a8:	0470                	addi	a2,sp,524
	...
 5be:	0000                	unimp
 5c0:	0224                	addi	s1,sp,264
 5c2:	0000                	unimp
 5c4:	0000                	unimp
 5c6:	0000                	unimp
 5c8:	0234                	addi	a3,sp,264
 5ca:	0000                	unimp
 5cc:	0000                	unimp
 5ce:	0000                	unimp
 5d0:	0370                	addi	a2,sp,396
 5d2:	0000                	unimp
 5d4:	0000                	unimp
 5d6:	0000                	unimp
 5d8:	03ac                	addi	a1,sp,456
 5da:	0000                	unimp
 5dc:	0000                	unimp
 5de:	0000                	unimp
 5e0:	03bc                	addi	a5,sp,456
 5e2:	0000                	unimp
 5e4:	0000                	unimp
 5e6:	0000                	unimp
 5e8:	03d4                	addi	a3,sp,452
	...
 5fe:	0000                	unimp
 600:	01b8                	addi	a4,sp,200
 602:	0000                	unimp
 604:	0000                	unimp
 606:	0000                	unimp
 608:	01d4                	addi	a3,sp,196
 60a:	0000                	unimp
 60c:	0000                	unimp
 60e:	0000                	unimp
 610:	03e4                	addi	s1,sp,460
 612:	0000                	unimp
 614:	0000                	unimp
 616:	0000                	unimp
 618:	0424                	addi	s1,sp,520
 61a:	0000                	unimp
 61c:	0000                	unimp
 61e:	0000                	unimp
 620:	0470                	addi	a2,sp,524
 622:	0000                	unimp
 624:	0000                	unimp
 626:	0000                	unimp
 628:	0478                	addi	a4,sp,524
	...
 63e:	0000                	unimp
 640:	0424                	addi	s1,sp,520
 642:	0000                	unimp
 644:	0000                	unimp
 646:	0000                	unimp
 648:	0434                	addi	a3,sp,520
 64a:	0000                	unimp
 64c:	0000                	unimp
 64e:	0000                	unimp
 650:	043c                	addi	a5,sp,520
 652:	0000                	unimp
 654:	0000                	unimp
 656:	0000                	unimp
 658:	044c                	addi	a1,sp,516
	...
 66e:	0000                	unimp
 670:	0010                	addi	a2,sp,0
 672:	0000                	unimp
 674:	0000                	unimp
 676:	0000                	unimp
 678:	0048                	addi	a0,sp,4
 67a:	0000                	unimp
 67c:	0000                	unimp
 67e:	0000                	unimp
 680:	007c                	addi	a5,sp,12
 682:	0000                	unimp
 684:	0000                	unimp
 686:	0000                	unimp
 688:	008c                	addi	a1,sp,64
	...
 69e:	0000                	unimp
 6a0:	0048                	addi	a0,sp,4
 6a2:	0000                	unimp
 6a4:	0000                	unimp
 6a6:	0000                	unimp
 6a8:	0054                	addi	a3,sp,4
 6aa:	0000                	unimp
 6ac:	0000                	unimp
 6ae:	0000                	unimp
 6b0:	005c                	addi	a5,sp,4
 6b2:	0000                	unimp
 6b4:	0000                	unimp
 6b6:	0000                	unimp
 6b8:	006c                	addi	a1,sp,12
	...
 6ce:	0000                	unimp
 6d0:	000c                	addi	a1,sp,0
 6d2:	0000                	unimp
 6d4:	0000                	unimp
 6d6:	0000                	unimp
 6d8:	001c                	addi	a5,sp,0
 6da:	0000                	unimp
 6dc:	0000                	unimp
 6de:	0000                	unimp
 6e0:	0024                	addi	s1,sp,8
 6e2:	0000                	unimp
 6e4:	0000                	unimp
 6e6:	0000                	unimp
 6e8:	002c                	addi	a1,sp,8
 6ea:	0000                	unimp
 6ec:	0000                	unimp
 6ee:	0000                	unimp
 6f0:	0038                	addi	a4,sp,8
 6f2:	0000                	unimp
 6f4:	0000                	unimp
 6f6:	0000                	unimp
 6f8:	0040                	addi	s0,sp,4
	...
 716:	0000                	unimp
 718:	0010                	addi	a2,sp,0
 71a:	0000                	unimp
 71c:	0000                	unimp
 71e:	0000                	unimp
 720:	0014                	addi	a3,sp,0
 722:	0000                	unimp
 724:	0000                	unimp
 726:	0000                	unimp
 728:	0018                	addi	a4,sp,0
 72a:	0000                	unimp
 72c:	0000                	unimp
 72e:	0000                	unimp
 730:	0020                	addi	s0,sp,8
 732:	0000                	unimp
 734:	0000                	unimp
 736:	0000                	unimp
 738:	0024                	addi	s1,sp,8
	...
 74e:	0000                	unimp
 750:	0070                	addi	a2,sp,12
 752:	0000                	unimp
 754:	0000                	unimp
 756:	0000                	unimp
 758:	007c                	addi	a5,sp,12
 75a:	0000                	unimp
 75c:	0000                	unimp
 75e:	0000                	unimp
 760:	00bc                	addi	a5,sp,72
 762:	0000                	unimp
 764:	0000                	unimp
 766:	0000                	unimp
 768:	00f4                	addi	a3,sp,76
 76a:	0000                	unimp
 76c:	0000                	unimp
 76e:	0000                	unimp
 770:	0138                	addi	a4,sp,136
 772:	0000                	unimp
 774:	0000                	unimp
 776:	0000                	unimp
 778:	0154                	addi	a3,sp,132
	...
