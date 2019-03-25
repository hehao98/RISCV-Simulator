
quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	fb018193          	addi	gp,gp,-80 # 13060 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 12878 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 128c8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	6bc000ef          	jal	ra,10784 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	59850513          	addi	a0,a0,1432 # 10664 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	53c080e7          	jalr	1340(ra) # 10610 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	600080e7          	jalr	1536(ra) # 106dc <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	30c000ef          	jal	ra,103fc <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	53430067          	jr	1332(t1) # 10628 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00013537          	lui	a0,0x13
   10104:	000137b7          	lui	a5,0x13
   10108:	86050713          	addi	a4,a0,-1952 # 12860 <__TMC_END__>
   1010c:	86078793          	addi	a5,a5,-1952 # 12860 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	86050513          	addi	a0,a0,-1952
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000137b7          	lui	a5,0x13
   10130:	00013537          	lui	a0,0x13
   10134:	86078593          	addi	a1,a5,-1952 # 12860 <__TMC_END__>
   10138:	86050793          	addi	a5,a0,-1952 # 12860 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	86050513          	addi	a0,a0,-1952
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8201c703          	lbu	a4,-2016(gp) # 12880 <completed.5182>
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
   10198:	10050513          	addi	a0,a0,256 # 11100 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18023          	sb	a5,-2016(gp) # 12880 <completed.5182>
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
   101d8:	88858593          	addi	a1,a1,-1912 # 12888 <object.5187>
   101dc:	10050513          	addi	a0,a0,256 # 11100 <__EH_FRAME_BEGIN__>
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
   103fc:	fb010113          	addi	sp,sp,-80
   10400:	04113423          	sd	ra,72(sp)
   10404:	04813023          	sd	s0,64(sp)
   10408:	05010413          	addi	s0,sp,80
   1040c:	00a00793          	li	a5,10
   10410:	fef42223          	sw	a5,-28(s0)
   10414:	000117b7          	lui	a5,0x11
   10418:	0d87b703          	ld	a4,216(a5) # 110d8 <__muldi3+0x50>
   1041c:	fae43c23          	sd	a4,-72(s0)
   10420:	0d878713          	addi	a4,a5,216
   10424:	00873703          	ld	a4,8(a4)
   10428:	fce43023          	sd	a4,-64(s0)
   1042c:	0d878713          	addi	a4,a5,216
   10430:	01073703          	ld	a4,16(a4)
   10434:	fce43423          	sd	a4,-56(s0)
   10438:	0d878713          	addi	a4,a5,216
   1043c:	01873703          	ld	a4,24(a4)
   10440:	fce43823          	sd	a4,-48(s0)
   10444:	0d878793          	addi	a5,a5,216
   10448:	0207b783          	ld	a5,32(a5)
   1044c:	fcf43c23          	sd	a5,-40(s0)
   10450:	000117b7          	lui	a5,0x11
   10454:	0b078513          	addi	a0,a5,176 # 110b0 <__muldi3+0x28>
   10458:	140000ef          	jal	ra,10598 <print_s>
   1045c:	fe042623          	sw	zero,-20(s0)
   10460:	03c0006f          	j	1049c <main+0xa0>
   10464:	fec42783          	lw	a5,-20(s0)
   10468:	00279793          	slli	a5,a5,0x2
   1046c:	ff040713          	addi	a4,s0,-16
   10470:	00f707b3          	add	a5,a4,a5
   10474:	fc87a783          	lw	a5,-56(a5)
   10478:	00078513          	mv	a0,a5
   1047c:	00000097          	auipc	ra,0x0
   10480:	0f0080e7          	jalr	240(ra) # 1056c <print_d>
   10484:	000117b7          	lui	a5,0x11
   10488:	0b878513          	addi	a0,a5,184 # 110b8 <__muldi3+0x30>
   1048c:	10c000ef          	jal	ra,10598 <print_s>
   10490:	fec42783          	lw	a5,-20(s0)
   10494:	0017879b          	addiw	a5,a5,1
   10498:	fef42623          	sw	a5,-20(s0)
   1049c:	fec42703          	lw	a4,-20(s0)
   104a0:	fe442783          	lw	a5,-28(s0)
   104a4:	0007071b          	sext.w	a4,a4
   104a8:	0007879b          	sext.w	a5,a5
   104ac:	faf74ce3          	blt	a4,a5,10464 <main+0x68>
   104b0:	000117b7          	lui	a5,0x11
   104b4:	0c078513          	addi	a0,a5,192 # 110c0 <__muldi3+0x38>
   104b8:	0e0000ef          	jal	ra,10598 <print_s>
   104bc:	000117b7          	lui	a5,0x11
   104c0:	0c878513          	addi	a0,a5,200 # 110c8 <__muldi3+0x40>
   104c4:	0d4000ef          	jal	ra,10598 <print_s>
   104c8:	fe442783          	lw	a5,-28(s0)
   104cc:	fff7879b          	addiw	a5,a5,-1
   104d0:	0007871b          	sext.w	a4,a5
   104d4:	fb840793          	addi	a5,s0,-72
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
   10504:	fc87a783          	lw	a5,-56(a5)
   10508:	00078513          	mv	a0,a5
   1050c:	00000097          	auipc	ra,0x0
   10510:	060080e7          	jalr	96(ra) # 1056c <print_d>
   10514:	000117b7          	lui	a5,0x11
   10518:	0b878513          	addi	a0,a5,184 # 110b8 <__muldi3+0x30>
   1051c:	07c000ef          	jal	ra,10598 <print_s>
   10520:	fe842783          	lw	a5,-24(s0)
   10524:	0017879b          	addiw	a5,a5,1
   10528:	fef42423          	sw	a5,-24(s0)
   1052c:	fe842703          	lw	a4,-24(s0)
   10530:	fe442783          	lw	a5,-28(s0)
   10534:	0007071b          	sext.w	a4,a4
   10538:	0007879b          	sext.w	a5,a5
   1053c:	faf74ce3          	blt	a4,a5,104f4 <main+0xf8>
   10540:	000117b7          	lui	a5,0x11
   10544:	0c078513          	addi	a0,a5,192 # 110c0 <__muldi3+0x38>
   10548:	050000ef          	jal	ra,10598 <print_s>
   1054c:	0a0000ef          	jal	ra,105ec <exit_proc>
   10550:	00000793          	li	a5,0
   10554:	00078513          	mv	a0,a5
   10558:	04813083          	ld	ra,72(sp)
   1055c:	04013403          	ld	s0,64(sp)
   10560:	05010113          	addi	sp,sp,80
   10564:	00008067          	ret
   10568:	0000                	unimp
	...

000000000001056c <print_d>:
   1056c:	fe010113          	addi	sp,sp,-32
   10570:	00813c23          	sd	s0,24(sp)
   10574:	02010413          	addi	s0,sp,32
   10578:	00050793          	mv	a5,a0
   1057c:	fef42623          	sw	a5,-20(s0)
   10580:	00200893          	li	a7,2
   10584:	00000073          	ecall
   10588:	00000013          	nop
   1058c:	01813403          	ld	s0,24(sp)
   10590:	02010113          	addi	sp,sp,32
   10594:	00008067          	ret

0000000000010598 <print_s>:
   10598:	fe010113          	addi	sp,sp,-32
   1059c:	00813c23          	sd	s0,24(sp)
   105a0:	02010413          	addi	s0,sp,32
   105a4:	fea43423          	sd	a0,-24(s0)
   105a8:	00000893          	li	a7,0
   105ac:	00000073          	ecall
   105b0:	00000013          	nop
   105b4:	01813403          	ld	s0,24(sp)
   105b8:	02010113          	addi	sp,sp,32
   105bc:	00008067          	ret

00000000000105c0 <print_c>:
   105c0:	fe010113          	addi	sp,sp,-32
   105c4:	00813c23          	sd	s0,24(sp)
   105c8:	02010413          	addi	s0,sp,32
   105cc:	00050793          	mv	a5,a0
   105d0:	fef407a3          	sb	a5,-17(s0)
   105d4:	00100893          	li	a7,1
   105d8:	00000073          	ecall
   105dc:	00000013          	nop
   105e0:	01813403          	ld	s0,24(sp)
   105e4:	02010113          	addi	sp,sp,32
   105e8:	00008067          	ret

00000000000105ec <exit_proc>:
   105ec:	ff010113          	addi	sp,sp,-16
   105f0:	00813423          	sd	s0,8(sp)
   105f4:	01010413          	addi	s0,sp,16
   105f8:	00300893          	li	a7,3
   105fc:	00000073          	ecall
   10600:	00000013          	nop
   10604:	00813403          	ld	s0,8(sp)
   10608:	01010113          	addi	sp,sp,16
   1060c:	00008067          	ret

0000000000010610 <atexit>:
   10610:	00050593          	mv	a1,a0
   10614:	00000693          	li	a3,0
   10618:	00000613          	li	a2,0
   1061c:	00000513          	li	a0,0
   10620:	2400006f          	j	10860 <__register_exitproc>
   10624:	0000                	unimp
	...

0000000000010628 <exit>:
   10628:	ff010113          	addi	sp,sp,-16
   1062c:	00000593          	li	a1,0
   10630:	00813023          	sd	s0,0(sp)
   10634:	00113423          	sd	ra,8(sp)
   10638:	00050413          	mv	s0,a0
   1063c:	2b0000ef          	jal	ra,108ec <__call_exitprocs>
   10640:	000137b7          	lui	a5,0x13
   10644:	8687b503          	ld	a0,-1944(a5) # 12868 <_global_impure_ptr>
   10648:	05853783          	ld	a5,88(a0)
   1064c:	00078463          	beqz	a5,10654 <exit+0x2c>
   10650:	000780e7          	jalr	a5
   10654:	00040513          	mv	a0,s0
   10658:	00001097          	auipc	ra,0x1
   1065c:	9f8080e7          	jalr	-1544(ra) # 11050 <_exit>
   10660:	0000                	unimp
	...

0000000000010664 <__libc_fini_array>:
   10664:	fe010113          	addi	sp,sp,-32
   10668:	000127b7          	lui	a5,0x12
   1066c:	00012737          	lui	a4,0x12
   10670:	00813823          	sd	s0,16(sp)
   10674:	11070713          	addi	a4,a4,272 # 12110 <__init_array_end>
   10678:	11878413          	addi	s0,a5,280 # 12118 <__fini_array_end>
   1067c:	40e40433          	sub	s0,s0,a4
   10680:	00913423          	sd	s1,8(sp)
   10684:	01213023          	sd	s2,0(sp)
   10688:	00113c23          	sd	ra,24(sp)
   1068c:	40345413          	srai	s0,s0,0x3
   10690:	00000493          	li	s1,0
   10694:	11878913          	addi	s2,a5,280
   10698:	02941063          	bne	s0,s1,106b8 <__libc_fini_array+0x54>
   1069c:	01013403          	ld	s0,16(sp)
   106a0:	01813083          	ld	ra,24(sp)
   106a4:	00813483          	ld	s1,8(sp)
   106a8:	00013903          	ld	s2,0(sp)
   106ac:	02010113          	addi	sp,sp,32
   106b0:	00000317          	auipc	t1,0x0
   106b4:	a4c30067          	jr	-1460(t1) # 100fc <_fini>
   106b8:	ff800593          	li	a1,-8
   106bc:	00048513          	mv	a0,s1
   106c0:	1c9000ef          	jal	ra,11088 <__muldi3>
   106c4:	00a90533          	add	a0,s2,a0
   106c8:	ff853783          	ld	a5,-8(a0)
   106cc:	00148493          	addi	s1,s1,1
   106d0:	000780e7          	jalr	a5
   106d4:	fc5ff06f          	j	10698 <__libc_fini_array+0x34>
   106d8:	0000                	unimp
	...

00000000000106dc <__libc_init_array>:
   106dc:	fe010113          	addi	sp,sp,-32
   106e0:	00813823          	sd	s0,16(sp)
   106e4:	00913423          	sd	s1,8(sp)
   106e8:	00012437          	lui	s0,0x12
   106ec:	000124b7          	lui	s1,0x12
   106f0:	10448793          	addi	a5,s1,260 # 12104 <__preinit_array_end>
   106f4:	10440413          	addi	s0,s0,260 # 12104 <__preinit_array_end>
   106f8:	40f40433          	sub	s0,s0,a5
   106fc:	01213023          	sd	s2,0(sp)
   10700:	00113c23          	sd	ra,24(sp)
   10704:	40345413          	srai	s0,s0,0x3
   10708:	10448493          	addi	s1,s1,260
   1070c:	00000913          	li	s2,0
   10710:	04891463          	bne	s2,s0,10758 <__libc_init_array+0x7c>
   10714:	000124b7          	lui	s1,0x12
   10718:	00000097          	auipc	ra,0x0
   1071c:	9e4080e7          	jalr	-1564(ra) # 100fc <_fini>
   10720:	00012437          	lui	s0,0x12
   10724:	10848793          	addi	a5,s1,264 # 12108 <__frame_dummy_init_array_entry>
   10728:	11040413          	addi	s0,s0,272 # 12110 <__init_array_end>
   1072c:	40f40433          	sub	s0,s0,a5
   10730:	40345413          	srai	s0,s0,0x3
   10734:	10848493          	addi	s1,s1,264
   10738:	00000913          	li	s2,0
   1073c:	02891863          	bne	s2,s0,1076c <__libc_init_array+0x90>
   10740:	01813083          	ld	ra,24(sp)
   10744:	01013403          	ld	s0,16(sp)
   10748:	00813483          	ld	s1,8(sp)
   1074c:	00013903          	ld	s2,0(sp)
   10750:	02010113          	addi	sp,sp,32
   10754:	00008067          	ret
   10758:	0004b783          	ld	a5,0(s1)
   1075c:	00190913          	addi	s2,s2,1
   10760:	00848493          	addi	s1,s1,8
   10764:	000780e7          	jalr	a5
   10768:	fa9ff06f          	j	10710 <__libc_init_array+0x34>
   1076c:	0004b783          	ld	a5,0(s1)
   10770:	00190913          	addi	s2,s2,1
   10774:	00848493          	addi	s1,s1,8
   10778:	000780e7          	jalr	a5
   1077c:	fc1ff06f          	j	1073c <__libc_init_array+0x60>
   10780:	0000                	unimp
	...

0000000000010784 <memset>:
   10784:	00f00813          	li	a6,15
   10788:	00050713          	mv	a4,a0
   1078c:	02c87a63          	bleu	a2,a6,107c0 <memset+0x3c>
   10790:	00f77793          	andi	a5,a4,15
   10794:	0a079063          	bnez	a5,10834 <memset+0xb0>
   10798:	06059e63          	bnez	a1,10814 <memset+0x90>
   1079c:	ff067693          	andi	a3,a2,-16
   107a0:	00f67613          	andi	a2,a2,15
   107a4:	00e686b3          	add	a3,a3,a4
   107a8:	00b73023          	sd	a1,0(a4)
   107ac:	00b73423          	sd	a1,8(a4)
   107b0:	01070713          	addi	a4,a4,16
   107b4:	fed76ae3          	bltu	a4,a3,107a8 <memset+0x24>
   107b8:	00061463          	bnez	a2,107c0 <memset+0x3c>
   107bc:	00008067          	ret
   107c0:	40c806b3          	sub	a3,a6,a2
   107c4:	00269693          	slli	a3,a3,0x2
   107c8:	00000297          	auipc	t0,0x0
   107cc:	005686b3          	add	a3,a3,t0
   107d0:	00c68067          	jr	12(a3)
   107d4:	00b70723          	sb	a1,14(a4)
   107d8:	00b706a3          	sb	a1,13(a4)
   107dc:	00b70623          	sb	a1,12(a4)
   107e0:	00b705a3          	sb	a1,11(a4)
   107e4:	00b70523          	sb	a1,10(a4)
   107e8:	00b704a3          	sb	a1,9(a4)
   107ec:	00b70423          	sb	a1,8(a4)
   107f0:	00b703a3          	sb	a1,7(a4)
   107f4:	00b70323          	sb	a1,6(a4)
   107f8:	00b702a3          	sb	a1,5(a4)
   107fc:	00b70223          	sb	a1,4(a4)
   10800:	00b701a3          	sb	a1,3(a4)
   10804:	00b70123          	sb	a1,2(a4)
   10808:	00b700a3          	sb	a1,1(a4)
   1080c:	00b70023          	sb	a1,0(a4)
   10810:	00008067          	ret
   10814:	0ff5f593          	andi	a1,a1,255
   10818:	00859693          	slli	a3,a1,0x8
   1081c:	00d5e5b3          	or	a1,a1,a3
   10820:	01059693          	slli	a3,a1,0x10
   10824:	00d5e5b3          	or	a1,a1,a3
   10828:	02059693          	slli	a3,a1,0x20
   1082c:	00d5e5b3          	or	a1,a1,a3
   10830:	f6dff06f          	j	1079c <memset+0x18>
   10834:	00279693          	slli	a3,a5,0x2
   10838:	00000297          	auipc	t0,0x0
   1083c:	005686b3          	add	a3,a3,t0
   10840:	00008293          	mv	t0,ra
   10844:	f98680e7          	jalr	-104(a3)
   10848:	00028093          	mv	ra,t0
   1084c:	ff078793          	addi	a5,a5,-16
   10850:	40f70733          	sub	a4,a4,a5
   10854:	00f60633          	add	a2,a2,a5
   10858:	f6c874e3          	bleu	a2,a6,107c0 <memset+0x3c>
   1085c:	f3dff06f          	j	10798 <memset+0x14>

0000000000010860 <__register_exitproc>:
   10860:	000137b7          	lui	a5,0x13
   10864:	8687b703          	ld	a4,-1944(a5) # 12868 <_global_impure_ptr>
   10868:	00050313          	mv	t1,a0
   1086c:	1f873783          	ld	a5,504(a4)
   10870:	00079663          	bnez	a5,1087c <__register_exitproc+0x1c>
   10874:	20070793          	addi	a5,a4,512
   10878:	1ef73c23          	sd	a5,504(a4)
   1087c:	0087a703          	lw	a4,8(a5)
   10880:	01f00813          	li	a6,31
   10884:	fff00513          	li	a0,-1
   10888:	04e84e63          	blt	a6,a4,108e4 <__register_exitproc+0x84>
   1088c:	02030e63          	beqz	t1,108c8 <__register_exitproc+0x68>
   10890:	00371813          	slli	a6,a4,0x3
   10894:	01078833          	add	a6,a5,a6
   10898:	10c83823          	sd	a2,272(a6)
   1089c:	3107a883          	lw	a7,784(a5)
   108a0:	00100613          	li	a2,1
   108a4:	00e6163b          	sllw	a2,a2,a4
   108a8:	00c8e8b3          	or	a7,a7,a2
   108ac:	3117a823          	sw	a7,784(a5)
   108b0:	20d83823          	sd	a3,528(a6)
   108b4:	00200693          	li	a3,2
   108b8:	00d31863          	bne	t1,a3,108c8 <__register_exitproc+0x68>
   108bc:	3147a683          	lw	a3,788(a5)
   108c0:	00c6e633          	or	a2,a3,a2
   108c4:	30c7aa23          	sw	a2,788(a5)
   108c8:	0017069b          	addiw	a3,a4,1
   108cc:	00270713          	addi	a4,a4,2
   108d0:	00371713          	slli	a4,a4,0x3
   108d4:	00d7a423          	sw	a3,8(a5)
   108d8:	00e787b3          	add	a5,a5,a4
   108dc:	00b7b023          	sd	a1,0(a5)
   108e0:	00000513          	li	a0,0
   108e4:	00008067          	ret
   108e8:	0000                	unimp
	...

00000000000108ec <__call_exitprocs>:
   108ec:	fb010113          	addi	sp,sp,-80
   108f0:	000137b7          	lui	a5,0x13
   108f4:	03313423          	sd	s3,40(sp)
   108f8:	8687b983          	ld	s3,-1944(a5) # 12868 <_global_impure_ptr>
   108fc:	03413023          	sd	s4,32(sp)
   10900:	01513c23          	sd	s5,24(sp)
   10904:	01613823          	sd	s6,16(sp)
   10908:	04113423          	sd	ra,72(sp)
   1090c:	04813023          	sd	s0,64(sp)
   10910:	02913c23          	sd	s1,56(sp)
   10914:	03213823          	sd	s2,48(sp)
   10918:	01713423          	sd	s7,8(sp)
   1091c:	00050a93          	mv	s5,a0
   10920:	00058a13          	mv	s4,a1
   10924:	00100b13          	li	s6,1
   10928:	1f89b403          	ld	s0,504(s3)
   1092c:	00040c63          	beqz	s0,10944 <__call_exitprocs+0x58>
   10930:	00842483          	lw	s1,8(s0)
   10934:	fff4849b          	addiw	s1,s1,-1
   10938:	00349913          	slli	s2,s1,0x3
   1093c:	01240933          	add	s2,s0,s2
   10940:	0204d863          	bgez	s1,10970 <__call_exitprocs+0x84>
   10944:	04813083          	ld	ra,72(sp)
   10948:	04013403          	ld	s0,64(sp)
   1094c:	03813483          	ld	s1,56(sp)
   10950:	03013903          	ld	s2,48(sp)
   10954:	02813983          	ld	s3,40(sp)
   10958:	02013a03          	ld	s4,32(sp)
   1095c:	01813a83          	ld	s5,24(sp)
   10960:	01013b03          	ld	s6,16(sp)
   10964:	00813b83          	ld	s7,8(sp)
   10968:	05010113          	addi	sp,sp,80
   1096c:	00008067          	ret
   10970:	000a0c63          	beqz	s4,10988 <__call_exitprocs+0x9c>
   10974:	21093783          	ld	a5,528(s2)
   10978:	01478863          	beq	a5,s4,10988 <__call_exitprocs+0x9c>
   1097c:	fff4849b          	addiw	s1,s1,-1
   10980:	ff890913          	addi	s2,s2,-8
   10984:	fbdff06f          	j	10940 <__call_exitprocs+0x54>
   10988:	00842783          	lw	a5,8(s0)
   1098c:	01093683          	ld	a3,16(s2)
   10990:	fff7879b          	addiw	a5,a5,-1
   10994:	02979e63          	bne	a5,s1,109d0 <__call_exitprocs+0xe4>
   10998:	00942423          	sw	s1,8(s0)
   1099c:	fe0680e3          	beqz	a3,1097c <__call_exitprocs+0x90>
   109a0:	31042703          	lw	a4,784(s0)
   109a4:	009b163b          	sllw	a2,s6,s1
   109a8:	00842b83          	lw	s7,8(s0)
   109ac:	00c77733          	and	a4,a4,a2
   109b0:	0007071b          	sext.w	a4,a4
   109b4:	02071263          	bnez	a4,109d8 <__call_exitprocs+0xec>
   109b8:	000680e7          	jalr	a3
   109bc:	00842703          	lw	a4,8(s0)
   109c0:	1f89b783          	ld	a5,504(s3)
   109c4:	f77712e3          	bne	a4,s7,10928 <__call_exitprocs+0x3c>
   109c8:	faf40ae3          	beq	s0,a5,1097c <__call_exitprocs+0x90>
   109cc:	f5dff06f          	j	10928 <__call_exitprocs+0x3c>
   109d0:	00093823          	sd	zero,16(s2)
   109d4:	fc9ff06f          	j	1099c <__call_exitprocs+0xb0>
   109d8:	31442783          	lw	a5,788(s0)
   109dc:	11093583          	ld	a1,272(s2)
   109e0:	00c7f7b3          	and	a5,a5,a2
   109e4:	0007879b          	sext.w	a5,a5
   109e8:	00079863          	bnez	a5,109f8 <__call_exitprocs+0x10c>
   109ec:	000a8513          	mv	a0,s5
   109f0:	000680e7          	jalr	a3
   109f4:	fc9ff06f          	j	109bc <__call_exitprocs+0xd0>
   109f8:	00058513          	mv	a0,a1
   109fc:	000680e7          	jalr	a3
   10a00:	fbdff06f          	j	109bc <__call_exitprocs+0xd0>
   10a04:	0000                	unimp
	...

0000000000010a08 <conv_stat>:
   10a08:	0005b783          	ld	a5,0(a1)
   10a0c:	00f51023          	sh	a5,0(a0)
   10a10:	0085b783          	ld	a5,8(a1)
   10a14:	00f51123          	sh	a5,2(a0)
   10a18:	0105a783          	lw	a5,16(a1)
   10a1c:	00f52223          	sw	a5,4(a0)
   10a20:	0145a783          	lw	a5,20(a1)
   10a24:	00f51423          	sh	a5,8(a0)
   10a28:	0185a783          	lw	a5,24(a1)
   10a2c:	00f51523          	sh	a5,10(a0)
   10a30:	01c5a783          	lw	a5,28(a1)
   10a34:	00f51623          	sh	a5,12(a0)
   10a38:	0205b783          	ld	a5,32(a1)
   10a3c:	00f51723          	sh	a5,14(a0)
   10a40:	0305b783          	ld	a5,48(a1)
   10a44:	00f53823          	sd	a5,16(a0)
   10a48:	0405b783          	ld	a5,64(a1)
   10a4c:	04f53823          	sd	a5,80(a0)
   10a50:	0385a783          	lw	a5,56(a1)
   10a54:	04f53423          	sd	a5,72(a0)
   10a58:	0485b783          	ld	a5,72(a1)
   10a5c:	00f53c23          	sd	a5,24(a0)
   10a60:	0585b783          	ld	a5,88(a1)
   10a64:	02f53423          	sd	a5,40(a0)
   10a68:	0685b783          	ld	a5,104(a1)
   10a6c:	02f53c23          	sd	a5,56(a0)
   10a70:	00008067          	ret

0000000000010a74 <__syscall_error>:
   10a74:	ff010113          	addi	sp,sp,-16
   10a78:	00813023          	sd	s0,0(sp)
   10a7c:	00113423          	sd	ra,8(sp)
   10a80:	00050413          	mv	s0,a0
   10a84:	00000097          	auipc	ra,0x0
   10a88:	5f8080e7          	jalr	1528(ra) # 1107c <__errno>
   10a8c:	408007bb          	negw	a5,s0
   10a90:	00813083          	ld	ra,8(sp)
   10a94:	00013403          	ld	s0,0(sp)
   10a98:	00f52023          	sw	a5,0(a0)
   10a9c:	fff00513          	li	a0,-1
   10aa0:	01010113          	addi	sp,sp,16
   10aa4:	00008067          	ret

0000000000010aa8 <__internal_syscall>:
   10aa8:	00050893          	mv	a7,a0
   10aac:	00058513          	mv	a0,a1
   10ab0:	00060593          	mv	a1,a2
   10ab4:	00068613          	mv	a2,a3
   10ab8:	00070693          	mv	a3,a4
   10abc:	00000073          	ecall
   10ac0:	00055663          	bgez	a0,10acc <__internal_syscall+0x24>
   10ac4:	00000317          	auipc	t1,0x0
   10ac8:	fb030067          	jr	-80(t1) # 10a74 <__syscall_error>
   10acc:	00008067          	ret

0000000000010ad0 <open>:
   10ad0:	ff010113          	addi	sp,sp,-16
   10ad4:	00060693          	mv	a3,a2
   10ad8:	00000713          	li	a4,0
   10adc:	00058613          	mv	a2,a1
   10ae0:	00050593          	mv	a1,a0
   10ae4:	40000513          	li	a0,1024
   10ae8:	00113423          	sd	ra,8(sp)
   10aec:	00000097          	auipc	ra,0x0
   10af0:	fbc080e7          	jalr	-68(ra) # 10aa8 <__internal_syscall>
   10af4:	00813083          	ld	ra,8(sp)
   10af8:	0005051b          	sext.w	a0,a0
   10afc:	01010113          	addi	sp,sp,16
   10b00:	00008067          	ret

0000000000010b04 <openat>:
   10b04:	ff010113          	addi	sp,sp,-16
   10b08:	00068713          	mv	a4,a3
   10b0c:	00060693          	mv	a3,a2
   10b10:	00058613          	mv	a2,a1
   10b14:	00050593          	mv	a1,a0
   10b18:	03800513          	li	a0,56
   10b1c:	00113423          	sd	ra,8(sp)
   10b20:	f89ff0ef          	jal	ra,10aa8 <__internal_syscall>
   10b24:	00813083          	ld	ra,8(sp)
   10b28:	0005051b          	sext.w	a0,a0
   10b2c:	01010113          	addi	sp,sp,16
   10b30:	00008067          	ret

0000000000010b34 <lseek>:
   10b34:	00060693          	mv	a3,a2
   10b38:	00000713          	li	a4,0
   10b3c:	00058613          	mv	a2,a1
   10b40:	00050593          	mv	a1,a0
   10b44:	03e00513          	li	a0,62
   10b48:	00000317          	auipc	t1,0x0
   10b4c:	f6030067          	jr	-160(t1) # 10aa8 <__internal_syscall>

0000000000010b50 <read>:
   10b50:	00060693          	mv	a3,a2
   10b54:	00000713          	li	a4,0
   10b58:	00058613          	mv	a2,a1
   10b5c:	00050593          	mv	a1,a0
   10b60:	03f00513          	li	a0,63
   10b64:	f45ff06f          	j	10aa8 <__internal_syscall>

0000000000010b68 <write>:
   10b68:	00060693          	mv	a3,a2
   10b6c:	00000713          	li	a4,0
   10b70:	00058613          	mv	a2,a1
   10b74:	00050593          	mv	a1,a0
   10b78:	04000513          	li	a0,64
   10b7c:	00000317          	auipc	t1,0x0
   10b80:	f2c30067          	jr	-212(t1) # 10aa8 <__internal_syscall>

0000000000010b84 <fstat>:
   10b84:	f6010113          	addi	sp,sp,-160
   10b88:	08913423          	sd	s1,136(sp)
   10b8c:	00010613          	mv	a2,sp
   10b90:	00058493          	mv	s1,a1
   10b94:	00000713          	li	a4,0
   10b98:	00050593          	mv	a1,a0
   10b9c:	00000693          	li	a3,0
   10ba0:	05000513          	li	a0,80
   10ba4:	08113c23          	sd	ra,152(sp)
   10ba8:	08813823          	sd	s0,144(sp)
   10bac:	efdff0ef          	jal	ra,10aa8 <__internal_syscall>
   10bb0:	00050413          	mv	s0,a0
   10bb4:	00010593          	mv	a1,sp
   10bb8:	00048513          	mv	a0,s1
   10bbc:	e4dff0ef          	jal	ra,10a08 <conv_stat>
   10bc0:	0004051b          	sext.w	a0,s0
   10bc4:	09813083          	ld	ra,152(sp)
   10bc8:	09013403          	ld	s0,144(sp)
   10bcc:	08813483          	ld	s1,136(sp)
   10bd0:	0a010113          	addi	sp,sp,160
   10bd4:	00008067          	ret

0000000000010bd8 <stat>:
   10bd8:	f6010113          	addi	sp,sp,-160
   10bdc:	08913423          	sd	s1,136(sp)
   10be0:	00010613          	mv	a2,sp
   10be4:	00058493          	mv	s1,a1
   10be8:	00000713          	li	a4,0
   10bec:	00050593          	mv	a1,a0
   10bf0:	00000693          	li	a3,0
   10bf4:	40e00513          	li	a0,1038
   10bf8:	08113c23          	sd	ra,152(sp)
   10bfc:	08813823          	sd	s0,144(sp)
   10c00:	00000097          	auipc	ra,0x0
   10c04:	ea8080e7          	jalr	-344(ra) # 10aa8 <__internal_syscall>
   10c08:	00050413          	mv	s0,a0
   10c0c:	00010593          	mv	a1,sp
   10c10:	00048513          	mv	a0,s1
   10c14:	00000097          	auipc	ra,0x0
   10c18:	df4080e7          	jalr	-524(ra) # 10a08 <conv_stat>
   10c1c:	0004051b          	sext.w	a0,s0
   10c20:	09813083          	ld	ra,152(sp)
   10c24:	09013403          	ld	s0,144(sp)
   10c28:	08813483          	ld	s1,136(sp)
   10c2c:	0a010113          	addi	sp,sp,160
   10c30:	00008067          	ret

0000000000010c34 <lstat>:
   10c34:	f6010113          	addi	sp,sp,-160
   10c38:	08913423          	sd	s1,136(sp)
   10c3c:	00010613          	mv	a2,sp
   10c40:	00058493          	mv	s1,a1
   10c44:	00000713          	li	a4,0
   10c48:	00050593          	mv	a1,a0
   10c4c:	00000693          	li	a3,0
   10c50:	40f00513          	li	a0,1039
   10c54:	08113c23          	sd	ra,152(sp)
   10c58:	08813823          	sd	s0,144(sp)
   10c5c:	e4dff0ef          	jal	ra,10aa8 <__internal_syscall>
   10c60:	00050413          	mv	s0,a0
   10c64:	00010593          	mv	a1,sp
   10c68:	00048513          	mv	a0,s1
   10c6c:	d9dff0ef          	jal	ra,10a08 <conv_stat>
   10c70:	0004051b          	sext.w	a0,s0
   10c74:	09813083          	ld	ra,152(sp)
   10c78:	09013403          	ld	s0,144(sp)
   10c7c:	08813483          	ld	s1,136(sp)
   10c80:	0a010113          	addi	sp,sp,160
   10c84:	00008067          	ret

0000000000010c88 <fstatat>:
   10c88:	f6010113          	addi	sp,sp,-160
   10c8c:	08913423          	sd	s1,136(sp)
   10c90:	00068713          	mv	a4,a3
   10c94:	00060493          	mv	s1,a2
   10c98:	00010693          	mv	a3,sp
   10c9c:	00058613          	mv	a2,a1
   10ca0:	00050593          	mv	a1,a0
   10ca4:	04f00513          	li	a0,79
   10ca8:	08113c23          	sd	ra,152(sp)
   10cac:	08813823          	sd	s0,144(sp)
   10cb0:	00000097          	auipc	ra,0x0
   10cb4:	df8080e7          	jalr	-520(ra) # 10aa8 <__internal_syscall>
   10cb8:	00050413          	mv	s0,a0
   10cbc:	00010593          	mv	a1,sp
   10cc0:	00048513          	mv	a0,s1
   10cc4:	00000097          	auipc	ra,0x0
   10cc8:	d44080e7          	jalr	-700(ra) # 10a08 <conv_stat>
   10ccc:	0004051b          	sext.w	a0,s0
   10cd0:	09813083          	ld	ra,152(sp)
   10cd4:	09013403          	ld	s0,144(sp)
   10cd8:	08813483          	ld	s1,136(sp)
   10cdc:	0a010113          	addi	sp,sp,160
   10ce0:	00008067          	ret

0000000000010ce4 <access>:
   10ce4:	ff010113          	addi	sp,sp,-16
   10ce8:	00058613          	mv	a2,a1
   10cec:	00000713          	li	a4,0
   10cf0:	00050593          	mv	a1,a0
   10cf4:	00000693          	li	a3,0
   10cf8:	40900513          	li	a0,1033
   10cfc:	00113423          	sd	ra,8(sp)
   10d00:	da9ff0ef          	jal	ra,10aa8 <__internal_syscall>
   10d04:	00813083          	ld	ra,8(sp)
   10d08:	0005051b          	sext.w	a0,a0
   10d0c:	01010113          	addi	sp,sp,16
   10d10:	00008067          	ret

0000000000010d14 <faccessat>:
   10d14:	ff010113          	addi	sp,sp,-16
   10d18:	00068713          	mv	a4,a3
   10d1c:	00060693          	mv	a3,a2
   10d20:	00058613          	mv	a2,a1
   10d24:	00050593          	mv	a1,a0
   10d28:	03000513          	li	a0,48
   10d2c:	00113423          	sd	ra,8(sp)
   10d30:	00000097          	auipc	ra,0x0
   10d34:	d78080e7          	jalr	-648(ra) # 10aa8 <__internal_syscall>
   10d38:	00813083          	ld	ra,8(sp)
   10d3c:	0005051b          	sext.w	a0,a0
   10d40:	01010113          	addi	sp,sp,16
   10d44:	00008067          	ret

0000000000010d48 <close>:
   10d48:	ff010113          	addi	sp,sp,-16
   10d4c:	00050593          	mv	a1,a0
   10d50:	00000713          	li	a4,0
   10d54:	00000693          	li	a3,0
   10d58:	00000613          	li	a2,0
   10d5c:	03900513          	li	a0,57
   10d60:	00113423          	sd	ra,8(sp)
   10d64:	d45ff0ef          	jal	ra,10aa8 <__internal_syscall>
   10d68:	00813083          	ld	ra,8(sp)
   10d6c:	0005051b          	sext.w	a0,a0
   10d70:	01010113          	addi	sp,sp,16
   10d74:	00008067          	ret

0000000000010d78 <link>:
   10d78:	ff010113          	addi	sp,sp,-16
   10d7c:	00058613          	mv	a2,a1
   10d80:	00000713          	li	a4,0
   10d84:	00050593          	mv	a1,a0
   10d88:	00000693          	li	a3,0
   10d8c:	40100513          	li	a0,1025
   10d90:	00113423          	sd	ra,8(sp)
   10d94:	00000097          	auipc	ra,0x0
   10d98:	d14080e7          	jalr	-748(ra) # 10aa8 <__internal_syscall>
   10d9c:	00813083          	ld	ra,8(sp)
   10da0:	0005051b          	sext.w	a0,a0
   10da4:	01010113          	addi	sp,sp,16
   10da8:	00008067          	ret

0000000000010dac <unlink>:
   10dac:	ff010113          	addi	sp,sp,-16
   10db0:	00050593          	mv	a1,a0
   10db4:	00000713          	li	a4,0
   10db8:	00000693          	li	a3,0
   10dbc:	00000613          	li	a2,0
   10dc0:	40200513          	li	a0,1026
   10dc4:	00113423          	sd	ra,8(sp)
   10dc8:	ce1ff0ef          	jal	ra,10aa8 <__internal_syscall>
   10dcc:	00813083          	ld	ra,8(sp)
   10dd0:	0005051b          	sext.w	a0,a0
   10dd4:	01010113          	addi	sp,sp,16
   10dd8:	00008067          	ret

0000000000010ddc <execve>:
   10ddc:	ff010113          	addi	sp,sp,-16
   10de0:	00113423          	sd	ra,8(sp)
   10de4:	00000097          	auipc	ra,0x0
   10de8:	298080e7          	jalr	664(ra) # 1107c <__errno>
   10dec:	00813083          	ld	ra,8(sp)
   10df0:	00c00793          	li	a5,12
   10df4:	00f52023          	sw	a5,0(a0)
   10df8:	fff00513          	li	a0,-1
   10dfc:	01010113          	addi	sp,sp,16
   10e00:	00008067          	ret

0000000000010e04 <fork>:
   10e04:	ff010113          	addi	sp,sp,-16
   10e08:	00113423          	sd	ra,8(sp)
   10e0c:	270000ef          	jal	ra,1107c <__errno>
   10e10:	00813083          	ld	ra,8(sp)
   10e14:	00b00793          	li	a5,11
   10e18:	00f52023          	sw	a5,0(a0)
   10e1c:	fff00513          	li	a0,-1
   10e20:	01010113          	addi	sp,sp,16
   10e24:	00008067          	ret

0000000000010e28 <getpid>:
   10e28:	00100513          	li	a0,1
   10e2c:	00008067          	ret

0000000000010e30 <kill>:
   10e30:	ff010113          	addi	sp,sp,-16
   10e34:	00113423          	sd	ra,8(sp)
   10e38:	244000ef          	jal	ra,1107c <__errno>
   10e3c:	00813083          	ld	ra,8(sp)
   10e40:	01600793          	li	a5,22
   10e44:	00f52023          	sw	a5,0(a0)
   10e48:	fff00513          	li	a0,-1
   10e4c:	01010113          	addi	sp,sp,16
   10e50:	00008067          	ret

0000000000010e54 <wait>:
   10e54:	ff010113          	addi	sp,sp,-16
   10e58:	00113423          	sd	ra,8(sp)
   10e5c:	00000097          	auipc	ra,0x0
   10e60:	220080e7          	jalr	544(ra) # 1107c <__errno>
   10e64:	00813083          	ld	ra,8(sp)
   10e68:	00a00793          	li	a5,10
   10e6c:	00f52023          	sw	a5,0(a0)
   10e70:	fff00513          	li	a0,-1
   10e74:	01010113          	addi	sp,sp,16
   10e78:	00008067          	ret

0000000000010e7c <isatty>:
   10e7c:	f8010113          	addi	sp,sp,-128
   10e80:	00810593          	addi	a1,sp,8
   10e84:	06113c23          	sd	ra,120(sp)
   10e88:	cfdff0ef          	jal	ra,10b84 <fstat>
   10e8c:	fff00793          	li	a5,-1
   10e90:	00f50863          	beq	a0,a5,10ea0 <isatty+0x24>
   10e94:	00c12503          	lw	a0,12(sp)
   10e98:	40d5551b          	sraiw	a0,a0,0xd
   10e9c:	00157513          	andi	a0,a0,1
   10ea0:	07813083          	ld	ra,120(sp)
   10ea4:	08010113          	addi	sp,sp,128
   10ea8:	00008067          	ret

0000000000010eac <gettimeofday>:
   10eac:	ff010113          	addi	sp,sp,-16
   10eb0:	00050593          	mv	a1,a0
   10eb4:	00000713          	li	a4,0
   10eb8:	00000693          	li	a3,0
   10ebc:	00000613          	li	a2,0
   10ec0:	0a900513          	li	a0,169
   10ec4:	00113423          	sd	ra,8(sp)
   10ec8:	00000097          	auipc	ra,0x0
   10ecc:	be0080e7          	jalr	-1056(ra) # 10aa8 <__internal_syscall>
   10ed0:	00813083          	ld	ra,8(sp)
   10ed4:	0005051b          	sext.w	a0,a0
   10ed8:	01010113          	addi	sp,sp,16
   10edc:	00008067          	ret

0000000000010ee0 <times>:
   10ee0:	fd010113          	addi	sp,sp,-48
   10ee4:	02813023          	sd	s0,32(sp)
   10ee8:	00050413          	mv	s0,a0
   10eec:	8581b783          	ld	a5,-1960(gp) # 128b8 <t0.2572>
   10ef0:	00913c23          	sd	s1,24(sp)
   10ef4:	02113423          	sd	ra,40(sp)
   10ef8:	85818493          	addi	s1,gp,-1960 # 128b8 <t0.2572>
   10efc:	00079a63          	bnez	a5,10f10 <times+0x30>
   10f00:	00000593          	li	a1,0
   10f04:	85818513          	addi	a0,gp,-1960 # 128b8 <t0.2572>
   10f08:	00000097          	auipc	ra,0x0
   10f0c:	fa4080e7          	jalr	-92(ra) # 10eac <gettimeofday>
   10f10:	00000593          	li	a1,0
   10f14:	00010513          	mv	a0,sp
   10f18:	00000097          	auipc	ra,0x0
   10f1c:	f94080e7          	jalr	-108(ra) # 10eac <gettimeofday>
   10f20:	0004b783          	ld	a5,0(s1)
   10f24:	00013503          	ld	a0,0(sp)
   10f28:	000f45b7          	lui	a1,0xf4
   10f2c:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe11e0>
   10f30:	40f50533          	sub	a0,a0,a5
   10f34:	154000ef          	jal	ra,11088 <__muldi3>
   10f38:	0084b703          	ld	a4,8(s1)
   10f3c:	00813783          	ld	a5,8(sp)
   10f40:	00043823          	sd	zero,16(s0)
   10f44:	00043c23          	sd	zero,24(s0)
   10f48:	40e787b3          	sub	a5,a5,a4
   10f4c:	00f50533          	add	a0,a0,a5
   10f50:	00a43023          	sd	a0,0(s0)
   10f54:	00043423          	sd	zero,8(s0)
   10f58:	02813083          	ld	ra,40(sp)
   10f5c:	02013403          	ld	s0,32(sp)
   10f60:	01813483          	ld	s1,24(sp)
   10f64:	fff00513          	li	a0,-1
   10f68:	03010113          	addi	sp,sp,48
   10f6c:	00008067          	ret

0000000000010f70 <ftime>:
   10f70:	00051423          	sh	zero,8(a0)
   10f74:	00053023          	sd	zero,0(a0)
   10f78:	00000513          	li	a0,0
   10f7c:	00008067          	ret

0000000000010f80 <utime>:
   10f80:	fff00513          	li	a0,-1
   10f84:	00008067          	ret

0000000000010f88 <chown>:
   10f88:	fff00513          	li	a0,-1
   10f8c:	00008067          	ret

0000000000010f90 <chmod>:
   10f90:	fff00513          	li	a0,-1
   10f94:	00008067          	ret

0000000000010f98 <chdir>:
   10f98:	fff00513          	li	a0,-1
   10f9c:	00008067          	ret

0000000000010fa0 <getcwd>:
   10fa0:	00000513          	li	a0,0
   10fa4:	00008067          	ret

0000000000010fa8 <sysconf>:
   10fa8:	00200793          	li	a5,2
   10fac:	00f50663          	beq	a0,a5,10fb8 <sysconf+0x10>
   10fb0:	fff00513          	li	a0,-1
   10fb4:	00008067          	ret
   10fb8:	000f4537          	lui	a0,0xf4
   10fbc:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe11e0>
   10fc0:	00008067          	ret

0000000000010fc4 <sbrk>:
   10fc4:	fe010113          	addi	sp,sp,-32
   10fc8:	00813823          	sd	s0,16(sp)
   10fcc:	8181b783          	ld	a5,-2024(gp) # 12878 <_edata>
   10fd0:	00913423          	sd	s1,8(sp)
   10fd4:	00113c23          	sd	ra,24(sp)
   10fd8:	00050493          	mv	s1,a0
   10fdc:	04079063          	bnez	a5,1101c <sbrk+0x58>
   10fe0:	00000713          	li	a4,0
   10fe4:	00000693          	li	a3,0
   10fe8:	00000613          	li	a2,0
   10fec:	00000593          	li	a1,0
   10ff0:	0d600513          	li	a0,214
   10ff4:	ab5ff0ef          	jal	ra,10aa8 <__internal_syscall>
   10ff8:	fff00793          	li	a5,-1
   10ffc:	00f51e63          	bne	a0,a5,11018 <sbrk+0x54>
   11000:	fff00513          	li	a0,-1
   11004:	01813083          	ld	ra,24(sp)
   11008:	01013403          	ld	s0,16(sp)
   1100c:	00813483          	ld	s1,8(sp)
   11010:	02010113          	addi	sp,sp,32
   11014:	00008067          	ret
   11018:	80a1bc23          	sd	a0,-2024(gp) # 12878 <_edata>
   1101c:	8181b583          	ld	a1,-2024(gp) # 12878 <_edata>
   11020:	00000713          	li	a4,0
   11024:	00000693          	li	a3,0
   11028:	00b485b3          	add	a1,s1,a1
   1102c:	00000613          	li	a2,0
   11030:	0d600513          	li	a0,214
   11034:	a75ff0ef          	jal	ra,10aa8 <__internal_syscall>
   11038:	8181b783          	ld	a5,-2024(gp) # 12878 <_edata>
   1103c:	00f484b3          	add	s1,s1,a5
   11040:	fc9510e3          	bne	a0,s1,11000 <sbrk+0x3c>
   11044:	80a1bc23          	sd	a0,-2024(gp) # 12878 <_edata>
   11048:	00078513          	mv	a0,a5
   1104c:	fb9ff06f          	j	11004 <sbrk+0x40>

0000000000011050 <_exit>:
   11050:	ff010113          	addi	sp,sp,-16
   11054:	00050593          	mv	a1,a0
   11058:	00000713          	li	a4,0
   1105c:	00000693          	li	a3,0
   11060:	00000613          	li	a2,0
   11064:	05d00513          	li	a0,93
   11068:	00113423          	sd	ra,8(sp)
   1106c:	00000097          	auipc	ra,0x0
   11070:	a3c080e7          	jalr	-1476(ra) # 10aa8 <__internal_syscall>
   11074:	0000006f          	j	11074 <_exit+0x24>
   11078:	0000                	unimp
	...

000000000001107c <__errno>:
   1107c:	8101b503          	ld	a0,-2032(gp) # 12870 <_impure_ptr>
   11080:	00008067          	ret
   11084:	0000                	unimp
	...

0000000000011088 <__muldi3>:
   11088:	00050613          	mv	a2,a0
   1108c:	00000513          	li	a0,0
   11090:	0015f693          	andi	a3,a1,1
   11094:	00068463          	beqz	a3,1109c <__muldi3+0x14>
   11098:	00c50533          	add	a0,a0,a2
   1109c:	0015d593          	srli	a1,a1,0x1
   110a0:	00161613          	slli	a2,a2,0x1
   110a4:	fe0596e3          	bnez	a1,11090 <__muldi3+0x8>
   110a8:	00008067          	ret
   110ac:	0000                	unimp
	...

Disassembly of section .rodata:

00000000000110b0 <.rodata>:
   110b0:	7250                	ld	a2,160(a2)
   110b2:	7665                	lui	a2,0xffff9
   110b4:	4120                	lw	s0,64(a0)
   110b6:	003a                	0x3a
   110b8:	0020                	addi	s0,sp,8
   110ba:	0000                	unimp
   110bc:	0000                	unimp
   110be:	0000                	unimp
   110c0:	000a                	0xa
   110c2:	0000                	unimp
   110c4:	0000                	unimp
   110c6:	0000                	unimp
   110c8:	74726f53          	0x74726f53
   110cc:	6465                	lui	s0,0x19
   110ce:	4120                	lw	s0,64(a0)
   110d0:	203a                	fld	ft0,392(sp)
   110d2:	0000                	unimp
   110d4:	0000                	unimp
   110d6:	0000                	unimp
   110d8:	0005                	c.addi	zero,1
   110da:	0000                	unimp
   110dc:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   110e0:	0005                	c.addi	zero,1
   110e2:	0000                	unimp
   110e4:	0006                	0x6
   110e6:	0000                	unimp
   110e8:	00000007          	0x7
   110ec:	0001                	nop
   110ee:	0000                	unimp
   110f0:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   110f4:	0005                	c.addi	zero,1
   110f6:	0000                	unimp
   110f8:	0006                	0x6
   110fa:	0000                	unimp
   110fc:	0001                	nop
	...

Disassembly of section .eh_frame:

0000000000011100 <__EH_FRAME_BEGIN__>:
   11100:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000012108 <__frame_dummy_init_array_entry>:
   12108:	01c0                	addi	s0,sp,196
   1210a:	0001                	nop
   1210c:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000012110 <__do_global_dtors_aux_fini_array_entry>:
   12110:	016c                	addi	a1,sp,140
   12112:	0001                	nop
   12114:	0000                	unimp
	...

Disassembly of section .data:

0000000000012118 <impure_data>:
	...
   12120:	2650                	fld	fa2,136(a2)
   12122:	0001                	nop
   12124:	0000                	unimp
   12126:	0000                	unimp
   12128:	2700                	fld	fs0,8(a4)
   1212a:	0001                	nop
   1212c:	0000                	unimp
   1212e:	0000                	unimp
   12130:	27b0                	fld	fa2,72(a5)
   12132:	0001                	nop
	...
   12200:	0001                	nop
   12202:	0000                	unimp
   12204:	0000                	unimp
   12206:	0000                	unimp
   12208:	330e                	fld	ft6,224(sp)
   1220a:	abcd                	j	127fc <impure_data+0x6e4>
   1220c:	1234                	addi	a3,sp,296
   1220e:	e66d                	bnez	a2,122f8 <impure_data+0x1e0>
   12210:	deec                	sw	a1,124(a3)
   12212:	0005                	c.addi	zero,1
   12214:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000012860 <__TMC_END__>:
	...

0000000000012868 <_global_impure_ptr>:
   12868:	2118                	fld	fa4,0(a0)
   1286a:	0001                	nop
   1286c:	0000                	unimp
	...

0000000000012870 <_impure_ptr>:
   12870:	2118                	fld	fa4,0(a0)
   12872:	0001                	nop
   12874:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000012878 <__bss_start>:
	...

Disassembly of section .bss:

0000000000012880 <completed.5182>:
	...

0000000000012888 <object.5187>:
	...

00000000000128b8 <t0.2572>:
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
  10:	1088                	addi	a0,sp,96
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
  10:	1088                	addi	a0,sp,96
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	10ac                	addi	a1,sp,104
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x33702>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe36f8>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa3630>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb3722>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb3632>
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
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x536b6>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	8802                	jr	a6
  9e:	0110                	addi	a2,sp,128
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
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x2f69e>
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
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x23ac8>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x23668>
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
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x2f718>
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
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x23b42>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x236e2>
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
