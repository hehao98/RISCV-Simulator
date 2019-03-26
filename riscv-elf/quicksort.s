
quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	18818193          	addi	gp,gp,392 # 13238 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 12a50 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 12aa0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	06d000ef          	jal	ra,10934 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	74850513          	addi	a0,a0,1864 # 10814 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	6ec080e7          	jalr	1772(ra) # 107c0 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	7b0080e7          	jalr	1968(ra) # 1088c <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	30c000ef          	jal	ra,103fc <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	6e430067          	jr	1764(t1) # 107d8 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00013537          	lui	a0,0x13
   10104:	000137b7          	lui	a5,0x13
   10108:	a3850713          	addi	a4,a0,-1480 # 12a38 <__TMC_END__>
   1010c:	a3878793          	addi	a5,a5,-1480 # 12a38 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	a3850513          	addi	a0,a0,-1480
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000137b7          	lui	a5,0x13
   10130:	00013537          	lui	a0,0x13
   10134:	a3878593          	addi	a1,a5,-1480 # 12a38 <__TMC_END__>
   10138:	a3850793          	addi	a5,a0,-1480 # 12a38 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	a3850513          	addi	a0,a0,-1480
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8201c703          	lbu	a4,-2016(gp) # 12a58 <completed.5182>
   10170:	04071663          	bnez	a4,101bc <__do_global_dtors_aux+0x50>
   10174:	ff010113          	addi	sp,sp,-16
   10178:	00813023          	sd	s0,0(sp)
   1017c:	00113423          	sd	ra,8(sp)
   10180:	00078413          	mv	s0,a5
   10184:	f7dff0ef          	jal	ra,10100 <deregister_tm_clones>
   10188:	000007b7          	lui	a5,0x0
   1018c:	00078793          	mv	a5,a5
   10190:	00078a63          	beqz	a5,101a4 <__do_global_dtors_aux+0x38>
   10194:	00011537          	lui	a0,0x11
   10198:	2d850513          	addi	a0,a0,728 # 112d8 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18023          	sb	a5,-2016(gp) # 12a58 <completed.5182>
   101ac:	00813083          	ld	ra,8(sp)
   101b0:	00013403          	ld	s0,0(sp)
   101b4:	01010113          	addi	sp,sp,16
   101b8:	00008067          	ret
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	000007b7          	lui	a5,0x0
   101c4:	00078793          	mv	a5,a5
   101c8:	02078663          	beqz	a5,101f4 <frame_dummy+0x34>
   101cc:	000135b7          	lui	a1,0x13
   101d0:	00011537          	lui	a0,0x11
   101d4:	ff010113          	addi	sp,sp,-16
   101d8:	a6058593          	addi	a1,a1,-1440 # 12a60 <object.5187>
   101dc:	2d850513          	addi	a0,a0,728 # 112d8 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <quicksort>:
   101f8:	fd010113          	addi	sp,sp,-48
   101fc:	02113423          	sd	ra,40(sp)
   10200:	02813023          	sd	s0,32(sp)
   10204:	03010413          	addi	s0,sp,48
   10208:	fca43c23          	sd	a0,-40(s0)
   1020c:	00058793          	mv	a5,a1
   10210:	00060713          	mv	a4,a2
   10214:	fcf42a23          	sw	a5,-44(s0)
   10218:	00070793          	mv	a5,a4
   1021c:	fcf42823          	sw	a5,-48(s0)
   10220:	fd442703          	lw	a4,-44(s0)
   10224:	fd042783          	lw	a5,-48(s0)
   10228:	0007071b          	sext.w	a4,a4
   1022c:	0007879b          	sext.w	a5,a5
   10230:	1ae7cc63          	blt	a5,a4,103e8 <quicksort+0x1f0>
   10234:	fd442783          	lw	a5,-44(s0)
   10238:	00279793          	slli	a5,a5,0x2
   1023c:	fd843703          	ld	a4,-40(s0)
   10240:	00f707b3          	add	a5,a4,a5
   10244:	0007a783          	lw	a5,0(a5) # 0 <_start-0x100b0>
   10248:	fef42223          	sw	a5,-28(s0)
   1024c:	fd442783          	lw	a5,-44(s0)
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	fd042783          	lw	a5,-48(s0)
   10258:	fef42423          	sw	a5,-24(s0)
   1025c:	0f40006f          	j	10350 <quicksort+0x158>
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	fff7879b          	addiw	a5,a5,-1
   10268:	fef42423          	sw	a5,-24(s0)
   1026c:	fe842783          	lw	a5,-24(s0)
   10270:	00279793          	slli	a5,a5,0x2
   10274:	fd843703          	ld	a4,-40(s0)
   10278:	00f707b3          	add	a5,a4,a5
   1027c:	0007a703          	lw	a4,0(a5)
   10280:	fe442783          	lw	a5,-28(s0)
   10284:	0007879b          	sext.w	a5,a5
   10288:	02f74463          	blt	a4,a5,102b0 <quicksort+0xb8>
   1028c:	fec42703          	lw	a4,-20(s0)
   10290:	fe842783          	lw	a5,-24(s0)
   10294:	0007071b          	sext.w	a4,a4
   10298:	0007879b          	sext.w	a5,a5
   1029c:	fcf742e3          	blt	a4,a5,10260 <quicksort+0x68>
   102a0:	0100006f          	j	102b0 <quicksort+0xb8>
   102a4:	fec42783          	lw	a5,-20(s0)
   102a8:	0017879b          	addiw	a5,a5,1
   102ac:	fef42623          	sw	a5,-20(s0)
   102b0:	fec42783          	lw	a5,-20(s0)
   102b4:	00279793          	slli	a5,a5,0x2
   102b8:	fd843703          	ld	a4,-40(s0)
   102bc:	00f707b3          	add	a5,a4,a5
   102c0:	0007a703          	lw	a4,0(a5)
   102c4:	fe442783          	lw	a5,-28(s0)
   102c8:	0007879b          	sext.w	a5,a5
   102cc:	00e7cc63          	blt	a5,a4,102e4 <quicksort+0xec>
   102d0:	fec42703          	lw	a4,-20(s0)
   102d4:	fe842783          	lw	a5,-24(s0)
   102d8:	0007071b          	sext.w	a4,a4
   102dc:	0007879b          	sext.w	a5,a5
   102e0:	fcf742e3          	blt	a4,a5,102a4 <quicksort+0xac>
   102e4:	fec42703          	lw	a4,-20(s0)
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	0007071b          	sext.w	a4,a4
   102f0:	0007879b          	sext.w	a5,a5
   102f4:	04f75e63          	ble	a5,a4,10350 <quicksort+0x158>
   102f8:	fec42783          	lw	a5,-20(s0)
   102fc:	00279793          	slli	a5,a5,0x2
   10300:	fd843703          	ld	a4,-40(s0)
   10304:	00f707b3          	add	a5,a4,a5
   10308:	0007a783          	lw	a5,0(a5)
   1030c:	fef42023          	sw	a5,-32(s0)
   10310:	fe842783          	lw	a5,-24(s0)
   10314:	00279793          	slli	a5,a5,0x2
   10318:	fd843703          	ld	a4,-40(s0)
   1031c:	00f70733          	add	a4,a4,a5
   10320:	fec42783          	lw	a5,-20(s0)
   10324:	00279793          	slli	a5,a5,0x2
   10328:	fd843683          	ld	a3,-40(s0)
   1032c:	00f687b3          	add	a5,a3,a5
   10330:	00072703          	lw	a4,0(a4)
   10334:	00e7a023          	sw	a4,0(a5)
   10338:	fe842783          	lw	a5,-24(s0)
   1033c:	00279793          	slli	a5,a5,0x2
   10340:	fd843703          	ld	a4,-40(s0)
   10344:	00f707b3          	add	a5,a4,a5
   10348:	fe042703          	lw	a4,-32(s0)
   1034c:	00e7a023          	sw	a4,0(a5)
   10350:	fec42703          	lw	a4,-20(s0)
   10354:	fe842783          	lw	a5,-24(s0)
   10358:	0007071b          	sext.w	a4,a4
   1035c:	0007879b          	sext.w	a5,a5
   10360:	f0f716e3          	bne	a4,a5,1026c <quicksort+0x74>
   10364:	fec42783          	lw	a5,-20(s0)
   10368:	00279793          	slli	a5,a5,0x2
   1036c:	fd843703          	ld	a4,-40(s0)
   10370:	00f70733          	add	a4,a4,a5
   10374:	fd442783          	lw	a5,-44(s0)
   10378:	00279793          	slli	a5,a5,0x2
   1037c:	fd843683          	ld	a3,-40(s0)
   10380:	00f687b3          	add	a5,a3,a5
   10384:	00072703          	lw	a4,0(a4)
   10388:	00e7a023          	sw	a4,0(a5)
   1038c:	fec42783          	lw	a5,-20(s0)
   10390:	00279793          	slli	a5,a5,0x2
   10394:	fd843703          	ld	a4,-40(s0)
   10398:	00f707b3          	add	a5,a4,a5
   1039c:	fe442703          	lw	a4,-28(s0)
   103a0:	00e7a023          	sw	a4,0(a5)
   103a4:	fec42783          	lw	a5,-20(s0)
   103a8:	fff7879b          	addiw	a5,a5,-1
   103ac:	0007871b          	sext.w	a4,a5
   103b0:	fd442783          	lw	a5,-44(s0)
   103b4:	00070613          	mv	a2,a4
   103b8:	00078593          	mv	a1,a5
   103bc:	fd843503          	ld	a0,-40(s0)
   103c0:	e39ff0ef          	jal	ra,101f8 <quicksort>
   103c4:	fec42783          	lw	a5,-20(s0)
   103c8:	0017879b          	addiw	a5,a5,1
   103cc:	0007879b          	sext.w	a5,a5
   103d0:	fd042703          	lw	a4,-48(s0)
   103d4:	00070613          	mv	a2,a4
   103d8:	00078593          	mv	a1,a5
   103dc:	fd843503          	ld	a0,-40(s0)
   103e0:	e19ff0ef          	jal	ra,101f8 <quicksort>
   103e4:	0080006f          	j	103ec <quicksort+0x1f4>
   103e8:	00000013          	nop
   103ec:	02813083          	ld	ra,40(sp)
   103f0:	02013403          	ld	s0,32(sp)
   103f4:	03010113          	addi	sp,sp,48
   103f8:	00008067          	ret

00000000000103fc <main>:
   103fc:	e1010113          	addi	sp,sp,-496
   10400:	1e113423          	sd	ra,488(sp)
   10404:	1e813023          	sd	s0,480(sp)
   10408:	1f010413          	addi	s0,sp,496
   1040c:	00a00793          	li	a5,10
   10410:	fcf42c23          	sw	a5,-40(s0)
   10414:	000117b7          	lui	a5,0x11
   10418:	2b07b703          	ld	a4,688(a5) # 112b0 <__muldi3+0x78>
   1041c:	fae43423          	sd	a4,-88(s0)
   10420:	2b078713          	addi	a4,a5,688
   10424:	00873703          	ld	a4,8(a4)
   10428:	fae43823          	sd	a4,-80(s0)
   1042c:	2b078713          	addi	a4,a5,688
   10430:	01073703          	ld	a4,16(a4)
   10434:	fae43c23          	sd	a4,-72(s0)
   10438:	2b078713          	addi	a4,a5,688
   1043c:	01873703          	ld	a4,24(a4)
   10440:	fce43023          	sd	a4,-64(s0)
   10444:	2b078793          	addi	a5,a5,688
   10448:	0207b783          	ld	a5,32(a5)
   1044c:	fcf43423          	sd	a5,-56(s0)
   10450:	000117b7          	lui	a5,0x11
   10454:	26078513          	addi	a0,a5,608 # 11260 <__muldi3+0x28>
   10458:	28c000ef          	jal	ra,106e4 <print_s>
   1045c:	fe042623          	sw	zero,-20(s0)
   10460:	03c0006f          	j	1049c <main+0xa0>
   10464:	fec42783          	lw	a5,-20(s0)
   10468:	00279793          	slli	a5,a5,0x2
   1046c:	ff040713          	addi	a4,s0,-16
   10470:	00f707b3          	add	a5,a4,a5
   10474:	fb87a783          	lw	a5,-72(a5)
   10478:	00078513          	mv	a0,a5
   1047c:	00000097          	auipc	ra,0x0
   10480:	23c080e7          	jalr	572(ra) # 106b8 <print_d>
   10484:	000117b7          	lui	a5,0x11
   10488:	27078513          	addi	a0,a5,624 # 11270 <__muldi3+0x38>
   1048c:	258000ef          	jal	ra,106e4 <print_s>
   10490:	fec42783          	lw	a5,-20(s0)
   10494:	0017879b          	addiw	a5,a5,1
   10498:	fef42623          	sw	a5,-20(s0)
   1049c:	fec42703          	lw	a4,-20(s0)
   104a0:	fd842783          	lw	a5,-40(s0)
   104a4:	0007071b          	sext.w	a4,a4
   104a8:	0007879b          	sext.w	a5,a5
   104ac:	faf74ce3          	blt	a4,a5,10464 <main+0x68>
   104b0:	000117b7          	lui	a5,0x11
   104b4:	27878513          	addi	a0,a5,632 # 11278 <__muldi3+0x40>
   104b8:	22c000ef          	jal	ra,106e4 <print_s>
   104bc:	000117b7          	lui	a5,0x11
   104c0:	28078513          	addi	a0,a5,640 # 11280 <__muldi3+0x48>
   104c4:	220000ef          	jal	ra,106e4 <print_s>
   104c8:	fd842783          	lw	a5,-40(s0)
   104cc:	fff7879b          	addiw	a5,a5,-1
   104d0:	0007871b          	sext.w	a4,a5
   104d4:	fa840793          	addi	a5,s0,-88
   104d8:	00070613          	mv	a2,a4
   104dc:	00000593          	li	a1,0
   104e0:	00078513          	mv	a0,a5
   104e4:	00000097          	auipc	ra,0x0
   104e8:	d14080e7          	jalr	-748(ra) # 101f8 <quicksort>
   104ec:	fe042423          	sw	zero,-24(s0)
   104f0:	03c0006f          	j	1052c <main+0x130>
   104f4:	fe842783          	lw	a5,-24(s0)
   104f8:	00279793          	slli	a5,a5,0x2
   104fc:	ff040713          	addi	a4,s0,-16
   10500:	00f707b3          	add	a5,a4,a5
   10504:	fb87a783          	lw	a5,-72(a5)
   10508:	00078513          	mv	a0,a5
   1050c:	00000097          	auipc	ra,0x0
   10510:	1ac080e7          	jalr	428(ra) # 106b8 <print_d>
   10514:	000117b7          	lui	a5,0x11
   10518:	27078513          	addi	a0,a5,624 # 11270 <__muldi3+0x38>
   1051c:	1c8000ef          	jal	ra,106e4 <print_s>
   10520:	fe842783          	lw	a5,-24(s0)
   10524:	0017879b          	addiw	a5,a5,1
   10528:	fef42423          	sw	a5,-24(s0)
   1052c:	fe842703          	lw	a4,-24(s0)
   10530:	fd842783          	lw	a5,-40(s0)
   10534:	0007071b          	sext.w	a4,a4
   10538:	0007879b          	sext.w	a5,a5
   1053c:	faf74ce3          	blt	a4,a5,104f4 <main+0xf8>
   10540:	000117b7          	lui	a5,0x11
   10544:	27878513          	addi	a0,a5,632 # 11278 <__muldi3+0x40>
   10548:	19c000ef          	jal	ra,106e4 <print_s>
   1054c:	06400793          	li	a5,100
   10550:	fcf42a23          	sw	a5,-44(s0)
   10554:	fe042223          	sw	zero,-28(s0)
   10558:	0340006f          	j	1058c <main+0x190>
   1055c:	06400713          	li	a4,100
   10560:	fe442783          	lw	a5,-28(s0)
   10564:	40f707bb          	subw	a5,a4,a5
   10568:	0007871b          	sext.w	a4,a5
   1056c:	fe442783          	lw	a5,-28(s0)
   10570:	00279793          	slli	a5,a5,0x2
   10574:	ff040693          	addi	a3,s0,-16
   10578:	00f687b3          	add	a5,a3,a5
   1057c:	e2e7a423          	sw	a4,-472(a5)
   10580:	fe442783          	lw	a5,-28(s0)
   10584:	0017879b          	addiw	a5,a5,1
   10588:	fef42223          	sw	a5,-28(s0)
   1058c:	fe442783          	lw	a5,-28(s0)
   10590:	0007871b          	sext.w	a4,a5
   10594:	06300793          	li	a5,99
   10598:	fce7d2e3          	ble	a4,a5,1055c <main+0x160>
   1059c:	000117b7          	lui	a5,0x11
   105a0:	29078513          	addi	a0,a5,656 # 11290 <__muldi3+0x58>
   105a4:	140000ef          	jal	ra,106e4 <print_s>
   105a8:	fe042023          	sw	zero,-32(s0)
   105ac:	03c0006f          	j	105e8 <main+0x1ec>
   105b0:	fe042783          	lw	a5,-32(s0)
   105b4:	00279793          	slli	a5,a5,0x2
   105b8:	ff040713          	addi	a4,s0,-16
   105bc:	00f707b3          	add	a5,a4,a5
   105c0:	e287a783          	lw	a5,-472(a5)
   105c4:	00078513          	mv	a0,a5
   105c8:	00000097          	auipc	ra,0x0
   105cc:	0f0080e7          	jalr	240(ra) # 106b8 <print_d>
   105d0:	000117b7          	lui	a5,0x11
   105d4:	27078513          	addi	a0,a5,624 # 11270 <__muldi3+0x38>
   105d8:	10c000ef          	jal	ra,106e4 <print_s>
   105dc:	fe042783          	lw	a5,-32(s0)
   105e0:	0017879b          	addiw	a5,a5,1
   105e4:	fef42023          	sw	a5,-32(s0)
   105e8:	fe042703          	lw	a4,-32(s0)
   105ec:	fd442783          	lw	a5,-44(s0)
   105f0:	0007071b          	sext.w	a4,a4
   105f4:	0007879b          	sext.w	a5,a5
   105f8:	faf74ce3          	blt	a4,a5,105b0 <main+0x1b4>
   105fc:	000117b7          	lui	a5,0x11
   10600:	27878513          	addi	a0,a5,632 # 11278 <__muldi3+0x40>
   10604:	0e0000ef          	jal	ra,106e4 <print_s>
   10608:	000117b7          	lui	a5,0x11
   1060c:	2a078513          	addi	a0,a5,672 # 112a0 <__muldi3+0x68>
   10610:	0d4000ef          	jal	ra,106e4 <print_s>
   10614:	fd442783          	lw	a5,-44(s0)
   10618:	fff7879b          	addiw	a5,a5,-1
   1061c:	0007871b          	sext.w	a4,a5
   10620:	e1840793          	addi	a5,s0,-488
   10624:	00070613          	mv	a2,a4
   10628:	00000593          	li	a1,0
   1062c:	00078513          	mv	a0,a5
   10630:	00000097          	auipc	ra,0x0
   10634:	bc8080e7          	jalr	-1080(ra) # 101f8 <quicksort>
   10638:	fc042e23          	sw	zero,-36(s0)
   1063c:	03c0006f          	j	10678 <main+0x27c>
   10640:	fdc42783          	lw	a5,-36(s0)
   10644:	00279793          	slli	a5,a5,0x2
   10648:	ff040713          	addi	a4,s0,-16
   1064c:	00f707b3          	add	a5,a4,a5
   10650:	e287a783          	lw	a5,-472(a5)
   10654:	00078513          	mv	a0,a5
   10658:	00000097          	auipc	ra,0x0
   1065c:	060080e7          	jalr	96(ra) # 106b8 <print_d>
   10660:	000117b7          	lui	a5,0x11
   10664:	27078513          	addi	a0,a5,624 # 11270 <__muldi3+0x38>
   10668:	07c000ef          	jal	ra,106e4 <print_s>
   1066c:	fdc42783          	lw	a5,-36(s0)
   10670:	0017879b          	addiw	a5,a5,1
   10674:	fcf42e23          	sw	a5,-36(s0)
   10678:	fdc42703          	lw	a4,-36(s0)
   1067c:	fd442783          	lw	a5,-44(s0)
   10680:	0007071b          	sext.w	a4,a4
   10684:	0007879b          	sext.w	a5,a5
   10688:	faf74ce3          	blt	a4,a5,10640 <main+0x244>
   1068c:	000117b7          	lui	a5,0x11
   10690:	27878513          	addi	a0,a5,632 # 11278 <__muldi3+0x40>
   10694:	050000ef          	jal	ra,106e4 <print_s>
   10698:	0a0000ef          	jal	ra,10738 <exit_proc>
   1069c:	00000793          	li	a5,0
   106a0:	00078513          	mv	a0,a5
   106a4:	1e813083          	ld	ra,488(sp)
   106a8:	1e013403          	ld	s0,480(sp)
   106ac:	1f010113          	addi	sp,sp,496
   106b0:	00008067          	ret
   106b4:	0000                	unimp
	...

00000000000106b8 <print_d>:
   106b8:	fe010113          	addi	sp,sp,-32
   106bc:	00813c23          	sd	s0,24(sp)
   106c0:	02010413          	addi	s0,sp,32
   106c4:	00050793          	mv	a5,a0
   106c8:	fef42623          	sw	a5,-20(s0)
   106cc:	00200893          	li	a7,2
   106d0:	00000073          	ecall
   106d4:	00000013          	nop
   106d8:	01813403          	ld	s0,24(sp)
   106dc:	02010113          	addi	sp,sp,32
   106e0:	00008067          	ret

00000000000106e4 <print_s>:
   106e4:	fe010113          	addi	sp,sp,-32
   106e8:	00813c23          	sd	s0,24(sp)
   106ec:	02010413          	addi	s0,sp,32
   106f0:	fea43423          	sd	a0,-24(s0)
   106f4:	00000893          	li	a7,0
   106f8:	00000073          	ecall
   106fc:	00000013          	nop
   10700:	01813403          	ld	s0,24(sp)
   10704:	02010113          	addi	sp,sp,32
   10708:	00008067          	ret

000000000001070c <print_c>:
   1070c:	fe010113          	addi	sp,sp,-32
   10710:	00813c23          	sd	s0,24(sp)
   10714:	02010413          	addi	s0,sp,32
   10718:	00050793          	mv	a5,a0
   1071c:	fef407a3          	sb	a5,-17(s0)
   10720:	00100893          	li	a7,1
   10724:	00000073          	ecall
   10728:	00000013          	nop
   1072c:	01813403          	ld	s0,24(sp)
   10730:	02010113          	addi	sp,sp,32
   10734:	00008067          	ret

0000000000010738 <exit_proc>:
   10738:	ff010113          	addi	sp,sp,-16
   1073c:	00813423          	sd	s0,8(sp)
   10740:	01010413          	addi	s0,sp,16
   10744:	00300893          	li	a7,3
   10748:	00000073          	ecall
   1074c:	00000013          	nop
   10750:	00813403          	ld	s0,8(sp)
   10754:	01010113          	addi	sp,sp,16
   10758:	00008067          	ret

000000000001075c <read_char>:
   1075c:	fe010113          	addi	sp,sp,-32
   10760:	00813c23          	sd	s0,24(sp)
   10764:	02010413          	addi	s0,sp,32
   10768:	00400893          	li	a7,4
   1076c:	00000073          	ecall
   10770:	00050793          	mv	a5,a0
   10774:	fef407a3          	sb	a5,-17(s0)
   10778:	fef44783          	lbu	a5,-17(s0)
   1077c:	00078513          	mv	a0,a5
   10780:	01813403          	ld	s0,24(sp)
   10784:	02010113          	addi	sp,sp,32
   10788:	00008067          	ret

000000000001078c <read_num>:
   1078c:	fe010113          	addi	sp,sp,-32
   10790:	00813c23          	sd	s0,24(sp)
   10794:	02010413          	addi	s0,sp,32
   10798:	00500893          	li	a7,5
   1079c:	00000073          	ecall
   107a0:	00050793          	mv	a5,a0
   107a4:	fef43423          	sd	a5,-24(s0)
   107a8:	fe843783          	ld	a5,-24(s0)
   107ac:	00078513          	mv	a0,a5
   107b0:	01813403          	ld	s0,24(sp)
   107b4:	02010113          	addi	sp,sp,32
   107b8:	00008067          	ret
   107bc:	0000                	unimp
	...

00000000000107c0 <atexit>:
   107c0:	00050593          	mv	a1,a0
   107c4:	00000693          	li	a3,0
   107c8:	00000613          	li	a2,0
   107cc:	00000513          	li	a0,0
   107d0:	2400006f          	j	10a10 <__register_exitproc>
   107d4:	0000                	unimp
	...

00000000000107d8 <exit>:
   107d8:	ff010113          	addi	sp,sp,-16
   107dc:	00000593          	li	a1,0
   107e0:	00813023          	sd	s0,0(sp)
   107e4:	00113423          	sd	ra,8(sp)
   107e8:	00050413          	mv	s0,a0
   107ec:	2b0000ef          	jal	ra,10a9c <__call_exitprocs>
   107f0:	000137b7          	lui	a5,0x13
   107f4:	a407b503          	ld	a0,-1472(a5) # 12a40 <_global_impure_ptr>
   107f8:	05853783          	ld	a5,88(a0)
   107fc:	00078463          	beqz	a5,10804 <exit+0x2c>
   10800:	000780e7          	jalr	a5
   10804:	00040513          	mv	a0,s0
   10808:	00001097          	auipc	ra,0x1
   1080c:	9f8080e7          	jalr	-1544(ra) # 11200 <_exit>
   10810:	0000                	unimp
	...

0000000000010814 <__libc_fini_array>:
   10814:	fe010113          	addi	sp,sp,-32
   10818:	000127b7          	lui	a5,0x12
   1081c:	00012737          	lui	a4,0x12
   10820:	00813823          	sd	s0,16(sp)
   10824:	2e870713          	addi	a4,a4,744 # 122e8 <__init_array_end>
   10828:	2f078413          	addi	s0,a5,752 # 122f0 <__fini_array_end>
   1082c:	40e40433          	sub	s0,s0,a4
   10830:	00913423          	sd	s1,8(sp)
   10834:	01213023          	sd	s2,0(sp)
   10838:	00113c23          	sd	ra,24(sp)
   1083c:	40345413          	srai	s0,s0,0x3
   10840:	00000493          	li	s1,0
   10844:	2f078913          	addi	s2,a5,752
   10848:	02941063          	bne	s0,s1,10868 <__libc_fini_array+0x54>
   1084c:	01013403          	ld	s0,16(sp)
   10850:	01813083          	ld	ra,24(sp)
   10854:	00813483          	ld	s1,8(sp)
   10858:	00013903          	ld	s2,0(sp)
   1085c:	02010113          	addi	sp,sp,32
   10860:	00000317          	auipc	t1,0x0
   10864:	89c30067          	jr	-1892(t1) # 100fc <_fini>
   10868:	ff800593          	li	a1,-8
   1086c:	00048513          	mv	a0,s1
   10870:	1c9000ef          	jal	ra,11238 <__muldi3>
   10874:	00a90533          	add	a0,s2,a0
   10878:	ff853783          	ld	a5,-8(a0)
   1087c:	00148493          	addi	s1,s1,1
   10880:	000780e7          	jalr	a5
   10884:	fc5ff06f          	j	10848 <__libc_fini_array+0x34>
   10888:	0000                	unimp
	...

000000000001088c <__libc_init_array>:
   1088c:	fe010113          	addi	sp,sp,-32
   10890:	00813823          	sd	s0,16(sp)
   10894:	00913423          	sd	s1,8(sp)
   10898:	00012437          	lui	s0,0x12
   1089c:	000124b7          	lui	s1,0x12
   108a0:	2dc48793          	addi	a5,s1,732 # 122dc <__preinit_array_end>
   108a4:	2dc40413          	addi	s0,s0,732 # 122dc <__preinit_array_end>
   108a8:	40f40433          	sub	s0,s0,a5
   108ac:	01213023          	sd	s2,0(sp)
   108b0:	00113c23          	sd	ra,24(sp)
   108b4:	40345413          	srai	s0,s0,0x3
   108b8:	2dc48493          	addi	s1,s1,732
   108bc:	00000913          	li	s2,0
   108c0:	04891463          	bne	s2,s0,10908 <__libc_init_array+0x7c>
   108c4:	000124b7          	lui	s1,0x12
   108c8:	00000097          	auipc	ra,0x0
   108cc:	834080e7          	jalr	-1996(ra) # 100fc <_fini>
   108d0:	00012437          	lui	s0,0x12
   108d4:	2e048793          	addi	a5,s1,736 # 122e0 <__frame_dummy_init_array_entry>
   108d8:	2e840413          	addi	s0,s0,744 # 122e8 <__init_array_end>
   108dc:	40f40433          	sub	s0,s0,a5
   108e0:	40345413          	srai	s0,s0,0x3
   108e4:	2e048493          	addi	s1,s1,736
   108e8:	00000913          	li	s2,0
   108ec:	02891863          	bne	s2,s0,1091c <__libc_init_array+0x90>
   108f0:	01813083          	ld	ra,24(sp)
   108f4:	01013403          	ld	s0,16(sp)
   108f8:	00813483          	ld	s1,8(sp)
   108fc:	00013903          	ld	s2,0(sp)
   10900:	02010113          	addi	sp,sp,32
   10904:	00008067          	ret
   10908:	0004b783          	ld	a5,0(s1)
   1090c:	00190913          	addi	s2,s2,1
   10910:	00848493          	addi	s1,s1,8
   10914:	000780e7          	jalr	a5
   10918:	fa9ff06f          	j	108c0 <__libc_init_array+0x34>
   1091c:	0004b783          	ld	a5,0(s1)
   10920:	00190913          	addi	s2,s2,1
   10924:	00848493          	addi	s1,s1,8
   10928:	000780e7          	jalr	a5
   1092c:	fc1ff06f          	j	108ec <__libc_init_array+0x60>
   10930:	0000                	unimp
	...

0000000000010934 <memset>:
   10934:	00f00813          	li	a6,15
   10938:	00050713          	mv	a4,a0
   1093c:	02c87a63          	bleu	a2,a6,10970 <memset+0x3c>
   10940:	00f77793          	andi	a5,a4,15
   10944:	0a079063          	bnez	a5,109e4 <memset+0xb0>
   10948:	06059e63          	bnez	a1,109c4 <memset+0x90>
   1094c:	ff067693          	andi	a3,a2,-16
   10950:	00f67613          	andi	a2,a2,15
   10954:	00e686b3          	add	a3,a3,a4
   10958:	00b73023          	sd	a1,0(a4)
   1095c:	00b73423          	sd	a1,8(a4)
   10960:	01070713          	addi	a4,a4,16
   10964:	fed76ae3          	bltu	a4,a3,10958 <memset+0x24>
   10968:	00061463          	bnez	a2,10970 <memset+0x3c>
   1096c:	00008067          	ret
   10970:	40c806b3          	sub	a3,a6,a2
   10974:	00269693          	slli	a3,a3,0x2
   10978:	00000297          	auipc	t0,0x0
   1097c:	005686b3          	add	a3,a3,t0
   10980:	00c68067          	jr	12(a3)
   10984:	00b70723          	sb	a1,14(a4)
   10988:	00b706a3          	sb	a1,13(a4)
   1098c:	00b70623          	sb	a1,12(a4)
   10990:	00b705a3          	sb	a1,11(a4)
   10994:	00b70523          	sb	a1,10(a4)
   10998:	00b704a3          	sb	a1,9(a4)
   1099c:	00b70423          	sb	a1,8(a4)
   109a0:	00b703a3          	sb	a1,7(a4)
   109a4:	00b70323          	sb	a1,6(a4)
   109a8:	00b702a3          	sb	a1,5(a4)
   109ac:	00b70223          	sb	a1,4(a4)
   109b0:	00b701a3          	sb	a1,3(a4)
   109b4:	00b70123          	sb	a1,2(a4)
   109b8:	00b700a3          	sb	a1,1(a4)
   109bc:	00b70023          	sb	a1,0(a4)
   109c0:	00008067          	ret
   109c4:	0ff5f593          	andi	a1,a1,255
   109c8:	00859693          	slli	a3,a1,0x8
   109cc:	00d5e5b3          	or	a1,a1,a3
   109d0:	01059693          	slli	a3,a1,0x10
   109d4:	00d5e5b3          	or	a1,a1,a3
   109d8:	02059693          	slli	a3,a1,0x20
   109dc:	00d5e5b3          	or	a1,a1,a3
   109e0:	f6dff06f          	j	1094c <memset+0x18>
   109e4:	00279693          	slli	a3,a5,0x2
   109e8:	00000297          	auipc	t0,0x0
   109ec:	005686b3          	add	a3,a3,t0
   109f0:	00008293          	mv	t0,ra
   109f4:	f98680e7          	jalr	-104(a3)
   109f8:	00028093          	mv	ra,t0
   109fc:	ff078793          	addi	a5,a5,-16
   10a00:	40f70733          	sub	a4,a4,a5
   10a04:	00f60633          	add	a2,a2,a5
   10a08:	f6c874e3          	bleu	a2,a6,10970 <memset+0x3c>
   10a0c:	f3dff06f          	j	10948 <memset+0x14>

0000000000010a10 <__register_exitproc>:
   10a10:	000137b7          	lui	a5,0x13
   10a14:	a407b703          	ld	a4,-1472(a5) # 12a40 <_global_impure_ptr>
   10a18:	00050313          	mv	t1,a0
   10a1c:	1f873783          	ld	a5,504(a4)
   10a20:	00079663          	bnez	a5,10a2c <__register_exitproc+0x1c>
   10a24:	20070793          	addi	a5,a4,512
   10a28:	1ef73c23          	sd	a5,504(a4)
   10a2c:	0087a703          	lw	a4,8(a5)
   10a30:	01f00813          	li	a6,31
   10a34:	fff00513          	li	a0,-1
   10a38:	04e84e63          	blt	a6,a4,10a94 <__register_exitproc+0x84>
   10a3c:	02030e63          	beqz	t1,10a78 <__register_exitproc+0x68>
   10a40:	00371813          	slli	a6,a4,0x3
   10a44:	01078833          	add	a6,a5,a6
   10a48:	10c83823          	sd	a2,272(a6)
   10a4c:	3107a883          	lw	a7,784(a5)
   10a50:	00100613          	li	a2,1
   10a54:	00e6163b          	sllw	a2,a2,a4
   10a58:	00c8e8b3          	or	a7,a7,a2
   10a5c:	3117a823          	sw	a7,784(a5)
   10a60:	20d83823          	sd	a3,528(a6)
   10a64:	00200693          	li	a3,2
   10a68:	00d31863          	bne	t1,a3,10a78 <__register_exitproc+0x68>
   10a6c:	3147a683          	lw	a3,788(a5)
   10a70:	00c6e633          	or	a2,a3,a2
   10a74:	30c7aa23          	sw	a2,788(a5)
   10a78:	0017069b          	addiw	a3,a4,1
   10a7c:	00270713          	addi	a4,a4,2
   10a80:	00371713          	slli	a4,a4,0x3
   10a84:	00d7a423          	sw	a3,8(a5)
   10a88:	00e787b3          	add	a5,a5,a4
   10a8c:	00b7b023          	sd	a1,0(a5)
   10a90:	00000513          	li	a0,0
   10a94:	00008067          	ret
   10a98:	0000                	unimp
	...

0000000000010a9c <__call_exitprocs>:
   10a9c:	fb010113          	addi	sp,sp,-80
   10aa0:	000137b7          	lui	a5,0x13
   10aa4:	03313423          	sd	s3,40(sp)
   10aa8:	a407b983          	ld	s3,-1472(a5) # 12a40 <_global_impure_ptr>
   10aac:	03413023          	sd	s4,32(sp)
   10ab0:	01513c23          	sd	s5,24(sp)
   10ab4:	01613823          	sd	s6,16(sp)
   10ab8:	04113423          	sd	ra,72(sp)
   10abc:	04813023          	sd	s0,64(sp)
   10ac0:	02913c23          	sd	s1,56(sp)
   10ac4:	03213823          	sd	s2,48(sp)
   10ac8:	01713423          	sd	s7,8(sp)
   10acc:	00050a93          	mv	s5,a0
   10ad0:	00058a13          	mv	s4,a1
   10ad4:	00100b13          	li	s6,1
   10ad8:	1f89b403          	ld	s0,504(s3)
   10adc:	00040c63          	beqz	s0,10af4 <__call_exitprocs+0x58>
   10ae0:	00842483          	lw	s1,8(s0)
   10ae4:	fff4849b          	addiw	s1,s1,-1
   10ae8:	00349913          	slli	s2,s1,0x3
   10aec:	01240933          	add	s2,s0,s2
   10af0:	0204d863          	bgez	s1,10b20 <__call_exitprocs+0x84>
   10af4:	04813083          	ld	ra,72(sp)
   10af8:	04013403          	ld	s0,64(sp)
   10afc:	03813483          	ld	s1,56(sp)
   10b00:	03013903          	ld	s2,48(sp)
   10b04:	02813983          	ld	s3,40(sp)
   10b08:	02013a03          	ld	s4,32(sp)
   10b0c:	01813a83          	ld	s5,24(sp)
   10b10:	01013b03          	ld	s6,16(sp)
   10b14:	00813b83          	ld	s7,8(sp)
   10b18:	05010113          	addi	sp,sp,80
   10b1c:	00008067          	ret
   10b20:	000a0c63          	beqz	s4,10b38 <__call_exitprocs+0x9c>
   10b24:	21093783          	ld	a5,528(s2)
   10b28:	01478863          	beq	a5,s4,10b38 <__call_exitprocs+0x9c>
   10b2c:	fff4849b          	addiw	s1,s1,-1
   10b30:	ff890913          	addi	s2,s2,-8
   10b34:	fbdff06f          	j	10af0 <__call_exitprocs+0x54>
   10b38:	00842783          	lw	a5,8(s0)
   10b3c:	01093683          	ld	a3,16(s2)
   10b40:	fff7879b          	addiw	a5,a5,-1
   10b44:	02979e63          	bne	a5,s1,10b80 <__call_exitprocs+0xe4>
   10b48:	00942423          	sw	s1,8(s0)
   10b4c:	fe0680e3          	beqz	a3,10b2c <__call_exitprocs+0x90>
   10b50:	31042703          	lw	a4,784(s0)
   10b54:	009b163b          	sllw	a2,s6,s1
   10b58:	00842b83          	lw	s7,8(s0)
   10b5c:	00c77733          	and	a4,a4,a2
   10b60:	0007071b          	sext.w	a4,a4
   10b64:	02071263          	bnez	a4,10b88 <__call_exitprocs+0xec>
   10b68:	000680e7          	jalr	a3
   10b6c:	00842703          	lw	a4,8(s0)
   10b70:	1f89b783          	ld	a5,504(s3)
   10b74:	f77712e3          	bne	a4,s7,10ad8 <__call_exitprocs+0x3c>
   10b78:	faf40ae3          	beq	s0,a5,10b2c <__call_exitprocs+0x90>
   10b7c:	f5dff06f          	j	10ad8 <__call_exitprocs+0x3c>
   10b80:	00093823          	sd	zero,16(s2)
   10b84:	fc9ff06f          	j	10b4c <__call_exitprocs+0xb0>
   10b88:	31442783          	lw	a5,788(s0)
   10b8c:	11093583          	ld	a1,272(s2)
   10b90:	00c7f7b3          	and	a5,a5,a2
   10b94:	0007879b          	sext.w	a5,a5
   10b98:	00079863          	bnez	a5,10ba8 <__call_exitprocs+0x10c>
   10b9c:	000a8513          	mv	a0,s5
   10ba0:	000680e7          	jalr	a3
   10ba4:	fc9ff06f          	j	10b6c <__call_exitprocs+0xd0>
   10ba8:	00058513          	mv	a0,a1
   10bac:	000680e7          	jalr	a3
   10bb0:	fbdff06f          	j	10b6c <__call_exitprocs+0xd0>
   10bb4:	0000                	unimp
	...

0000000000010bb8 <conv_stat>:
   10bb8:	0005b783          	ld	a5,0(a1)
   10bbc:	00f51023          	sh	a5,0(a0)
   10bc0:	0085b783          	ld	a5,8(a1)
   10bc4:	00f51123          	sh	a5,2(a0)
   10bc8:	0105a783          	lw	a5,16(a1)
   10bcc:	00f52223          	sw	a5,4(a0)
   10bd0:	0145a783          	lw	a5,20(a1)
   10bd4:	00f51423          	sh	a5,8(a0)
   10bd8:	0185a783          	lw	a5,24(a1)
   10bdc:	00f51523          	sh	a5,10(a0)
   10be0:	01c5a783          	lw	a5,28(a1)
   10be4:	00f51623          	sh	a5,12(a0)
   10be8:	0205b783          	ld	a5,32(a1)
   10bec:	00f51723          	sh	a5,14(a0)
   10bf0:	0305b783          	ld	a5,48(a1)
   10bf4:	00f53823          	sd	a5,16(a0)
   10bf8:	0405b783          	ld	a5,64(a1)
   10bfc:	04f53823          	sd	a5,80(a0)
   10c00:	0385a783          	lw	a5,56(a1)
   10c04:	04f53423          	sd	a5,72(a0)
   10c08:	0485b783          	ld	a5,72(a1)
   10c0c:	00f53c23          	sd	a5,24(a0)
   10c10:	0585b783          	ld	a5,88(a1)
   10c14:	02f53423          	sd	a5,40(a0)
   10c18:	0685b783          	ld	a5,104(a1)
   10c1c:	02f53c23          	sd	a5,56(a0)
   10c20:	00008067          	ret

0000000000010c24 <__syscall_error>:
   10c24:	ff010113          	addi	sp,sp,-16
   10c28:	00813023          	sd	s0,0(sp)
   10c2c:	00113423          	sd	ra,8(sp)
   10c30:	00050413          	mv	s0,a0
   10c34:	00000097          	auipc	ra,0x0
   10c38:	5f8080e7          	jalr	1528(ra) # 1122c <__errno>
   10c3c:	408007bb          	negw	a5,s0
   10c40:	00813083          	ld	ra,8(sp)
   10c44:	00013403          	ld	s0,0(sp)
   10c48:	00f52023          	sw	a5,0(a0)
   10c4c:	fff00513          	li	a0,-1
   10c50:	01010113          	addi	sp,sp,16
   10c54:	00008067          	ret

0000000000010c58 <__internal_syscall>:
   10c58:	00050893          	mv	a7,a0
   10c5c:	00058513          	mv	a0,a1
   10c60:	00060593          	mv	a1,a2
   10c64:	00068613          	mv	a2,a3
   10c68:	00070693          	mv	a3,a4
   10c6c:	00000073          	ecall
   10c70:	00055663          	bgez	a0,10c7c <__internal_syscall+0x24>
   10c74:	00000317          	auipc	t1,0x0
   10c78:	fb030067          	jr	-80(t1) # 10c24 <__syscall_error>
   10c7c:	00008067          	ret

0000000000010c80 <open>:
   10c80:	ff010113          	addi	sp,sp,-16
   10c84:	00060693          	mv	a3,a2
   10c88:	00000713          	li	a4,0
   10c8c:	00058613          	mv	a2,a1
   10c90:	00050593          	mv	a1,a0
   10c94:	40000513          	li	a0,1024
   10c98:	00113423          	sd	ra,8(sp)
   10c9c:	00000097          	auipc	ra,0x0
   10ca0:	fbc080e7          	jalr	-68(ra) # 10c58 <__internal_syscall>
   10ca4:	00813083          	ld	ra,8(sp)
   10ca8:	0005051b          	sext.w	a0,a0
   10cac:	01010113          	addi	sp,sp,16
   10cb0:	00008067          	ret

0000000000010cb4 <openat>:
   10cb4:	ff010113          	addi	sp,sp,-16
   10cb8:	00068713          	mv	a4,a3
   10cbc:	00060693          	mv	a3,a2
   10cc0:	00058613          	mv	a2,a1
   10cc4:	00050593          	mv	a1,a0
   10cc8:	03800513          	li	a0,56
   10ccc:	00113423          	sd	ra,8(sp)
   10cd0:	f89ff0ef          	jal	ra,10c58 <__internal_syscall>
   10cd4:	00813083          	ld	ra,8(sp)
   10cd8:	0005051b          	sext.w	a0,a0
   10cdc:	01010113          	addi	sp,sp,16
   10ce0:	00008067          	ret

0000000000010ce4 <lseek>:
   10ce4:	00060693          	mv	a3,a2
   10ce8:	00000713          	li	a4,0
   10cec:	00058613          	mv	a2,a1
   10cf0:	00050593          	mv	a1,a0
   10cf4:	03e00513          	li	a0,62
   10cf8:	00000317          	auipc	t1,0x0
   10cfc:	f6030067          	jr	-160(t1) # 10c58 <__internal_syscall>

0000000000010d00 <read>:
   10d00:	00060693          	mv	a3,a2
   10d04:	00000713          	li	a4,0
   10d08:	00058613          	mv	a2,a1
   10d0c:	00050593          	mv	a1,a0
   10d10:	03f00513          	li	a0,63
   10d14:	f45ff06f          	j	10c58 <__internal_syscall>

0000000000010d18 <write>:
   10d18:	00060693          	mv	a3,a2
   10d1c:	00000713          	li	a4,0
   10d20:	00058613          	mv	a2,a1
   10d24:	00050593          	mv	a1,a0
   10d28:	04000513          	li	a0,64
   10d2c:	00000317          	auipc	t1,0x0
   10d30:	f2c30067          	jr	-212(t1) # 10c58 <__internal_syscall>

0000000000010d34 <fstat>:
   10d34:	f6010113          	addi	sp,sp,-160
   10d38:	08913423          	sd	s1,136(sp)
   10d3c:	00010613          	mv	a2,sp
   10d40:	00058493          	mv	s1,a1
   10d44:	00000713          	li	a4,0
   10d48:	00050593          	mv	a1,a0
   10d4c:	00000693          	li	a3,0
   10d50:	05000513          	li	a0,80
   10d54:	08113c23          	sd	ra,152(sp)
   10d58:	08813823          	sd	s0,144(sp)
   10d5c:	efdff0ef          	jal	ra,10c58 <__internal_syscall>
   10d60:	00050413          	mv	s0,a0
   10d64:	00010593          	mv	a1,sp
   10d68:	00048513          	mv	a0,s1
   10d6c:	e4dff0ef          	jal	ra,10bb8 <conv_stat>
   10d70:	0004051b          	sext.w	a0,s0
   10d74:	09813083          	ld	ra,152(sp)
   10d78:	09013403          	ld	s0,144(sp)
   10d7c:	08813483          	ld	s1,136(sp)
   10d80:	0a010113          	addi	sp,sp,160
   10d84:	00008067          	ret

0000000000010d88 <stat>:
   10d88:	f6010113          	addi	sp,sp,-160
   10d8c:	08913423          	sd	s1,136(sp)
   10d90:	00010613          	mv	a2,sp
   10d94:	00058493          	mv	s1,a1
   10d98:	00000713          	li	a4,0
   10d9c:	00050593          	mv	a1,a0
   10da0:	00000693          	li	a3,0
   10da4:	40e00513          	li	a0,1038
   10da8:	08113c23          	sd	ra,152(sp)
   10dac:	08813823          	sd	s0,144(sp)
   10db0:	00000097          	auipc	ra,0x0
   10db4:	ea8080e7          	jalr	-344(ra) # 10c58 <__internal_syscall>
   10db8:	00050413          	mv	s0,a0
   10dbc:	00010593          	mv	a1,sp
   10dc0:	00048513          	mv	a0,s1
   10dc4:	00000097          	auipc	ra,0x0
   10dc8:	df4080e7          	jalr	-524(ra) # 10bb8 <conv_stat>
   10dcc:	0004051b          	sext.w	a0,s0
   10dd0:	09813083          	ld	ra,152(sp)
   10dd4:	09013403          	ld	s0,144(sp)
   10dd8:	08813483          	ld	s1,136(sp)
   10ddc:	0a010113          	addi	sp,sp,160
   10de0:	00008067          	ret

0000000000010de4 <lstat>:
   10de4:	f6010113          	addi	sp,sp,-160
   10de8:	08913423          	sd	s1,136(sp)
   10dec:	00010613          	mv	a2,sp
   10df0:	00058493          	mv	s1,a1
   10df4:	00000713          	li	a4,0
   10df8:	00050593          	mv	a1,a0
   10dfc:	00000693          	li	a3,0
   10e00:	40f00513          	li	a0,1039
   10e04:	08113c23          	sd	ra,152(sp)
   10e08:	08813823          	sd	s0,144(sp)
   10e0c:	e4dff0ef          	jal	ra,10c58 <__internal_syscall>
   10e10:	00050413          	mv	s0,a0
   10e14:	00010593          	mv	a1,sp
   10e18:	00048513          	mv	a0,s1
   10e1c:	d9dff0ef          	jal	ra,10bb8 <conv_stat>
   10e20:	0004051b          	sext.w	a0,s0
   10e24:	09813083          	ld	ra,152(sp)
   10e28:	09013403          	ld	s0,144(sp)
   10e2c:	08813483          	ld	s1,136(sp)
   10e30:	0a010113          	addi	sp,sp,160
   10e34:	00008067          	ret

0000000000010e38 <fstatat>:
   10e38:	f6010113          	addi	sp,sp,-160
   10e3c:	08913423          	sd	s1,136(sp)
   10e40:	00068713          	mv	a4,a3
   10e44:	00060493          	mv	s1,a2
   10e48:	00010693          	mv	a3,sp
   10e4c:	00058613          	mv	a2,a1
   10e50:	00050593          	mv	a1,a0
   10e54:	04f00513          	li	a0,79
   10e58:	08113c23          	sd	ra,152(sp)
   10e5c:	08813823          	sd	s0,144(sp)
   10e60:	00000097          	auipc	ra,0x0
   10e64:	df8080e7          	jalr	-520(ra) # 10c58 <__internal_syscall>
   10e68:	00050413          	mv	s0,a0
   10e6c:	00010593          	mv	a1,sp
   10e70:	00048513          	mv	a0,s1
   10e74:	00000097          	auipc	ra,0x0
   10e78:	d44080e7          	jalr	-700(ra) # 10bb8 <conv_stat>
   10e7c:	0004051b          	sext.w	a0,s0
   10e80:	09813083          	ld	ra,152(sp)
   10e84:	09013403          	ld	s0,144(sp)
   10e88:	08813483          	ld	s1,136(sp)
   10e8c:	0a010113          	addi	sp,sp,160
   10e90:	00008067          	ret

0000000000010e94 <access>:
   10e94:	ff010113          	addi	sp,sp,-16
   10e98:	00058613          	mv	a2,a1
   10e9c:	00000713          	li	a4,0
   10ea0:	00050593          	mv	a1,a0
   10ea4:	00000693          	li	a3,0
   10ea8:	40900513          	li	a0,1033
   10eac:	00113423          	sd	ra,8(sp)
   10eb0:	da9ff0ef          	jal	ra,10c58 <__internal_syscall>
   10eb4:	00813083          	ld	ra,8(sp)
   10eb8:	0005051b          	sext.w	a0,a0
   10ebc:	01010113          	addi	sp,sp,16
   10ec0:	00008067          	ret

0000000000010ec4 <faccessat>:
   10ec4:	ff010113          	addi	sp,sp,-16
   10ec8:	00068713          	mv	a4,a3
   10ecc:	00060693          	mv	a3,a2
   10ed0:	00058613          	mv	a2,a1
   10ed4:	00050593          	mv	a1,a0
   10ed8:	03000513          	li	a0,48
   10edc:	00113423          	sd	ra,8(sp)
   10ee0:	00000097          	auipc	ra,0x0
   10ee4:	d78080e7          	jalr	-648(ra) # 10c58 <__internal_syscall>
   10ee8:	00813083          	ld	ra,8(sp)
   10eec:	0005051b          	sext.w	a0,a0
   10ef0:	01010113          	addi	sp,sp,16
   10ef4:	00008067          	ret

0000000000010ef8 <close>:
   10ef8:	ff010113          	addi	sp,sp,-16
   10efc:	00050593          	mv	a1,a0
   10f00:	00000713          	li	a4,0
   10f04:	00000693          	li	a3,0
   10f08:	00000613          	li	a2,0
   10f0c:	03900513          	li	a0,57
   10f10:	00113423          	sd	ra,8(sp)
   10f14:	d45ff0ef          	jal	ra,10c58 <__internal_syscall>
   10f18:	00813083          	ld	ra,8(sp)
   10f1c:	0005051b          	sext.w	a0,a0
   10f20:	01010113          	addi	sp,sp,16
   10f24:	00008067          	ret

0000000000010f28 <link>:
   10f28:	ff010113          	addi	sp,sp,-16
   10f2c:	00058613          	mv	a2,a1
   10f30:	00000713          	li	a4,0
   10f34:	00050593          	mv	a1,a0
   10f38:	00000693          	li	a3,0
   10f3c:	40100513          	li	a0,1025
   10f40:	00113423          	sd	ra,8(sp)
   10f44:	00000097          	auipc	ra,0x0
   10f48:	d14080e7          	jalr	-748(ra) # 10c58 <__internal_syscall>
   10f4c:	00813083          	ld	ra,8(sp)
   10f50:	0005051b          	sext.w	a0,a0
   10f54:	01010113          	addi	sp,sp,16
   10f58:	00008067          	ret

0000000000010f5c <unlink>:
   10f5c:	ff010113          	addi	sp,sp,-16
   10f60:	00050593          	mv	a1,a0
   10f64:	00000713          	li	a4,0
   10f68:	00000693          	li	a3,0
   10f6c:	00000613          	li	a2,0
   10f70:	40200513          	li	a0,1026
   10f74:	00113423          	sd	ra,8(sp)
   10f78:	ce1ff0ef          	jal	ra,10c58 <__internal_syscall>
   10f7c:	00813083          	ld	ra,8(sp)
   10f80:	0005051b          	sext.w	a0,a0
   10f84:	01010113          	addi	sp,sp,16
   10f88:	00008067          	ret

0000000000010f8c <execve>:
   10f8c:	ff010113          	addi	sp,sp,-16
   10f90:	00113423          	sd	ra,8(sp)
   10f94:	00000097          	auipc	ra,0x0
   10f98:	298080e7          	jalr	664(ra) # 1122c <__errno>
   10f9c:	00813083          	ld	ra,8(sp)
   10fa0:	00c00793          	li	a5,12
   10fa4:	00f52023          	sw	a5,0(a0)
   10fa8:	fff00513          	li	a0,-1
   10fac:	01010113          	addi	sp,sp,16
   10fb0:	00008067          	ret

0000000000010fb4 <fork>:
   10fb4:	ff010113          	addi	sp,sp,-16
   10fb8:	00113423          	sd	ra,8(sp)
   10fbc:	270000ef          	jal	ra,1122c <__errno>
   10fc0:	00813083          	ld	ra,8(sp)
   10fc4:	00b00793          	li	a5,11
   10fc8:	00f52023          	sw	a5,0(a0)
   10fcc:	fff00513          	li	a0,-1
   10fd0:	01010113          	addi	sp,sp,16
   10fd4:	00008067          	ret

0000000000010fd8 <getpid>:
   10fd8:	00100513          	li	a0,1
   10fdc:	00008067          	ret

0000000000010fe0 <kill>:
   10fe0:	ff010113          	addi	sp,sp,-16
   10fe4:	00113423          	sd	ra,8(sp)
   10fe8:	244000ef          	jal	ra,1122c <__errno>
   10fec:	00813083          	ld	ra,8(sp)
   10ff0:	01600793          	li	a5,22
   10ff4:	00f52023          	sw	a5,0(a0)
   10ff8:	fff00513          	li	a0,-1
   10ffc:	01010113          	addi	sp,sp,16
   11000:	00008067          	ret

0000000000011004 <wait>:
   11004:	ff010113          	addi	sp,sp,-16
   11008:	00113423          	sd	ra,8(sp)
   1100c:	00000097          	auipc	ra,0x0
   11010:	220080e7          	jalr	544(ra) # 1122c <__errno>
   11014:	00813083          	ld	ra,8(sp)
   11018:	00a00793          	li	a5,10
   1101c:	00f52023          	sw	a5,0(a0)
   11020:	fff00513          	li	a0,-1
   11024:	01010113          	addi	sp,sp,16
   11028:	00008067          	ret

000000000001102c <isatty>:
   1102c:	f8010113          	addi	sp,sp,-128
   11030:	00810593          	addi	a1,sp,8
   11034:	06113c23          	sd	ra,120(sp)
   11038:	cfdff0ef          	jal	ra,10d34 <fstat>
   1103c:	fff00793          	li	a5,-1
   11040:	00f50863          	beq	a0,a5,11050 <isatty+0x24>
   11044:	00c12503          	lw	a0,12(sp)
   11048:	40d5551b          	sraiw	a0,a0,0xd
   1104c:	00157513          	andi	a0,a0,1
   11050:	07813083          	ld	ra,120(sp)
   11054:	08010113          	addi	sp,sp,128
   11058:	00008067          	ret

000000000001105c <gettimeofday>:
   1105c:	ff010113          	addi	sp,sp,-16
   11060:	00050593          	mv	a1,a0
   11064:	00000713          	li	a4,0
   11068:	00000693          	li	a3,0
   1106c:	00000613          	li	a2,0
   11070:	0a900513          	li	a0,169
   11074:	00113423          	sd	ra,8(sp)
   11078:	00000097          	auipc	ra,0x0
   1107c:	be0080e7          	jalr	-1056(ra) # 10c58 <__internal_syscall>
   11080:	00813083          	ld	ra,8(sp)
   11084:	0005051b          	sext.w	a0,a0
   11088:	01010113          	addi	sp,sp,16
   1108c:	00008067          	ret

0000000000011090 <times>:
   11090:	fd010113          	addi	sp,sp,-48
   11094:	02813023          	sd	s0,32(sp)
   11098:	00050413          	mv	s0,a0
   1109c:	8581b783          	ld	a5,-1960(gp) # 12a90 <t0.2572>
   110a0:	00913c23          	sd	s1,24(sp)
   110a4:	02113423          	sd	ra,40(sp)
   110a8:	85818493          	addi	s1,gp,-1960 # 12a90 <t0.2572>
   110ac:	00079a63          	bnez	a5,110c0 <times+0x30>
   110b0:	00000593          	li	a1,0
   110b4:	85818513          	addi	a0,gp,-1960 # 12a90 <t0.2572>
   110b8:	00000097          	auipc	ra,0x0
   110bc:	fa4080e7          	jalr	-92(ra) # 1105c <gettimeofday>
   110c0:	00000593          	li	a1,0
   110c4:	00010513          	mv	a0,sp
   110c8:	00000097          	auipc	ra,0x0
   110cc:	f94080e7          	jalr	-108(ra) # 1105c <gettimeofday>
   110d0:	0004b783          	ld	a5,0(s1)
   110d4:	00013503          	ld	a0,0(sp)
   110d8:	000f45b7          	lui	a1,0xf4
   110dc:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe1008>
   110e0:	40f50533          	sub	a0,a0,a5
   110e4:	154000ef          	jal	ra,11238 <__muldi3>
   110e8:	0084b703          	ld	a4,8(s1)
   110ec:	00813783          	ld	a5,8(sp)
   110f0:	00043823          	sd	zero,16(s0)
   110f4:	00043c23          	sd	zero,24(s0)
   110f8:	40e787b3          	sub	a5,a5,a4
   110fc:	00f50533          	add	a0,a0,a5
   11100:	00a43023          	sd	a0,0(s0)
   11104:	00043423          	sd	zero,8(s0)
   11108:	02813083          	ld	ra,40(sp)
   1110c:	02013403          	ld	s0,32(sp)
   11110:	01813483          	ld	s1,24(sp)
   11114:	fff00513          	li	a0,-1
   11118:	03010113          	addi	sp,sp,48
   1111c:	00008067          	ret

0000000000011120 <ftime>:
   11120:	00051423          	sh	zero,8(a0)
   11124:	00053023          	sd	zero,0(a0)
   11128:	00000513          	li	a0,0
   1112c:	00008067          	ret

0000000000011130 <utime>:
   11130:	fff00513          	li	a0,-1
   11134:	00008067          	ret

0000000000011138 <chown>:
   11138:	fff00513          	li	a0,-1
   1113c:	00008067          	ret

0000000000011140 <chmod>:
   11140:	fff00513          	li	a0,-1
   11144:	00008067          	ret

0000000000011148 <chdir>:
   11148:	fff00513          	li	a0,-1
   1114c:	00008067          	ret

0000000000011150 <getcwd>:
   11150:	00000513          	li	a0,0
   11154:	00008067          	ret

0000000000011158 <sysconf>:
   11158:	00200793          	li	a5,2
   1115c:	00f50663          	beq	a0,a5,11168 <sysconf+0x10>
   11160:	fff00513          	li	a0,-1
   11164:	00008067          	ret
   11168:	000f4537          	lui	a0,0xf4
   1116c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe1008>
   11170:	00008067          	ret

0000000000011174 <sbrk>:
   11174:	fe010113          	addi	sp,sp,-32
   11178:	00813823          	sd	s0,16(sp)
   1117c:	8181b783          	ld	a5,-2024(gp) # 12a50 <_edata>
   11180:	00913423          	sd	s1,8(sp)
   11184:	00113c23          	sd	ra,24(sp)
   11188:	00050493          	mv	s1,a0
   1118c:	04079063          	bnez	a5,111cc <sbrk+0x58>
   11190:	00000713          	li	a4,0
   11194:	00000693          	li	a3,0
   11198:	00000613          	li	a2,0
   1119c:	00000593          	li	a1,0
   111a0:	0d600513          	li	a0,214
   111a4:	ab5ff0ef          	jal	ra,10c58 <__internal_syscall>
   111a8:	fff00793          	li	a5,-1
   111ac:	00f51e63          	bne	a0,a5,111c8 <sbrk+0x54>
   111b0:	fff00513          	li	a0,-1
   111b4:	01813083          	ld	ra,24(sp)
   111b8:	01013403          	ld	s0,16(sp)
   111bc:	00813483          	ld	s1,8(sp)
   111c0:	02010113          	addi	sp,sp,32
   111c4:	00008067          	ret
   111c8:	80a1bc23          	sd	a0,-2024(gp) # 12a50 <_edata>
   111cc:	8181b583          	ld	a1,-2024(gp) # 12a50 <_edata>
   111d0:	00000713          	li	a4,0
   111d4:	00000693          	li	a3,0
   111d8:	00b485b3          	add	a1,s1,a1
   111dc:	00000613          	li	a2,0
   111e0:	0d600513          	li	a0,214
   111e4:	a75ff0ef          	jal	ra,10c58 <__internal_syscall>
   111e8:	8181b783          	ld	a5,-2024(gp) # 12a50 <_edata>
   111ec:	00f484b3          	add	s1,s1,a5
   111f0:	fc9510e3          	bne	a0,s1,111b0 <sbrk+0x3c>
   111f4:	80a1bc23          	sd	a0,-2024(gp) # 12a50 <_edata>
   111f8:	00078513          	mv	a0,a5
   111fc:	fb9ff06f          	j	111b4 <sbrk+0x40>

0000000000011200 <_exit>:
   11200:	ff010113          	addi	sp,sp,-16
   11204:	00050593          	mv	a1,a0
   11208:	00000713          	li	a4,0
   1120c:	00000693          	li	a3,0
   11210:	00000613          	li	a2,0
   11214:	05d00513          	li	a0,93
   11218:	00113423          	sd	ra,8(sp)
   1121c:	00000097          	auipc	ra,0x0
   11220:	a3c080e7          	jalr	-1476(ra) # 10c58 <__internal_syscall>
   11224:	0000006f          	j	11224 <_exit+0x24>
   11228:	0000                	unimp
	...

000000000001122c <__errno>:
   1122c:	8101b503          	ld	a0,-2032(gp) # 12a48 <_impure_ptr>
   11230:	00008067          	ret
   11234:	0000                	unimp
	...

0000000000011238 <__muldi3>:
   11238:	00050613          	mv	a2,a0
   1123c:	00000513          	li	a0,0
   11240:	0015f693          	andi	a3,a1,1
   11244:	00068463          	beqz	a3,1124c <__muldi3+0x14>
   11248:	00c50533          	add	a0,a0,a2
   1124c:	0015d593          	srli	a1,a1,0x1
   11250:	00161613          	slli	a2,a2,0x1
   11254:	fe0596e3          	bnez	a1,11240 <__muldi3+0x8>
   11258:	00008067          	ret
   1125c:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000011260 <.rodata>:
   11260:	7250                	ld	a2,160(a2)
   11262:	7665                	lui	a2,0xffff9
   11264:	4120                	lw	s0,64(a0)
   11266:	203a                	fld	ft0,392(sp)
	...
   11270:	0020                	addi	s0,sp,8
   11272:	0000                	unimp
   11274:	0000                	unimp
   11276:	0000                	unimp
   11278:	000a                	0xa
   1127a:	0000                	unimp
   1127c:	0000                	unimp
   1127e:	0000                	unimp
   11280:	74726f53          	0x74726f53
   11284:	6465                	lui	s0,0x19
   11286:	4120                	lw	s0,64(a0)
   11288:	203a                	fld	ft0,392(sp)
   1128a:	0000                	unimp
   1128c:	0000                	unimp
   1128e:	0000                	unimp
   11290:	7250                	ld	a2,160(a2)
   11292:	7665                	lui	a2,0xffff9
   11294:	4220                	lw	s0,64(a2)
   11296:	203a                	fld	ft0,392(sp)
	...
   112a0:	74726f53          	0x74726f53
   112a4:	6465                	lui	s0,0x19
   112a6:	4220                	lw	s0,64(a2)
   112a8:	203a                	fld	ft0,392(sp)
   112aa:	0000                	unimp
   112ac:	0000                	unimp
   112ae:	0000                	unimp
   112b0:	0005                	c.addi	zero,1
   112b2:	0000                	unimp
   112b4:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   112b8:	0005                	c.addi	zero,1
   112ba:	0000                	unimp
   112bc:	0006                	0x6
   112be:	0000                	unimp
   112c0:	00000007          	0x7
   112c4:	0001                	nop
   112c6:	0000                	unimp
   112c8:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   112cc:	0005                	c.addi	zero,1
   112ce:	0000                	unimp
   112d0:	0006                	0x6
   112d2:	0000                	unimp
   112d4:	0001                	nop
	...

Disassembly of section .eh_frame:

00000000000112d8 <__EH_FRAME_BEGIN__>:
   112d8:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000122e0 <__frame_dummy_init_array_entry>:
   122e0:	01c0                	addi	s0,sp,196
   122e2:	0001                	nop
   122e4:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000122e8 <__do_global_dtors_aux_fini_array_entry>:
   122e8:	016c                	addi	a1,sp,140
   122ea:	0001                	nop
   122ec:	0000                	unimp
	...

Disassembly of section .data:

00000000000122f0 <impure_data>:
	...
   122f8:	2828                	fld	fa0,80(s0)
   122fa:	0001                	nop
   122fc:	0000                	unimp
   122fe:	0000                	unimp
   12300:	28d8                	fld	fa4,144(s1)
   12302:	0001                	nop
   12304:	0000                	unimp
   12306:	0000                	unimp
   12308:	2988                	fld	fa0,16(a1)
   1230a:	0001                	nop
	...
   123d8:	0001                	nop
   123da:	0000                	unimp
   123dc:	0000                	unimp
   123de:	0000                	unimp
   123e0:	330e                	fld	ft6,224(sp)
   123e2:	abcd                	j	129d4 <impure_data+0x6e4>
   123e4:	1234                	addi	a3,sp,296
   123e6:	e66d                	bnez	a2,124d0 <impure_data+0x1e0>
   123e8:	deec                	sw	a1,124(a3)
   123ea:	0005                	c.addi	zero,1
   123ec:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000012a38 <__TMC_END__>:
	...

0000000000012a40 <_global_impure_ptr>:
   12a40:	22f0                	fld	fa2,192(a3)
   12a42:	0001                	nop
   12a44:	0000                	unimp
	...

0000000000012a48 <_impure_ptr>:
   12a48:	22f0                	fld	fa2,192(a3)
   12a4a:	0001                	nop
   12a4c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000012a50 <__bss_start>:
	...

Disassembly of section .bss:

0000000000012a58 <completed.5182>:
	...

0000000000012a60 <object.5187>:
	...

0000000000012a90 <t0.2572>:
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
  10:	1238                	addi	a4,sp,296
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0024                	addi	s1,sp,8
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	002a                	0x2a
   2:	0000                	unimp
   4:	0002                	0x2
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0108                	addi	a0,sp,128
   c:	0000                	unimp
   e:	0000                	unimp
  10:	1238                	addi	a4,sp,296
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	125c                	addi	a5,sp,292
  1a:	0001                	nop
	...
  24:	007a                	0x7a
  26:	0000                	unimp
  28:	00fd                	addi	ra,ra,31
  2a:	0000                	unimp
  2c:	8001                	srli	s0,s0,0x0

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	addi	sp,sp,-32
   2:	1000                	addi	s0,sp,32
   4:	1106                	slli	sp,sp,0x21
   6:	1201                	addi	tp,tp,-32
   8:	0301                	addi	t1,t1,0
   a:	1b0e                	slli	s6,s6,0x23
   c:	250e                	fld	fa0,192(sp)
   e:	130e                	slli	t1,t1,0x23
  10:	0005                	c.addi	zero,1
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00da                	slli	ra,ra,0x16
   2:	0000                	unimp
   4:	0002                	0x2
   6:	0090                	addi	a2,sp,64
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x3352a>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe3520>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa3458>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb354a>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb345a>
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
  7c:	632f6363          	bltu	t5,s2,6a2 <_start-0xfa0e>
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x534de>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	3802                	fld	fa6,32(sp)
  9e:	0112                	slli	sp,sp,0x4
  a0:	0000                	unimp
  a2:	0000                	unimp
  a4:	0300                	addi	s0,sp,384
  a6:	01030123          	sb	a6,2(t1)
  aa:	0409                	addi	s0,s0,2
  ac:	0100                	addi	s0,sp,128
  ae:	04090203          	lb	tp,64(s2)
  b2:	0100                	addi	s0,sp,128
  b4:	04090103          	lb	sp,64(s2)
  b8:	0100                	addi	s0,sp,128
  ba:	04090103          	lb	sp,64(s2)
  be:	0100                	addi	s0,sp,128
  c0:	04090203          	lb	tp,64(s2)
  c4:	0100                	addi	s0,sp,128
  c6:	04090103          	lb	sp,64(s2)
  ca:	0100                	addi	s0,sp,128
  cc:	04090103          	lb	sp,64(s2)
  d0:	0100                	addi	s0,sp,128
  d2:	04090103          	lb	sp,64(s2)
  d6:	0100                	addi	s0,sp,128
  d8:	0409                	addi	s0,s0,2
  da:	0000                	unimp
  dc:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6d6f682f          	0x6d6f682f
   4:	2f65                	addiw	t5,t5,25
   6:	6568                	ld	a0,200(a0)
   8:	6168                	ld	a0,192(a0)
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x2f4c6>
   e:	6f6c6e77          	0x6f6c6e77
  12:	6461                	lui	s0,0x18
  14:	72662f73          	csrrs	t5,0x726,a2
  18:	6565                	lui	a0,0x19
  1a:	6f64                	ld	s1,216(a4)
  1c:	2f6d                	addiw	t5,t5,27
  1e:	6f72                	ld	t5,280(sp)
  20:	74656b63          	bltu	a0,t1,776 <_start-0xf93a>
  24:	632d                	lui	t1,0xb
  26:	6968                	ld	a0,208(a0)
  28:	2f70                	fld	fa2,216(a4)
  2a:	6972                	ld	s2,280(sp)
  2c:	2d766373          	csrrsi	t1,0x2d7,12
  30:	6f74                	ld	a3,216(a4)
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x238f0>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x23490>
  46:	6961                	lui	s2,0x18
  48:	2f6e                	fld	ft10,216(sp)
  4a:	7562                	ld	a0,56(sp)
  4c:	6c69                	lui	s8,0x1a
  4e:	2f64                	fld	fs1,216(a4)
  50:	2e2e                	fld	ft8,200(sp)
  52:	7369722f          	0x7369722f
  56:	672d7663          	bleu	s2,s10,6c2 <_start-0xf9ee>
  5a:	6c2f6363          	bltu	t5,sp,720 <_start-0xf990>
  5e:	6269                	lui	tp,0x1a
  60:	2f636367          	0x2f636367
  64:	666e6f63          	bltu	t3,t1,6e2 <_start-0xf9ce>
  68:	6769                	lui	a4,0x1a
  6a:	7369722f          	0x7369722f
  6e:	6d2f7663          	bleu	s2,t5,73a <_start-0xf976>
  72:	6c75                	lui	s8,0x1d
  74:	6964                	ld	s1,208(a0)
  76:	00532e33          	slt	t3,t1,t0
  7a:	6d6f682f          	0x6d6f682f
  7e:	2f65                	addiw	t5,t5,25
  80:	6568                	ld	a0,200(a0)
  82:	6168                	ld	a0,192(a0)
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x2f540>
  88:	6f6c6e77          	0x6f6c6e77
  8c:	6461                	lui	s0,0x18
  8e:	72662f73          	csrrs	t5,0x726,a2
  92:	6565                	lui	a0,0x19
  94:	6f64                	ld	s1,216(a4)
  96:	2f6d                	addiw	t5,t5,27
  98:	6f72                	ld	t5,280(sp)
  9a:	74656b63          	bltu	a0,t1,7f0 <_start-0xf8c0>
  9e:	632d                	lui	t1,0xb
  a0:	6968                	ld	a0,208(a0)
  a2:	2f70                	fld	fa2,216(a4)
  a4:	6972                	ld	s2,280(sp)
  a6:	2d766373          	csrrsi	t1,0x2d7,12
  aa:	6f74                	ld	a3,216(a4)
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x2396a>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x2350a>
  c0:	6961                	lui	s2,0x18
  c2:	2f6e                	fld	ft10,216(sp)
  c4:	7562                	ld	a0,56(sp)
  c6:	6c69                	lui	s8,0x1a
  c8:	2f64                	fld	fs1,216(a4)
  ca:	7562                	ld	a0,56(sp)
  cc:	6c69                	lui	s8,0x1a
  ce:	2d64                	fld	fs1,216(a0)
  d0:	2d636367          	0x2d636367
  d4:	656e                	ld	a0,216(sp)
  d6:	62696c77          	0x62696c77
  da:	732d                	lui	t1,0xfffeb
  dc:	6174                	ld	a3,192(a0)
  de:	2f326567          	0x2f326567
  e2:	6972                	ld	s2,280(sp)
  e4:	36766373          	csrrsi	t1,0x367,12
  e8:	2d34                	fld	fa3,88(a0)
  ea:	6e75                	lui	t3,0x1d
  ec:	776f6e6b          	0x776f6e6b
  f0:	2d6e                	fld	fs10,216(sp)
  f2:	6c65                	lui	s8,0x19
  f4:	2f66                	fld	ft10,88(sp)
  f6:	696c                	ld	a1,208(a0)
  f8:	6762                	ld	a4,24(sp)
  fa:	47006363          	bltu	zero,a6,560 <_start-0xfb50>
  fe:	554e                	lw	a0,240(sp)
 100:	4120                	lw	s0,64(a0)
 102:	2e322053          	0x2e322053
 106:	3932                	fld	fs2,296(sp)
 108:	302e                	fld	ft0,232(sp)
	...
