
matrixmulti.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	45018193          	addi	gp,gp,1104 # 13500 <__global_pointer$>
   100b8:	82018513          	addi	a0,gp,-2016 # 12d20 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 12d70 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	385000ef          	jal	ra,10c4c <memset>
   100cc:	00001517          	auipc	a0,0x1
   100d0:	a6050513          	addi	a0,a0,-1440 # 10b2c <__libc_fini_array>
   100d4:	00001097          	auipc	ra,0x1
   100d8:	a08080e7          	jalr	-1528(ra) # 10adc <atexit>
   100dc:	00001097          	auipc	ra,0x1
   100e0:	ac8080e7          	jalr	-1336(ra) # 10ba4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	30c000ef          	jal	ra,103fc <main>
   100f4:	00001317          	auipc	t1,0x1
   100f8:	a0030067          	jr	-1536(t1) # 10af4 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00013537          	lui	a0,0x13
   10104:	000137b7          	lui	a5,0x13
   10108:	d0050713          	addi	a4,a0,-768 # 12d00 <__TMC_END__>
   1010c:	d0078793          	addi	a5,a5,-768 # 12d00 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	d0050513          	addi	a0,a0,-768
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000137b7          	lui	a5,0x13
   10130:	00013537          	lui	a0,0x13
   10134:	d0078593          	addi	a1,a5,-768 # 12d00 <__TMC_END__>
   10138:	d0050793          	addi	a5,a0,-768 # 12d00 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	d0050513          	addi	a0,a0,-768
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8281c703          	lbu	a4,-2008(gp) # 12d28 <completed.5182>
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
   10198:	5a450513          	addi	a0,a0,1444 # 115a4 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18423          	sb	a5,-2008(gp) # 12d28 <completed.5182>
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
   101d8:	d3058593          	addi	a1,a1,-720 # 12d30 <object.5187>
   101dc:	5a450513          	addi	a0,a0,1444 # 115a4 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <matmulti>:
   101f8:	f9010113          	addi	sp,sp,-112
   101fc:	06113423          	sd	ra,104(sp)
   10200:	06813023          	sd	s0,96(sp)
   10204:	04913c23          	sd	s1,88(sp)
   10208:	05213823          	sd	s2,80(sp)
   1020c:	07010413          	addi	s0,sp,112
   10210:	faa43423          	sd	a0,-88(s0)
   10214:	fab43023          	sd	a1,-96(s0)
   10218:	f8c43c23          	sd	a2,-104(s0)
   1021c:	00068793          	mv	a5,a3
   10220:	f8f42a23          	sw	a5,-108(s0)
   10224:	00a00793          	li	a5,10
   10228:	fff78793          	addi	a5,a5,-1
   1022c:	fcf43c23          	sd	a5,-40(s0)
   10230:	00a00793          	li	a5,10
   10234:	fff78793          	addi	a5,a5,-1
   10238:	fcf43023          	sd	a5,-64(s0)
   1023c:	00a00793          	li	a5,10
   10240:	fff78793          	addi	a5,a5,-1
   10244:	faf43c23          	sd	a5,-72(s0)
   10248:	fc042623          	sw	zero,-52(s0)
   1024c:	1800006f          	j	103cc <matmulti+0x1d4>
   10250:	fc042823          	sw	zero,-48(s0)
   10254:	1580006f          	j	103ac <matmulti+0x1b4>
   10258:	fcc42783          	lw	a5,-52(s0)
   1025c:	00a00713          	li	a4,10
   10260:	00070593          	mv	a1,a4
   10264:	00078513          	mv	a0,a5
   10268:	04d000ef          	jal	ra,10ab4 <__muldi3>
   1026c:	00050793          	mv	a5,a0
   10270:	00279793          	slli	a5,a5,0x2
   10274:	f9843703          	ld	a4,-104(s0)
   10278:	00f70733          	add	a4,a4,a5
   1027c:	fd042783          	lw	a5,-48(s0)
   10280:	00279793          	slli	a5,a5,0x2
   10284:	00f707b3          	add	a5,a4,a5
   10288:	0007a023          	sw	zero,0(a5)
   1028c:	fc042a23          	sw	zero,-44(s0)
   10290:	0fc0006f          	j	1038c <matmulti+0x194>
   10294:	fcc42783          	lw	a5,-52(s0)
   10298:	00a00713          	li	a4,10
   1029c:	00070593          	mv	a1,a4
   102a0:	00078513          	mv	a0,a5
   102a4:	011000ef          	jal	ra,10ab4 <__muldi3>
   102a8:	00050793          	mv	a5,a0
   102ac:	00279793          	slli	a5,a5,0x2
   102b0:	f9843703          	ld	a4,-104(s0)
   102b4:	00f70733          	add	a4,a4,a5
   102b8:	fd042783          	lw	a5,-48(s0)
   102bc:	00279793          	slli	a5,a5,0x2
   102c0:	00f707b3          	add	a5,a4,a5
   102c4:	0007a903          	lw	s2,0(a5)
   102c8:	fcc42783          	lw	a5,-52(s0)
   102cc:	00a00713          	li	a4,10
   102d0:	00070593          	mv	a1,a4
   102d4:	00078513          	mv	a0,a5
   102d8:	7dc000ef          	jal	ra,10ab4 <__muldi3>
   102dc:	00050793          	mv	a5,a0
   102e0:	00279793          	slli	a5,a5,0x2
   102e4:	fa843703          	ld	a4,-88(s0)
   102e8:	00f70733          	add	a4,a4,a5
   102ec:	fd442783          	lw	a5,-44(s0)
   102f0:	00279793          	slli	a5,a5,0x2
   102f4:	00f707b3          	add	a5,a4,a5
   102f8:	0007a483          	lw	s1,0(a5)
   102fc:	fd442783          	lw	a5,-44(s0)
   10300:	00a00713          	li	a4,10
   10304:	00070593          	mv	a1,a4
   10308:	00078513          	mv	a0,a5
   1030c:	7a8000ef          	jal	ra,10ab4 <__muldi3>
   10310:	00050793          	mv	a5,a0
   10314:	00279793          	slli	a5,a5,0x2
   10318:	fa043703          	ld	a4,-96(s0)
   1031c:	00f70733          	add	a4,a4,a5
   10320:	fd042783          	lw	a5,-48(s0)
   10324:	00279793          	slli	a5,a5,0x2
   10328:	00f707b3          	add	a5,a4,a5
   1032c:	0007a783          	lw	a5,0(a5)
   10330:	00078593          	mv	a1,a5
   10334:	00048513          	mv	a0,s1
   10338:	77c000ef          	jal	ra,10ab4 <__muldi3>
   1033c:	00050793          	mv	a5,a0
   10340:	0007849b          	sext.w	s1,a5
   10344:	fcc42783          	lw	a5,-52(s0)
   10348:	00a00713          	li	a4,10
   1034c:	00070593          	mv	a1,a4
   10350:	00078513          	mv	a0,a5
   10354:	760000ef          	jal	ra,10ab4 <__muldi3>
   10358:	00050793          	mv	a5,a0
   1035c:	00279793          	slli	a5,a5,0x2
   10360:	f9843703          	ld	a4,-104(s0)
   10364:	00f706b3          	add	a3,a4,a5
   10368:	009907bb          	addw	a5,s2,s1
   1036c:	0007871b          	sext.w	a4,a5
   10370:	fd042783          	lw	a5,-48(s0)
   10374:	00279793          	slli	a5,a5,0x2
   10378:	00f687b3          	add	a5,a3,a5
   1037c:	00e7a023          	sw	a4,0(a5)
   10380:	fd442783          	lw	a5,-44(s0)
   10384:	0017879b          	addiw	a5,a5,1
   10388:	fcf42a23          	sw	a5,-44(s0)
   1038c:	fd442703          	lw	a4,-44(s0)
   10390:	f9442783          	lw	a5,-108(s0)
   10394:	0007071b          	sext.w	a4,a4
   10398:	0007879b          	sext.w	a5,a5
   1039c:	eef74ce3          	blt	a4,a5,10294 <matmulti+0x9c>
   103a0:	fd042783          	lw	a5,-48(s0)
   103a4:	0017879b          	addiw	a5,a5,1
   103a8:	fcf42823          	sw	a5,-48(s0)
   103ac:	fd042703          	lw	a4,-48(s0)
   103b0:	f9442783          	lw	a5,-108(s0)
   103b4:	0007071b          	sext.w	a4,a4
   103b8:	0007879b          	sext.w	a5,a5
   103bc:	e8f74ee3          	blt	a4,a5,10258 <matmulti+0x60>
   103c0:	fcc42783          	lw	a5,-52(s0)
   103c4:	0017879b          	addiw	a5,a5,1
   103c8:	fcf42623          	sw	a5,-52(s0)
   103cc:	fcc42703          	lw	a4,-52(s0)
   103d0:	f9442783          	lw	a5,-108(s0)
   103d4:	0007071b          	sext.w	a4,a4
   103d8:	0007879b          	sext.w	a5,a5
   103dc:	e6f74ae3          	blt	a4,a5,10250 <matmulti+0x58>
   103e0:	00000013          	nop
   103e4:	06813083          	ld	ra,104(sp)
   103e8:	06013403          	ld	s0,96(sp)
   103ec:	05813483          	ld	s1,88(sp)
   103f0:	05013903          	ld	s2,80(sp)
   103f4:	07010113          	addi	sp,sp,112
   103f8:	00008067          	ret

00000000000103fc <main>:
   103fc:	f5010113          	addi	sp,sp,-176
   10400:	0a113423          	sd	ra,168(sp)
   10404:	0a813023          	sd	s0,160(sp)
   10408:	08913c23          	sd	s1,152(sp)
   1040c:	09213823          	sd	s2,144(sp)
   10410:	09313423          	sd	s3,136(sp)
   10414:	09413023          	sd	s4,128(sp)
   10418:	07513c23          	sd	s5,120(sp)
   1041c:	07613823          	sd	s6,112(sp)
   10420:	0b010413          	addi	s0,sp,176
   10424:	00010793          	mv	a5,sp
   10428:	00078b13          	mv	s6,a5
   1042c:	00a00793          	li	a5,10
   10430:	fff78793          	addi	a5,a5,-1
   10434:	faf43823          	sd	a5,-80(s0)
   10438:	00a00793          	li	a5,10
   1043c:	00279993          	slli	s3,a5,0x2
   10440:	00a00793          	li	a5,10
   10444:	fff78793          	addi	a5,a5,-1
   10448:	faf43c23          	sd	a5,-72(s0)
   1044c:	00a00793          	li	a5,10
   10450:	00078713          	mv	a4,a5
   10454:	00a00793          	li	a5,10
   10458:	00078593          	mv	a1,a5
   1045c:	00070513          	mv	a0,a4
   10460:	00000097          	auipc	ra,0x0
   10464:	654080e7          	jalr	1620(ra) # 10ab4 <__muldi3>
   10468:	00a00793          	li	a5,10
   1046c:	00078713          	mv	a4,a5
   10470:	00a00793          	li	a5,10
   10474:	00078593          	mv	a1,a5
   10478:	00070513          	mv	a0,a4
   1047c:	00000097          	auipc	ra,0x0
   10480:	638080e7          	jalr	1592(ra) # 10ab4 <__muldi3>
   10484:	00a00793          	li	a5,10
   10488:	00078713          	mv	a4,a5
   1048c:	00a00793          	li	a5,10
   10490:	00078593          	mv	a1,a5
   10494:	00070513          	mv	a0,a4
   10498:	00000097          	auipc	ra,0x0
   1049c:	61c080e7          	jalr	1564(ra) # 10ab4 <__muldi3>
   104a0:	00a00793          	li	a5,10
   104a4:	00078713          	mv	a4,a5
   104a8:	00a00793          	li	a5,10
   104ac:	00078593          	mv	a1,a5
   104b0:	00070513          	mv	a0,a4
   104b4:	00000097          	auipc	ra,0x0
   104b8:	600080e7          	jalr	1536(ra) # 10ab4 <__muldi3>
   104bc:	00050793          	mv	a5,a0
   104c0:	00279793          	slli	a5,a5,0x2
   104c4:	00378793          	addi	a5,a5,3
   104c8:	00f78793          	addi	a5,a5,15
   104cc:	0047d793          	srli	a5,a5,0x4
   104d0:	00479793          	slli	a5,a5,0x4
   104d4:	40f10133          	sub	sp,sp,a5
   104d8:	00010793          	mv	a5,sp
   104dc:	00378793          	addi	a5,a5,3
   104e0:	0027d793          	srli	a5,a5,0x2
   104e4:	00279793          	slli	a5,a5,0x2
   104e8:	f8f43423          	sd	a5,-120(s0)
   104ec:	00a00793          	li	a5,10
   104f0:	fff78793          	addi	a5,a5,-1
   104f4:	f8f43023          	sd	a5,-128(s0)
   104f8:	00a00793          	li	a5,10
   104fc:	00279913          	slli	s2,a5,0x2
   10500:	00a00793          	li	a5,10
   10504:	fff78793          	addi	a5,a5,-1
   10508:	f6f43c23          	sd	a5,-136(s0)
   1050c:	00a00793          	li	a5,10
   10510:	00078713          	mv	a4,a5
   10514:	00a00793          	li	a5,10
   10518:	00078593          	mv	a1,a5
   1051c:	00070513          	mv	a0,a4
   10520:	00000097          	auipc	ra,0x0
   10524:	594080e7          	jalr	1428(ra) # 10ab4 <__muldi3>
   10528:	00a00793          	li	a5,10
   1052c:	00078713          	mv	a4,a5
   10530:	00a00793          	li	a5,10
   10534:	00078593          	mv	a1,a5
   10538:	00070513          	mv	a0,a4
   1053c:	00000097          	auipc	ra,0x0
   10540:	578080e7          	jalr	1400(ra) # 10ab4 <__muldi3>
   10544:	00a00793          	li	a5,10
   10548:	00078713          	mv	a4,a5
   1054c:	00a00793          	li	a5,10
   10550:	00078593          	mv	a1,a5
   10554:	00070513          	mv	a0,a4
   10558:	00000097          	auipc	ra,0x0
   1055c:	55c080e7          	jalr	1372(ra) # 10ab4 <__muldi3>
   10560:	00a00793          	li	a5,10
   10564:	00078713          	mv	a4,a5
   10568:	00a00793          	li	a5,10
   1056c:	00078593          	mv	a1,a5
   10570:	00070513          	mv	a0,a4
   10574:	00000097          	auipc	ra,0x0
   10578:	540080e7          	jalr	1344(ra) # 10ab4 <__muldi3>
   1057c:	00050793          	mv	a5,a0
   10580:	00279793          	slli	a5,a5,0x2
   10584:	00378793          	addi	a5,a5,3
   10588:	00f78793          	addi	a5,a5,15
   1058c:	0047d793          	srli	a5,a5,0x4
   10590:	00479793          	slli	a5,a5,0x4
   10594:	40f10133          	sub	sp,sp,a5
   10598:	00010793          	mv	a5,sp
   1059c:	00378793          	addi	a5,a5,3
   105a0:	0027d793          	srli	a5,a5,0x2
   105a4:	00279793          	slli	a5,a5,0x2
   105a8:	f6f43823          	sd	a5,-144(s0)
   105ac:	00a00793          	li	a5,10
   105b0:	fff78793          	addi	a5,a5,-1
   105b4:	f6f43423          	sd	a5,-152(s0)
   105b8:	00a00793          	li	a5,10
   105bc:	00279493          	slli	s1,a5,0x2
   105c0:	00a00793          	li	a5,10
   105c4:	fff78793          	addi	a5,a5,-1
   105c8:	f6f43023          	sd	a5,-160(s0)
   105cc:	00a00793          	li	a5,10
   105d0:	00078713          	mv	a4,a5
   105d4:	00a00793          	li	a5,10
   105d8:	00078593          	mv	a1,a5
   105dc:	00070513          	mv	a0,a4
   105e0:	00000097          	auipc	ra,0x0
   105e4:	4d4080e7          	jalr	1236(ra) # 10ab4 <__muldi3>
   105e8:	00a00793          	li	a5,10
   105ec:	00078713          	mv	a4,a5
   105f0:	00a00793          	li	a5,10
   105f4:	00078593          	mv	a1,a5
   105f8:	00070513          	mv	a0,a4
   105fc:	00000097          	auipc	ra,0x0
   10600:	4b8080e7          	jalr	1208(ra) # 10ab4 <__muldi3>
   10604:	00a00793          	li	a5,10
   10608:	00078713          	mv	a4,a5
   1060c:	00a00793          	li	a5,10
   10610:	00078593          	mv	a1,a5
   10614:	00070513          	mv	a0,a4
   10618:	00000097          	auipc	ra,0x0
   1061c:	49c080e7          	jalr	1180(ra) # 10ab4 <__muldi3>
   10620:	00a00793          	li	a5,10
   10624:	00078713          	mv	a4,a5
   10628:	00a00793          	li	a5,10
   1062c:	00078593          	mv	a1,a5
   10630:	00070513          	mv	a0,a4
   10634:	00000097          	auipc	ra,0x0
   10638:	480080e7          	jalr	1152(ra) # 10ab4 <__muldi3>
   1063c:	00050793          	mv	a5,a0
   10640:	00279793          	slli	a5,a5,0x2
   10644:	00378793          	addi	a5,a5,3
   10648:	00f78793          	addi	a5,a5,15
   1064c:	0047d793          	srli	a5,a5,0x4
   10650:	00479793          	slli	a5,a5,0x4
   10654:	40f10133          	sub	sp,sp,a5
   10658:	00010793          	mv	a5,sp
   1065c:	00378793          	addi	a5,a5,3
   10660:	0027d793          	srli	a5,a5,0x2
   10664:	00279793          	slli	a5,a5,0x2
   10668:	f4f43c23          	sd	a5,-168(s0)
   1066c:	f8042823          	sw	zero,-112(s0)
   10670:	0d80006f          	j	10748 <main+0x34c>
   10674:	f8042a23          	sw	zero,-108(s0)
   10678:	0b40006f          	j	1072c <main+0x330>
   1067c:	0029d713          	srli	a4,s3,0x2
   10680:	f8843a03          	ld	s4,-120(s0)
   10684:	f9442a83          	lw	s5,-108(s0)
   10688:	f9042783          	lw	a5,-112(s0)
   1068c:	00070593          	mv	a1,a4
   10690:	00078513          	mv	a0,a5
   10694:	00000097          	auipc	ra,0x0
   10698:	420080e7          	jalr	1056(ra) # 10ab4 <__muldi3>
   1069c:	00050793          	mv	a5,a0
   106a0:	00fa87b3          	add	a5,s5,a5
   106a4:	00279793          	slli	a5,a5,0x2
   106a8:	00fa07b3          	add	a5,s4,a5
   106ac:	f9042703          	lw	a4,-112(s0)
   106b0:	00e7a023          	sw	a4,0(a5)
   106b4:	00295713          	srli	a4,s2,0x2
   106b8:	f7043a03          	ld	s4,-144(s0)
   106bc:	f9442a83          	lw	s5,-108(s0)
   106c0:	f9042783          	lw	a5,-112(s0)
   106c4:	00070593          	mv	a1,a4
   106c8:	00078513          	mv	a0,a5
   106cc:	00000097          	auipc	ra,0x0
   106d0:	3e8080e7          	jalr	1000(ra) # 10ab4 <__muldi3>
   106d4:	00050793          	mv	a5,a0
   106d8:	00fa87b3          	add	a5,s5,a5
   106dc:	00279793          	slli	a5,a5,0x2
   106e0:	00fa07b3          	add	a5,s4,a5
   106e4:	f9442703          	lw	a4,-108(s0)
   106e8:	00e7a023          	sw	a4,0(a5)
   106ec:	0024d713          	srli	a4,s1,0x2
   106f0:	f5843a03          	ld	s4,-168(s0)
   106f4:	f9442a83          	lw	s5,-108(s0)
   106f8:	f9042783          	lw	a5,-112(s0)
   106fc:	00070593          	mv	a1,a4
   10700:	00078513          	mv	a0,a5
   10704:	00000097          	auipc	ra,0x0
   10708:	3b0080e7          	jalr	944(ra) # 10ab4 <__muldi3>
   1070c:	00050793          	mv	a5,a0
   10710:	00fa87b3          	add	a5,s5,a5
   10714:	00279793          	slli	a5,a5,0x2
   10718:	00fa07b3          	add	a5,s4,a5
   1071c:	0007a023          	sw	zero,0(a5)
   10720:	f9442783          	lw	a5,-108(s0)
   10724:	0017879b          	addiw	a5,a5,1
   10728:	f8f42a23          	sw	a5,-108(s0)
   1072c:	00a00713          	li	a4,10
   10730:	f9442783          	lw	a5,-108(s0)
   10734:	0007879b          	sext.w	a5,a5
   10738:	f4e7c2e3          	blt	a5,a4,1067c <main+0x280>
   1073c:	f9042783          	lw	a5,-112(s0)
   10740:	0017879b          	addiw	a5,a5,1
   10744:	f8f42823          	sw	a5,-112(s0)
   10748:	00a00713          	li	a4,10
   1074c:	f9042783          	lw	a5,-112(s0)
   10750:	0007879b          	sext.w	a5,a5
   10754:	f2e7c0e3          	blt	a5,a4,10674 <main+0x278>
   10758:	000117b7          	lui	a5,0x11
   1075c:	54878513          	addi	a0,a5,1352 # 11548 <__errno+0xc>
   10760:	288000ef          	jal	ra,109e8 <print_s>
   10764:	f8042c23          	sw	zero,-104(s0)
   10768:	08c0006f          	j	107f4 <main+0x3f8>
   1076c:	f8042e23          	sw	zero,-100(s0)
   10770:	05c0006f          	j	107cc <main+0x3d0>
   10774:	0029d713          	srli	a4,s3,0x2
   10778:	f8843a03          	ld	s4,-120(s0)
   1077c:	f9c42a83          	lw	s5,-100(s0)
   10780:	f9842783          	lw	a5,-104(s0)
   10784:	00070593          	mv	a1,a4
   10788:	00078513          	mv	a0,a5
   1078c:	00000097          	auipc	ra,0x0
   10790:	328080e7          	jalr	808(ra) # 10ab4 <__muldi3>
   10794:	00050793          	mv	a5,a0
   10798:	00fa87b3          	add	a5,s5,a5
   1079c:	00279793          	slli	a5,a5,0x2
   107a0:	00fa07b3          	add	a5,s4,a5
   107a4:	0007a783          	lw	a5,0(a5)
   107a8:	00078513          	mv	a0,a5
   107ac:	00000097          	auipc	ra,0x0
   107b0:	210080e7          	jalr	528(ra) # 109bc <print_d>
   107b4:	000117b7          	lui	a5,0x11
   107b8:	56078513          	addi	a0,a5,1376 # 11560 <__errno+0x24>
   107bc:	22c000ef          	jal	ra,109e8 <print_s>
   107c0:	f9c42783          	lw	a5,-100(s0)
   107c4:	0017879b          	addiw	a5,a5,1
   107c8:	f8f42e23          	sw	a5,-100(s0)
   107cc:	00a00713          	li	a4,10
   107d0:	f9c42783          	lw	a5,-100(s0)
   107d4:	0007879b          	sext.w	a5,a5
   107d8:	f8e7cee3          	blt	a5,a4,10774 <main+0x378>
   107dc:	000117b7          	lui	a5,0x11
   107e0:	56878513          	addi	a0,a5,1384 # 11568 <__errno+0x2c>
   107e4:	204000ef          	jal	ra,109e8 <print_s>
   107e8:	f9842783          	lw	a5,-104(s0)
   107ec:	0017879b          	addiw	a5,a5,1
   107f0:	f8f42c23          	sw	a5,-104(s0)
   107f4:	00a00713          	li	a4,10
   107f8:	f9842783          	lw	a5,-104(s0)
   107fc:	0007879b          	sext.w	a5,a5
   10800:	f6e7c6e3          	blt	a5,a4,1076c <main+0x370>
   10804:	000117b7          	lui	a5,0x11
   10808:	57078513          	addi	a0,a5,1392 # 11570 <__errno+0x34>
   1080c:	1dc000ef          	jal	ra,109e8 <print_s>
   10810:	fa042023          	sw	zero,-96(s0)
   10814:	08c0006f          	j	108a0 <main+0x4a4>
   10818:	fa042223          	sw	zero,-92(s0)
   1081c:	05c0006f          	j	10878 <main+0x47c>
   10820:	00295713          	srli	a4,s2,0x2
   10824:	f7043983          	ld	s3,-144(s0)
   10828:	fa442a03          	lw	s4,-92(s0)
   1082c:	fa042783          	lw	a5,-96(s0)
   10830:	00070593          	mv	a1,a4
   10834:	00078513          	mv	a0,a5
   10838:	00000097          	auipc	ra,0x0
   1083c:	27c080e7          	jalr	636(ra) # 10ab4 <__muldi3>
   10840:	00050793          	mv	a5,a0
   10844:	00fa07b3          	add	a5,s4,a5
   10848:	00279793          	slli	a5,a5,0x2
   1084c:	00f987b3          	add	a5,s3,a5
   10850:	0007a783          	lw	a5,0(a5)
   10854:	00078513          	mv	a0,a5
   10858:	00000097          	auipc	ra,0x0
   1085c:	164080e7          	jalr	356(ra) # 109bc <print_d>
   10860:	000117b7          	lui	a5,0x11
   10864:	56078513          	addi	a0,a5,1376 # 11560 <__errno+0x24>
   10868:	180000ef          	jal	ra,109e8 <print_s>
   1086c:	fa442783          	lw	a5,-92(s0)
   10870:	0017879b          	addiw	a5,a5,1
   10874:	faf42223          	sw	a5,-92(s0)
   10878:	00a00713          	li	a4,10
   1087c:	fa442783          	lw	a5,-92(s0)
   10880:	0007879b          	sext.w	a5,a5
   10884:	f8e7cee3          	blt	a5,a4,10820 <main+0x424>
   10888:	000117b7          	lui	a5,0x11
   1088c:	56878513          	addi	a0,a5,1384 # 11568 <__errno+0x2c>
   10890:	158000ef          	jal	ra,109e8 <print_s>
   10894:	fa042783          	lw	a5,-96(s0)
   10898:	0017879b          	addiw	a5,a5,1
   1089c:	faf42023          	sw	a5,-96(s0)
   108a0:	00a00713          	li	a4,10
   108a4:	fa042783          	lw	a5,-96(s0)
   108a8:	0007879b          	sext.w	a5,a5
   108ac:	f6e7c6e3          	blt	a5,a4,10818 <main+0x41c>
   108b0:	f8843783          	ld	a5,-120(s0)
   108b4:	f7043703          	ld	a4,-144(s0)
   108b8:	f5843603          	ld	a2,-168(s0)
   108bc:	00a00693          	li	a3,10
   108c0:	00070593          	mv	a1,a4
   108c4:	00078513          	mv	a0,a5
   108c8:	00000097          	auipc	ra,0x0
   108cc:	930080e7          	jalr	-1744(ra) # 101f8 <matmulti>
   108d0:	000117b7          	lui	a5,0x11
   108d4:	58878513          	addi	a0,a5,1416 # 11588 <__errno+0x4c>
   108d8:	110000ef          	jal	ra,109e8 <print_s>
   108dc:	fa042423          	sw	zero,-88(s0)
   108e0:	08c0006f          	j	1096c <main+0x570>
   108e4:	fa042623          	sw	zero,-84(s0)
   108e8:	05c0006f          	j	10944 <main+0x548>
   108ec:	0024d713          	srli	a4,s1,0x2
   108f0:	f5843903          	ld	s2,-168(s0)
   108f4:	fac42983          	lw	s3,-84(s0)
   108f8:	fa842783          	lw	a5,-88(s0)
   108fc:	00070593          	mv	a1,a4
   10900:	00078513          	mv	a0,a5
   10904:	00000097          	auipc	ra,0x0
   10908:	1b0080e7          	jalr	432(ra) # 10ab4 <__muldi3>
   1090c:	00050793          	mv	a5,a0
   10910:	00f987b3          	add	a5,s3,a5
   10914:	00279793          	slli	a5,a5,0x2
   10918:	00f907b3          	add	a5,s2,a5
   1091c:	0007a783          	lw	a5,0(a5)
   10920:	00078513          	mv	a0,a5
   10924:	00000097          	auipc	ra,0x0
   10928:	098080e7          	jalr	152(ra) # 109bc <print_d>
   1092c:	000117b7          	lui	a5,0x11
   10930:	56078513          	addi	a0,a5,1376 # 11560 <__errno+0x24>
   10934:	0b4000ef          	jal	ra,109e8 <print_s>
   10938:	fac42783          	lw	a5,-84(s0)
   1093c:	0017879b          	addiw	a5,a5,1
   10940:	faf42623          	sw	a5,-84(s0)
   10944:	00a00713          	li	a4,10
   10948:	fac42783          	lw	a5,-84(s0)
   1094c:	0007879b          	sext.w	a5,a5
   10950:	f8e7cee3          	blt	a5,a4,108ec <main+0x4f0>
   10954:	000117b7          	lui	a5,0x11
   10958:	56878513          	addi	a0,a5,1384 # 11568 <__errno+0x2c>
   1095c:	08c000ef          	jal	ra,109e8 <print_s>
   10960:	fa842783          	lw	a5,-88(s0)
   10964:	0017879b          	addiw	a5,a5,1
   10968:	faf42423          	sw	a5,-88(s0)
   1096c:	00a00713          	li	a4,10
   10970:	fa842783          	lw	a5,-88(s0)
   10974:	0007879b          	sext.w	a5,a5
   10978:	f6e7c6e3          	blt	a5,a4,108e4 <main+0x4e8>
   1097c:	0c0000ef          	jal	ra,10a3c <exit_proc>
   10980:	000b0113          	mv	sp,s6
   10984:	00000793          	li	a5,0
   10988:	00078513          	mv	a0,a5
   1098c:	f5040113          	addi	sp,s0,-176
   10990:	0a813083          	ld	ra,168(sp)
   10994:	0a013403          	ld	s0,160(sp)
   10998:	09813483          	ld	s1,152(sp)
   1099c:	09013903          	ld	s2,144(sp)
   109a0:	08813983          	ld	s3,136(sp)
   109a4:	08013a03          	ld	s4,128(sp)
   109a8:	07813a83          	ld	s5,120(sp)
   109ac:	07013b03          	ld	s6,112(sp)
   109b0:	0b010113          	addi	sp,sp,176
   109b4:	00008067          	ret
   109b8:	0000                	unimp
	...

00000000000109bc <print_d>:
   109bc:	fe010113          	addi	sp,sp,-32
   109c0:	00813c23          	sd	s0,24(sp)
   109c4:	02010413          	addi	s0,sp,32
   109c8:	00050793          	mv	a5,a0
   109cc:	fef42623          	sw	a5,-20(s0)
   109d0:	00200893          	li	a7,2
   109d4:	00000073          	ecall
   109d8:	00000013          	nop
   109dc:	01813403          	ld	s0,24(sp)
   109e0:	02010113          	addi	sp,sp,32
   109e4:	00008067          	ret

00000000000109e8 <print_s>:
   109e8:	fe010113          	addi	sp,sp,-32
   109ec:	00813c23          	sd	s0,24(sp)
   109f0:	02010413          	addi	s0,sp,32
   109f4:	fea43423          	sd	a0,-24(s0)
   109f8:	00000893          	li	a7,0
   109fc:	00000073          	ecall
   10a00:	00000013          	nop
   10a04:	01813403          	ld	s0,24(sp)
   10a08:	02010113          	addi	sp,sp,32
   10a0c:	00008067          	ret

0000000000010a10 <print_c>:
   10a10:	fe010113          	addi	sp,sp,-32
   10a14:	00813c23          	sd	s0,24(sp)
   10a18:	02010413          	addi	s0,sp,32
   10a1c:	00050793          	mv	a5,a0
   10a20:	fef407a3          	sb	a5,-17(s0)
   10a24:	00100893          	li	a7,1
   10a28:	00000073          	ecall
   10a2c:	00000013          	nop
   10a30:	01813403          	ld	s0,24(sp)
   10a34:	02010113          	addi	sp,sp,32
   10a38:	00008067          	ret

0000000000010a3c <exit_proc>:
   10a3c:	ff010113          	addi	sp,sp,-16
   10a40:	00813423          	sd	s0,8(sp)
   10a44:	01010413          	addi	s0,sp,16
   10a48:	00300893          	li	a7,3
   10a4c:	00000073          	ecall
   10a50:	00000013          	nop
   10a54:	00813403          	ld	s0,8(sp)
   10a58:	01010113          	addi	sp,sp,16
   10a5c:	00008067          	ret

0000000000010a60 <read_char>:
   10a60:	ff010113          	addi	sp,sp,-16
   10a64:	00813423          	sd	s0,8(sp)
   10a68:	01010413          	addi	s0,sp,16
   10a6c:	00400893          	li	a7,4
   10a70:	00000073          	ecall
   10a74:	00000013          	nop
   10a78:	00078513          	mv	a0,a5
   10a7c:	00813403          	ld	s0,8(sp)
   10a80:	01010113          	addi	sp,sp,16
   10a84:	00008067          	ret

0000000000010a88 <read_num>:
   10a88:	ff010113          	addi	sp,sp,-16
   10a8c:	00813423          	sd	s0,8(sp)
   10a90:	01010413          	addi	s0,sp,16
   10a94:	00500893          	li	a7,5
   10a98:	00000073          	ecall
   10a9c:	00000013          	nop
   10aa0:	00078513          	mv	a0,a5
   10aa4:	00813403          	ld	s0,8(sp)
   10aa8:	01010113          	addi	sp,sp,16
   10aac:	00008067          	ret
   10ab0:	0000                	unimp
	...

0000000000010ab4 <__muldi3>:
   10ab4:	00050613          	mv	a2,a0
   10ab8:	00000513          	li	a0,0
   10abc:	0015f693          	andi	a3,a1,1
   10ac0:	00068463          	beqz	a3,10ac8 <__muldi3+0x14>
   10ac4:	00c50533          	add	a0,a0,a2
   10ac8:	0015d593          	srli	a1,a1,0x1
   10acc:	00161613          	slli	a2,a2,0x1
   10ad0:	fe0596e3          	bnez	a1,10abc <__muldi3+0x8>
   10ad4:	00008067          	ret
   10ad8:	0000                	unimp
	...

0000000000010adc <atexit>:
   10adc:	00050593          	mv	a1,a0
   10ae0:	00000693          	li	a3,0
   10ae4:	00000613          	li	a2,0
   10ae8:	00000513          	li	a0,0
   10aec:	23c0006f          	j	10d28 <__register_exitproc>
   10af0:	0000                	unimp
	...

0000000000010af4 <exit>:
   10af4:	ff010113          	addi	sp,sp,-16
   10af8:	00000593          	li	a1,0
   10afc:	00813023          	sd	s0,0(sp)
   10b00:	00113423          	sd	ra,8(sp)
   10b04:	00050413          	mv	s0,a0
   10b08:	2a8000ef          	jal	ra,10db0 <__call_exitprocs>
   10b0c:	8101b503          	ld	a0,-2032(gp) # 12d10 <_global_impure_ptr>
   10b10:	05853783          	ld	a5,88(a0)
   10b14:	00078463          	beqz	a5,10b1c <exit+0x28>
   10b18:	000780e7          	jalr	a5
   10b1c:	00040513          	mv	a0,s0
   10b20:	00001097          	auipc	ra,0x1
   10b24:	9f0080e7          	jalr	-1552(ra) # 11510 <_exit>
   10b28:	0000                	unimp
	...

0000000000010b2c <__libc_fini_array>:
   10b2c:	fe010113          	addi	sp,sp,-32
   10b30:	000127b7          	lui	a5,0x12
   10b34:	00012737          	lui	a4,0x12
   10b38:	00813823          	sd	s0,16(sp)
   10b3c:	5b070713          	addi	a4,a4,1456 # 125b0 <__init_array_end>
   10b40:	5b878413          	addi	s0,a5,1464 # 125b8 <__fini_array_end>
   10b44:	40e40433          	sub	s0,s0,a4
   10b48:	00913423          	sd	s1,8(sp)
   10b4c:	01213023          	sd	s2,0(sp)
   10b50:	00113c23          	sd	ra,24(sp)
   10b54:	40345413          	srai	s0,s0,0x3
   10b58:	00000493          	li	s1,0
   10b5c:	5b878913          	addi	s2,a5,1464
   10b60:	02941063          	bne	s0,s1,10b80 <__libc_fini_array+0x54>
   10b64:	01013403          	ld	s0,16(sp)
   10b68:	01813083          	ld	ra,24(sp)
   10b6c:	00813483          	ld	s1,8(sp)
   10b70:	00013903          	ld	s2,0(sp)
   10b74:	02010113          	addi	sp,sp,32
   10b78:	fffff317          	auipc	t1,0xfffff
   10b7c:	58430067          	jr	1412(t1) # 100fc <_fini>
   10b80:	ff800593          	li	a1,-8
   10b84:	00048513          	mv	a0,s1
   10b88:	f2dff0ef          	jal	ra,10ab4 <__muldi3>
   10b8c:	00a90533          	add	a0,s2,a0
   10b90:	ff853783          	ld	a5,-8(a0)
   10b94:	00148493          	addi	s1,s1,1
   10b98:	000780e7          	jalr	a5
   10b9c:	fc5ff06f          	j	10b60 <__libc_fini_array+0x34>
   10ba0:	0000                	unimp
	...

0000000000010ba4 <__libc_init_array>:
   10ba4:	fe010113          	addi	sp,sp,-32
   10ba8:	00813823          	sd	s0,16(sp)
   10bac:	00913423          	sd	s1,8(sp)
   10bb0:	00012437          	lui	s0,0x12
   10bb4:	000124b7          	lui	s1,0x12
   10bb8:	5a848793          	addi	a5,s1,1448 # 125a8 <__frame_dummy_init_array_entry>
   10bbc:	5a840413          	addi	s0,s0,1448 # 125a8 <__frame_dummy_init_array_entry>
   10bc0:	40f40433          	sub	s0,s0,a5
   10bc4:	01213023          	sd	s2,0(sp)
   10bc8:	00113c23          	sd	ra,24(sp)
   10bcc:	40345413          	srai	s0,s0,0x3
   10bd0:	5a848493          	addi	s1,s1,1448
   10bd4:	00000913          	li	s2,0
   10bd8:	04891463          	bne	s2,s0,10c20 <__libc_init_array+0x7c>
   10bdc:	000124b7          	lui	s1,0x12
   10be0:	fffff097          	auipc	ra,0xfffff
   10be4:	51c080e7          	jalr	1308(ra) # 100fc <_fini>
   10be8:	00012437          	lui	s0,0x12
   10bec:	5a848793          	addi	a5,s1,1448 # 125a8 <__frame_dummy_init_array_entry>
   10bf0:	5b040413          	addi	s0,s0,1456 # 125b0 <__init_array_end>
   10bf4:	40f40433          	sub	s0,s0,a5
   10bf8:	40345413          	srai	s0,s0,0x3
   10bfc:	5a848493          	addi	s1,s1,1448
   10c00:	00000913          	li	s2,0
   10c04:	02891863          	bne	s2,s0,10c34 <__libc_init_array+0x90>
   10c08:	01813083          	ld	ra,24(sp)
   10c0c:	01013403          	ld	s0,16(sp)
   10c10:	00813483          	ld	s1,8(sp)
   10c14:	00013903          	ld	s2,0(sp)
   10c18:	02010113          	addi	sp,sp,32
   10c1c:	00008067          	ret
   10c20:	0004b783          	ld	a5,0(s1)
   10c24:	00190913          	addi	s2,s2,1
   10c28:	00848493          	addi	s1,s1,8
   10c2c:	000780e7          	jalr	a5
   10c30:	fa9ff06f          	j	10bd8 <__libc_init_array+0x34>
   10c34:	0004b783          	ld	a5,0(s1)
   10c38:	00190913          	addi	s2,s2,1
   10c3c:	00848493          	addi	s1,s1,8
   10c40:	000780e7          	jalr	a5
   10c44:	fc1ff06f          	j	10c04 <__libc_init_array+0x60>
   10c48:	0000                	unimp
	...

0000000000010c4c <memset>:
   10c4c:	00f00813          	li	a6,15
   10c50:	00050713          	mv	a4,a0
   10c54:	02c87a63          	bleu	a2,a6,10c88 <memset+0x3c>
   10c58:	00f77793          	andi	a5,a4,15
   10c5c:	0a079063          	bnez	a5,10cfc <memset+0xb0>
   10c60:	06059e63          	bnez	a1,10cdc <memset+0x90>
   10c64:	ff067693          	andi	a3,a2,-16
   10c68:	00f67613          	andi	a2,a2,15
   10c6c:	00e686b3          	add	a3,a3,a4
   10c70:	00b73023          	sd	a1,0(a4)
   10c74:	00b73423          	sd	a1,8(a4)
   10c78:	01070713          	addi	a4,a4,16
   10c7c:	fed76ae3          	bltu	a4,a3,10c70 <memset+0x24>
   10c80:	00061463          	bnez	a2,10c88 <memset+0x3c>
   10c84:	00008067          	ret
   10c88:	40c806b3          	sub	a3,a6,a2
   10c8c:	00269693          	slli	a3,a3,0x2
   10c90:	00000297          	auipc	t0,0x0
   10c94:	005686b3          	add	a3,a3,t0
   10c98:	00c68067          	jr	12(a3)
   10c9c:	00b70723          	sb	a1,14(a4)
   10ca0:	00b706a3          	sb	a1,13(a4)
   10ca4:	00b70623          	sb	a1,12(a4)
   10ca8:	00b705a3          	sb	a1,11(a4)
   10cac:	00b70523          	sb	a1,10(a4)
   10cb0:	00b704a3          	sb	a1,9(a4)
   10cb4:	00b70423          	sb	a1,8(a4)
   10cb8:	00b703a3          	sb	a1,7(a4)
   10cbc:	00b70323          	sb	a1,6(a4)
   10cc0:	00b702a3          	sb	a1,5(a4)
   10cc4:	00b70223          	sb	a1,4(a4)
   10cc8:	00b701a3          	sb	a1,3(a4)
   10ccc:	00b70123          	sb	a1,2(a4)
   10cd0:	00b700a3          	sb	a1,1(a4)
   10cd4:	00b70023          	sb	a1,0(a4)
   10cd8:	00008067          	ret
   10cdc:	0ff5f593          	andi	a1,a1,255
   10ce0:	00859693          	slli	a3,a1,0x8
   10ce4:	00d5e5b3          	or	a1,a1,a3
   10ce8:	01059693          	slli	a3,a1,0x10
   10cec:	00d5e5b3          	or	a1,a1,a3
   10cf0:	02059693          	slli	a3,a1,0x20
   10cf4:	00d5e5b3          	or	a1,a1,a3
   10cf8:	f6dff06f          	j	10c64 <memset+0x18>
   10cfc:	00279693          	slli	a3,a5,0x2
   10d00:	00000297          	auipc	t0,0x0
   10d04:	005686b3          	add	a3,a3,t0
   10d08:	00008293          	mv	t0,ra
   10d0c:	f98680e7          	jalr	-104(a3)
   10d10:	00028093          	mv	ra,t0
   10d14:	ff078793          	addi	a5,a5,-16
   10d18:	40f70733          	sub	a4,a4,a5
   10d1c:	00f60633          	add	a2,a2,a5
   10d20:	f6c874e3          	bleu	a2,a6,10c88 <memset+0x3c>
   10d24:	f3dff06f          	j	10c60 <memset+0x14>

0000000000010d28 <__register_exitproc>:
   10d28:	8101b703          	ld	a4,-2032(gp) # 12d10 <_global_impure_ptr>
   10d2c:	00050313          	mv	t1,a0
   10d30:	1f873783          	ld	a5,504(a4)
   10d34:	00079663          	bnez	a5,10d40 <__register_exitproc+0x18>
   10d38:	20070793          	addi	a5,a4,512
   10d3c:	1ef73c23          	sd	a5,504(a4)
   10d40:	0087a703          	lw	a4,8(a5)
   10d44:	01f00813          	li	a6,31
   10d48:	fff00513          	li	a0,-1
   10d4c:	04e84e63          	blt	a6,a4,10da8 <__register_exitproc+0x80>
   10d50:	02030e63          	beqz	t1,10d8c <__register_exitproc+0x64>
   10d54:	00371813          	slli	a6,a4,0x3
   10d58:	01078833          	add	a6,a5,a6
   10d5c:	10c83823          	sd	a2,272(a6)
   10d60:	3107a883          	lw	a7,784(a5)
   10d64:	00100613          	li	a2,1
   10d68:	00e6163b          	sllw	a2,a2,a4
   10d6c:	00c8e8b3          	or	a7,a7,a2
   10d70:	3117a823          	sw	a7,784(a5)
   10d74:	20d83823          	sd	a3,528(a6)
   10d78:	00200693          	li	a3,2
   10d7c:	00d31863          	bne	t1,a3,10d8c <__register_exitproc+0x64>
   10d80:	3147a683          	lw	a3,788(a5)
   10d84:	00c6e633          	or	a2,a3,a2
   10d88:	30c7aa23          	sw	a2,788(a5)
   10d8c:	0017069b          	addiw	a3,a4,1
   10d90:	00270713          	addi	a4,a4,2
   10d94:	00371713          	slli	a4,a4,0x3
   10d98:	00d7a423          	sw	a3,8(a5)
   10d9c:	00e787b3          	add	a5,a5,a4
   10da0:	00b7b023          	sd	a1,0(a5)
   10da4:	00000513          	li	a0,0
   10da8:	00008067          	ret
   10dac:	0000                	unimp
	...

0000000000010db0 <__call_exitprocs>:
   10db0:	fb010113          	addi	sp,sp,-80
   10db4:	03313423          	sd	s3,40(sp)
   10db8:	8101b983          	ld	s3,-2032(gp) # 12d10 <_global_impure_ptr>
   10dbc:	03413023          	sd	s4,32(sp)
   10dc0:	01513c23          	sd	s5,24(sp)
   10dc4:	01613823          	sd	s6,16(sp)
   10dc8:	04113423          	sd	ra,72(sp)
   10dcc:	04813023          	sd	s0,64(sp)
   10dd0:	02913c23          	sd	s1,56(sp)
   10dd4:	03213823          	sd	s2,48(sp)
   10dd8:	01713423          	sd	s7,8(sp)
   10ddc:	00050a93          	mv	s5,a0
   10de0:	00058a13          	mv	s4,a1
   10de4:	00100b13          	li	s6,1
   10de8:	1f89b403          	ld	s0,504(s3)
   10dec:	00040c63          	beqz	s0,10e04 <__call_exitprocs+0x54>
   10df0:	00842483          	lw	s1,8(s0)
   10df4:	fff4849b          	addiw	s1,s1,-1
   10df8:	00349913          	slli	s2,s1,0x3
   10dfc:	01240933          	add	s2,s0,s2
   10e00:	0204d863          	bgez	s1,10e30 <__call_exitprocs+0x80>
   10e04:	04813083          	ld	ra,72(sp)
   10e08:	04013403          	ld	s0,64(sp)
   10e0c:	03813483          	ld	s1,56(sp)
   10e10:	03013903          	ld	s2,48(sp)
   10e14:	02813983          	ld	s3,40(sp)
   10e18:	02013a03          	ld	s4,32(sp)
   10e1c:	01813a83          	ld	s5,24(sp)
   10e20:	01013b03          	ld	s6,16(sp)
   10e24:	00813b83          	ld	s7,8(sp)
   10e28:	05010113          	addi	sp,sp,80
   10e2c:	00008067          	ret
   10e30:	000a0c63          	beqz	s4,10e48 <__call_exitprocs+0x98>
   10e34:	21093783          	ld	a5,528(s2)
   10e38:	01478863          	beq	a5,s4,10e48 <__call_exitprocs+0x98>
   10e3c:	fff4849b          	addiw	s1,s1,-1
   10e40:	ff890913          	addi	s2,s2,-8
   10e44:	fbdff06f          	j	10e00 <__call_exitprocs+0x50>
   10e48:	00842783          	lw	a5,8(s0)
   10e4c:	01093683          	ld	a3,16(s2)
   10e50:	fff7879b          	addiw	a5,a5,-1
   10e54:	02979e63          	bne	a5,s1,10e90 <__call_exitprocs+0xe0>
   10e58:	00942423          	sw	s1,8(s0)
   10e5c:	fe0680e3          	beqz	a3,10e3c <__call_exitprocs+0x8c>
   10e60:	31042703          	lw	a4,784(s0)
   10e64:	009b163b          	sllw	a2,s6,s1
   10e68:	00842b83          	lw	s7,8(s0)
   10e6c:	00c77733          	and	a4,a4,a2
   10e70:	0007071b          	sext.w	a4,a4
   10e74:	02071263          	bnez	a4,10e98 <__call_exitprocs+0xe8>
   10e78:	000680e7          	jalr	a3
   10e7c:	00842703          	lw	a4,8(s0)
   10e80:	1f89b783          	ld	a5,504(s3)
   10e84:	f77712e3          	bne	a4,s7,10de8 <__call_exitprocs+0x38>
   10e88:	faf40ae3          	beq	s0,a5,10e3c <__call_exitprocs+0x8c>
   10e8c:	f5dff06f          	j	10de8 <__call_exitprocs+0x38>
   10e90:	00093823          	sd	zero,16(s2)
   10e94:	fc9ff06f          	j	10e5c <__call_exitprocs+0xac>
   10e98:	31442783          	lw	a5,788(s0)
   10e9c:	11093583          	ld	a1,272(s2)
   10ea0:	00c7f7b3          	and	a5,a5,a2
   10ea4:	0007879b          	sext.w	a5,a5
   10ea8:	00079863          	bnez	a5,10eb8 <__call_exitprocs+0x108>
   10eac:	000a8513          	mv	a0,s5
   10eb0:	000680e7          	jalr	a3
   10eb4:	fc9ff06f          	j	10e7c <__call_exitprocs+0xcc>
   10eb8:	00058513          	mv	a0,a1
   10ebc:	000680e7          	jalr	a3
   10ec0:	fbdff06f          	j	10e7c <__call_exitprocs+0xcc>
   10ec4:	0000                	unimp
	...

0000000000010ec8 <conv_stat>:
   10ec8:	0005b783          	ld	a5,0(a1)
   10ecc:	00f51023          	sh	a5,0(a0)
   10ed0:	0085b783          	ld	a5,8(a1)
   10ed4:	00f51123          	sh	a5,2(a0)
   10ed8:	0105a783          	lw	a5,16(a1)
   10edc:	00f52223          	sw	a5,4(a0)
   10ee0:	0145a783          	lw	a5,20(a1)
   10ee4:	00f51423          	sh	a5,8(a0)
   10ee8:	0185a783          	lw	a5,24(a1)
   10eec:	00f51523          	sh	a5,10(a0)
   10ef0:	01c5a783          	lw	a5,28(a1)
   10ef4:	00f51623          	sh	a5,12(a0)
   10ef8:	0205b783          	ld	a5,32(a1)
   10efc:	00f51723          	sh	a5,14(a0)
   10f00:	0305b783          	ld	a5,48(a1)
   10f04:	00f53823          	sd	a5,16(a0)
   10f08:	0405b783          	ld	a5,64(a1)
   10f0c:	04f53823          	sd	a5,80(a0)
   10f10:	0385a783          	lw	a5,56(a1)
   10f14:	04f53423          	sd	a5,72(a0)
   10f18:	0485b783          	ld	a5,72(a1)
   10f1c:	00f53c23          	sd	a5,24(a0)
   10f20:	0585b783          	ld	a5,88(a1)
   10f24:	02f53423          	sd	a5,40(a0)
   10f28:	0685b783          	ld	a5,104(a1)
   10f2c:	02f53c23          	sd	a5,56(a0)
   10f30:	00008067          	ret

0000000000010f34 <__syscall_error>:
   10f34:	ff010113          	addi	sp,sp,-16
   10f38:	00813023          	sd	s0,0(sp)
   10f3c:	00113423          	sd	ra,8(sp)
   10f40:	00050413          	mv	s0,a0
   10f44:	00000097          	auipc	ra,0x0
   10f48:	5f8080e7          	jalr	1528(ra) # 1153c <__errno>
   10f4c:	408007bb          	negw	a5,s0
   10f50:	00813083          	ld	ra,8(sp)
   10f54:	00013403          	ld	s0,0(sp)
   10f58:	00f52023          	sw	a5,0(a0)
   10f5c:	fff00513          	li	a0,-1
   10f60:	01010113          	addi	sp,sp,16
   10f64:	00008067          	ret

0000000000010f68 <__internal_syscall>:
   10f68:	00050893          	mv	a7,a0
   10f6c:	00058513          	mv	a0,a1
   10f70:	00060593          	mv	a1,a2
   10f74:	00068613          	mv	a2,a3
   10f78:	00070693          	mv	a3,a4
   10f7c:	00000073          	ecall
   10f80:	00055663          	bgez	a0,10f8c <__internal_syscall+0x24>
   10f84:	00000317          	auipc	t1,0x0
   10f88:	fb030067          	jr	-80(t1) # 10f34 <__syscall_error>
   10f8c:	00008067          	ret

0000000000010f90 <open>:
   10f90:	ff010113          	addi	sp,sp,-16
   10f94:	00060693          	mv	a3,a2
   10f98:	00000713          	li	a4,0
   10f9c:	00058613          	mv	a2,a1
   10fa0:	00050593          	mv	a1,a0
   10fa4:	40000513          	li	a0,1024
   10fa8:	00113423          	sd	ra,8(sp)
   10fac:	00000097          	auipc	ra,0x0
   10fb0:	fbc080e7          	jalr	-68(ra) # 10f68 <__internal_syscall>
   10fb4:	00813083          	ld	ra,8(sp)
   10fb8:	0005051b          	sext.w	a0,a0
   10fbc:	01010113          	addi	sp,sp,16
   10fc0:	00008067          	ret

0000000000010fc4 <openat>:
   10fc4:	ff010113          	addi	sp,sp,-16
   10fc8:	00068713          	mv	a4,a3
   10fcc:	00060693          	mv	a3,a2
   10fd0:	00058613          	mv	a2,a1
   10fd4:	00050593          	mv	a1,a0
   10fd8:	03800513          	li	a0,56
   10fdc:	00113423          	sd	ra,8(sp)
   10fe0:	f89ff0ef          	jal	ra,10f68 <__internal_syscall>
   10fe4:	00813083          	ld	ra,8(sp)
   10fe8:	0005051b          	sext.w	a0,a0
   10fec:	01010113          	addi	sp,sp,16
   10ff0:	00008067          	ret

0000000000010ff4 <lseek>:
   10ff4:	00060693          	mv	a3,a2
   10ff8:	00000713          	li	a4,0
   10ffc:	00058613          	mv	a2,a1
   11000:	00050593          	mv	a1,a0
   11004:	03e00513          	li	a0,62
   11008:	00000317          	auipc	t1,0x0
   1100c:	f6030067          	jr	-160(t1) # 10f68 <__internal_syscall>

0000000000011010 <read>:
   11010:	00060693          	mv	a3,a2
   11014:	00000713          	li	a4,0
   11018:	00058613          	mv	a2,a1
   1101c:	00050593          	mv	a1,a0
   11020:	03f00513          	li	a0,63
   11024:	f45ff06f          	j	10f68 <__internal_syscall>

0000000000011028 <write>:
   11028:	00060693          	mv	a3,a2
   1102c:	00000713          	li	a4,0
   11030:	00058613          	mv	a2,a1
   11034:	00050593          	mv	a1,a0
   11038:	04000513          	li	a0,64
   1103c:	00000317          	auipc	t1,0x0
   11040:	f2c30067          	jr	-212(t1) # 10f68 <__internal_syscall>

0000000000011044 <fstat>:
   11044:	f6010113          	addi	sp,sp,-160
   11048:	08913423          	sd	s1,136(sp)
   1104c:	00010613          	mv	a2,sp
   11050:	00058493          	mv	s1,a1
   11054:	00000713          	li	a4,0
   11058:	00050593          	mv	a1,a0
   1105c:	00000693          	li	a3,0
   11060:	05000513          	li	a0,80
   11064:	08113c23          	sd	ra,152(sp)
   11068:	08813823          	sd	s0,144(sp)
   1106c:	efdff0ef          	jal	ra,10f68 <__internal_syscall>
   11070:	00050413          	mv	s0,a0
   11074:	00010593          	mv	a1,sp
   11078:	00048513          	mv	a0,s1
   1107c:	e4dff0ef          	jal	ra,10ec8 <conv_stat>
   11080:	0004051b          	sext.w	a0,s0
   11084:	09813083          	ld	ra,152(sp)
   11088:	09013403          	ld	s0,144(sp)
   1108c:	08813483          	ld	s1,136(sp)
   11090:	0a010113          	addi	sp,sp,160
   11094:	00008067          	ret

0000000000011098 <stat>:
   11098:	f6010113          	addi	sp,sp,-160
   1109c:	08913423          	sd	s1,136(sp)
   110a0:	00010613          	mv	a2,sp
   110a4:	00058493          	mv	s1,a1
   110a8:	00000713          	li	a4,0
   110ac:	00050593          	mv	a1,a0
   110b0:	00000693          	li	a3,0
   110b4:	40e00513          	li	a0,1038
   110b8:	08113c23          	sd	ra,152(sp)
   110bc:	08813823          	sd	s0,144(sp)
   110c0:	00000097          	auipc	ra,0x0
   110c4:	ea8080e7          	jalr	-344(ra) # 10f68 <__internal_syscall>
   110c8:	00050413          	mv	s0,a0
   110cc:	00010593          	mv	a1,sp
   110d0:	00048513          	mv	a0,s1
   110d4:	00000097          	auipc	ra,0x0
   110d8:	df4080e7          	jalr	-524(ra) # 10ec8 <conv_stat>
   110dc:	0004051b          	sext.w	a0,s0
   110e0:	09813083          	ld	ra,152(sp)
   110e4:	09013403          	ld	s0,144(sp)
   110e8:	08813483          	ld	s1,136(sp)
   110ec:	0a010113          	addi	sp,sp,160
   110f0:	00008067          	ret

00000000000110f4 <lstat>:
   110f4:	f6010113          	addi	sp,sp,-160
   110f8:	08913423          	sd	s1,136(sp)
   110fc:	00010613          	mv	a2,sp
   11100:	00058493          	mv	s1,a1
   11104:	00000713          	li	a4,0
   11108:	00050593          	mv	a1,a0
   1110c:	00000693          	li	a3,0
   11110:	40f00513          	li	a0,1039
   11114:	08113c23          	sd	ra,152(sp)
   11118:	08813823          	sd	s0,144(sp)
   1111c:	e4dff0ef          	jal	ra,10f68 <__internal_syscall>
   11120:	00050413          	mv	s0,a0
   11124:	00010593          	mv	a1,sp
   11128:	00048513          	mv	a0,s1
   1112c:	d9dff0ef          	jal	ra,10ec8 <conv_stat>
   11130:	0004051b          	sext.w	a0,s0
   11134:	09813083          	ld	ra,152(sp)
   11138:	09013403          	ld	s0,144(sp)
   1113c:	08813483          	ld	s1,136(sp)
   11140:	0a010113          	addi	sp,sp,160
   11144:	00008067          	ret

0000000000011148 <fstatat>:
   11148:	f6010113          	addi	sp,sp,-160
   1114c:	08913423          	sd	s1,136(sp)
   11150:	00068713          	mv	a4,a3
   11154:	00060493          	mv	s1,a2
   11158:	00010693          	mv	a3,sp
   1115c:	00058613          	mv	a2,a1
   11160:	00050593          	mv	a1,a0
   11164:	04f00513          	li	a0,79
   11168:	08113c23          	sd	ra,152(sp)
   1116c:	08813823          	sd	s0,144(sp)
   11170:	00000097          	auipc	ra,0x0
   11174:	df8080e7          	jalr	-520(ra) # 10f68 <__internal_syscall>
   11178:	00050413          	mv	s0,a0
   1117c:	00010593          	mv	a1,sp
   11180:	00048513          	mv	a0,s1
   11184:	00000097          	auipc	ra,0x0
   11188:	d44080e7          	jalr	-700(ra) # 10ec8 <conv_stat>
   1118c:	0004051b          	sext.w	a0,s0
   11190:	09813083          	ld	ra,152(sp)
   11194:	09013403          	ld	s0,144(sp)
   11198:	08813483          	ld	s1,136(sp)
   1119c:	0a010113          	addi	sp,sp,160
   111a0:	00008067          	ret

00000000000111a4 <access>:
   111a4:	ff010113          	addi	sp,sp,-16
   111a8:	00058613          	mv	a2,a1
   111ac:	00000713          	li	a4,0
   111b0:	00050593          	mv	a1,a0
   111b4:	00000693          	li	a3,0
   111b8:	40900513          	li	a0,1033
   111bc:	00113423          	sd	ra,8(sp)
   111c0:	da9ff0ef          	jal	ra,10f68 <__internal_syscall>
   111c4:	00813083          	ld	ra,8(sp)
   111c8:	0005051b          	sext.w	a0,a0
   111cc:	01010113          	addi	sp,sp,16
   111d0:	00008067          	ret

00000000000111d4 <faccessat>:
   111d4:	ff010113          	addi	sp,sp,-16
   111d8:	00068713          	mv	a4,a3
   111dc:	00060693          	mv	a3,a2
   111e0:	00058613          	mv	a2,a1
   111e4:	00050593          	mv	a1,a0
   111e8:	03000513          	li	a0,48
   111ec:	00113423          	sd	ra,8(sp)
   111f0:	00000097          	auipc	ra,0x0
   111f4:	d78080e7          	jalr	-648(ra) # 10f68 <__internal_syscall>
   111f8:	00813083          	ld	ra,8(sp)
   111fc:	0005051b          	sext.w	a0,a0
   11200:	01010113          	addi	sp,sp,16
   11204:	00008067          	ret

0000000000011208 <close>:
   11208:	ff010113          	addi	sp,sp,-16
   1120c:	00050593          	mv	a1,a0
   11210:	00000713          	li	a4,0
   11214:	00000693          	li	a3,0
   11218:	00000613          	li	a2,0
   1121c:	03900513          	li	a0,57
   11220:	00113423          	sd	ra,8(sp)
   11224:	d45ff0ef          	jal	ra,10f68 <__internal_syscall>
   11228:	00813083          	ld	ra,8(sp)
   1122c:	0005051b          	sext.w	a0,a0
   11230:	01010113          	addi	sp,sp,16
   11234:	00008067          	ret

0000000000011238 <link>:
   11238:	ff010113          	addi	sp,sp,-16
   1123c:	00058613          	mv	a2,a1
   11240:	00000713          	li	a4,0
   11244:	00050593          	mv	a1,a0
   11248:	00000693          	li	a3,0
   1124c:	40100513          	li	a0,1025
   11250:	00113423          	sd	ra,8(sp)
   11254:	00000097          	auipc	ra,0x0
   11258:	d14080e7          	jalr	-748(ra) # 10f68 <__internal_syscall>
   1125c:	00813083          	ld	ra,8(sp)
   11260:	0005051b          	sext.w	a0,a0
   11264:	01010113          	addi	sp,sp,16
   11268:	00008067          	ret

000000000001126c <unlink>:
   1126c:	ff010113          	addi	sp,sp,-16
   11270:	00050593          	mv	a1,a0
   11274:	00000713          	li	a4,0
   11278:	00000693          	li	a3,0
   1127c:	00000613          	li	a2,0
   11280:	40200513          	li	a0,1026
   11284:	00113423          	sd	ra,8(sp)
   11288:	ce1ff0ef          	jal	ra,10f68 <__internal_syscall>
   1128c:	00813083          	ld	ra,8(sp)
   11290:	0005051b          	sext.w	a0,a0
   11294:	01010113          	addi	sp,sp,16
   11298:	00008067          	ret

000000000001129c <execve>:
   1129c:	ff010113          	addi	sp,sp,-16
   112a0:	00113423          	sd	ra,8(sp)
   112a4:	00000097          	auipc	ra,0x0
   112a8:	298080e7          	jalr	664(ra) # 1153c <__errno>
   112ac:	00813083          	ld	ra,8(sp)
   112b0:	00c00793          	li	a5,12
   112b4:	00f52023          	sw	a5,0(a0)
   112b8:	fff00513          	li	a0,-1
   112bc:	01010113          	addi	sp,sp,16
   112c0:	00008067          	ret

00000000000112c4 <fork>:
   112c4:	ff010113          	addi	sp,sp,-16
   112c8:	00113423          	sd	ra,8(sp)
   112cc:	270000ef          	jal	ra,1153c <__errno>
   112d0:	00813083          	ld	ra,8(sp)
   112d4:	00b00793          	li	a5,11
   112d8:	00f52023          	sw	a5,0(a0)
   112dc:	fff00513          	li	a0,-1
   112e0:	01010113          	addi	sp,sp,16
   112e4:	00008067          	ret

00000000000112e8 <getpid>:
   112e8:	00100513          	li	a0,1
   112ec:	00008067          	ret

00000000000112f0 <kill>:
   112f0:	ff010113          	addi	sp,sp,-16
   112f4:	00113423          	sd	ra,8(sp)
   112f8:	244000ef          	jal	ra,1153c <__errno>
   112fc:	00813083          	ld	ra,8(sp)
   11300:	01600793          	li	a5,22
   11304:	00f52023          	sw	a5,0(a0)
   11308:	fff00513          	li	a0,-1
   1130c:	01010113          	addi	sp,sp,16
   11310:	00008067          	ret

0000000000011314 <wait>:
   11314:	ff010113          	addi	sp,sp,-16
   11318:	00113423          	sd	ra,8(sp)
   1131c:	00000097          	auipc	ra,0x0
   11320:	220080e7          	jalr	544(ra) # 1153c <__errno>
   11324:	00813083          	ld	ra,8(sp)
   11328:	00a00793          	li	a5,10
   1132c:	00f52023          	sw	a5,0(a0)
   11330:	fff00513          	li	a0,-1
   11334:	01010113          	addi	sp,sp,16
   11338:	00008067          	ret

000000000001133c <isatty>:
   1133c:	f8010113          	addi	sp,sp,-128
   11340:	00810593          	addi	a1,sp,8
   11344:	06113c23          	sd	ra,120(sp)
   11348:	cfdff0ef          	jal	ra,11044 <fstat>
   1134c:	fff00793          	li	a5,-1
   11350:	00f50863          	beq	a0,a5,11360 <isatty+0x24>
   11354:	00c12503          	lw	a0,12(sp)
   11358:	40d5551b          	sraiw	a0,a0,0xd
   1135c:	00157513          	andi	a0,a0,1
   11360:	07813083          	ld	ra,120(sp)
   11364:	08010113          	addi	sp,sp,128
   11368:	00008067          	ret

000000000001136c <gettimeofday>:
   1136c:	ff010113          	addi	sp,sp,-16
   11370:	00050593          	mv	a1,a0
   11374:	00000713          	li	a4,0
   11378:	00000693          	li	a3,0
   1137c:	00000613          	li	a2,0
   11380:	0a900513          	li	a0,169
   11384:	00113423          	sd	ra,8(sp)
   11388:	00000097          	auipc	ra,0x0
   1138c:	be0080e7          	jalr	-1056(ra) # 10f68 <__internal_syscall>
   11390:	00813083          	ld	ra,8(sp)
   11394:	0005051b          	sext.w	a0,a0
   11398:	01010113          	addi	sp,sp,16
   1139c:	00008067          	ret

00000000000113a0 <times>:
   113a0:	fd010113          	addi	sp,sp,-48
   113a4:	02813023          	sd	s0,32(sp)
   113a8:	00050413          	mv	s0,a0
   113ac:	8601b783          	ld	a5,-1952(gp) # 12d60 <t0.2572>
   113b0:	00913c23          	sd	s1,24(sp)
   113b4:	02113423          	sd	ra,40(sp)
   113b8:	86018493          	addi	s1,gp,-1952 # 12d60 <t0.2572>
   113bc:	00079a63          	bnez	a5,113d0 <times+0x30>
   113c0:	00000593          	li	a1,0
   113c4:	86018513          	addi	a0,gp,-1952 # 12d60 <t0.2572>
   113c8:	00000097          	auipc	ra,0x0
   113cc:	fa4080e7          	jalr	-92(ra) # 1136c <gettimeofday>
   113d0:	00000593          	li	a1,0
   113d4:	00010513          	mv	a0,sp
   113d8:	00000097          	auipc	ra,0x0
   113dc:	f94080e7          	jalr	-108(ra) # 1136c <gettimeofday>
   113e0:	0004b783          	ld	a5,0(s1)
   113e4:	00013503          	ld	a0,0(sp)
   113e8:	000f45b7          	lui	a1,0xf4
   113ec:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe0d40>
   113f0:	40f50533          	sub	a0,a0,a5
   113f4:	ec0ff0ef          	jal	ra,10ab4 <__muldi3>
   113f8:	0084b703          	ld	a4,8(s1)
   113fc:	00813783          	ld	a5,8(sp)
   11400:	00043823          	sd	zero,16(s0)
   11404:	00043c23          	sd	zero,24(s0)
   11408:	40e787b3          	sub	a5,a5,a4
   1140c:	00f50533          	add	a0,a0,a5
   11410:	00a43023          	sd	a0,0(s0)
   11414:	00043423          	sd	zero,8(s0)
   11418:	02813083          	ld	ra,40(sp)
   1141c:	02013403          	ld	s0,32(sp)
   11420:	01813483          	ld	s1,24(sp)
   11424:	fff00513          	li	a0,-1
   11428:	03010113          	addi	sp,sp,48
   1142c:	00008067          	ret

0000000000011430 <ftime>:
   11430:	00051423          	sh	zero,8(a0)
   11434:	00053023          	sd	zero,0(a0)
   11438:	00000513          	li	a0,0
   1143c:	00008067          	ret

0000000000011440 <utime>:
   11440:	fff00513          	li	a0,-1
   11444:	00008067          	ret

0000000000011448 <chown>:
   11448:	fff00513          	li	a0,-1
   1144c:	00008067          	ret

0000000000011450 <chmod>:
   11450:	fff00513          	li	a0,-1
   11454:	00008067          	ret

0000000000011458 <chdir>:
   11458:	fff00513          	li	a0,-1
   1145c:	00008067          	ret

0000000000011460 <getcwd>:
   11460:	00000513          	li	a0,0
   11464:	00008067          	ret

0000000000011468 <sysconf>:
   11468:	00200793          	li	a5,2
   1146c:	00f50663          	beq	a0,a5,11478 <sysconf+0x10>
   11470:	fff00513          	li	a0,-1
   11474:	00008067          	ret
   11478:	000f4537          	lui	a0,0xf4
   1147c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe0d40>
   11480:	00008067          	ret

0000000000011484 <sbrk>:
   11484:	fe010113          	addi	sp,sp,-32
   11488:	00813823          	sd	s0,16(sp)
   1148c:	8201b783          	ld	a5,-2016(gp) # 12d20 <_edata>
   11490:	00913423          	sd	s1,8(sp)
   11494:	00113c23          	sd	ra,24(sp)
   11498:	00050493          	mv	s1,a0
   1149c:	04079063          	bnez	a5,114dc <sbrk+0x58>
   114a0:	00000713          	li	a4,0
   114a4:	00000693          	li	a3,0
   114a8:	00000613          	li	a2,0
   114ac:	00000593          	li	a1,0
   114b0:	0d600513          	li	a0,214
   114b4:	ab5ff0ef          	jal	ra,10f68 <__internal_syscall>
   114b8:	fff00793          	li	a5,-1
   114bc:	00f51e63          	bne	a0,a5,114d8 <sbrk+0x54>
   114c0:	fff00513          	li	a0,-1
   114c4:	01813083          	ld	ra,24(sp)
   114c8:	01013403          	ld	s0,16(sp)
   114cc:	00813483          	ld	s1,8(sp)
   114d0:	02010113          	addi	sp,sp,32
   114d4:	00008067          	ret
   114d8:	82a1b023          	sd	a0,-2016(gp) # 12d20 <_edata>
   114dc:	8201b583          	ld	a1,-2016(gp) # 12d20 <_edata>
   114e0:	00000713          	li	a4,0
   114e4:	00000693          	li	a3,0
   114e8:	00b485b3          	add	a1,s1,a1
   114ec:	00000613          	li	a2,0
   114f0:	0d600513          	li	a0,214
   114f4:	a75ff0ef          	jal	ra,10f68 <__internal_syscall>
   114f8:	8201b783          	ld	a5,-2016(gp) # 12d20 <_edata>
   114fc:	00f484b3          	add	s1,s1,a5
   11500:	fc9510e3          	bne	a0,s1,114c0 <sbrk+0x3c>
   11504:	82a1b023          	sd	a0,-2016(gp) # 12d20 <_edata>
   11508:	00078513          	mv	a0,a5
   1150c:	fb9ff06f          	j	114c4 <sbrk+0x40>

0000000000011510 <_exit>:
   11510:	ff010113          	addi	sp,sp,-16
   11514:	00050593          	mv	a1,a0
   11518:	00000713          	li	a4,0
   1151c:	00000693          	li	a3,0
   11520:	00000613          	li	a2,0
   11524:	05d00513          	li	a0,93
   11528:	00113423          	sd	ra,8(sp)
   1152c:	00000097          	auipc	ra,0x0
   11530:	a3c080e7          	jalr	-1476(ra) # 10f68 <__internal_syscall>
   11534:	0000006f          	j	11534 <_exit+0x24>
   11538:	0000                	unimp
	...

000000000001153c <__errno>:
   1153c:	8181b503          	ld	a0,-2024(gp) # 12d18 <_impure_ptr>
   11540:	00008067          	ret
   11544:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000011548 <.rodata>:
   11548:	6854                	ld	a3,144(s0)
   1154a:	2065                	0x2065
   1154c:	746e6f63          	bltu	t3,t1,11caa <__EH_FRAME_BEGIN__+0x706>
   11550:	6e65                	lui	t3,0x19
   11552:	2074                	fld	fa3,192(s0)
   11554:	4120666f          	jal	a2,17966 <__global_pointer$+0x4466>
   11558:	6920                	ld	s0,80(a0)
   1155a:	0a203a73          	csrrc	s4,0xa2,zero
   1155e:	0000                	unimp
   11560:	0020                	addi	s0,sp,8
   11562:	0000                	unimp
   11564:	0000                	unimp
   11566:	0000                	unimp
   11568:	000a                	0xa
   1156a:	0000                	unimp
   1156c:	0000                	unimp
   1156e:	0000                	unimp
   11570:	6854                	ld	a3,144(s0)
   11572:	2065                	0x2065
   11574:	746e6f63          	bltu	t3,t1,11cd2 <__EH_FRAME_BEGIN__+0x72e>
   11578:	6e65                	lui	t3,0x19
   1157a:	2074                	fld	fa3,192(s0)
   1157c:	4220666f          	jal	a2,1799e <__global_pointer$+0x449e>
   11580:	6920                	ld	s0,80(a0)
   11582:	0a203a73          	csrrc	s4,0xa2,zero
   11586:	0000                	unimp
   11588:	6854                	ld	a3,144(s0)
   1158a:	2065                	0x2065
   1158c:	746e6f63          	bltu	t3,t1,11cea <__EH_FRAME_BEGIN__+0x746>
   11590:	6e65                	lui	t3,0x19
   11592:	2074                	fld	fa3,192(s0)
   11594:	4320666f          	jal	a2,179c6 <__global_pointer$+0x44c6>
   11598:	413d                	li	sp,15
   1159a:	422a                	lw	tp,136(sp)
   1159c:	6920                	ld	s0,80(a0)
   1159e:	0a203a73          	csrrc	s4,0xa2,zero
	...

Disassembly of section .eh_frame:

00000000000115a4 <__EH_FRAME_BEGIN__>:
   115a4:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000125a8 <__frame_dummy_init_array_entry>:
   125a8:	01c0                	addi	s0,sp,196
   125aa:	0001                	nop
   125ac:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000125b0 <__do_global_dtors_aux_fini_array_entry>:
   125b0:	016c                	addi	a1,sp,140
   125b2:	0001                	nop
   125b4:	0000                	unimp
	...

Disassembly of section .data:

00000000000125b8 <impure_data>:
	...
   125c0:	2af0                	fld	fa2,208(a3)
   125c2:	0001                	nop
   125c4:	0000                	unimp
   125c6:	0000                	unimp
   125c8:	2ba0                	fld	fs0,80(a5)
   125ca:	0001                	nop
   125cc:	0000                	unimp
   125ce:	0000                	unimp
   125d0:	2c50                	fld	fa2,152(s0)
   125d2:	0001                	nop
	...
   126a0:	0001                	nop
   126a2:	0000                	unimp
   126a4:	0000                	unimp
   126a6:	0000                	unimp
   126a8:	330e                	fld	ft6,224(sp)
   126aa:	abcd                	j	12c9c <impure_data+0x6e4>
   126ac:	1234                	addi	a3,sp,296
   126ae:	e66d                	bnez	a2,12798 <impure_data+0x1e0>
   126b0:	deec                	sw	a1,124(a3)
   126b2:	0005                	c.addi	zero,1
   126b4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000012d00 <__TMC_END__>:
	...

0000000000012d08 <M>:
   12d08:	000a                	0xa
   12d0a:	0000                	unimp
   12d0c:	0000                	unimp
	...

0000000000012d10 <_global_impure_ptr>:
   12d10:	25b8                	fld	fa4,72(a1)
   12d12:	0001                	nop
   12d14:	0000                	unimp
	...

0000000000012d18 <_impure_ptr>:
   12d18:	25b8                	fld	fa4,72(a1)
   12d1a:	0001                	nop
   12d1c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000012d20 <__bss_start>:
	...

Disassembly of section .bss:

0000000000012d28 <completed.5182>:
	...

0000000000012d30 <object.5187>:
	...

0000000000012d60 <t0.2572>:
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
  10:	0ab4                	addi	a3,sp,344
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
  10:	0ab4                	addi	a3,sp,344
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0ad8                	addi	a4,sp,340
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x33262>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe3258>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa3190>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb3282>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb3192>
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
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x53216>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	b402                	fsd	ft0,40(sp)
  9e:	010a                	slli	sp,sp,0x2
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
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x2f1fe>
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
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x23628>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x231c8>
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
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x2f278>
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
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x236a2>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x23242>
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
