
test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	584000ef          	jal	ra,1064c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	46050513          	addi	a0,a0,1120 # 1052c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	404080e7          	jalr	1028(ra) # 104d8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	4c8080e7          	jalr	1224(ra) # 105a4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	3f830067          	jr	1016(t1) # 104f0 <exit>

0000000000010100 <_fini>:
   10100:	00008067          	ret

0000000000010104 <deregister_tm_clones>:
   10104:	00011537          	lui	a0,0x11
   10108:	000117b7          	lui	a5,0x11
   1010c:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   10110:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10114:	00e78c63          	beq	a5,a4,1012c <deregister_tm_clones+0x28>
   10118:	00000337          	lui	t1,0x0
   1011c:	00030313          	mv	t1,t1
   10120:	00030663          	beqz	t1,1012c <deregister_tm_clones+0x28>
   10124:	75850513          	addi	a0,a0,1880
   10128:	00030067          	jr	t1
   1012c:	00008067          	ret

0000000000010130 <register_tm_clones>:
   10130:	000117b7          	lui	a5,0x11
   10134:	00011537          	lui	a0,0x11
   10138:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   1013c:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   10140:	40f585b3          	sub	a1,a1,a5
   10144:	4035d593          	srai	a1,a1,0x3
   10148:	03f5d793          	srli	a5,a1,0x3f
   1014c:	00b785b3          	add	a1,a5,a1
   10150:	4015d593          	srai	a1,a1,0x1
   10154:	00058c63          	beqz	a1,1016c <register_tm_clones+0x3c>
   10158:	00000337          	lui	t1,0x0
   1015c:	00030313          	mv	t1,t1
   10160:	00030663          	beqz	t1,1016c <register_tm_clones+0x3c>
   10164:	75850513          	addi	a0,a0,1880
   10168:	00030067          	jr	t1
   1016c:	00008067          	ret

0000000000010170 <__do_global_dtors_aux>:
   10170:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5182>
   10174:	04071663          	bnez	a4,101c0 <__do_global_dtors_aux+0x50>
   10178:	ff010113          	addi	sp,sp,-16
   1017c:	00813023          	sd	s0,0(sp)
   10180:	00113423          	sd	ra,8(sp)
   10184:	00078413          	mv	s0,a5
   10188:	f7dff0ef          	jal	ra,10104 <deregister_tm_clones>
   1018c:	000007b7          	lui	a5,0x0
   10190:	00078793          	mv	a5,a5
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x38>
   10198:	00011537          	lui	a0,0x11
   1019c:	f5050513          	addi	a0,a0,-176 # 10f50 <__EH_FRAME_BEGIN__>
   101a0:	ffff0097          	auipc	ra,0xffff0
   101a4:	e60080e7          	jalr	-416(ra) # 0 <_start-0x100b0>
   101a8:	00100793          	li	a5,1
   101ac:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5182>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	addi	sp,sp,16
   101bc:	00008067          	ret
   101c0:	00008067          	ret

00000000000101c4 <frame_dummy>:
   101c4:	000007b7          	lui	a5,0x0
   101c8:	00078793          	mv	a5,a5
   101cc:	02078663          	beqz	a5,101f8 <frame_dummy+0x34>
   101d0:	000115b7          	lui	a1,0x11
   101d4:	00011537          	lui	a0,0x11
   101d8:	ff010113          	addi	sp,sp,-16
   101dc:	78058593          	addi	a1,a1,1920 # 11780 <object.5187>
   101e0:	f5050513          	addi	a0,a0,-176 # 10f50 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	fc010113          	addi	sp,sp,-64
   10200:	02113c23          	sd	ra,56(sp)
   10204:	02813823          	sd	s0,48(sp)
   10208:	04010413          	addi	s0,sp,64
   1020c:	00a00793          	li	a5,10
   10210:	fef42623          	sw	a5,-20(s0)
   10214:	01400793          	li	a5,20
   10218:	fef42423          	sw	a5,-24(s0)
   1021c:	01e00793          	li	a5,30
   10220:	fef42223          	sw	a5,-28(s0)
   10224:	000037b7          	lui	a5,0x3
   10228:	0397879b          	addiw	a5,a5,57
   1022c:	fef42023          	sw	a5,-32(s0)
   10230:	00100793          	li	a5,1
   10234:	fcf42e23          	sw	a5,-36(s0)
   10238:	00200793          	li	a5,2
   1023c:	fcf42c23          	sw	a5,-40(s0)
   10240:	fec42703          	lw	a4,-20(s0)
   10244:	fe842783          	lw	a5,-24(s0)
   10248:	00f707bb          	addw	a5,a4,a5
   1024c:	fcf42a23          	sw	a5,-44(s0)
   10250:	fd442783          	lw	a5,-44(s0)
   10254:	00078513          	mv	a0,a5
   10258:	0b0000ef          	jal	ra,10308 <print_d>
   1025c:	fec42703          	lw	a4,-20(s0)
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	40f707bb          	subw	a5,a4,a5
   10268:	fcf42823          	sw	a5,-48(s0)
   1026c:	fd042783          	lw	a5,-48(s0)
   10270:	00078513          	mv	a0,a5
   10274:	094000ef          	jal	ra,10308 <print_d>
   10278:	fe442783          	lw	a5,-28(s0)
   1027c:	fe042703          	lw	a4,-32(s0)
   10280:	00070593          	mv	a1,a4
   10284:	00078513          	mv	a0,a5
   10288:	124000ef          	jal	ra,103ac <__muldi3>
   1028c:	00050793          	mv	a5,a0
   10290:	fcf42623          	sw	a5,-52(s0)
   10294:	fcc42783          	lw	a5,-52(s0)
   10298:	00078513          	mv	a0,a5
   1029c:	06c000ef          	jal	ra,10308 <print_d>
   102a0:	fe042783          	lw	a5,-32(s0)
   102a4:	fe442703          	lw	a4,-28(s0)
   102a8:	00070593          	mv	a1,a4
   102ac:	00078513          	mv	a0,a5
   102b0:	164000ef          	jal	ra,10414 <__divdi3>
   102b4:	00050793          	mv	a5,a0
   102b8:	fcf42a23          	sw	a5,-44(s0)
   102bc:	fd442783          	lw	a5,-44(s0)
   102c0:	00078513          	mv	a0,a5
   102c4:	044000ef          	jal	ra,10308 <print_d>
   102c8:	fe042703          	lw	a4,-32(s0)
   102cc:	fd842783          	lw	a5,-40(s0)
   102d0:	00f717bb          	sllw	a5,a4,a5
   102d4:	fcf42823          	sw	a5,-48(s0)
   102d8:	fd042783          	lw	a5,-48(s0)
   102dc:	00078513          	mv	a0,a5
   102e0:	028000ef          	jal	ra,10308 <print_d>
   102e4:	00000097          	auipc	ra,0x0
   102e8:	0a4080e7          	jalr	164(ra) # 10388 <exit_proc>
   102ec:	00000793          	li	a5,0
   102f0:	00078513          	mv	a0,a5
   102f4:	03813083          	ld	ra,56(sp)
   102f8:	03013403          	ld	s0,48(sp)
   102fc:	04010113          	addi	sp,sp,64
   10300:	00008067          	ret
   10304:	0000                	unimp
	...

0000000000010308 <print_d>:
   10308:	fe010113          	addi	sp,sp,-32
   1030c:	00813c23          	sd	s0,24(sp)
   10310:	02010413          	addi	s0,sp,32
   10314:	00050793          	mv	a5,a0
   10318:	fef42623          	sw	a5,-20(s0)
   1031c:	00200893          	li	a7,2
   10320:	00000073          	ecall
   10324:	00000013          	nop
   10328:	01813403          	ld	s0,24(sp)
   1032c:	02010113          	addi	sp,sp,32
   10330:	00008067          	ret

0000000000010334 <print_s>:
   10334:	fe010113          	addi	sp,sp,-32
   10338:	00813c23          	sd	s0,24(sp)
   1033c:	02010413          	addi	s0,sp,32
   10340:	fea43423          	sd	a0,-24(s0)
   10344:	00000893          	li	a7,0
   10348:	00000073          	ecall
   1034c:	00000013          	nop
   10350:	01813403          	ld	s0,24(sp)
   10354:	02010113          	addi	sp,sp,32
   10358:	00008067          	ret

000000000001035c <print_c>:
   1035c:	fe010113          	addi	sp,sp,-32
   10360:	00813c23          	sd	s0,24(sp)
   10364:	02010413          	addi	s0,sp,32
   10368:	00050793          	mv	a5,a0
   1036c:	fef407a3          	sb	a5,-17(s0)
   10370:	00100893          	li	a7,1
   10374:	00000073          	ecall
   10378:	00000013          	nop
   1037c:	01813403          	ld	s0,24(sp)
   10380:	02010113          	addi	sp,sp,32
   10384:	00008067          	ret

0000000000010388 <exit_proc>:
   10388:	ff010113          	addi	sp,sp,-16
   1038c:	00813423          	sd	s0,8(sp)
   10390:	01010413          	addi	s0,sp,16
   10394:	00300893          	li	a7,3
   10398:	00000073          	ecall
   1039c:	00000013          	nop
   103a0:	00813403          	ld	s0,8(sp)
   103a4:	01010113          	addi	sp,sp,16
   103a8:	00008067          	ret

00000000000103ac <__muldi3>:
   103ac:	00050613          	mv	a2,a0
   103b0:	00000513          	li	a0,0
   103b4:	0015f693          	andi	a3,a1,1
   103b8:	00068463          	beqz	a3,103c0 <__muldi3+0x14>
   103bc:	00c50533          	add	a0,a0,a2
   103c0:	0015d593          	srli	a1,a1,0x1
   103c4:	00161613          	slli	a2,a2,0x1
   103c8:	fe0596e3          	bnez	a1,103b4 <__muldi3+0x8>
   103cc:	00008067          	ret
   103d0:	0000                	unimp
	...

00000000000103d4 <__udivsi3>:
   103d4:	02051513          	slli	a0,a0,0x20
   103d8:	02059593          	slli	a1,a1,0x20
   103dc:	00008293          	mv	t0,ra
   103e0:	03c000ef          	jal	ra,1041c <__udivdi3>
   103e4:	0005051b          	sext.w	a0,a0
   103e8:	00028067          	jr	t0

00000000000103ec <__umodsi3>:
   103ec:	02051513          	slli	a0,a0,0x20
   103f0:	02059593          	slli	a1,a1,0x20
   103f4:	02055513          	srli	a0,a0,0x20
   103f8:	0205d593          	srli	a1,a1,0x20
   103fc:	00008293          	mv	t0,ra
   10400:	01c000ef          	jal	ra,1041c <__udivdi3>
   10404:	0005851b          	sext.w	a0,a1
   10408:	00028067          	jr	t0

000000000001040c <__divsi3>:
   1040c:	fff00293          	li	t0,-1
   10410:	0a558c63          	beq	a1,t0,104c8 <__moddi3+0x30>

0000000000010414 <__divdi3>:
   10414:	06054063          	bltz	a0,10474 <__umoddi3+0x10>
   10418:	0605c663          	bltz	a1,10484 <__umoddi3+0x20>

000000000001041c <__udivdi3>:
   1041c:	00058613          	mv	a2,a1
   10420:	00050593          	mv	a1,a0
   10424:	fff00513          	li	a0,-1
   10428:	02060c63          	beqz	a2,10460 <__udivdi3+0x44>
   1042c:	00100693          	li	a3,1
   10430:	00b67a63          	bleu	a1,a2,10444 <__udivdi3+0x28>
   10434:	00c05863          	blez	a2,10444 <__udivdi3+0x28>
   10438:	00161613          	slli	a2,a2,0x1
   1043c:	00169693          	slli	a3,a3,0x1
   10440:	feb66ae3          	bltu	a2,a1,10434 <__udivdi3+0x18>
   10444:	00000513          	li	a0,0
   10448:	00c5e663          	bltu	a1,a2,10454 <__udivdi3+0x38>
   1044c:	40c585b3          	sub	a1,a1,a2
   10450:	00d56533          	or	a0,a0,a3
   10454:	0016d693          	srli	a3,a3,0x1
   10458:	00165613          	srli	a2,a2,0x1
   1045c:	fe0696e3          	bnez	a3,10448 <__udivdi3+0x2c>
   10460:	00008067          	ret

0000000000010464 <__umoddi3>:
   10464:	00008293          	mv	t0,ra
   10468:	fb5ff0ef          	jal	ra,1041c <__udivdi3>
   1046c:	00058513          	mv	a0,a1
   10470:	00028067          	jr	t0
   10474:	40a00533          	neg	a0,a0
   10478:	0005d863          	bgez	a1,10488 <__umoddi3+0x24>
   1047c:	40b005b3          	neg	a1,a1
   10480:	f9dff06f          	j	1041c <__udivdi3>
   10484:	40b005b3          	neg	a1,a1
   10488:	00008293          	mv	t0,ra
   1048c:	f91ff0ef          	jal	ra,1041c <__udivdi3>
   10490:	40a00533          	neg	a0,a0
   10494:	00028067          	jr	t0

0000000000010498 <__moddi3>:
   10498:	00008293          	mv	t0,ra
   1049c:	0005ca63          	bltz	a1,104b0 <__moddi3+0x18>
   104a0:	00054c63          	bltz	a0,104b8 <__moddi3+0x20>
   104a4:	f79ff0ef          	jal	ra,1041c <__udivdi3>
   104a8:	00058513          	mv	a0,a1
   104ac:	00028067          	jr	t0
   104b0:	40b005b3          	neg	a1,a1
   104b4:	fe0558e3          	bgez	a0,104a4 <__moddi3+0xc>
   104b8:	40a00533          	neg	a0,a0
   104bc:	f61ff0ef          	jal	ra,1041c <__udivdi3>
   104c0:	40b00533          	neg	a0,a1
   104c4:	00028067          	jr	t0
   104c8:	01f29293          	slli	t0,t0,0x1f
   104cc:	f45514e3          	bne	a0,t0,10414 <__divdi3>
   104d0:	00008067          	ret
   104d4:	0000                	unimp
	...

00000000000104d8 <atexit>:
   104d8:	00050593          	mv	a1,a0
   104dc:	00000693          	li	a3,0
   104e0:	00000613          	li	a2,0
   104e4:	00000513          	li	a0,0
   104e8:	2400006f          	j	10728 <__register_exitproc>
   104ec:	0000                	unimp
	...

00000000000104f0 <exit>:
   104f0:	ff010113          	addi	sp,sp,-16
   104f4:	00000593          	li	a1,0
   104f8:	00813023          	sd	s0,0(sp)
   104fc:	00113423          	sd	ra,8(sp)
   10500:	00050413          	mv	s0,a0
   10504:	2b0000ef          	jal	ra,107b4 <__call_exitprocs>
   10508:	000117b7          	lui	a5,0x11
   1050c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10510:	05853783          	ld	a5,88(a0)
   10514:	00078463          	beqz	a5,1051c <exit+0x2c>
   10518:	000780e7          	jalr	a5
   1051c:	00040513          	mv	a0,s0
   10520:	00001097          	auipc	ra,0x1
   10524:	9f8080e7          	jalr	-1544(ra) # 10f18 <_exit>
   10528:	0000                	unimp
	...

000000000001052c <__libc_fini_array>:
   1052c:	fe010113          	addi	sp,sp,-32
   10530:	000117b7          	lui	a5,0x11
   10534:	00011737          	lui	a4,0x11
   10538:	00813823          	sd	s0,16(sp)
   1053c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10540:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10544:	40e40433          	sub	s0,s0,a4
   10548:	00913423          	sd	s1,8(sp)
   1054c:	01213023          	sd	s2,0(sp)
   10550:	00113c23          	sd	ra,24(sp)
   10554:	40345413          	srai	s0,s0,0x3
   10558:	00000493          	li	s1,0
   1055c:	01078913          	addi	s2,a5,16
   10560:	02941063          	bne	s0,s1,10580 <__libc_fini_array+0x54>
   10564:	01013403          	ld	s0,16(sp)
   10568:	01813083          	ld	ra,24(sp)
   1056c:	00813483          	ld	s1,8(sp)
   10570:	00013903          	ld	s2,0(sp)
   10574:	02010113          	addi	sp,sp,32
   10578:	00000317          	auipc	t1,0x0
   1057c:	b8830067          	jr	-1144(t1) # 10100 <_fini>
   10580:	ff800593          	li	a1,-8
   10584:	00048513          	mv	a0,s1
   10588:	e25ff0ef          	jal	ra,103ac <__muldi3>
   1058c:	00a90533          	add	a0,s2,a0
   10590:	ff853783          	ld	a5,-8(a0)
   10594:	00148493          	addi	s1,s1,1
   10598:	000780e7          	jalr	a5
   1059c:	fc5ff06f          	j	10560 <__libc_fini_array+0x34>
   105a0:	0000                	unimp
	...

00000000000105a4 <__libc_init_array>:
   105a4:	fe010113          	addi	sp,sp,-32
   105a8:	00813823          	sd	s0,16(sp)
   105ac:	00913423          	sd	s1,8(sp)
   105b0:	00011437          	lui	s0,0x11
   105b4:	000114b7          	lui	s1,0x11
   105b8:	00048793          	mv	a5,s1
   105bc:	00040413          	mv	s0,s0
   105c0:	40f40433          	sub	s0,s0,a5
   105c4:	01213023          	sd	s2,0(sp)
   105c8:	00113c23          	sd	ra,24(sp)
   105cc:	40345413          	srai	s0,s0,0x3
   105d0:	00048493          	mv	s1,s1
   105d4:	00000913          	li	s2,0
   105d8:	04891463          	bne	s2,s0,10620 <__libc_init_array+0x7c>
   105dc:	000114b7          	lui	s1,0x11
   105e0:	00000097          	auipc	ra,0x0
   105e4:	b20080e7          	jalr	-1248(ra) # 10100 <_fini>
   105e8:	00011437          	lui	s0,0x11
   105ec:	00048793          	mv	a5,s1
   105f0:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   105f4:	40f40433          	sub	s0,s0,a5
   105f8:	40345413          	srai	s0,s0,0x3
   105fc:	00048493          	mv	s1,s1
   10600:	00000913          	li	s2,0
   10604:	02891863          	bne	s2,s0,10634 <__libc_init_array+0x90>
   10608:	01813083          	ld	ra,24(sp)
   1060c:	01013403          	ld	s0,16(sp)
   10610:	00813483          	ld	s1,8(sp)
   10614:	00013903          	ld	s2,0(sp)
   10618:	02010113          	addi	sp,sp,32
   1061c:	00008067          	ret
   10620:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10624:	00190913          	addi	s2,s2,1
   10628:	00848493          	addi	s1,s1,8
   1062c:	000780e7          	jalr	a5
   10630:	fa9ff06f          	j	105d8 <__libc_init_array+0x34>
   10634:	0004b783          	ld	a5,0(s1)
   10638:	00190913          	addi	s2,s2,1
   1063c:	00848493          	addi	s1,s1,8
   10640:	000780e7          	jalr	a5
   10644:	fc1ff06f          	j	10604 <__libc_init_array+0x60>
   10648:	0000                	unimp
	...

000000000001064c <memset>:
   1064c:	00f00813          	li	a6,15
   10650:	00050713          	mv	a4,a0
   10654:	02c87a63          	bleu	a2,a6,10688 <memset+0x3c>
   10658:	00f77793          	andi	a5,a4,15
   1065c:	0a079063          	bnez	a5,106fc <memset+0xb0>
   10660:	06059e63          	bnez	a1,106dc <memset+0x90>
   10664:	ff067693          	andi	a3,a2,-16
   10668:	00f67613          	andi	a2,a2,15
   1066c:	00e686b3          	add	a3,a3,a4
   10670:	00b73023          	sd	a1,0(a4)
   10674:	00b73423          	sd	a1,8(a4)
   10678:	01070713          	addi	a4,a4,16
   1067c:	fed76ae3          	bltu	a4,a3,10670 <memset+0x24>
   10680:	00061463          	bnez	a2,10688 <memset+0x3c>
   10684:	00008067          	ret
   10688:	40c806b3          	sub	a3,a6,a2
   1068c:	00269693          	slli	a3,a3,0x2
   10690:	00000297          	auipc	t0,0x0
   10694:	005686b3          	add	a3,a3,t0
   10698:	00c68067          	jr	12(a3)
   1069c:	00b70723          	sb	a1,14(a4)
   106a0:	00b706a3          	sb	a1,13(a4)
   106a4:	00b70623          	sb	a1,12(a4)
   106a8:	00b705a3          	sb	a1,11(a4)
   106ac:	00b70523          	sb	a1,10(a4)
   106b0:	00b704a3          	sb	a1,9(a4)
   106b4:	00b70423          	sb	a1,8(a4)
   106b8:	00b703a3          	sb	a1,7(a4)
   106bc:	00b70323          	sb	a1,6(a4)
   106c0:	00b702a3          	sb	a1,5(a4)
   106c4:	00b70223          	sb	a1,4(a4)
   106c8:	00b701a3          	sb	a1,3(a4)
   106cc:	00b70123          	sb	a1,2(a4)
   106d0:	00b700a3          	sb	a1,1(a4)
   106d4:	00b70023          	sb	a1,0(a4)
   106d8:	00008067          	ret
   106dc:	0ff5f593          	andi	a1,a1,255
   106e0:	00859693          	slli	a3,a1,0x8
   106e4:	00d5e5b3          	or	a1,a1,a3
   106e8:	01059693          	slli	a3,a1,0x10
   106ec:	00d5e5b3          	or	a1,a1,a3
   106f0:	02059693          	slli	a3,a1,0x20
   106f4:	00d5e5b3          	or	a1,a1,a3
   106f8:	f6dff06f          	j	10664 <memset+0x18>
   106fc:	00279693          	slli	a3,a5,0x2
   10700:	00000297          	auipc	t0,0x0
   10704:	005686b3          	add	a3,a3,t0
   10708:	00008293          	mv	t0,ra
   1070c:	f98680e7          	jalr	-104(a3)
   10710:	00028093          	mv	ra,t0
   10714:	ff078793          	addi	a5,a5,-16
   10718:	40f70733          	sub	a4,a4,a5
   1071c:	00f60633          	add	a2,a2,a5
   10720:	f6c874e3          	bleu	a2,a6,10688 <memset+0x3c>
   10724:	f3dff06f          	j	10660 <memset+0x14>

0000000000010728 <__register_exitproc>:
   10728:	000117b7          	lui	a5,0x11
   1072c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10730:	00050313          	mv	t1,a0
   10734:	1f873783          	ld	a5,504(a4)
   10738:	00079663          	bnez	a5,10744 <__register_exitproc+0x1c>
   1073c:	20070793          	addi	a5,a4,512
   10740:	1ef73c23          	sd	a5,504(a4)
   10744:	0087a703          	lw	a4,8(a5)
   10748:	01f00813          	li	a6,31
   1074c:	fff00513          	li	a0,-1
   10750:	04e84e63          	blt	a6,a4,107ac <__register_exitproc+0x84>
   10754:	02030e63          	beqz	t1,10790 <__register_exitproc+0x68>
   10758:	00371813          	slli	a6,a4,0x3
   1075c:	01078833          	add	a6,a5,a6
   10760:	10c83823          	sd	a2,272(a6)
   10764:	3107a883          	lw	a7,784(a5)
   10768:	00100613          	li	a2,1
   1076c:	00e6163b          	sllw	a2,a2,a4
   10770:	00c8e8b3          	or	a7,a7,a2
   10774:	3117a823          	sw	a7,784(a5)
   10778:	20d83823          	sd	a3,528(a6)
   1077c:	00200693          	li	a3,2
   10780:	00d31863          	bne	t1,a3,10790 <__register_exitproc+0x68>
   10784:	3147a683          	lw	a3,788(a5)
   10788:	00c6e633          	or	a2,a3,a2
   1078c:	30c7aa23          	sw	a2,788(a5)
   10790:	0017069b          	addiw	a3,a4,1
   10794:	00270713          	addi	a4,a4,2
   10798:	00371713          	slli	a4,a4,0x3
   1079c:	00d7a423          	sw	a3,8(a5)
   107a0:	00e787b3          	add	a5,a5,a4
   107a4:	00b7b023          	sd	a1,0(a5)
   107a8:	00000513          	li	a0,0
   107ac:	00008067          	ret
   107b0:	0000                	unimp
	...

00000000000107b4 <__call_exitprocs>:
   107b4:	fb010113          	addi	sp,sp,-80
   107b8:	000117b7          	lui	a5,0x11
   107bc:	03313423          	sd	s3,40(sp)
   107c0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   107c4:	03413023          	sd	s4,32(sp)
   107c8:	01513c23          	sd	s5,24(sp)
   107cc:	01613823          	sd	s6,16(sp)
   107d0:	04113423          	sd	ra,72(sp)
   107d4:	04813023          	sd	s0,64(sp)
   107d8:	02913c23          	sd	s1,56(sp)
   107dc:	03213823          	sd	s2,48(sp)
   107e0:	01713423          	sd	s7,8(sp)
   107e4:	00050a93          	mv	s5,a0
   107e8:	00058a13          	mv	s4,a1
   107ec:	00100b13          	li	s6,1
   107f0:	1f89b403          	ld	s0,504(s3)
   107f4:	00040c63          	beqz	s0,1080c <__call_exitprocs+0x58>
   107f8:	00842483          	lw	s1,8(s0)
   107fc:	fff4849b          	addiw	s1,s1,-1
   10800:	00349913          	slli	s2,s1,0x3
   10804:	01240933          	add	s2,s0,s2
   10808:	0204d863          	bgez	s1,10838 <__call_exitprocs+0x84>
   1080c:	04813083          	ld	ra,72(sp)
   10810:	04013403          	ld	s0,64(sp)
   10814:	03813483          	ld	s1,56(sp)
   10818:	03013903          	ld	s2,48(sp)
   1081c:	02813983          	ld	s3,40(sp)
   10820:	02013a03          	ld	s4,32(sp)
   10824:	01813a83          	ld	s5,24(sp)
   10828:	01013b03          	ld	s6,16(sp)
   1082c:	00813b83          	ld	s7,8(sp)
   10830:	05010113          	addi	sp,sp,80
   10834:	00008067          	ret
   10838:	000a0c63          	beqz	s4,10850 <__call_exitprocs+0x9c>
   1083c:	21093783          	ld	a5,528(s2)
   10840:	01478863          	beq	a5,s4,10850 <__call_exitprocs+0x9c>
   10844:	fff4849b          	addiw	s1,s1,-1
   10848:	ff890913          	addi	s2,s2,-8
   1084c:	fbdff06f          	j	10808 <__call_exitprocs+0x54>
   10850:	00842783          	lw	a5,8(s0)
   10854:	01093683          	ld	a3,16(s2)
   10858:	fff7879b          	addiw	a5,a5,-1
   1085c:	02979e63          	bne	a5,s1,10898 <__call_exitprocs+0xe4>
   10860:	00942423          	sw	s1,8(s0)
   10864:	fe0680e3          	beqz	a3,10844 <__call_exitprocs+0x90>
   10868:	31042703          	lw	a4,784(s0)
   1086c:	009b163b          	sllw	a2,s6,s1
   10870:	00842b83          	lw	s7,8(s0)
   10874:	00c77733          	and	a4,a4,a2
   10878:	0007071b          	sext.w	a4,a4
   1087c:	02071263          	bnez	a4,108a0 <__call_exitprocs+0xec>
   10880:	000680e7          	jalr	a3
   10884:	00842703          	lw	a4,8(s0)
   10888:	1f89b783          	ld	a5,504(s3)
   1088c:	f77712e3          	bne	a4,s7,107f0 <__call_exitprocs+0x3c>
   10890:	faf40ae3          	beq	s0,a5,10844 <__call_exitprocs+0x90>
   10894:	f5dff06f          	j	107f0 <__call_exitprocs+0x3c>
   10898:	00093823          	sd	zero,16(s2)
   1089c:	fc9ff06f          	j	10864 <__call_exitprocs+0xb0>
   108a0:	31442783          	lw	a5,788(s0)
   108a4:	11093583          	ld	a1,272(s2)
   108a8:	00c7f7b3          	and	a5,a5,a2
   108ac:	0007879b          	sext.w	a5,a5
   108b0:	00079863          	bnez	a5,108c0 <__call_exitprocs+0x10c>
   108b4:	000a8513          	mv	a0,s5
   108b8:	000680e7          	jalr	a3
   108bc:	fc9ff06f          	j	10884 <__call_exitprocs+0xd0>
   108c0:	00058513          	mv	a0,a1
   108c4:	000680e7          	jalr	a3
   108c8:	fbdff06f          	j	10884 <__call_exitprocs+0xd0>
   108cc:	0000                	unimp
	...

00000000000108d0 <conv_stat>:
   108d0:	0005b783          	ld	a5,0(a1)
   108d4:	00f51023          	sh	a5,0(a0)
   108d8:	0085b783          	ld	a5,8(a1)
   108dc:	00f51123          	sh	a5,2(a0)
   108e0:	0105a783          	lw	a5,16(a1)
   108e4:	00f52223          	sw	a5,4(a0)
   108e8:	0145a783          	lw	a5,20(a1)
   108ec:	00f51423          	sh	a5,8(a0)
   108f0:	0185a783          	lw	a5,24(a1)
   108f4:	00f51523          	sh	a5,10(a0)
   108f8:	01c5a783          	lw	a5,28(a1)
   108fc:	00f51623          	sh	a5,12(a0)
   10900:	0205b783          	ld	a5,32(a1)
   10904:	00f51723          	sh	a5,14(a0)
   10908:	0305b783          	ld	a5,48(a1)
   1090c:	00f53823          	sd	a5,16(a0)
   10910:	0405b783          	ld	a5,64(a1)
   10914:	04f53823          	sd	a5,80(a0)
   10918:	0385a783          	lw	a5,56(a1)
   1091c:	04f53423          	sd	a5,72(a0)
   10920:	0485b783          	ld	a5,72(a1)
   10924:	00f53c23          	sd	a5,24(a0)
   10928:	0585b783          	ld	a5,88(a1)
   1092c:	02f53423          	sd	a5,40(a0)
   10930:	0685b783          	ld	a5,104(a1)
   10934:	02f53c23          	sd	a5,56(a0)
   10938:	00008067          	ret

000000000001093c <__syscall_error>:
   1093c:	ff010113          	addi	sp,sp,-16
   10940:	00813023          	sd	s0,0(sp)
   10944:	00113423          	sd	ra,8(sp)
   10948:	00050413          	mv	s0,a0
   1094c:	00000097          	auipc	ra,0x0
   10950:	5f8080e7          	jalr	1528(ra) # 10f44 <__errno>
   10954:	408007bb          	negw	a5,s0
   10958:	00813083          	ld	ra,8(sp)
   1095c:	00013403          	ld	s0,0(sp)
   10960:	00f52023          	sw	a5,0(a0)
   10964:	fff00513          	li	a0,-1
   10968:	01010113          	addi	sp,sp,16
   1096c:	00008067          	ret

0000000000010970 <__internal_syscall>:
   10970:	00050893          	mv	a7,a0
   10974:	00058513          	mv	a0,a1
   10978:	00060593          	mv	a1,a2
   1097c:	00068613          	mv	a2,a3
   10980:	00070693          	mv	a3,a4
   10984:	00000073          	ecall
   10988:	00055663          	bgez	a0,10994 <__internal_syscall+0x24>
   1098c:	00000317          	auipc	t1,0x0
   10990:	fb030067          	jr	-80(t1) # 1093c <__syscall_error>
   10994:	00008067          	ret

0000000000010998 <open>:
   10998:	ff010113          	addi	sp,sp,-16
   1099c:	00060693          	mv	a3,a2
   109a0:	00000713          	li	a4,0
   109a4:	00058613          	mv	a2,a1
   109a8:	00050593          	mv	a1,a0
   109ac:	40000513          	li	a0,1024
   109b0:	00113423          	sd	ra,8(sp)
   109b4:	00000097          	auipc	ra,0x0
   109b8:	fbc080e7          	jalr	-68(ra) # 10970 <__internal_syscall>
   109bc:	00813083          	ld	ra,8(sp)
   109c0:	0005051b          	sext.w	a0,a0
   109c4:	01010113          	addi	sp,sp,16
   109c8:	00008067          	ret

00000000000109cc <openat>:
   109cc:	ff010113          	addi	sp,sp,-16
   109d0:	00068713          	mv	a4,a3
   109d4:	00060693          	mv	a3,a2
   109d8:	00058613          	mv	a2,a1
   109dc:	00050593          	mv	a1,a0
   109e0:	03800513          	li	a0,56
   109e4:	00113423          	sd	ra,8(sp)
   109e8:	f89ff0ef          	jal	ra,10970 <__internal_syscall>
   109ec:	00813083          	ld	ra,8(sp)
   109f0:	0005051b          	sext.w	a0,a0
   109f4:	01010113          	addi	sp,sp,16
   109f8:	00008067          	ret

00000000000109fc <lseek>:
   109fc:	00060693          	mv	a3,a2
   10a00:	00000713          	li	a4,0
   10a04:	00058613          	mv	a2,a1
   10a08:	00050593          	mv	a1,a0
   10a0c:	03e00513          	li	a0,62
   10a10:	00000317          	auipc	t1,0x0
   10a14:	f6030067          	jr	-160(t1) # 10970 <__internal_syscall>

0000000000010a18 <read>:
   10a18:	00060693          	mv	a3,a2
   10a1c:	00000713          	li	a4,0
   10a20:	00058613          	mv	a2,a1
   10a24:	00050593          	mv	a1,a0
   10a28:	03f00513          	li	a0,63
   10a2c:	f45ff06f          	j	10970 <__internal_syscall>

0000000000010a30 <write>:
   10a30:	00060693          	mv	a3,a2
   10a34:	00000713          	li	a4,0
   10a38:	00058613          	mv	a2,a1
   10a3c:	00050593          	mv	a1,a0
   10a40:	04000513          	li	a0,64
   10a44:	00000317          	auipc	t1,0x0
   10a48:	f2c30067          	jr	-212(t1) # 10970 <__internal_syscall>

0000000000010a4c <fstat>:
   10a4c:	f6010113          	addi	sp,sp,-160
   10a50:	08913423          	sd	s1,136(sp)
   10a54:	00010613          	mv	a2,sp
   10a58:	00058493          	mv	s1,a1
   10a5c:	00000713          	li	a4,0
   10a60:	00050593          	mv	a1,a0
   10a64:	00000693          	li	a3,0
   10a68:	05000513          	li	a0,80
   10a6c:	08113c23          	sd	ra,152(sp)
   10a70:	08813823          	sd	s0,144(sp)
   10a74:	efdff0ef          	jal	ra,10970 <__internal_syscall>
   10a78:	00050413          	mv	s0,a0
   10a7c:	00010593          	mv	a1,sp
   10a80:	00048513          	mv	a0,s1
   10a84:	e4dff0ef          	jal	ra,108d0 <conv_stat>
   10a88:	0004051b          	sext.w	a0,s0
   10a8c:	09813083          	ld	ra,152(sp)
   10a90:	09013403          	ld	s0,144(sp)
   10a94:	08813483          	ld	s1,136(sp)
   10a98:	0a010113          	addi	sp,sp,160
   10a9c:	00008067          	ret

0000000000010aa0 <stat>:
   10aa0:	f6010113          	addi	sp,sp,-160
   10aa4:	08913423          	sd	s1,136(sp)
   10aa8:	00010613          	mv	a2,sp
   10aac:	00058493          	mv	s1,a1
   10ab0:	00000713          	li	a4,0
   10ab4:	00050593          	mv	a1,a0
   10ab8:	00000693          	li	a3,0
   10abc:	40e00513          	li	a0,1038
   10ac0:	08113c23          	sd	ra,152(sp)
   10ac4:	08813823          	sd	s0,144(sp)
   10ac8:	00000097          	auipc	ra,0x0
   10acc:	ea8080e7          	jalr	-344(ra) # 10970 <__internal_syscall>
   10ad0:	00050413          	mv	s0,a0
   10ad4:	00010593          	mv	a1,sp
   10ad8:	00048513          	mv	a0,s1
   10adc:	00000097          	auipc	ra,0x0
   10ae0:	df4080e7          	jalr	-524(ra) # 108d0 <conv_stat>
   10ae4:	0004051b          	sext.w	a0,s0
   10ae8:	09813083          	ld	ra,152(sp)
   10aec:	09013403          	ld	s0,144(sp)
   10af0:	08813483          	ld	s1,136(sp)
   10af4:	0a010113          	addi	sp,sp,160
   10af8:	00008067          	ret

0000000000010afc <lstat>:
   10afc:	f6010113          	addi	sp,sp,-160
   10b00:	08913423          	sd	s1,136(sp)
   10b04:	00010613          	mv	a2,sp
   10b08:	00058493          	mv	s1,a1
   10b0c:	00000713          	li	a4,0
   10b10:	00050593          	mv	a1,a0
   10b14:	00000693          	li	a3,0
   10b18:	40f00513          	li	a0,1039
   10b1c:	08113c23          	sd	ra,152(sp)
   10b20:	08813823          	sd	s0,144(sp)
   10b24:	e4dff0ef          	jal	ra,10970 <__internal_syscall>
   10b28:	00050413          	mv	s0,a0
   10b2c:	00010593          	mv	a1,sp
   10b30:	00048513          	mv	a0,s1
   10b34:	d9dff0ef          	jal	ra,108d0 <conv_stat>
   10b38:	0004051b          	sext.w	a0,s0
   10b3c:	09813083          	ld	ra,152(sp)
   10b40:	09013403          	ld	s0,144(sp)
   10b44:	08813483          	ld	s1,136(sp)
   10b48:	0a010113          	addi	sp,sp,160
   10b4c:	00008067          	ret

0000000000010b50 <fstatat>:
   10b50:	f6010113          	addi	sp,sp,-160
   10b54:	08913423          	sd	s1,136(sp)
   10b58:	00068713          	mv	a4,a3
   10b5c:	00060493          	mv	s1,a2
   10b60:	00010693          	mv	a3,sp
   10b64:	00058613          	mv	a2,a1
   10b68:	00050593          	mv	a1,a0
   10b6c:	04f00513          	li	a0,79
   10b70:	08113c23          	sd	ra,152(sp)
   10b74:	08813823          	sd	s0,144(sp)
   10b78:	00000097          	auipc	ra,0x0
   10b7c:	df8080e7          	jalr	-520(ra) # 10970 <__internal_syscall>
   10b80:	00050413          	mv	s0,a0
   10b84:	00010593          	mv	a1,sp
   10b88:	00048513          	mv	a0,s1
   10b8c:	00000097          	auipc	ra,0x0
   10b90:	d44080e7          	jalr	-700(ra) # 108d0 <conv_stat>
   10b94:	0004051b          	sext.w	a0,s0
   10b98:	09813083          	ld	ra,152(sp)
   10b9c:	09013403          	ld	s0,144(sp)
   10ba0:	08813483          	ld	s1,136(sp)
   10ba4:	0a010113          	addi	sp,sp,160
   10ba8:	00008067          	ret

0000000000010bac <access>:
   10bac:	ff010113          	addi	sp,sp,-16
   10bb0:	00058613          	mv	a2,a1
   10bb4:	00000713          	li	a4,0
   10bb8:	00050593          	mv	a1,a0
   10bbc:	00000693          	li	a3,0
   10bc0:	40900513          	li	a0,1033
   10bc4:	00113423          	sd	ra,8(sp)
   10bc8:	da9ff0ef          	jal	ra,10970 <__internal_syscall>
   10bcc:	00813083          	ld	ra,8(sp)
   10bd0:	0005051b          	sext.w	a0,a0
   10bd4:	01010113          	addi	sp,sp,16
   10bd8:	00008067          	ret

0000000000010bdc <faccessat>:
   10bdc:	ff010113          	addi	sp,sp,-16
   10be0:	00068713          	mv	a4,a3
   10be4:	00060693          	mv	a3,a2
   10be8:	00058613          	mv	a2,a1
   10bec:	00050593          	mv	a1,a0
   10bf0:	03000513          	li	a0,48
   10bf4:	00113423          	sd	ra,8(sp)
   10bf8:	00000097          	auipc	ra,0x0
   10bfc:	d78080e7          	jalr	-648(ra) # 10970 <__internal_syscall>
   10c00:	00813083          	ld	ra,8(sp)
   10c04:	0005051b          	sext.w	a0,a0
   10c08:	01010113          	addi	sp,sp,16
   10c0c:	00008067          	ret

0000000000010c10 <close>:
   10c10:	ff010113          	addi	sp,sp,-16
   10c14:	00050593          	mv	a1,a0
   10c18:	00000713          	li	a4,0
   10c1c:	00000693          	li	a3,0
   10c20:	00000613          	li	a2,0
   10c24:	03900513          	li	a0,57
   10c28:	00113423          	sd	ra,8(sp)
   10c2c:	d45ff0ef          	jal	ra,10970 <__internal_syscall>
   10c30:	00813083          	ld	ra,8(sp)
   10c34:	0005051b          	sext.w	a0,a0
   10c38:	01010113          	addi	sp,sp,16
   10c3c:	00008067          	ret

0000000000010c40 <link>:
   10c40:	ff010113          	addi	sp,sp,-16
   10c44:	00058613          	mv	a2,a1
   10c48:	00000713          	li	a4,0
   10c4c:	00050593          	mv	a1,a0
   10c50:	00000693          	li	a3,0
   10c54:	40100513          	li	a0,1025
   10c58:	00113423          	sd	ra,8(sp)
   10c5c:	00000097          	auipc	ra,0x0
   10c60:	d14080e7          	jalr	-748(ra) # 10970 <__internal_syscall>
   10c64:	00813083          	ld	ra,8(sp)
   10c68:	0005051b          	sext.w	a0,a0
   10c6c:	01010113          	addi	sp,sp,16
   10c70:	00008067          	ret

0000000000010c74 <unlink>:
   10c74:	ff010113          	addi	sp,sp,-16
   10c78:	00050593          	mv	a1,a0
   10c7c:	00000713          	li	a4,0
   10c80:	00000693          	li	a3,0
   10c84:	00000613          	li	a2,0
   10c88:	40200513          	li	a0,1026
   10c8c:	00113423          	sd	ra,8(sp)
   10c90:	ce1ff0ef          	jal	ra,10970 <__internal_syscall>
   10c94:	00813083          	ld	ra,8(sp)
   10c98:	0005051b          	sext.w	a0,a0
   10c9c:	01010113          	addi	sp,sp,16
   10ca0:	00008067          	ret

0000000000010ca4 <execve>:
   10ca4:	ff010113          	addi	sp,sp,-16
   10ca8:	00113423          	sd	ra,8(sp)
   10cac:	00000097          	auipc	ra,0x0
   10cb0:	298080e7          	jalr	664(ra) # 10f44 <__errno>
   10cb4:	00813083          	ld	ra,8(sp)
   10cb8:	00c00793          	li	a5,12
   10cbc:	00f52023          	sw	a5,0(a0)
   10cc0:	fff00513          	li	a0,-1
   10cc4:	01010113          	addi	sp,sp,16
   10cc8:	00008067          	ret

0000000000010ccc <fork>:
   10ccc:	ff010113          	addi	sp,sp,-16
   10cd0:	00113423          	sd	ra,8(sp)
   10cd4:	270000ef          	jal	ra,10f44 <__errno>
   10cd8:	00813083          	ld	ra,8(sp)
   10cdc:	00b00793          	li	a5,11
   10ce0:	00f52023          	sw	a5,0(a0)
   10ce4:	fff00513          	li	a0,-1
   10ce8:	01010113          	addi	sp,sp,16
   10cec:	00008067          	ret

0000000000010cf0 <getpid>:
   10cf0:	00100513          	li	a0,1
   10cf4:	00008067          	ret

0000000000010cf8 <kill>:
   10cf8:	ff010113          	addi	sp,sp,-16
   10cfc:	00113423          	sd	ra,8(sp)
   10d00:	244000ef          	jal	ra,10f44 <__errno>
   10d04:	00813083          	ld	ra,8(sp)
   10d08:	01600793          	li	a5,22
   10d0c:	00f52023          	sw	a5,0(a0)
   10d10:	fff00513          	li	a0,-1
   10d14:	01010113          	addi	sp,sp,16
   10d18:	00008067          	ret

0000000000010d1c <wait>:
   10d1c:	ff010113          	addi	sp,sp,-16
   10d20:	00113423          	sd	ra,8(sp)
   10d24:	00000097          	auipc	ra,0x0
   10d28:	220080e7          	jalr	544(ra) # 10f44 <__errno>
   10d2c:	00813083          	ld	ra,8(sp)
   10d30:	00a00793          	li	a5,10
   10d34:	00f52023          	sw	a5,0(a0)
   10d38:	fff00513          	li	a0,-1
   10d3c:	01010113          	addi	sp,sp,16
   10d40:	00008067          	ret

0000000000010d44 <isatty>:
   10d44:	f8010113          	addi	sp,sp,-128
   10d48:	00810593          	addi	a1,sp,8
   10d4c:	06113c23          	sd	ra,120(sp)
   10d50:	cfdff0ef          	jal	ra,10a4c <fstat>
   10d54:	fff00793          	li	a5,-1
   10d58:	00f50863          	beq	a0,a5,10d68 <isatty+0x24>
   10d5c:	00c12503          	lw	a0,12(sp)
   10d60:	40d5551b          	sraiw	a0,a0,0xd
   10d64:	00157513          	andi	a0,a0,1
   10d68:	07813083          	ld	ra,120(sp)
   10d6c:	08010113          	addi	sp,sp,128
   10d70:	00008067          	ret

0000000000010d74 <gettimeofday>:
   10d74:	ff010113          	addi	sp,sp,-16
   10d78:	00050593          	mv	a1,a0
   10d7c:	00000713          	li	a4,0
   10d80:	00000693          	li	a3,0
   10d84:	00000613          	li	a2,0
   10d88:	0a900513          	li	a0,169
   10d8c:	00113423          	sd	ra,8(sp)
   10d90:	00000097          	auipc	ra,0x0
   10d94:	be0080e7          	jalr	-1056(ra) # 10970 <__internal_syscall>
   10d98:	00813083          	ld	ra,8(sp)
   10d9c:	0005051b          	sext.w	a0,a0
   10da0:	01010113          	addi	sp,sp,16
   10da4:	00008067          	ret

0000000000010da8 <times>:
   10da8:	fd010113          	addi	sp,sp,-48
   10dac:	02813023          	sd	s0,32(sp)
   10db0:	00050413          	mv	s0,a0
   10db4:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10db8:	00913c23          	sd	s1,24(sp)
   10dbc:	02113423          	sd	ra,40(sp)
   10dc0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10dc4:	00079a63          	bnez	a5,10dd8 <times+0x30>
   10dc8:	00000593          	li	a1,0
   10dcc:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10dd0:	00000097          	auipc	ra,0x0
   10dd4:	fa4080e7          	jalr	-92(ra) # 10d74 <gettimeofday>
   10dd8:	00000593          	li	a1,0
   10ddc:	00010513          	mv	a0,sp
   10de0:	00000097          	auipc	ra,0x0
   10de4:	f94080e7          	jalr	-108(ra) # 10d74 <gettimeofday>
   10de8:	0004b783          	ld	a5,0(s1)
   10dec:	00013503          	ld	a0,0(sp)
   10df0:	000f45b7          	lui	a1,0xf4
   10df4:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10df8:	40f50533          	sub	a0,a0,a5
   10dfc:	db0ff0ef          	jal	ra,103ac <__muldi3>
   10e00:	0084b703          	ld	a4,8(s1)
   10e04:	00813783          	ld	a5,8(sp)
   10e08:	00043823          	sd	zero,16(s0)
   10e0c:	00043c23          	sd	zero,24(s0)
   10e10:	40e787b3          	sub	a5,a5,a4
   10e14:	00f50533          	add	a0,a0,a5
   10e18:	00a43023          	sd	a0,0(s0)
   10e1c:	00043423          	sd	zero,8(s0)
   10e20:	02813083          	ld	ra,40(sp)
   10e24:	02013403          	ld	s0,32(sp)
   10e28:	01813483          	ld	s1,24(sp)
   10e2c:	fff00513          	li	a0,-1
   10e30:	03010113          	addi	sp,sp,48
   10e34:	00008067          	ret

0000000000010e38 <ftime>:
   10e38:	00051423          	sh	zero,8(a0)
   10e3c:	00053023          	sd	zero,0(a0)
   10e40:	00000513          	li	a0,0
   10e44:	00008067          	ret

0000000000010e48 <utime>:
   10e48:	fff00513          	li	a0,-1
   10e4c:	00008067          	ret

0000000000010e50 <chown>:
   10e50:	fff00513          	li	a0,-1
   10e54:	00008067          	ret

0000000000010e58 <chmod>:
   10e58:	fff00513          	li	a0,-1
   10e5c:	00008067          	ret

0000000000010e60 <chdir>:
   10e60:	fff00513          	li	a0,-1
   10e64:	00008067          	ret

0000000000010e68 <getcwd>:
   10e68:	00000513          	li	a0,0
   10e6c:	00008067          	ret

0000000000010e70 <sysconf>:
   10e70:	00200793          	li	a5,2
   10e74:	00f50663          	beq	a0,a5,10e80 <sysconf+0x10>
   10e78:	fff00513          	li	a0,-1
   10e7c:	00008067          	ret
   10e80:	000f4537          	lui	a0,0xf4
   10e84:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10e88:	00008067          	ret

0000000000010e8c <sbrk>:
   10e8c:	fe010113          	addi	sp,sp,-32
   10e90:	00813823          	sd	s0,16(sp)
   10e94:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e98:	00913423          	sd	s1,8(sp)
   10e9c:	00113c23          	sd	ra,24(sp)
   10ea0:	00050493          	mv	s1,a0
   10ea4:	04079063          	bnez	a5,10ee4 <sbrk+0x58>
   10ea8:	00000713          	li	a4,0
   10eac:	00000693          	li	a3,0
   10eb0:	00000613          	li	a2,0
   10eb4:	00000593          	li	a1,0
   10eb8:	0d600513          	li	a0,214
   10ebc:	ab5ff0ef          	jal	ra,10970 <__internal_syscall>
   10ec0:	fff00793          	li	a5,-1
   10ec4:	00f51e63          	bne	a0,a5,10ee0 <sbrk+0x54>
   10ec8:	fff00513          	li	a0,-1
   10ecc:	01813083          	ld	ra,24(sp)
   10ed0:	01013403          	ld	s0,16(sp)
   10ed4:	00813483          	ld	s1,8(sp)
   10ed8:	02010113          	addi	sp,sp,32
   10edc:	00008067          	ret
   10ee0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ee4:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ee8:	00000713          	li	a4,0
   10eec:	00000693          	li	a3,0
   10ef0:	00b485b3          	add	a1,s1,a1
   10ef4:	00000613          	li	a2,0
   10ef8:	0d600513          	li	a0,214
   10efc:	a75ff0ef          	jal	ra,10970 <__internal_syscall>
   10f00:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10f04:	00f484b3          	add	s1,s1,a5
   10f08:	fc9510e3          	bne	a0,s1,10ec8 <sbrk+0x3c>
   10f0c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10f10:	00078513          	mv	a0,a5
   10f14:	fb9ff06f          	j	10ecc <sbrk+0x40>

0000000000010f18 <_exit>:
   10f18:	ff010113          	addi	sp,sp,-16
   10f1c:	00050593          	mv	a1,a0
   10f20:	00000713          	li	a4,0
   10f24:	00000693          	li	a3,0
   10f28:	00000613          	li	a2,0
   10f2c:	05d00513          	li	a0,93
   10f30:	00113423          	sd	ra,8(sp)
   10f34:	00000097          	auipc	ra,0x0
   10f38:	a3c080e7          	jalr	-1476(ra) # 10970 <__internal_syscall>
   10f3c:	0000006f          	j	10f3c <_exit+0x24>
   10f40:	0000                	unimp
	...

0000000000010f44 <__errno>:
   10f44:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10f48:	00008067          	ret
   10f4c:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010f50 <__EH_FRAME_BEGIN__>:
   10f50:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	01c4                	addi	s1,sp,196
   11002:	0001                	nop
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	0170                	addi	a2,sp,140
   1100a:	0001                	nop
   1100c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011010 <impure_data>:
	...
   11018:	1548                	addi	a0,sp,676
   1101a:	0001                	nop
   1101c:	0000                	unimp
   1101e:	0000                	unimp
   11020:	15f8                	addi	a4,sp,748
   11022:	0001                	nop
   11024:	0000                	unimp
   11026:	0000                	unimp
   11028:	16a8                	addi	a0,sp,872
   1102a:	0001                	nop
	...
   110f8:	0001                	nop
   110fa:	0000                	unimp
   110fc:	0000                	unimp
   110fe:	0000                	unimp
   11100:	330e                	fld	ft6,224(sp)
   11102:	abcd                	j	116f4 <impure_data+0x6e4>
   11104:	1234                	addi	a3,sp,296
   11106:	e66d                	bnez	a2,111f0 <impure_data+0x1e0>
   11108:	deec                	sw	a1,124(a3)
   1110a:	0005                	c.addi	zero,1
   1110c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011758 <__TMC_END__>:
	...

0000000000011760 <_global_impure_ptr>:
   11760:	1010                	addi	a2,sp,32
   11762:	0001                	nop
   11764:	0000                	unimp
	...

0000000000011768 <_impure_ptr>:
   11768:	1010                	addi	a2,sp,32
   1176a:	0001                	nop
   1176c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011770 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011778 <completed.5182>:
	...

0000000000011780 <object.5187>:
	...

00000000000117b0 <t0.2572>:
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
  10:	03ac                	addi	a1,sp,456
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0024                	addi	s1,sp,8
	...
  2e:	0000                	unimp
  30:	002c                	addi	a1,sp,8
  32:	0000                	unimp
  34:	0002                	0x2
  36:	002e                	0x2e
  38:	0000                	unimp
  3a:	0008                	addi	a0,sp,0
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	03d4                	addi	a3,sp,452
  42:	0001                	nop
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0100                	addi	s0,sp,128
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
  10:	03ac                	addi	a1,sp,456
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	03d0                	addi	a2,sp,452
  1a:	0001                	nop
	...
  24:	007a                	0x7a
  26:	0000                	unimp
  28:	00fd                	addi	ra,ra,31
  2a:	0000                	unimp
  2c:	8001                	srli	s0,s0,0x0
  2e:	002a                	0x2a
  30:	0000                	unimp
  32:	0002                	0x2
  34:	0014                	addi	a3,sp,0
  36:	0000                	unimp
  38:	0108                	addi	a0,sp,128
  3a:	00de                	slli	ra,ra,0x17
  3c:	0000                	unimp
  3e:	03d4                	addi	a3,sp,452
  40:	0001                	nop
  42:	0000                	unimp
  44:	0000                	unimp
  46:	04d4                	addi	a3,sp,580
  48:	0001                	nop
  4a:	0000                	unimp
  4c:	0000                	unimp
  4e:	0000010b          	0x10b
  52:	007a                	0x7a
  54:	0000                	unimp
  56:	00fd                	addi	ra,ra,31
  58:	0000                	unimp
  5a:	8001                	srli	s0,s0,0x0

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
  12:	0000                	unimp
  14:	1101                	addi	sp,sp,-32
  16:	1000                	addi	s0,sp,32
  18:	1106                	slli	sp,sp,0x21
  1a:	1201                	addi	tp,tp,-32
  1c:	0301                	addi	t1,t1,0
  1e:	1b0e                	slli	s6,s6,0x23
  20:	250e                	fld	fa0,192(sp)
  22:	130e                	slli	t1,t1,0x23
  24:	0005                	c.addi	zero,1
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x3480a>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe4800>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa4738>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb482a>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb473a>
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
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x547be>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	ac02                	fsd	ft0,24(sp)
  9e:	00000103          	lb	sp,0(zero) # 30353000 <__global_pointer$+0x303410a8>
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
  de:	0221                	addi	tp,tp,8
  e0:	0000                	unimp
  e2:	0002                	0x2
  e4:	008d                	addi	ra,ra,3
  e6:	0000                	unimp
  e8:	0101                	addi	sp,sp,0
  ea:	000d0efb          	0xd0efb
  ee:	0101                	addi	sp,sp,0
  f0:	0101                	addi	sp,sp,0
  f2:	0000                	unimp
  f4:	0100                	addi	s0,sp,128
  f6:	0000                	unimp
  f8:	2f01                	sext.w	t5,t5
  fa:	6f68                	ld	a0,216(a4)
  fc:	656d                	lui	a0,0x1b
  fe:	6865682f          	0x6865682f
 102:	6f61                	lui	t5,0x18
 104:	776f442f          	0x776f442f
 108:	6c6e                	ld	s8,216(sp)
 10a:	7364616f          	jal	sp,46840 <__global_pointer$+0x348e8>
 10e:	6572662f          	0x6572662f
 112:	6465                	lui	s0,0x19
 114:	722f6d6f          	jal	s10,f6836 <__global_pointer$+0xe48de>
 118:	656b636f          	jal	t1,b676e <__global_pointer$+0xa4816>
 11c:	2d74                	fld	fa3,216(a0)
 11e:	70696863          	bltu	s2,t1,82e <_start-0xf882>
 122:	7369722f          	0x7369722f
 126:	742d7663          	bleu	sp,s10,872 <_start-0xf83e>
 12a:	736c6f6f          	jal	t5,c6860 <__global_pointer$+0xb4908>
 12e:	7369722f          	0x7369722f
 132:	672d7663          	bleu	s2,s10,79e <_start-0xf912>
 136:	756e                	ld	a0,248(sp)
 138:	742d                	lui	s0,0xfffeb
 13a:	636c6f6f          	jal	t5,c6770 <__global_pointer$+0xb4818>
 13e:	6168                	ld	a0,192(a0)
 140:	6e69                	lui	t3,0x1a
 142:	6975622f          	0x6975622f
 146:	646c                	ld	a1,200(s0)
 148:	2f2e2e2f          	0x2f2e2e2f
 14c:	6972                	ld	s2,280(sp)
 14e:	2d766373          	csrrsi	t1,0x2d7,12
 152:	2f636367          	0x2f636367
 156:	696c                	ld	a1,208(a0)
 158:	6762                	ld	a4,24(sp)
 15a:	632f6363          	bltu	t5,s2,780 <_start-0xf930>
 15e:	69666e6f          	jal	t3,667f4 <__global_pointer$+0x5489c>
 162:	69722f67          	0x69722f67
 166:	00766373          	csrrsi	t1,0x7,12
 16a:	6400                	ld	s0,8(s0)
 16c:	7669                	lui	a2,0xffffa
 16e:	532e                	lw	t1,232(sp)
 170:	0100                	addi	s0,sp,128
 172:	0000                	unimp
 174:	0000                	unimp
 176:	0209                	addi	tp,tp,2
 178:	03d4                	addi	a3,sp,452
 17a:	0001                	nop
 17c:	0000                	unimp
 17e:	0000                	unimp
 180:	03012603          	lw	a2,48(sp)
 184:	0901                	addi	s2,s2,0
 186:	0004                	addi	s1,sp,0
 188:	0301                	addi	t1,t1,0
 18a:	0901                	addi	s2,s2,0
 18c:	0004                	addi	s1,sp,0
 18e:	0301                	addi	t1,t1,0
 190:	0901                	addi	s2,s2,0
 192:	0004                	addi	s1,sp,0
 194:	0301                	addi	t1,t1,0
 196:	0901                	addi	s2,s2,0
 198:	0004                	addi	s1,sp,0
 19a:	0301                	addi	t1,t1,0
 19c:	0901                	addi	s2,s2,0
 19e:	0004                	addi	s1,sp,0
 1a0:	0301                	addi	t1,t1,0
 1a2:	0905                	addi	s2,s2,1
 1a4:	0004                	addi	s1,sp,0
 1a6:	0301                	addi	t1,t1,0
 1a8:	0901                	addi	s2,s2,0
 1aa:	0004                	addi	s1,sp,0
 1ac:	0301                	addi	t1,t1,0
 1ae:	0901                	addi	s2,s2,0
 1b0:	0004                	addi	s1,sp,0
 1b2:	0301                	addi	t1,t1,0
 1b4:	0901                	addi	s2,s2,0
 1b6:	0004                	addi	s1,sp,0
 1b8:	0301                	addi	t1,t1,0
 1ba:	0901                	addi	s2,s2,0
 1bc:	0004                	addi	s1,sp,0
 1be:	0301                	addi	t1,t1,0
 1c0:	0901                	addi	s2,s2,0
 1c2:	0004                	addi	s1,sp,0
 1c4:	0301                	addi	t1,t1,0
 1c6:	0901                	addi	s2,s2,0
 1c8:	0004                	addi	s1,sp,0
 1ca:	0301                	addi	t1,t1,0
 1cc:	0901                	addi	s2,s2,0
 1ce:	0004                	addi	s1,sp,0
 1d0:	0301                	addi	t1,t1,0
 1d2:	0908                	addi	a0,sp,144
 1d4:	0004                	addi	s1,sp,0
 1d6:	0301                	addi	t1,t1,0
 1d8:	0901                	addi	s2,s2,0
 1da:	0004                	addi	s1,sp,0
 1dc:	0301                	addi	t1,t1,0
 1de:	0905                	addi	s2,s2,1
 1e0:	0004                	addi	s1,sp,0
 1e2:	0301                	addi	t1,t1,0
 1e4:	0901                	addi	s2,s2,0
 1e6:	0004                	addi	s1,sp,0
 1e8:	0301                	addi	t1,t1,0
 1ea:	0905                	addi	s2,s2,1
 1ec:	0004                	addi	s1,sp,0
 1ee:	0301                	addi	t1,t1,0
 1f0:	0901                	addi	s2,s2,0
 1f2:	0004                	addi	s1,sp,0
 1f4:	0301                	addi	t1,t1,0
 1f6:	0901                	addi	s2,s2,0
 1f8:	0004                	addi	s1,sp,0
 1fa:	0301                	addi	t1,t1,0
 1fc:	0901                	addi	s2,s2,0
 1fe:	0004                	addi	s1,sp,0
 200:	0301                	addi	t1,t1,0
 202:	0901                	addi	s2,s2,0
 204:	0004                	addi	s1,sp,0
 206:	0301                	addi	t1,t1,0
 208:	0901                	addi	s2,s2,0
 20a:	0004                	addi	s1,sp,0
 20c:	0301                	addi	t1,t1,0
 20e:	0902                	slli	s2,s2,0x0
 210:	0004                	addi	s1,sp,0
 212:	0301                	addi	t1,t1,0
 214:	0901                	addi	s2,s2,0
 216:	0004                	addi	s1,sp,0
 218:	0301                	addi	t1,t1,0
 21a:	0901                	addi	s2,s2,0
 21c:	0004                	addi	s1,sp,0
 21e:	0301                	addi	t1,t1,0
 220:	0901                	addi	s2,s2,0
 222:	0004                	addi	s1,sp,0
 224:	0301                	addi	t1,t1,0
 226:	0902                	slli	s2,s2,0x0
 228:	0004                	addi	s1,sp,0
 22a:	0301                	addi	t1,t1,0
 22c:	0902                	slli	s2,s2,0x0
 22e:	0004                	addi	s1,sp,0
 230:	0301                	addi	t1,t1,0
 232:	0901                	addi	s2,s2,0
 234:	0004                	addi	s1,sp,0
 236:	0301                	addi	t1,t1,0
 238:	0901                	addi	s2,s2,0
 23a:	0004                	addi	s1,sp,0
 23c:	0301                	addi	t1,t1,0
 23e:	0902                	slli	s2,s2,0x0
 240:	0004                	addi	s1,sp,0
 242:	0301                	addi	t1,t1,0
 244:	0901                	addi	s2,s2,0
 246:	0004                	addi	s1,sp,0
 248:	0301                	addi	t1,t1,0
 24a:	0901                	addi	s2,s2,0
 24c:	0004                	addi	s1,sp,0
 24e:	0301                	addi	t1,t1,0
 250:	0902                	slli	s2,s2,0x0
 252:	0004                	addi	s1,sp,0
 254:	0301                	addi	t1,t1,0
 256:	0905                	addi	s2,s2,1
 258:	0004                	addi	s1,sp,0
 25a:	0301                	addi	t1,t1,0
 25c:	0901                	addi	s2,s2,0
 25e:	0004                	addi	s1,sp,0
 260:	0301                	addi	t1,t1,0
 262:	0901                	addi	s2,s2,0
 264:	0004                	addi	s1,sp,0
 266:	0301                	addi	t1,t1,0
 268:	0901                	addi	s2,s2,0
 26a:	0004                	addi	s1,sp,0
 26c:	0301                	addi	t1,t1,0
 26e:	0904                	addi	s1,sp,144
 270:	0004                	addi	s1,sp,0
 272:	0301                	addi	t1,t1,0
 274:	0901                	addi	s2,s2,0
 276:	0004                	addi	s1,sp,0
 278:	0301                	addi	t1,t1,0
 27a:	0901                	addi	s2,s2,0
 27c:	0004                	addi	s1,sp,0
 27e:	0301                	addi	t1,t1,0
 280:	0901                	addi	s2,s2,0
 282:	0004                	addi	s1,sp,0
 284:	0301                	addi	t1,t1,0
 286:	0902                	slli	s2,s2,0x0
 288:	0004                	addi	s1,sp,0
 28a:	0301                	addi	t1,t1,0
 28c:	0902                	slli	s2,s2,0x0
 28e:	0004                	addi	s1,sp,0
 290:	0301                	addi	t1,t1,0
 292:	0901                	addi	s2,s2,0
 294:	0004                	addi	s1,sp,0
 296:	0301                	addi	t1,t1,0
 298:	0901                	addi	s2,s2,0
 29a:	0004                	addi	s1,sp,0
 29c:	0301                	addi	t1,t1,0
 29e:	0901                	addi	s2,s2,0
 2a0:	0004                	addi	s1,sp,0
 2a2:	0301                	addi	t1,t1,0
 2a4:	0904                	addi	s1,sp,144
 2a6:	0004                	addi	s1,sp,0
 2a8:	0301                	addi	t1,t1,0
 2aa:	0901                	addi	s2,s2,0
 2ac:	0004                	addi	s1,sp,0
 2ae:	0301                	addi	t1,t1,0
 2b0:	0901                	addi	s2,s2,0
 2b2:	0004                	addi	s1,sp,0
 2b4:	0301                	addi	t1,t1,0
 2b6:	0902                	slli	s2,s2,0x0
 2b8:	0004                	addi	s1,sp,0
 2ba:	0301                	addi	t1,t1,0
 2bc:	0901                	addi	s2,s2,0
 2be:	0004                	addi	s1,sp,0
 2c0:	0301                	addi	t1,t1,0
 2c2:	0901                	addi	s2,s2,0
 2c4:	0004                	addi	s1,sp,0
 2c6:	0301                	addi	t1,t1,0
 2c8:	0902                	slli	s2,s2,0x0
 2ca:	0004                	addi	s1,sp,0
 2cc:	0301                	addi	t1,t1,0
 2ce:	0901                	addi	s2,s2,0
 2d0:	0004                	addi	s1,sp,0
 2d2:	0301                	addi	t1,t1,0
 2d4:	0902                	slli	s2,s2,0x0
 2d6:	0004                	addi	s1,sp,0
 2d8:	0301                	addi	t1,t1,0
 2da:	0901                	addi	s2,s2,0
 2dc:	0004                	addi	s1,sp,0
 2de:	0301                	addi	t1,t1,0
 2e0:	0901                	addi	s2,s2,0
 2e2:	0004                	addi	s1,sp,0
 2e4:	0301                	addi	t1,t1,0
 2e6:	0901                	addi	s2,s2,0
 2e8:	0004                	addi	s1,sp,0
 2ea:	0301                	addi	t1,t1,0
 2ec:	0905                	addi	s2,s2,1
 2ee:	0004                	addi	s1,sp,0
 2f0:	0301                	addi	t1,t1,0
 2f2:	0901                	addi	s2,s2,0
 2f4:	0004                	addi	s1,sp,0
 2f6:	0301                	addi	t1,t1,0
 2f8:	0901                	addi	s2,s2,0
 2fa:	0004                	addi	s1,sp,0
 2fc:	0901                	addi	s2,s2,0
 2fe:	0004                	addi	s1,sp,0
 300:	0100                	addi	s0,sp,128
 302:	01              	Address 0x0000000000000302 is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6d6f682f          	0x6d6f682f
   4:	2f65                	addiw	t5,t5,25
   6:	6568                	ld	a0,200(a0)
   8:	6168                	ld	a0,192(a0)
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x307a6>
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
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x24bd0>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x24770>
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
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x30820>
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
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x24c4a>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x247ea>
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
 10a:	2f00                	fld	fs0,24(a4)
 10c:	6f68                	ld	a0,216(a4)
 10e:	656d                	lui	a0,0x1b
 110:	6865682f          	0x6865682f
 114:	6f61                	lui	t5,0x18
 116:	776f442f          	0x776f442f
 11a:	6c6e                	ld	s8,216(sp)
 11c:	7364616f          	jal	sp,46852 <__global_pointer$+0x348fa>
 120:	6572662f          	0x6572662f
 124:	6465                	lui	s0,0x19
 126:	722f6d6f          	jal	s10,f6848 <__global_pointer$+0xe48f0>
 12a:	656b636f          	jal	t1,b6780 <__global_pointer$+0xa4828>
 12e:	2d74                	fld	fa3,216(a0)
 130:	70696863          	bltu	s2,t1,840 <_start-0xf870>
 134:	7369722f          	0x7369722f
 138:	742d7663          	bleu	sp,s10,884 <_start-0xf82c>
 13c:	736c6f6f          	jal	t5,c6872 <__global_pointer$+0xb491a>
 140:	7369722f          	0x7369722f
 144:	672d7663          	bleu	s2,s10,7b0 <_start-0xf900>
 148:	756e                	ld	a0,248(sp)
 14a:	742d                	lui	s0,0xfffeb
 14c:	636c6f6f          	jal	t5,c6782 <__global_pointer$+0xb482a>
 150:	6168                	ld	a0,192(a0)
 152:	6e69                	lui	t3,0x1a
 154:	6975622f          	0x6975622f
 158:	646c                	ld	a1,200(s0)
 15a:	2f2e2e2f          	0x2f2e2e2f
 15e:	6972                	ld	s2,280(sp)
 160:	2d766373          	csrrsi	t1,0x2d7,12
 164:	2f636367          	0x2f636367
 168:	696c                	ld	a1,208(a0)
 16a:	6762                	ld	a4,24(sp)
 16c:	632f6363          	bltu	t5,s2,792 <_start-0xf91e>
 170:	69666e6f          	jal	t3,66806 <__global_pointer$+0x548ae>
 174:	69722f67          	0x69722f67
 178:	2f766373          	csrrsi	t1,0x2f7,12
 17c:	6964                	ld	s1,208(a0)
 17e:	2e76                	fld	ft8,344(sp)
 180:	          	fadd.s	ft0,ft0,ft0,rne
