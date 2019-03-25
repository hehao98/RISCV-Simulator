
quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	12818193          	addi	gp,gp,296 # 131d8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 129f0 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 12a40 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	009000ef          	jal	ra,108d0 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	6e450513          	addi	a0,a0,1764 # 107b0 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	688080e7          	jalr	1672(ra) # 1075c <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	74c080e7          	jalr	1868(ra) # 10828 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	30c000ef          	jal	ra,103fc <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	68030067          	jr	1664(t1) # 10774 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00013537          	lui	a0,0x13
   10104:	000137b7          	lui	a5,0x13
   10108:	9d850713          	addi	a4,a0,-1576 # 129d8 <__TMC_END__>
   1010c:	9d878793          	addi	a5,a5,-1576 # 129d8 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	9d850513          	addi	a0,a0,-1576
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000137b7          	lui	a5,0x13
   10130:	00013537          	lui	a0,0x13
   10134:	9d878593          	addi	a1,a5,-1576 # 129d8 <__TMC_END__>
   10138:	9d850793          	addi	a5,a0,-1576 # 129d8 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	9d850513          	addi	a0,a0,-1576
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8201c703          	lbu	a4,-2016(gp) # 129f8 <completed.5182>
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
   10198:	27850513          	addi	a0,a0,632 # 11278 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18023          	sb	a5,-2016(gp) # 129f8 <completed.5182>
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
   101d8:	a0058593          	addi	a1,a1,-1536 # 12a00 <object.5187>
   101dc:	27850513          	addi	a0,a0,632 # 11278 <__EH_FRAME_BEGIN__>
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
   10418:	2507b703          	ld	a4,592(a5) # 11250 <__muldi3+0x7c>
   1041c:	fae43423          	sd	a4,-88(s0)
   10420:	25078713          	addi	a4,a5,592
   10424:	00873703          	ld	a4,8(a4)
   10428:	fae43823          	sd	a4,-80(s0)
   1042c:	25078713          	addi	a4,a5,592
   10430:	01073703          	ld	a4,16(a4)
   10434:	fae43c23          	sd	a4,-72(s0)
   10438:	25078713          	addi	a4,a5,592
   1043c:	01873703          	ld	a4,24(a4)
   10440:	fce43023          	sd	a4,-64(s0)
   10444:	25078793          	addi	a5,a5,592
   10448:	0207b783          	ld	a5,32(a5)
   1044c:	fcf43423          	sd	a5,-56(s0)
   10450:	000117b7          	lui	a5,0x11
   10454:	20078513          	addi	a0,a5,512 # 11200 <__muldi3+0x2c>
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
   10488:	21078513          	addi	a0,a5,528 # 11210 <__muldi3+0x3c>
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
   104b4:	21878513          	addi	a0,a5,536 # 11218 <__muldi3+0x44>
   104b8:	22c000ef          	jal	ra,106e4 <print_s>
   104bc:	000117b7          	lui	a5,0x11
   104c0:	22078513          	addi	a0,a5,544 # 11220 <__muldi3+0x4c>
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
   10518:	21078513          	addi	a0,a5,528 # 11210 <__muldi3+0x3c>
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
   10544:	21878513          	addi	a0,a5,536 # 11218 <__muldi3+0x44>
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
   105a0:	23078513          	addi	a0,a5,560 # 11230 <__muldi3+0x5c>
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
   105d4:	21078513          	addi	a0,a5,528 # 11210 <__muldi3+0x3c>
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
   10600:	21878513          	addi	a0,a5,536 # 11218 <__muldi3+0x44>
   10604:	0e0000ef          	jal	ra,106e4 <print_s>
   10608:	000117b7          	lui	a5,0x11
   1060c:	24078513          	addi	a0,a5,576 # 11240 <__muldi3+0x6c>
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
   10664:	21078513          	addi	a0,a5,528 # 11210 <__muldi3+0x3c>
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
   10690:	21878513          	addi	a0,a5,536 # 11218 <__muldi3+0x44>
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

000000000001075c <atexit>:
   1075c:	00050593          	mv	a1,a0
   10760:	00000693          	li	a3,0
   10764:	00000613          	li	a2,0
   10768:	00000513          	li	a0,0
   1076c:	2400006f          	j	109ac <__register_exitproc>
   10770:	0000                	unimp
	...

0000000000010774 <exit>:
   10774:	ff010113          	addi	sp,sp,-16
   10778:	00000593          	li	a1,0
   1077c:	00813023          	sd	s0,0(sp)
   10780:	00113423          	sd	ra,8(sp)
   10784:	00050413          	mv	s0,a0
   10788:	2b0000ef          	jal	ra,10a38 <__call_exitprocs>
   1078c:	000137b7          	lui	a5,0x13
   10790:	9e07b503          	ld	a0,-1568(a5) # 129e0 <_global_impure_ptr>
   10794:	05853783          	ld	a5,88(a0)
   10798:	00078463          	beqz	a5,107a0 <exit+0x2c>
   1079c:	000780e7          	jalr	a5
   107a0:	00040513          	mv	a0,s0
   107a4:	00001097          	auipc	ra,0x1
   107a8:	9f8080e7          	jalr	-1544(ra) # 1119c <_exit>
   107ac:	0000                	unimp
	...

00000000000107b0 <__libc_fini_array>:
   107b0:	fe010113          	addi	sp,sp,-32
   107b4:	000127b7          	lui	a5,0x12
   107b8:	00012737          	lui	a4,0x12
   107bc:	00813823          	sd	s0,16(sp)
   107c0:	28870713          	addi	a4,a4,648 # 12288 <__init_array_end>
   107c4:	29078413          	addi	s0,a5,656 # 12290 <__fini_array_end>
   107c8:	40e40433          	sub	s0,s0,a4
   107cc:	00913423          	sd	s1,8(sp)
   107d0:	01213023          	sd	s2,0(sp)
   107d4:	00113c23          	sd	ra,24(sp)
   107d8:	40345413          	srai	s0,s0,0x3
   107dc:	00000493          	li	s1,0
   107e0:	29078913          	addi	s2,a5,656
   107e4:	02941063          	bne	s0,s1,10804 <__libc_fini_array+0x54>
   107e8:	01013403          	ld	s0,16(sp)
   107ec:	01813083          	ld	ra,24(sp)
   107f0:	00813483          	ld	s1,8(sp)
   107f4:	00013903          	ld	s2,0(sp)
   107f8:	02010113          	addi	sp,sp,32
   107fc:	00000317          	auipc	t1,0x0
   10800:	90030067          	jr	-1792(t1) # 100fc <_fini>
   10804:	ff800593          	li	a1,-8
   10808:	00048513          	mv	a0,s1
   1080c:	1c9000ef          	jal	ra,111d4 <__muldi3>
   10810:	00a90533          	add	a0,s2,a0
   10814:	ff853783          	ld	a5,-8(a0)
   10818:	00148493          	addi	s1,s1,1
   1081c:	000780e7          	jalr	a5
   10820:	fc5ff06f          	j	107e4 <__libc_fini_array+0x34>
   10824:	0000                	unimp
	...

0000000000010828 <__libc_init_array>:
   10828:	fe010113          	addi	sp,sp,-32
   1082c:	00813823          	sd	s0,16(sp)
   10830:	00913423          	sd	s1,8(sp)
   10834:	00012437          	lui	s0,0x12
   10838:	000124b7          	lui	s1,0x12
   1083c:	27c48793          	addi	a5,s1,636 # 1227c <__preinit_array_end>
   10840:	27c40413          	addi	s0,s0,636 # 1227c <__preinit_array_end>
   10844:	40f40433          	sub	s0,s0,a5
   10848:	01213023          	sd	s2,0(sp)
   1084c:	00113c23          	sd	ra,24(sp)
   10850:	40345413          	srai	s0,s0,0x3
   10854:	27c48493          	addi	s1,s1,636
   10858:	00000913          	li	s2,0
   1085c:	04891463          	bne	s2,s0,108a4 <__libc_init_array+0x7c>
   10860:	000124b7          	lui	s1,0x12
   10864:	00000097          	auipc	ra,0x0
   10868:	898080e7          	jalr	-1896(ra) # 100fc <_fini>
   1086c:	00012437          	lui	s0,0x12
   10870:	28048793          	addi	a5,s1,640 # 12280 <__frame_dummy_init_array_entry>
   10874:	28840413          	addi	s0,s0,648 # 12288 <__init_array_end>
   10878:	40f40433          	sub	s0,s0,a5
   1087c:	40345413          	srai	s0,s0,0x3
   10880:	28048493          	addi	s1,s1,640
   10884:	00000913          	li	s2,0
   10888:	02891863          	bne	s2,s0,108b8 <__libc_init_array+0x90>
   1088c:	01813083          	ld	ra,24(sp)
   10890:	01013403          	ld	s0,16(sp)
   10894:	00813483          	ld	s1,8(sp)
   10898:	00013903          	ld	s2,0(sp)
   1089c:	02010113          	addi	sp,sp,32
   108a0:	00008067          	ret
   108a4:	0004b783          	ld	a5,0(s1)
   108a8:	00190913          	addi	s2,s2,1
   108ac:	00848493          	addi	s1,s1,8
   108b0:	000780e7          	jalr	a5
   108b4:	fa9ff06f          	j	1085c <__libc_init_array+0x34>
   108b8:	0004b783          	ld	a5,0(s1)
   108bc:	00190913          	addi	s2,s2,1
   108c0:	00848493          	addi	s1,s1,8
   108c4:	000780e7          	jalr	a5
   108c8:	fc1ff06f          	j	10888 <__libc_init_array+0x60>
   108cc:	0000                	unimp
	...

00000000000108d0 <memset>:
   108d0:	00f00813          	li	a6,15
   108d4:	00050713          	mv	a4,a0
   108d8:	02c87a63          	bleu	a2,a6,1090c <memset+0x3c>
   108dc:	00f77793          	andi	a5,a4,15
   108e0:	0a079063          	bnez	a5,10980 <memset+0xb0>
   108e4:	06059e63          	bnez	a1,10960 <memset+0x90>
   108e8:	ff067693          	andi	a3,a2,-16
   108ec:	00f67613          	andi	a2,a2,15
   108f0:	00e686b3          	add	a3,a3,a4
   108f4:	00b73023          	sd	a1,0(a4)
   108f8:	00b73423          	sd	a1,8(a4)
   108fc:	01070713          	addi	a4,a4,16
   10900:	fed76ae3          	bltu	a4,a3,108f4 <memset+0x24>
   10904:	00061463          	bnez	a2,1090c <memset+0x3c>
   10908:	00008067          	ret
   1090c:	40c806b3          	sub	a3,a6,a2
   10910:	00269693          	slli	a3,a3,0x2
   10914:	00000297          	auipc	t0,0x0
   10918:	005686b3          	add	a3,a3,t0
   1091c:	00c68067          	jr	12(a3)
   10920:	00b70723          	sb	a1,14(a4)
   10924:	00b706a3          	sb	a1,13(a4)
   10928:	00b70623          	sb	a1,12(a4)
   1092c:	00b705a3          	sb	a1,11(a4)
   10930:	00b70523          	sb	a1,10(a4)
   10934:	00b704a3          	sb	a1,9(a4)
   10938:	00b70423          	sb	a1,8(a4)
   1093c:	00b703a3          	sb	a1,7(a4)
   10940:	00b70323          	sb	a1,6(a4)
   10944:	00b702a3          	sb	a1,5(a4)
   10948:	00b70223          	sb	a1,4(a4)
   1094c:	00b701a3          	sb	a1,3(a4)
   10950:	00b70123          	sb	a1,2(a4)
   10954:	00b700a3          	sb	a1,1(a4)
   10958:	00b70023          	sb	a1,0(a4)
   1095c:	00008067          	ret
   10960:	0ff5f593          	andi	a1,a1,255
   10964:	00859693          	slli	a3,a1,0x8
   10968:	00d5e5b3          	or	a1,a1,a3
   1096c:	01059693          	slli	a3,a1,0x10
   10970:	00d5e5b3          	or	a1,a1,a3
   10974:	02059693          	slli	a3,a1,0x20
   10978:	00d5e5b3          	or	a1,a1,a3
   1097c:	f6dff06f          	j	108e8 <memset+0x18>
   10980:	00279693          	slli	a3,a5,0x2
   10984:	00000297          	auipc	t0,0x0
   10988:	005686b3          	add	a3,a3,t0
   1098c:	00008293          	mv	t0,ra
   10990:	f98680e7          	jalr	-104(a3)
   10994:	00028093          	mv	ra,t0
   10998:	ff078793          	addi	a5,a5,-16
   1099c:	40f70733          	sub	a4,a4,a5
   109a0:	00f60633          	add	a2,a2,a5
   109a4:	f6c874e3          	bleu	a2,a6,1090c <memset+0x3c>
   109a8:	f3dff06f          	j	108e4 <memset+0x14>

00000000000109ac <__register_exitproc>:
   109ac:	000137b7          	lui	a5,0x13
   109b0:	9e07b703          	ld	a4,-1568(a5) # 129e0 <_global_impure_ptr>
   109b4:	00050313          	mv	t1,a0
   109b8:	1f873783          	ld	a5,504(a4)
   109bc:	00079663          	bnez	a5,109c8 <__register_exitproc+0x1c>
   109c0:	20070793          	addi	a5,a4,512
   109c4:	1ef73c23          	sd	a5,504(a4)
   109c8:	0087a703          	lw	a4,8(a5)
   109cc:	01f00813          	li	a6,31
   109d0:	fff00513          	li	a0,-1
   109d4:	04e84e63          	blt	a6,a4,10a30 <__register_exitproc+0x84>
   109d8:	02030e63          	beqz	t1,10a14 <__register_exitproc+0x68>
   109dc:	00371813          	slli	a6,a4,0x3
   109e0:	01078833          	add	a6,a5,a6
   109e4:	10c83823          	sd	a2,272(a6)
   109e8:	3107a883          	lw	a7,784(a5)
   109ec:	00100613          	li	a2,1
   109f0:	00e6163b          	sllw	a2,a2,a4
   109f4:	00c8e8b3          	or	a7,a7,a2
   109f8:	3117a823          	sw	a7,784(a5)
   109fc:	20d83823          	sd	a3,528(a6)
   10a00:	00200693          	li	a3,2
   10a04:	00d31863          	bne	t1,a3,10a14 <__register_exitproc+0x68>
   10a08:	3147a683          	lw	a3,788(a5)
   10a0c:	00c6e633          	or	a2,a3,a2
   10a10:	30c7aa23          	sw	a2,788(a5)
   10a14:	0017069b          	addiw	a3,a4,1
   10a18:	00270713          	addi	a4,a4,2
   10a1c:	00371713          	slli	a4,a4,0x3
   10a20:	00d7a423          	sw	a3,8(a5)
   10a24:	00e787b3          	add	a5,a5,a4
   10a28:	00b7b023          	sd	a1,0(a5)
   10a2c:	00000513          	li	a0,0
   10a30:	00008067          	ret
   10a34:	0000                	unimp
	...

0000000000010a38 <__call_exitprocs>:
   10a38:	fb010113          	addi	sp,sp,-80
   10a3c:	000137b7          	lui	a5,0x13
   10a40:	03313423          	sd	s3,40(sp)
   10a44:	9e07b983          	ld	s3,-1568(a5) # 129e0 <_global_impure_ptr>
   10a48:	03413023          	sd	s4,32(sp)
   10a4c:	01513c23          	sd	s5,24(sp)
   10a50:	01613823          	sd	s6,16(sp)
   10a54:	04113423          	sd	ra,72(sp)
   10a58:	04813023          	sd	s0,64(sp)
   10a5c:	02913c23          	sd	s1,56(sp)
   10a60:	03213823          	sd	s2,48(sp)
   10a64:	01713423          	sd	s7,8(sp)
   10a68:	00050a93          	mv	s5,a0
   10a6c:	00058a13          	mv	s4,a1
   10a70:	00100b13          	li	s6,1
   10a74:	1f89b403          	ld	s0,504(s3)
   10a78:	00040c63          	beqz	s0,10a90 <__call_exitprocs+0x58>
   10a7c:	00842483          	lw	s1,8(s0)
   10a80:	fff4849b          	addiw	s1,s1,-1
   10a84:	00349913          	slli	s2,s1,0x3
   10a88:	01240933          	add	s2,s0,s2
   10a8c:	0204d863          	bgez	s1,10abc <__call_exitprocs+0x84>
   10a90:	04813083          	ld	ra,72(sp)
   10a94:	04013403          	ld	s0,64(sp)
   10a98:	03813483          	ld	s1,56(sp)
   10a9c:	03013903          	ld	s2,48(sp)
   10aa0:	02813983          	ld	s3,40(sp)
   10aa4:	02013a03          	ld	s4,32(sp)
   10aa8:	01813a83          	ld	s5,24(sp)
   10aac:	01013b03          	ld	s6,16(sp)
   10ab0:	00813b83          	ld	s7,8(sp)
   10ab4:	05010113          	addi	sp,sp,80
   10ab8:	00008067          	ret
   10abc:	000a0c63          	beqz	s4,10ad4 <__call_exitprocs+0x9c>
   10ac0:	21093783          	ld	a5,528(s2)
   10ac4:	01478863          	beq	a5,s4,10ad4 <__call_exitprocs+0x9c>
   10ac8:	fff4849b          	addiw	s1,s1,-1
   10acc:	ff890913          	addi	s2,s2,-8
   10ad0:	fbdff06f          	j	10a8c <__call_exitprocs+0x54>
   10ad4:	00842783          	lw	a5,8(s0)
   10ad8:	01093683          	ld	a3,16(s2)
   10adc:	fff7879b          	addiw	a5,a5,-1
   10ae0:	02979e63          	bne	a5,s1,10b1c <__call_exitprocs+0xe4>
   10ae4:	00942423          	sw	s1,8(s0)
   10ae8:	fe0680e3          	beqz	a3,10ac8 <__call_exitprocs+0x90>
   10aec:	31042703          	lw	a4,784(s0)
   10af0:	009b163b          	sllw	a2,s6,s1
   10af4:	00842b83          	lw	s7,8(s0)
   10af8:	00c77733          	and	a4,a4,a2
   10afc:	0007071b          	sext.w	a4,a4
   10b00:	02071263          	bnez	a4,10b24 <__call_exitprocs+0xec>
   10b04:	000680e7          	jalr	a3
   10b08:	00842703          	lw	a4,8(s0)
   10b0c:	1f89b783          	ld	a5,504(s3)
   10b10:	f77712e3          	bne	a4,s7,10a74 <__call_exitprocs+0x3c>
   10b14:	faf40ae3          	beq	s0,a5,10ac8 <__call_exitprocs+0x90>
   10b18:	f5dff06f          	j	10a74 <__call_exitprocs+0x3c>
   10b1c:	00093823          	sd	zero,16(s2)
   10b20:	fc9ff06f          	j	10ae8 <__call_exitprocs+0xb0>
   10b24:	31442783          	lw	a5,788(s0)
   10b28:	11093583          	ld	a1,272(s2)
   10b2c:	00c7f7b3          	and	a5,a5,a2
   10b30:	0007879b          	sext.w	a5,a5
   10b34:	00079863          	bnez	a5,10b44 <__call_exitprocs+0x10c>
   10b38:	000a8513          	mv	a0,s5
   10b3c:	000680e7          	jalr	a3
   10b40:	fc9ff06f          	j	10b08 <__call_exitprocs+0xd0>
   10b44:	00058513          	mv	a0,a1
   10b48:	000680e7          	jalr	a3
   10b4c:	fbdff06f          	j	10b08 <__call_exitprocs+0xd0>
   10b50:	0000                	unimp
	...

0000000000010b54 <conv_stat>:
   10b54:	0005b783          	ld	a5,0(a1)
   10b58:	00f51023          	sh	a5,0(a0)
   10b5c:	0085b783          	ld	a5,8(a1)
   10b60:	00f51123          	sh	a5,2(a0)
   10b64:	0105a783          	lw	a5,16(a1)
   10b68:	00f52223          	sw	a5,4(a0)
   10b6c:	0145a783          	lw	a5,20(a1)
   10b70:	00f51423          	sh	a5,8(a0)
   10b74:	0185a783          	lw	a5,24(a1)
   10b78:	00f51523          	sh	a5,10(a0)
   10b7c:	01c5a783          	lw	a5,28(a1)
   10b80:	00f51623          	sh	a5,12(a0)
   10b84:	0205b783          	ld	a5,32(a1)
   10b88:	00f51723          	sh	a5,14(a0)
   10b8c:	0305b783          	ld	a5,48(a1)
   10b90:	00f53823          	sd	a5,16(a0)
   10b94:	0405b783          	ld	a5,64(a1)
   10b98:	04f53823          	sd	a5,80(a0)
   10b9c:	0385a783          	lw	a5,56(a1)
   10ba0:	04f53423          	sd	a5,72(a0)
   10ba4:	0485b783          	ld	a5,72(a1)
   10ba8:	00f53c23          	sd	a5,24(a0)
   10bac:	0585b783          	ld	a5,88(a1)
   10bb0:	02f53423          	sd	a5,40(a0)
   10bb4:	0685b783          	ld	a5,104(a1)
   10bb8:	02f53c23          	sd	a5,56(a0)
   10bbc:	00008067          	ret

0000000000010bc0 <__syscall_error>:
   10bc0:	ff010113          	addi	sp,sp,-16
   10bc4:	00813023          	sd	s0,0(sp)
   10bc8:	00113423          	sd	ra,8(sp)
   10bcc:	00050413          	mv	s0,a0
   10bd0:	00000097          	auipc	ra,0x0
   10bd4:	5f8080e7          	jalr	1528(ra) # 111c8 <__errno>
   10bd8:	408007bb          	negw	a5,s0
   10bdc:	00813083          	ld	ra,8(sp)
   10be0:	00013403          	ld	s0,0(sp)
   10be4:	00f52023          	sw	a5,0(a0)
   10be8:	fff00513          	li	a0,-1
   10bec:	01010113          	addi	sp,sp,16
   10bf0:	00008067          	ret

0000000000010bf4 <__internal_syscall>:
   10bf4:	00050893          	mv	a7,a0
   10bf8:	00058513          	mv	a0,a1
   10bfc:	00060593          	mv	a1,a2
   10c00:	00068613          	mv	a2,a3
   10c04:	00070693          	mv	a3,a4
   10c08:	00000073          	ecall
   10c0c:	00055663          	bgez	a0,10c18 <__internal_syscall+0x24>
   10c10:	00000317          	auipc	t1,0x0
   10c14:	fb030067          	jr	-80(t1) # 10bc0 <__syscall_error>
   10c18:	00008067          	ret

0000000000010c1c <open>:
   10c1c:	ff010113          	addi	sp,sp,-16
   10c20:	00060693          	mv	a3,a2
   10c24:	00000713          	li	a4,0
   10c28:	00058613          	mv	a2,a1
   10c2c:	00050593          	mv	a1,a0
   10c30:	40000513          	li	a0,1024
   10c34:	00113423          	sd	ra,8(sp)
   10c38:	00000097          	auipc	ra,0x0
   10c3c:	fbc080e7          	jalr	-68(ra) # 10bf4 <__internal_syscall>
   10c40:	00813083          	ld	ra,8(sp)
   10c44:	0005051b          	sext.w	a0,a0
   10c48:	01010113          	addi	sp,sp,16
   10c4c:	00008067          	ret

0000000000010c50 <openat>:
   10c50:	ff010113          	addi	sp,sp,-16
   10c54:	00068713          	mv	a4,a3
   10c58:	00060693          	mv	a3,a2
   10c5c:	00058613          	mv	a2,a1
   10c60:	00050593          	mv	a1,a0
   10c64:	03800513          	li	a0,56
   10c68:	00113423          	sd	ra,8(sp)
   10c6c:	f89ff0ef          	jal	ra,10bf4 <__internal_syscall>
   10c70:	00813083          	ld	ra,8(sp)
   10c74:	0005051b          	sext.w	a0,a0
   10c78:	01010113          	addi	sp,sp,16
   10c7c:	00008067          	ret

0000000000010c80 <lseek>:
   10c80:	00060693          	mv	a3,a2
   10c84:	00000713          	li	a4,0
   10c88:	00058613          	mv	a2,a1
   10c8c:	00050593          	mv	a1,a0
   10c90:	03e00513          	li	a0,62
   10c94:	00000317          	auipc	t1,0x0
   10c98:	f6030067          	jr	-160(t1) # 10bf4 <__internal_syscall>

0000000000010c9c <read>:
   10c9c:	00060693          	mv	a3,a2
   10ca0:	00000713          	li	a4,0
   10ca4:	00058613          	mv	a2,a1
   10ca8:	00050593          	mv	a1,a0
   10cac:	03f00513          	li	a0,63
   10cb0:	f45ff06f          	j	10bf4 <__internal_syscall>

0000000000010cb4 <write>:
   10cb4:	00060693          	mv	a3,a2
   10cb8:	00000713          	li	a4,0
   10cbc:	00058613          	mv	a2,a1
   10cc0:	00050593          	mv	a1,a0
   10cc4:	04000513          	li	a0,64
   10cc8:	00000317          	auipc	t1,0x0
   10ccc:	f2c30067          	jr	-212(t1) # 10bf4 <__internal_syscall>

0000000000010cd0 <fstat>:
   10cd0:	f6010113          	addi	sp,sp,-160
   10cd4:	08913423          	sd	s1,136(sp)
   10cd8:	00010613          	mv	a2,sp
   10cdc:	00058493          	mv	s1,a1
   10ce0:	00000713          	li	a4,0
   10ce4:	00050593          	mv	a1,a0
   10ce8:	00000693          	li	a3,0
   10cec:	05000513          	li	a0,80
   10cf0:	08113c23          	sd	ra,152(sp)
   10cf4:	08813823          	sd	s0,144(sp)
   10cf8:	efdff0ef          	jal	ra,10bf4 <__internal_syscall>
   10cfc:	00050413          	mv	s0,a0
   10d00:	00010593          	mv	a1,sp
   10d04:	00048513          	mv	a0,s1
   10d08:	e4dff0ef          	jal	ra,10b54 <conv_stat>
   10d0c:	0004051b          	sext.w	a0,s0
   10d10:	09813083          	ld	ra,152(sp)
   10d14:	09013403          	ld	s0,144(sp)
   10d18:	08813483          	ld	s1,136(sp)
   10d1c:	0a010113          	addi	sp,sp,160
   10d20:	00008067          	ret

0000000000010d24 <stat>:
   10d24:	f6010113          	addi	sp,sp,-160
   10d28:	08913423          	sd	s1,136(sp)
   10d2c:	00010613          	mv	a2,sp
   10d30:	00058493          	mv	s1,a1
   10d34:	00000713          	li	a4,0
   10d38:	00050593          	mv	a1,a0
   10d3c:	00000693          	li	a3,0
   10d40:	40e00513          	li	a0,1038
   10d44:	08113c23          	sd	ra,152(sp)
   10d48:	08813823          	sd	s0,144(sp)
   10d4c:	00000097          	auipc	ra,0x0
   10d50:	ea8080e7          	jalr	-344(ra) # 10bf4 <__internal_syscall>
   10d54:	00050413          	mv	s0,a0
   10d58:	00010593          	mv	a1,sp
   10d5c:	00048513          	mv	a0,s1
   10d60:	00000097          	auipc	ra,0x0
   10d64:	df4080e7          	jalr	-524(ra) # 10b54 <conv_stat>
   10d68:	0004051b          	sext.w	a0,s0
   10d6c:	09813083          	ld	ra,152(sp)
   10d70:	09013403          	ld	s0,144(sp)
   10d74:	08813483          	ld	s1,136(sp)
   10d78:	0a010113          	addi	sp,sp,160
   10d7c:	00008067          	ret

0000000000010d80 <lstat>:
   10d80:	f6010113          	addi	sp,sp,-160
   10d84:	08913423          	sd	s1,136(sp)
   10d88:	00010613          	mv	a2,sp
   10d8c:	00058493          	mv	s1,a1
   10d90:	00000713          	li	a4,0
   10d94:	00050593          	mv	a1,a0
   10d98:	00000693          	li	a3,0
   10d9c:	40f00513          	li	a0,1039
   10da0:	08113c23          	sd	ra,152(sp)
   10da4:	08813823          	sd	s0,144(sp)
   10da8:	e4dff0ef          	jal	ra,10bf4 <__internal_syscall>
   10dac:	00050413          	mv	s0,a0
   10db0:	00010593          	mv	a1,sp
   10db4:	00048513          	mv	a0,s1
   10db8:	d9dff0ef          	jal	ra,10b54 <conv_stat>
   10dbc:	0004051b          	sext.w	a0,s0
   10dc0:	09813083          	ld	ra,152(sp)
   10dc4:	09013403          	ld	s0,144(sp)
   10dc8:	08813483          	ld	s1,136(sp)
   10dcc:	0a010113          	addi	sp,sp,160
   10dd0:	00008067          	ret

0000000000010dd4 <fstatat>:
   10dd4:	f6010113          	addi	sp,sp,-160
   10dd8:	08913423          	sd	s1,136(sp)
   10ddc:	00068713          	mv	a4,a3
   10de0:	00060493          	mv	s1,a2
   10de4:	00010693          	mv	a3,sp
   10de8:	00058613          	mv	a2,a1
   10dec:	00050593          	mv	a1,a0
   10df0:	04f00513          	li	a0,79
   10df4:	08113c23          	sd	ra,152(sp)
   10df8:	08813823          	sd	s0,144(sp)
   10dfc:	00000097          	auipc	ra,0x0
   10e00:	df8080e7          	jalr	-520(ra) # 10bf4 <__internal_syscall>
   10e04:	00050413          	mv	s0,a0
   10e08:	00010593          	mv	a1,sp
   10e0c:	00048513          	mv	a0,s1
   10e10:	00000097          	auipc	ra,0x0
   10e14:	d44080e7          	jalr	-700(ra) # 10b54 <conv_stat>
   10e18:	0004051b          	sext.w	a0,s0
   10e1c:	09813083          	ld	ra,152(sp)
   10e20:	09013403          	ld	s0,144(sp)
   10e24:	08813483          	ld	s1,136(sp)
   10e28:	0a010113          	addi	sp,sp,160
   10e2c:	00008067          	ret

0000000000010e30 <access>:
   10e30:	ff010113          	addi	sp,sp,-16
   10e34:	00058613          	mv	a2,a1
   10e38:	00000713          	li	a4,0
   10e3c:	00050593          	mv	a1,a0
   10e40:	00000693          	li	a3,0
   10e44:	40900513          	li	a0,1033
   10e48:	00113423          	sd	ra,8(sp)
   10e4c:	da9ff0ef          	jal	ra,10bf4 <__internal_syscall>
   10e50:	00813083          	ld	ra,8(sp)
   10e54:	0005051b          	sext.w	a0,a0
   10e58:	01010113          	addi	sp,sp,16
   10e5c:	00008067          	ret

0000000000010e60 <faccessat>:
   10e60:	ff010113          	addi	sp,sp,-16
   10e64:	00068713          	mv	a4,a3
   10e68:	00060693          	mv	a3,a2
   10e6c:	00058613          	mv	a2,a1
   10e70:	00050593          	mv	a1,a0
   10e74:	03000513          	li	a0,48
   10e78:	00113423          	sd	ra,8(sp)
   10e7c:	00000097          	auipc	ra,0x0
   10e80:	d78080e7          	jalr	-648(ra) # 10bf4 <__internal_syscall>
   10e84:	00813083          	ld	ra,8(sp)
   10e88:	0005051b          	sext.w	a0,a0
   10e8c:	01010113          	addi	sp,sp,16
   10e90:	00008067          	ret

0000000000010e94 <close>:
   10e94:	ff010113          	addi	sp,sp,-16
   10e98:	00050593          	mv	a1,a0
   10e9c:	00000713          	li	a4,0
   10ea0:	00000693          	li	a3,0
   10ea4:	00000613          	li	a2,0
   10ea8:	03900513          	li	a0,57
   10eac:	00113423          	sd	ra,8(sp)
   10eb0:	d45ff0ef          	jal	ra,10bf4 <__internal_syscall>
   10eb4:	00813083          	ld	ra,8(sp)
   10eb8:	0005051b          	sext.w	a0,a0
   10ebc:	01010113          	addi	sp,sp,16
   10ec0:	00008067          	ret

0000000000010ec4 <link>:
   10ec4:	ff010113          	addi	sp,sp,-16
   10ec8:	00058613          	mv	a2,a1
   10ecc:	00000713          	li	a4,0
   10ed0:	00050593          	mv	a1,a0
   10ed4:	00000693          	li	a3,0
   10ed8:	40100513          	li	a0,1025
   10edc:	00113423          	sd	ra,8(sp)
   10ee0:	00000097          	auipc	ra,0x0
   10ee4:	d14080e7          	jalr	-748(ra) # 10bf4 <__internal_syscall>
   10ee8:	00813083          	ld	ra,8(sp)
   10eec:	0005051b          	sext.w	a0,a0
   10ef0:	01010113          	addi	sp,sp,16
   10ef4:	00008067          	ret

0000000000010ef8 <unlink>:
   10ef8:	ff010113          	addi	sp,sp,-16
   10efc:	00050593          	mv	a1,a0
   10f00:	00000713          	li	a4,0
   10f04:	00000693          	li	a3,0
   10f08:	00000613          	li	a2,0
   10f0c:	40200513          	li	a0,1026
   10f10:	00113423          	sd	ra,8(sp)
   10f14:	ce1ff0ef          	jal	ra,10bf4 <__internal_syscall>
   10f18:	00813083          	ld	ra,8(sp)
   10f1c:	0005051b          	sext.w	a0,a0
   10f20:	01010113          	addi	sp,sp,16
   10f24:	00008067          	ret

0000000000010f28 <execve>:
   10f28:	ff010113          	addi	sp,sp,-16
   10f2c:	00113423          	sd	ra,8(sp)
   10f30:	00000097          	auipc	ra,0x0
   10f34:	298080e7          	jalr	664(ra) # 111c8 <__errno>
   10f38:	00813083          	ld	ra,8(sp)
   10f3c:	00c00793          	li	a5,12
   10f40:	00f52023          	sw	a5,0(a0)
   10f44:	fff00513          	li	a0,-1
   10f48:	01010113          	addi	sp,sp,16
   10f4c:	00008067          	ret

0000000000010f50 <fork>:
   10f50:	ff010113          	addi	sp,sp,-16
   10f54:	00113423          	sd	ra,8(sp)
   10f58:	270000ef          	jal	ra,111c8 <__errno>
   10f5c:	00813083          	ld	ra,8(sp)
   10f60:	00b00793          	li	a5,11
   10f64:	00f52023          	sw	a5,0(a0)
   10f68:	fff00513          	li	a0,-1
   10f6c:	01010113          	addi	sp,sp,16
   10f70:	00008067          	ret

0000000000010f74 <getpid>:
   10f74:	00100513          	li	a0,1
   10f78:	00008067          	ret

0000000000010f7c <kill>:
   10f7c:	ff010113          	addi	sp,sp,-16
   10f80:	00113423          	sd	ra,8(sp)
   10f84:	244000ef          	jal	ra,111c8 <__errno>
   10f88:	00813083          	ld	ra,8(sp)
   10f8c:	01600793          	li	a5,22
   10f90:	00f52023          	sw	a5,0(a0)
   10f94:	fff00513          	li	a0,-1
   10f98:	01010113          	addi	sp,sp,16
   10f9c:	00008067          	ret

0000000000010fa0 <wait>:
   10fa0:	ff010113          	addi	sp,sp,-16
   10fa4:	00113423          	sd	ra,8(sp)
   10fa8:	00000097          	auipc	ra,0x0
   10fac:	220080e7          	jalr	544(ra) # 111c8 <__errno>
   10fb0:	00813083          	ld	ra,8(sp)
   10fb4:	00a00793          	li	a5,10
   10fb8:	00f52023          	sw	a5,0(a0)
   10fbc:	fff00513          	li	a0,-1
   10fc0:	01010113          	addi	sp,sp,16
   10fc4:	00008067          	ret

0000000000010fc8 <isatty>:
   10fc8:	f8010113          	addi	sp,sp,-128
   10fcc:	00810593          	addi	a1,sp,8
   10fd0:	06113c23          	sd	ra,120(sp)
   10fd4:	cfdff0ef          	jal	ra,10cd0 <fstat>
   10fd8:	fff00793          	li	a5,-1
   10fdc:	00f50863          	beq	a0,a5,10fec <isatty+0x24>
   10fe0:	00c12503          	lw	a0,12(sp)
   10fe4:	40d5551b          	sraiw	a0,a0,0xd
   10fe8:	00157513          	andi	a0,a0,1
   10fec:	07813083          	ld	ra,120(sp)
   10ff0:	08010113          	addi	sp,sp,128
   10ff4:	00008067          	ret

0000000000010ff8 <gettimeofday>:
   10ff8:	ff010113          	addi	sp,sp,-16
   10ffc:	00050593          	mv	a1,a0
   11000:	00000713          	li	a4,0
   11004:	00000693          	li	a3,0
   11008:	00000613          	li	a2,0
   1100c:	0a900513          	li	a0,169
   11010:	00113423          	sd	ra,8(sp)
   11014:	00000097          	auipc	ra,0x0
   11018:	be0080e7          	jalr	-1056(ra) # 10bf4 <__internal_syscall>
   1101c:	00813083          	ld	ra,8(sp)
   11020:	0005051b          	sext.w	a0,a0
   11024:	01010113          	addi	sp,sp,16
   11028:	00008067          	ret

000000000001102c <times>:
   1102c:	fd010113          	addi	sp,sp,-48
   11030:	02813023          	sd	s0,32(sp)
   11034:	00050413          	mv	s0,a0
   11038:	8581b783          	ld	a5,-1960(gp) # 12a30 <t0.2572>
   1103c:	00913c23          	sd	s1,24(sp)
   11040:	02113423          	sd	ra,40(sp)
   11044:	85818493          	addi	s1,gp,-1960 # 12a30 <t0.2572>
   11048:	00079a63          	bnez	a5,1105c <times+0x30>
   1104c:	00000593          	li	a1,0
   11050:	85818513          	addi	a0,gp,-1960 # 12a30 <t0.2572>
   11054:	00000097          	auipc	ra,0x0
   11058:	fa4080e7          	jalr	-92(ra) # 10ff8 <gettimeofday>
   1105c:	00000593          	li	a1,0
   11060:	00010513          	mv	a0,sp
   11064:	00000097          	auipc	ra,0x0
   11068:	f94080e7          	jalr	-108(ra) # 10ff8 <gettimeofday>
   1106c:	0004b783          	ld	a5,0(s1)
   11070:	00013503          	ld	a0,0(sp)
   11074:	000f45b7          	lui	a1,0xf4
   11078:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe1068>
   1107c:	40f50533          	sub	a0,a0,a5
   11080:	154000ef          	jal	ra,111d4 <__muldi3>
   11084:	0084b703          	ld	a4,8(s1)
   11088:	00813783          	ld	a5,8(sp)
   1108c:	00043823          	sd	zero,16(s0)
   11090:	00043c23          	sd	zero,24(s0)
   11094:	40e787b3          	sub	a5,a5,a4
   11098:	00f50533          	add	a0,a0,a5
   1109c:	00a43023          	sd	a0,0(s0)
   110a0:	00043423          	sd	zero,8(s0)
   110a4:	02813083          	ld	ra,40(sp)
   110a8:	02013403          	ld	s0,32(sp)
   110ac:	01813483          	ld	s1,24(sp)
   110b0:	fff00513          	li	a0,-1
   110b4:	03010113          	addi	sp,sp,48
   110b8:	00008067          	ret

00000000000110bc <ftime>:
   110bc:	00051423          	sh	zero,8(a0)
   110c0:	00053023          	sd	zero,0(a0)
   110c4:	00000513          	li	a0,0
   110c8:	00008067          	ret

00000000000110cc <utime>:
   110cc:	fff00513          	li	a0,-1
   110d0:	00008067          	ret

00000000000110d4 <chown>:
   110d4:	fff00513          	li	a0,-1
   110d8:	00008067          	ret

00000000000110dc <chmod>:
   110dc:	fff00513          	li	a0,-1
   110e0:	00008067          	ret

00000000000110e4 <chdir>:
   110e4:	fff00513          	li	a0,-1
   110e8:	00008067          	ret

00000000000110ec <getcwd>:
   110ec:	00000513          	li	a0,0
   110f0:	00008067          	ret

00000000000110f4 <sysconf>:
   110f4:	00200793          	li	a5,2
   110f8:	00f50663          	beq	a0,a5,11104 <sysconf+0x10>
   110fc:	fff00513          	li	a0,-1
   11100:	00008067          	ret
   11104:	000f4537          	lui	a0,0xf4
   11108:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe1068>
   1110c:	00008067          	ret

0000000000011110 <sbrk>:
   11110:	fe010113          	addi	sp,sp,-32
   11114:	00813823          	sd	s0,16(sp)
   11118:	8181b783          	ld	a5,-2024(gp) # 129f0 <_edata>
   1111c:	00913423          	sd	s1,8(sp)
   11120:	00113c23          	sd	ra,24(sp)
   11124:	00050493          	mv	s1,a0
   11128:	04079063          	bnez	a5,11168 <sbrk+0x58>
   1112c:	00000713          	li	a4,0
   11130:	00000693          	li	a3,0
   11134:	00000613          	li	a2,0
   11138:	00000593          	li	a1,0
   1113c:	0d600513          	li	a0,214
   11140:	ab5ff0ef          	jal	ra,10bf4 <__internal_syscall>
   11144:	fff00793          	li	a5,-1
   11148:	00f51e63          	bne	a0,a5,11164 <sbrk+0x54>
   1114c:	fff00513          	li	a0,-1
   11150:	01813083          	ld	ra,24(sp)
   11154:	01013403          	ld	s0,16(sp)
   11158:	00813483          	ld	s1,8(sp)
   1115c:	02010113          	addi	sp,sp,32
   11160:	00008067          	ret
   11164:	80a1bc23          	sd	a0,-2024(gp) # 129f0 <_edata>
   11168:	8181b583          	ld	a1,-2024(gp) # 129f0 <_edata>
   1116c:	00000713          	li	a4,0
   11170:	00000693          	li	a3,0
   11174:	00b485b3          	add	a1,s1,a1
   11178:	00000613          	li	a2,0
   1117c:	0d600513          	li	a0,214
   11180:	a75ff0ef          	jal	ra,10bf4 <__internal_syscall>
   11184:	8181b783          	ld	a5,-2024(gp) # 129f0 <_edata>
   11188:	00f484b3          	add	s1,s1,a5
   1118c:	fc9510e3          	bne	a0,s1,1114c <sbrk+0x3c>
   11190:	80a1bc23          	sd	a0,-2024(gp) # 129f0 <_edata>
   11194:	00078513          	mv	a0,a5
   11198:	fb9ff06f          	j	11150 <sbrk+0x40>

000000000001119c <_exit>:
   1119c:	ff010113          	addi	sp,sp,-16
   111a0:	00050593          	mv	a1,a0
   111a4:	00000713          	li	a4,0
   111a8:	00000693          	li	a3,0
   111ac:	00000613          	li	a2,0
   111b0:	05d00513          	li	a0,93
   111b4:	00113423          	sd	ra,8(sp)
   111b8:	00000097          	auipc	ra,0x0
   111bc:	a3c080e7          	jalr	-1476(ra) # 10bf4 <__internal_syscall>
   111c0:	0000006f          	j	111c0 <_exit+0x24>
   111c4:	0000                	unimp
	...

00000000000111c8 <__errno>:
   111c8:	8101b503          	ld	a0,-2032(gp) # 129e8 <_impure_ptr>
   111cc:	00008067          	ret
   111d0:	0000                	unimp
	...

00000000000111d4 <__muldi3>:
   111d4:	00050613          	mv	a2,a0
   111d8:	00000513          	li	a0,0
   111dc:	0015f693          	andi	a3,a1,1
   111e0:	00068463          	beqz	a3,111e8 <__muldi3+0x14>
   111e4:	00c50533          	add	a0,a0,a2
   111e8:	0015d593          	srli	a1,a1,0x1
   111ec:	00161613          	slli	a2,a2,0x1
   111f0:	fe0596e3          	bnez	a1,111dc <__muldi3+0x8>
   111f4:	00008067          	ret
   111f8:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000011200 <.rodata>:
   11200:	7250                	ld	a2,160(a2)
   11202:	7665                	lui	a2,0xffff9
   11204:	4120                	lw	s0,64(a0)
   11206:	203a                	fld	ft0,392(sp)
	...
   11210:	0020                	addi	s0,sp,8
   11212:	0000                	unimp
   11214:	0000                	unimp
   11216:	0000                	unimp
   11218:	000a                	0xa
   1121a:	0000                	unimp
   1121c:	0000                	unimp
   1121e:	0000                	unimp
   11220:	74726f53          	0x74726f53
   11224:	6465                	lui	s0,0x19
   11226:	4120                	lw	s0,64(a0)
   11228:	203a                	fld	ft0,392(sp)
   1122a:	0000                	unimp
   1122c:	0000                	unimp
   1122e:	0000                	unimp
   11230:	7250                	ld	a2,160(a2)
   11232:	7665                	lui	a2,0xffff9
   11234:	4220                	lw	s0,64(a2)
   11236:	203a                	fld	ft0,392(sp)
	...
   11240:	74726f53          	0x74726f53
   11244:	6465                	lui	s0,0x19
   11246:	4220                	lw	s0,64(a2)
   11248:	203a                	fld	ft0,392(sp)
   1124a:	0000                	unimp
   1124c:	0000                	unimp
   1124e:	0000                	unimp
   11250:	0005                	c.addi	zero,1
   11252:	0000                	unimp
   11254:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   11258:	0005                	c.addi	zero,1
   1125a:	0000                	unimp
   1125c:	0006                	0x6
   1125e:	0000                	unimp
   11260:	00000007          	0x7
   11264:	0001                	nop
   11266:	0000                	unimp
   11268:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   1126c:	0005                	c.addi	zero,1
   1126e:	0000                	unimp
   11270:	0006                	0x6
   11272:	0000                	unimp
   11274:	0001                	nop
	...

Disassembly of section .eh_frame:

0000000000011278 <__EH_FRAME_BEGIN__>:
   11278:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000012280 <__frame_dummy_init_array_entry>:
   12280:	01c0                	addi	s0,sp,196
   12282:	0001                	nop
   12284:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000012288 <__do_global_dtors_aux_fini_array_entry>:
   12288:	016c                	addi	a1,sp,140
   1228a:	0001                	nop
   1228c:	0000                	unimp
	...

Disassembly of section .data:

0000000000012290 <impure_data>:
	...
   12298:	27c8                	fld	fa0,136(a5)
   1229a:	0001                	nop
   1229c:	0000                	unimp
   1229e:	0000                	unimp
   122a0:	2878                	fld	fa4,208(s0)
   122a2:	0001                	nop
   122a4:	0000                	unimp
   122a6:	0000                	unimp
   122a8:	2928                	fld	fa0,80(a0)
   122aa:	0001                	nop
	...
   12378:	0001                	nop
   1237a:	0000                	unimp
   1237c:	0000                	unimp
   1237e:	0000                	unimp
   12380:	330e                	fld	ft6,224(sp)
   12382:	abcd                	j	12974 <impure_data+0x6e4>
   12384:	1234                	addi	a3,sp,296
   12386:	e66d                	bnez	a2,12470 <impure_data+0x1e0>
   12388:	deec                	sw	a1,124(a3)
   1238a:	0005                	c.addi	zero,1
   1238c:	0000000b          	0xb
	...

Disassembly of section .sdata:

00000000000129d8 <__TMC_END__>:
	...

00000000000129e0 <_global_impure_ptr>:
   129e0:	2290                	fld	fa2,0(a3)
   129e2:	0001                	nop
   129e4:	0000                	unimp
	...

00000000000129e8 <_impure_ptr>:
   129e8:	2290                	fld	fa2,0(a3)
   129ea:	0001                	nop
   129ec:	0000                	unimp
	...

Disassembly of section .sbss:

00000000000129f0 <__bss_start>:
	...

Disassembly of section .bss:

00000000000129f8 <completed.5182>:
	...

0000000000012a00 <object.5187>:
	...

0000000000012a30 <t0.2572>:
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
  10:	11d4                	addi	a3,sp,228
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
  10:	11d4                	addi	a3,sp,228
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	11f8                	addi	a4,sp,236
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x3358a>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe3580>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa34b8>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb35aa>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb34ba>
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
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x5353e>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	d402                	sw	zero,40(sp)
  9e:	0111                	addi	sp,sp,4
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
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x2f526>
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
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x23950>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x234f0>
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
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x2f5a0>
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
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x239ca>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x2356a>
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
