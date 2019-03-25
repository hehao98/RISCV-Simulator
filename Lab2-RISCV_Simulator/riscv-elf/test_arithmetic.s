
test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	5cc000ef          	jal	ra,10694 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	4a850513          	addi	a0,a0,1192 # 10574 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	44c080e7          	jalr	1100(ra) # 10520 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	510080e7          	jalr	1296(ra) # 105ec <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	44030067          	jr	1088(t1) # 10538 <exit>

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
   1019c:	f9850513          	addi	a0,a0,-104 # 10f98 <__EH_FRAME_BEGIN__>
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
   101e0:	f9850513          	addi	a0,a0,-104 # 10f98 <__EH_FRAME_BEGIN__>
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
   10258:	0f8000ef          	jal	ra,10350 <print_d>
   1025c:	00a00513          	li	a0,10
   10260:	144000ef          	jal	ra,103a4 <print_c>
   10264:	fec42703          	lw	a4,-20(s0)
   10268:	fe842783          	lw	a5,-24(s0)
   1026c:	40f707bb          	subw	a5,a4,a5
   10270:	fcf42823          	sw	a5,-48(s0)
   10274:	fd042783          	lw	a5,-48(s0)
   10278:	00078513          	mv	a0,a5
   1027c:	0d4000ef          	jal	ra,10350 <print_d>
   10280:	00a00513          	li	a0,10
   10284:	120000ef          	jal	ra,103a4 <print_c>
   10288:	fe442783          	lw	a5,-28(s0)
   1028c:	fe042703          	lw	a4,-32(s0)
   10290:	00070593          	mv	a1,a4
   10294:	00078513          	mv	a0,a5
   10298:	15c000ef          	jal	ra,103f4 <__muldi3>
   1029c:	00050793          	mv	a5,a0
   102a0:	fcf42623          	sw	a5,-52(s0)
   102a4:	fcc42783          	lw	a5,-52(s0)
   102a8:	00078513          	mv	a0,a5
   102ac:	0a4000ef          	jal	ra,10350 <print_d>
   102b0:	00a00513          	li	a0,10
   102b4:	0f0000ef          	jal	ra,103a4 <print_c>
   102b8:	fe042783          	lw	a5,-32(s0)
   102bc:	fe442703          	lw	a4,-28(s0)
   102c0:	00070593          	mv	a1,a4
   102c4:	00078513          	mv	a0,a5
   102c8:	194000ef          	jal	ra,1045c <__divdi3>
   102cc:	00050793          	mv	a5,a0
   102d0:	fcf42a23          	sw	a5,-44(s0)
   102d4:	fd442783          	lw	a5,-44(s0)
   102d8:	00078513          	mv	a0,a5
   102dc:	074000ef          	jal	ra,10350 <print_d>
   102e0:	00a00513          	li	a0,10
   102e4:	0c0000ef          	jal	ra,103a4 <print_c>
   102e8:	fe042703          	lw	a4,-32(s0)
   102ec:	fd842783          	lw	a5,-40(s0)
   102f0:	00f717bb          	sllw	a5,a4,a5
   102f4:	fcf42823          	sw	a5,-48(s0)
   102f8:	fd042783          	lw	a5,-48(s0)
   102fc:	00078513          	mv	a0,a5
   10300:	050000ef          	jal	ra,10350 <print_d>
   10304:	00a00513          	li	a0,10
   10308:	09c000ef          	jal	ra,103a4 <print_c>
   1030c:	fe042783          	lw	a5,-32(s0)
   10310:	4047d79b          	sraiw	a5,a5,0x4
   10314:	fcf42623          	sw	a5,-52(s0)
   10318:	fcc42783          	lw	a5,-52(s0)
   1031c:	00078513          	mv	a0,a5
   10320:	030000ef          	jal	ra,10350 <print_d>
   10324:	00a00513          	li	a0,10
   10328:	07c000ef          	jal	ra,103a4 <print_c>
   1032c:	00000097          	auipc	ra,0x0
   10330:	0a4080e7          	jalr	164(ra) # 103d0 <exit_proc>
   10334:	00000793          	li	a5,0
   10338:	00078513          	mv	a0,a5
   1033c:	03813083          	ld	ra,56(sp)
   10340:	03013403          	ld	s0,48(sp)
   10344:	04010113          	addi	sp,sp,64
   10348:	00008067          	ret
   1034c:	0000                	unimp
	...

0000000000010350 <print_d>:
   10350:	fe010113          	addi	sp,sp,-32
   10354:	00813c23          	sd	s0,24(sp)
   10358:	02010413          	addi	s0,sp,32
   1035c:	00050793          	mv	a5,a0
   10360:	fef42623          	sw	a5,-20(s0)
   10364:	00200893          	li	a7,2
   10368:	00000073          	ecall
   1036c:	00000013          	nop
   10370:	01813403          	ld	s0,24(sp)
   10374:	02010113          	addi	sp,sp,32
   10378:	00008067          	ret

000000000001037c <print_s>:
   1037c:	fe010113          	addi	sp,sp,-32
   10380:	00813c23          	sd	s0,24(sp)
   10384:	02010413          	addi	s0,sp,32
   10388:	fea43423          	sd	a0,-24(s0)
   1038c:	00000893          	li	a7,0
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	01813403          	ld	s0,24(sp)
   1039c:	02010113          	addi	sp,sp,32
   103a0:	00008067          	ret

00000000000103a4 <print_c>:
   103a4:	fe010113          	addi	sp,sp,-32
   103a8:	00813c23          	sd	s0,24(sp)
   103ac:	02010413          	addi	s0,sp,32
   103b0:	00050793          	mv	a5,a0
   103b4:	fef407a3          	sb	a5,-17(s0)
   103b8:	00100893          	li	a7,1
   103bc:	00000073          	ecall
   103c0:	00000013          	nop
   103c4:	01813403          	ld	s0,24(sp)
   103c8:	02010113          	addi	sp,sp,32
   103cc:	00008067          	ret

00000000000103d0 <exit_proc>:
   103d0:	ff010113          	addi	sp,sp,-16
   103d4:	00813423          	sd	s0,8(sp)
   103d8:	01010413          	addi	s0,sp,16
   103dc:	00300893          	li	a7,3
   103e0:	00000073          	ecall
   103e4:	00000013          	nop
   103e8:	00813403          	ld	s0,8(sp)
   103ec:	01010113          	addi	sp,sp,16
   103f0:	00008067          	ret

00000000000103f4 <__muldi3>:
   103f4:	00050613          	mv	a2,a0
   103f8:	00000513          	li	a0,0
   103fc:	0015f693          	andi	a3,a1,1
   10400:	00068463          	beqz	a3,10408 <__muldi3+0x14>
   10404:	00c50533          	add	a0,a0,a2
   10408:	0015d593          	srli	a1,a1,0x1
   1040c:	00161613          	slli	a2,a2,0x1
   10410:	fe0596e3          	bnez	a1,103fc <__muldi3+0x8>
   10414:	00008067          	ret
   10418:	0000                	unimp
	...

000000000001041c <__udivsi3>:
   1041c:	02051513          	slli	a0,a0,0x20
   10420:	02059593          	slli	a1,a1,0x20
   10424:	00008293          	mv	t0,ra
   10428:	03c000ef          	jal	ra,10464 <__udivdi3>
   1042c:	0005051b          	sext.w	a0,a0
   10430:	00028067          	jr	t0

0000000000010434 <__umodsi3>:
   10434:	02051513          	slli	a0,a0,0x20
   10438:	02059593          	slli	a1,a1,0x20
   1043c:	02055513          	srli	a0,a0,0x20
   10440:	0205d593          	srli	a1,a1,0x20
   10444:	00008293          	mv	t0,ra
   10448:	01c000ef          	jal	ra,10464 <__udivdi3>
   1044c:	0005851b          	sext.w	a0,a1
   10450:	00028067          	jr	t0

0000000000010454 <__divsi3>:
   10454:	fff00293          	li	t0,-1
   10458:	0a558c63          	beq	a1,t0,10510 <__moddi3+0x30>

000000000001045c <__divdi3>:
   1045c:	06054063          	bltz	a0,104bc <__umoddi3+0x10>
   10460:	0605c663          	bltz	a1,104cc <__umoddi3+0x20>

0000000000010464 <__udivdi3>:
   10464:	00058613          	mv	a2,a1
   10468:	00050593          	mv	a1,a0
   1046c:	fff00513          	li	a0,-1
   10470:	02060c63          	beqz	a2,104a8 <__udivdi3+0x44>
   10474:	00100693          	li	a3,1
   10478:	00b67a63          	bleu	a1,a2,1048c <__udivdi3+0x28>
   1047c:	00c05863          	blez	a2,1048c <__udivdi3+0x28>
   10480:	00161613          	slli	a2,a2,0x1
   10484:	00169693          	slli	a3,a3,0x1
   10488:	feb66ae3          	bltu	a2,a1,1047c <__udivdi3+0x18>
   1048c:	00000513          	li	a0,0
   10490:	00c5e663          	bltu	a1,a2,1049c <__udivdi3+0x38>
   10494:	40c585b3          	sub	a1,a1,a2
   10498:	00d56533          	or	a0,a0,a3
   1049c:	0016d693          	srli	a3,a3,0x1
   104a0:	00165613          	srli	a2,a2,0x1
   104a4:	fe0696e3          	bnez	a3,10490 <__udivdi3+0x2c>
   104a8:	00008067          	ret

00000000000104ac <__umoddi3>:
   104ac:	00008293          	mv	t0,ra
   104b0:	fb5ff0ef          	jal	ra,10464 <__udivdi3>
   104b4:	00058513          	mv	a0,a1
   104b8:	00028067          	jr	t0
   104bc:	40a00533          	neg	a0,a0
   104c0:	0005d863          	bgez	a1,104d0 <__umoddi3+0x24>
   104c4:	40b005b3          	neg	a1,a1
   104c8:	f9dff06f          	j	10464 <__udivdi3>
   104cc:	40b005b3          	neg	a1,a1
   104d0:	00008293          	mv	t0,ra
   104d4:	f91ff0ef          	jal	ra,10464 <__udivdi3>
   104d8:	40a00533          	neg	a0,a0
   104dc:	00028067          	jr	t0

00000000000104e0 <__moddi3>:
   104e0:	00008293          	mv	t0,ra
   104e4:	0005ca63          	bltz	a1,104f8 <__moddi3+0x18>
   104e8:	00054c63          	bltz	a0,10500 <__moddi3+0x20>
   104ec:	f79ff0ef          	jal	ra,10464 <__udivdi3>
   104f0:	00058513          	mv	a0,a1
   104f4:	00028067          	jr	t0
   104f8:	40b005b3          	neg	a1,a1
   104fc:	fe0558e3          	bgez	a0,104ec <__moddi3+0xc>
   10500:	40a00533          	neg	a0,a0
   10504:	f61ff0ef          	jal	ra,10464 <__udivdi3>
   10508:	40b00533          	neg	a0,a1
   1050c:	00028067          	jr	t0
   10510:	01f29293          	slli	t0,t0,0x1f
   10514:	f45514e3          	bne	a0,t0,1045c <__divdi3>
   10518:	00008067          	ret
   1051c:	0000                	unimp
	...

0000000000010520 <atexit>:
   10520:	00050593          	mv	a1,a0
   10524:	00000693          	li	a3,0
   10528:	00000613          	li	a2,0
   1052c:	00000513          	li	a0,0
   10530:	2400006f          	j	10770 <__register_exitproc>
   10534:	0000                	unimp
	...

0000000000010538 <exit>:
   10538:	ff010113          	addi	sp,sp,-16
   1053c:	00000593          	li	a1,0
   10540:	00813023          	sd	s0,0(sp)
   10544:	00113423          	sd	ra,8(sp)
   10548:	00050413          	mv	s0,a0
   1054c:	2b0000ef          	jal	ra,107fc <__call_exitprocs>
   10550:	000117b7          	lui	a5,0x11
   10554:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10558:	05853783          	ld	a5,88(a0)
   1055c:	00078463          	beqz	a5,10564 <exit+0x2c>
   10560:	000780e7          	jalr	a5
   10564:	00040513          	mv	a0,s0
   10568:	00001097          	auipc	ra,0x1
   1056c:	9f8080e7          	jalr	-1544(ra) # 10f60 <_exit>
   10570:	0000                	unimp
	...

0000000000010574 <__libc_fini_array>:
   10574:	fe010113          	addi	sp,sp,-32
   10578:	000117b7          	lui	a5,0x11
   1057c:	00011737          	lui	a4,0x11
   10580:	00813823          	sd	s0,16(sp)
   10584:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10588:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1058c:	40e40433          	sub	s0,s0,a4
   10590:	00913423          	sd	s1,8(sp)
   10594:	01213023          	sd	s2,0(sp)
   10598:	00113c23          	sd	ra,24(sp)
   1059c:	40345413          	srai	s0,s0,0x3
   105a0:	00000493          	li	s1,0
   105a4:	01078913          	addi	s2,a5,16
   105a8:	02941063          	bne	s0,s1,105c8 <__libc_fini_array+0x54>
   105ac:	01013403          	ld	s0,16(sp)
   105b0:	01813083          	ld	ra,24(sp)
   105b4:	00813483          	ld	s1,8(sp)
   105b8:	00013903          	ld	s2,0(sp)
   105bc:	02010113          	addi	sp,sp,32
   105c0:	00000317          	auipc	t1,0x0
   105c4:	b4030067          	jr	-1216(t1) # 10100 <_fini>
   105c8:	ff800593          	li	a1,-8
   105cc:	00048513          	mv	a0,s1
   105d0:	e25ff0ef          	jal	ra,103f4 <__muldi3>
   105d4:	00a90533          	add	a0,s2,a0
   105d8:	ff853783          	ld	a5,-8(a0)
   105dc:	00148493          	addi	s1,s1,1
   105e0:	000780e7          	jalr	a5
   105e4:	fc5ff06f          	j	105a8 <__libc_fini_array+0x34>
   105e8:	0000                	unimp
	...

00000000000105ec <__libc_init_array>:
   105ec:	fe010113          	addi	sp,sp,-32
   105f0:	00813823          	sd	s0,16(sp)
   105f4:	00913423          	sd	s1,8(sp)
   105f8:	00011437          	lui	s0,0x11
   105fc:	000114b7          	lui	s1,0x11
   10600:	00048793          	mv	a5,s1
   10604:	00040413          	mv	s0,s0
   10608:	40f40433          	sub	s0,s0,a5
   1060c:	01213023          	sd	s2,0(sp)
   10610:	00113c23          	sd	ra,24(sp)
   10614:	40345413          	srai	s0,s0,0x3
   10618:	00048493          	mv	s1,s1
   1061c:	00000913          	li	s2,0
   10620:	04891463          	bne	s2,s0,10668 <__libc_init_array+0x7c>
   10624:	000114b7          	lui	s1,0x11
   10628:	00000097          	auipc	ra,0x0
   1062c:	ad8080e7          	jalr	-1320(ra) # 10100 <_fini>
   10630:	00011437          	lui	s0,0x11
   10634:	00048793          	mv	a5,s1
   10638:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1063c:	40f40433          	sub	s0,s0,a5
   10640:	40345413          	srai	s0,s0,0x3
   10644:	00048493          	mv	s1,s1
   10648:	00000913          	li	s2,0
   1064c:	02891863          	bne	s2,s0,1067c <__libc_init_array+0x90>
   10650:	01813083          	ld	ra,24(sp)
   10654:	01013403          	ld	s0,16(sp)
   10658:	00813483          	ld	s1,8(sp)
   1065c:	00013903          	ld	s2,0(sp)
   10660:	02010113          	addi	sp,sp,32
   10664:	00008067          	ret
   10668:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   1066c:	00190913          	addi	s2,s2,1
   10670:	00848493          	addi	s1,s1,8
   10674:	000780e7          	jalr	a5
   10678:	fa9ff06f          	j	10620 <__libc_init_array+0x34>
   1067c:	0004b783          	ld	a5,0(s1)
   10680:	00190913          	addi	s2,s2,1
   10684:	00848493          	addi	s1,s1,8
   10688:	000780e7          	jalr	a5
   1068c:	fc1ff06f          	j	1064c <__libc_init_array+0x60>
   10690:	0000                	unimp
	...

0000000000010694 <memset>:
   10694:	00f00813          	li	a6,15
   10698:	00050713          	mv	a4,a0
   1069c:	02c87a63          	bleu	a2,a6,106d0 <memset+0x3c>
   106a0:	00f77793          	andi	a5,a4,15
   106a4:	0a079063          	bnez	a5,10744 <memset+0xb0>
   106a8:	06059e63          	bnez	a1,10724 <memset+0x90>
   106ac:	ff067693          	andi	a3,a2,-16
   106b0:	00f67613          	andi	a2,a2,15
   106b4:	00e686b3          	add	a3,a3,a4
   106b8:	00b73023          	sd	a1,0(a4)
   106bc:	00b73423          	sd	a1,8(a4)
   106c0:	01070713          	addi	a4,a4,16
   106c4:	fed76ae3          	bltu	a4,a3,106b8 <memset+0x24>
   106c8:	00061463          	bnez	a2,106d0 <memset+0x3c>
   106cc:	00008067          	ret
   106d0:	40c806b3          	sub	a3,a6,a2
   106d4:	00269693          	slli	a3,a3,0x2
   106d8:	00000297          	auipc	t0,0x0
   106dc:	005686b3          	add	a3,a3,t0
   106e0:	00c68067          	jr	12(a3)
   106e4:	00b70723          	sb	a1,14(a4)
   106e8:	00b706a3          	sb	a1,13(a4)
   106ec:	00b70623          	sb	a1,12(a4)
   106f0:	00b705a3          	sb	a1,11(a4)
   106f4:	00b70523          	sb	a1,10(a4)
   106f8:	00b704a3          	sb	a1,9(a4)
   106fc:	00b70423          	sb	a1,8(a4)
   10700:	00b703a3          	sb	a1,7(a4)
   10704:	00b70323          	sb	a1,6(a4)
   10708:	00b702a3          	sb	a1,5(a4)
   1070c:	00b70223          	sb	a1,4(a4)
   10710:	00b701a3          	sb	a1,3(a4)
   10714:	00b70123          	sb	a1,2(a4)
   10718:	00b700a3          	sb	a1,1(a4)
   1071c:	00b70023          	sb	a1,0(a4)
   10720:	00008067          	ret
   10724:	0ff5f593          	andi	a1,a1,255
   10728:	00859693          	slli	a3,a1,0x8
   1072c:	00d5e5b3          	or	a1,a1,a3
   10730:	01059693          	slli	a3,a1,0x10
   10734:	00d5e5b3          	or	a1,a1,a3
   10738:	02059693          	slli	a3,a1,0x20
   1073c:	00d5e5b3          	or	a1,a1,a3
   10740:	f6dff06f          	j	106ac <memset+0x18>
   10744:	00279693          	slli	a3,a5,0x2
   10748:	00000297          	auipc	t0,0x0
   1074c:	005686b3          	add	a3,a3,t0
   10750:	00008293          	mv	t0,ra
   10754:	f98680e7          	jalr	-104(a3)
   10758:	00028093          	mv	ra,t0
   1075c:	ff078793          	addi	a5,a5,-16
   10760:	40f70733          	sub	a4,a4,a5
   10764:	00f60633          	add	a2,a2,a5
   10768:	f6c874e3          	bleu	a2,a6,106d0 <memset+0x3c>
   1076c:	f3dff06f          	j	106a8 <memset+0x14>

0000000000010770 <__register_exitproc>:
   10770:	000117b7          	lui	a5,0x11
   10774:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10778:	00050313          	mv	t1,a0
   1077c:	1f873783          	ld	a5,504(a4)
   10780:	00079663          	bnez	a5,1078c <__register_exitproc+0x1c>
   10784:	20070793          	addi	a5,a4,512
   10788:	1ef73c23          	sd	a5,504(a4)
   1078c:	0087a703          	lw	a4,8(a5)
   10790:	01f00813          	li	a6,31
   10794:	fff00513          	li	a0,-1
   10798:	04e84e63          	blt	a6,a4,107f4 <__register_exitproc+0x84>
   1079c:	02030e63          	beqz	t1,107d8 <__register_exitproc+0x68>
   107a0:	00371813          	slli	a6,a4,0x3
   107a4:	01078833          	add	a6,a5,a6
   107a8:	10c83823          	sd	a2,272(a6)
   107ac:	3107a883          	lw	a7,784(a5)
   107b0:	00100613          	li	a2,1
   107b4:	00e6163b          	sllw	a2,a2,a4
   107b8:	00c8e8b3          	or	a7,a7,a2
   107bc:	3117a823          	sw	a7,784(a5)
   107c0:	20d83823          	sd	a3,528(a6)
   107c4:	00200693          	li	a3,2
   107c8:	00d31863          	bne	t1,a3,107d8 <__register_exitproc+0x68>
   107cc:	3147a683          	lw	a3,788(a5)
   107d0:	00c6e633          	or	a2,a3,a2
   107d4:	30c7aa23          	sw	a2,788(a5)
   107d8:	0017069b          	addiw	a3,a4,1
   107dc:	00270713          	addi	a4,a4,2
   107e0:	00371713          	slli	a4,a4,0x3
   107e4:	00d7a423          	sw	a3,8(a5)
   107e8:	00e787b3          	add	a5,a5,a4
   107ec:	00b7b023          	sd	a1,0(a5)
   107f0:	00000513          	li	a0,0
   107f4:	00008067          	ret
   107f8:	0000                	unimp
	...

00000000000107fc <__call_exitprocs>:
   107fc:	fb010113          	addi	sp,sp,-80
   10800:	000117b7          	lui	a5,0x11
   10804:	03313423          	sd	s3,40(sp)
   10808:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   1080c:	03413023          	sd	s4,32(sp)
   10810:	01513c23          	sd	s5,24(sp)
   10814:	01613823          	sd	s6,16(sp)
   10818:	04113423          	sd	ra,72(sp)
   1081c:	04813023          	sd	s0,64(sp)
   10820:	02913c23          	sd	s1,56(sp)
   10824:	03213823          	sd	s2,48(sp)
   10828:	01713423          	sd	s7,8(sp)
   1082c:	00050a93          	mv	s5,a0
   10830:	00058a13          	mv	s4,a1
   10834:	00100b13          	li	s6,1
   10838:	1f89b403          	ld	s0,504(s3)
   1083c:	00040c63          	beqz	s0,10854 <__call_exitprocs+0x58>
   10840:	00842483          	lw	s1,8(s0)
   10844:	fff4849b          	addiw	s1,s1,-1
   10848:	00349913          	slli	s2,s1,0x3
   1084c:	01240933          	add	s2,s0,s2
   10850:	0204d863          	bgez	s1,10880 <__call_exitprocs+0x84>
   10854:	04813083          	ld	ra,72(sp)
   10858:	04013403          	ld	s0,64(sp)
   1085c:	03813483          	ld	s1,56(sp)
   10860:	03013903          	ld	s2,48(sp)
   10864:	02813983          	ld	s3,40(sp)
   10868:	02013a03          	ld	s4,32(sp)
   1086c:	01813a83          	ld	s5,24(sp)
   10870:	01013b03          	ld	s6,16(sp)
   10874:	00813b83          	ld	s7,8(sp)
   10878:	05010113          	addi	sp,sp,80
   1087c:	00008067          	ret
   10880:	000a0c63          	beqz	s4,10898 <__call_exitprocs+0x9c>
   10884:	21093783          	ld	a5,528(s2)
   10888:	01478863          	beq	a5,s4,10898 <__call_exitprocs+0x9c>
   1088c:	fff4849b          	addiw	s1,s1,-1
   10890:	ff890913          	addi	s2,s2,-8
   10894:	fbdff06f          	j	10850 <__call_exitprocs+0x54>
   10898:	00842783          	lw	a5,8(s0)
   1089c:	01093683          	ld	a3,16(s2)
   108a0:	fff7879b          	addiw	a5,a5,-1
   108a4:	02979e63          	bne	a5,s1,108e0 <__call_exitprocs+0xe4>
   108a8:	00942423          	sw	s1,8(s0)
   108ac:	fe0680e3          	beqz	a3,1088c <__call_exitprocs+0x90>
   108b0:	31042703          	lw	a4,784(s0)
   108b4:	009b163b          	sllw	a2,s6,s1
   108b8:	00842b83          	lw	s7,8(s0)
   108bc:	00c77733          	and	a4,a4,a2
   108c0:	0007071b          	sext.w	a4,a4
   108c4:	02071263          	bnez	a4,108e8 <__call_exitprocs+0xec>
   108c8:	000680e7          	jalr	a3
   108cc:	00842703          	lw	a4,8(s0)
   108d0:	1f89b783          	ld	a5,504(s3)
   108d4:	f77712e3          	bne	a4,s7,10838 <__call_exitprocs+0x3c>
   108d8:	faf40ae3          	beq	s0,a5,1088c <__call_exitprocs+0x90>
   108dc:	f5dff06f          	j	10838 <__call_exitprocs+0x3c>
   108e0:	00093823          	sd	zero,16(s2)
   108e4:	fc9ff06f          	j	108ac <__call_exitprocs+0xb0>
   108e8:	31442783          	lw	a5,788(s0)
   108ec:	11093583          	ld	a1,272(s2)
   108f0:	00c7f7b3          	and	a5,a5,a2
   108f4:	0007879b          	sext.w	a5,a5
   108f8:	00079863          	bnez	a5,10908 <__call_exitprocs+0x10c>
   108fc:	000a8513          	mv	a0,s5
   10900:	000680e7          	jalr	a3
   10904:	fc9ff06f          	j	108cc <__call_exitprocs+0xd0>
   10908:	00058513          	mv	a0,a1
   1090c:	000680e7          	jalr	a3
   10910:	fbdff06f          	j	108cc <__call_exitprocs+0xd0>
   10914:	0000                	unimp
	...

0000000000010918 <conv_stat>:
   10918:	0005b783          	ld	a5,0(a1)
   1091c:	00f51023          	sh	a5,0(a0)
   10920:	0085b783          	ld	a5,8(a1)
   10924:	00f51123          	sh	a5,2(a0)
   10928:	0105a783          	lw	a5,16(a1)
   1092c:	00f52223          	sw	a5,4(a0)
   10930:	0145a783          	lw	a5,20(a1)
   10934:	00f51423          	sh	a5,8(a0)
   10938:	0185a783          	lw	a5,24(a1)
   1093c:	00f51523          	sh	a5,10(a0)
   10940:	01c5a783          	lw	a5,28(a1)
   10944:	00f51623          	sh	a5,12(a0)
   10948:	0205b783          	ld	a5,32(a1)
   1094c:	00f51723          	sh	a5,14(a0)
   10950:	0305b783          	ld	a5,48(a1)
   10954:	00f53823          	sd	a5,16(a0)
   10958:	0405b783          	ld	a5,64(a1)
   1095c:	04f53823          	sd	a5,80(a0)
   10960:	0385a783          	lw	a5,56(a1)
   10964:	04f53423          	sd	a5,72(a0)
   10968:	0485b783          	ld	a5,72(a1)
   1096c:	00f53c23          	sd	a5,24(a0)
   10970:	0585b783          	ld	a5,88(a1)
   10974:	02f53423          	sd	a5,40(a0)
   10978:	0685b783          	ld	a5,104(a1)
   1097c:	02f53c23          	sd	a5,56(a0)
   10980:	00008067          	ret

0000000000010984 <__syscall_error>:
   10984:	ff010113          	addi	sp,sp,-16
   10988:	00813023          	sd	s0,0(sp)
   1098c:	00113423          	sd	ra,8(sp)
   10990:	00050413          	mv	s0,a0
   10994:	00000097          	auipc	ra,0x0
   10998:	5f8080e7          	jalr	1528(ra) # 10f8c <__errno>
   1099c:	408007bb          	negw	a5,s0
   109a0:	00813083          	ld	ra,8(sp)
   109a4:	00013403          	ld	s0,0(sp)
   109a8:	00f52023          	sw	a5,0(a0)
   109ac:	fff00513          	li	a0,-1
   109b0:	01010113          	addi	sp,sp,16
   109b4:	00008067          	ret

00000000000109b8 <__internal_syscall>:
   109b8:	00050893          	mv	a7,a0
   109bc:	00058513          	mv	a0,a1
   109c0:	00060593          	mv	a1,a2
   109c4:	00068613          	mv	a2,a3
   109c8:	00070693          	mv	a3,a4
   109cc:	00000073          	ecall
   109d0:	00055663          	bgez	a0,109dc <__internal_syscall+0x24>
   109d4:	00000317          	auipc	t1,0x0
   109d8:	fb030067          	jr	-80(t1) # 10984 <__syscall_error>
   109dc:	00008067          	ret

00000000000109e0 <open>:
   109e0:	ff010113          	addi	sp,sp,-16
   109e4:	00060693          	mv	a3,a2
   109e8:	00000713          	li	a4,0
   109ec:	00058613          	mv	a2,a1
   109f0:	00050593          	mv	a1,a0
   109f4:	40000513          	li	a0,1024
   109f8:	00113423          	sd	ra,8(sp)
   109fc:	00000097          	auipc	ra,0x0
   10a00:	fbc080e7          	jalr	-68(ra) # 109b8 <__internal_syscall>
   10a04:	00813083          	ld	ra,8(sp)
   10a08:	0005051b          	sext.w	a0,a0
   10a0c:	01010113          	addi	sp,sp,16
   10a10:	00008067          	ret

0000000000010a14 <openat>:
   10a14:	ff010113          	addi	sp,sp,-16
   10a18:	00068713          	mv	a4,a3
   10a1c:	00060693          	mv	a3,a2
   10a20:	00058613          	mv	a2,a1
   10a24:	00050593          	mv	a1,a0
   10a28:	03800513          	li	a0,56
   10a2c:	00113423          	sd	ra,8(sp)
   10a30:	f89ff0ef          	jal	ra,109b8 <__internal_syscall>
   10a34:	00813083          	ld	ra,8(sp)
   10a38:	0005051b          	sext.w	a0,a0
   10a3c:	01010113          	addi	sp,sp,16
   10a40:	00008067          	ret

0000000000010a44 <lseek>:
   10a44:	00060693          	mv	a3,a2
   10a48:	00000713          	li	a4,0
   10a4c:	00058613          	mv	a2,a1
   10a50:	00050593          	mv	a1,a0
   10a54:	03e00513          	li	a0,62
   10a58:	00000317          	auipc	t1,0x0
   10a5c:	f6030067          	jr	-160(t1) # 109b8 <__internal_syscall>

0000000000010a60 <read>:
   10a60:	00060693          	mv	a3,a2
   10a64:	00000713          	li	a4,0
   10a68:	00058613          	mv	a2,a1
   10a6c:	00050593          	mv	a1,a0
   10a70:	03f00513          	li	a0,63
   10a74:	f45ff06f          	j	109b8 <__internal_syscall>

0000000000010a78 <write>:
   10a78:	00060693          	mv	a3,a2
   10a7c:	00000713          	li	a4,0
   10a80:	00058613          	mv	a2,a1
   10a84:	00050593          	mv	a1,a0
   10a88:	04000513          	li	a0,64
   10a8c:	00000317          	auipc	t1,0x0
   10a90:	f2c30067          	jr	-212(t1) # 109b8 <__internal_syscall>

0000000000010a94 <fstat>:
   10a94:	f6010113          	addi	sp,sp,-160
   10a98:	08913423          	sd	s1,136(sp)
   10a9c:	00010613          	mv	a2,sp
   10aa0:	00058493          	mv	s1,a1
   10aa4:	00000713          	li	a4,0
   10aa8:	00050593          	mv	a1,a0
   10aac:	00000693          	li	a3,0
   10ab0:	05000513          	li	a0,80
   10ab4:	08113c23          	sd	ra,152(sp)
   10ab8:	08813823          	sd	s0,144(sp)
   10abc:	efdff0ef          	jal	ra,109b8 <__internal_syscall>
   10ac0:	00050413          	mv	s0,a0
   10ac4:	00010593          	mv	a1,sp
   10ac8:	00048513          	mv	a0,s1
   10acc:	e4dff0ef          	jal	ra,10918 <conv_stat>
   10ad0:	0004051b          	sext.w	a0,s0
   10ad4:	09813083          	ld	ra,152(sp)
   10ad8:	09013403          	ld	s0,144(sp)
   10adc:	08813483          	ld	s1,136(sp)
   10ae0:	0a010113          	addi	sp,sp,160
   10ae4:	00008067          	ret

0000000000010ae8 <stat>:
   10ae8:	f6010113          	addi	sp,sp,-160
   10aec:	08913423          	sd	s1,136(sp)
   10af0:	00010613          	mv	a2,sp
   10af4:	00058493          	mv	s1,a1
   10af8:	00000713          	li	a4,0
   10afc:	00050593          	mv	a1,a0
   10b00:	00000693          	li	a3,0
   10b04:	40e00513          	li	a0,1038
   10b08:	08113c23          	sd	ra,152(sp)
   10b0c:	08813823          	sd	s0,144(sp)
   10b10:	00000097          	auipc	ra,0x0
   10b14:	ea8080e7          	jalr	-344(ra) # 109b8 <__internal_syscall>
   10b18:	00050413          	mv	s0,a0
   10b1c:	00010593          	mv	a1,sp
   10b20:	00048513          	mv	a0,s1
   10b24:	00000097          	auipc	ra,0x0
   10b28:	df4080e7          	jalr	-524(ra) # 10918 <conv_stat>
   10b2c:	0004051b          	sext.w	a0,s0
   10b30:	09813083          	ld	ra,152(sp)
   10b34:	09013403          	ld	s0,144(sp)
   10b38:	08813483          	ld	s1,136(sp)
   10b3c:	0a010113          	addi	sp,sp,160
   10b40:	00008067          	ret

0000000000010b44 <lstat>:
   10b44:	f6010113          	addi	sp,sp,-160
   10b48:	08913423          	sd	s1,136(sp)
   10b4c:	00010613          	mv	a2,sp
   10b50:	00058493          	mv	s1,a1
   10b54:	00000713          	li	a4,0
   10b58:	00050593          	mv	a1,a0
   10b5c:	00000693          	li	a3,0
   10b60:	40f00513          	li	a0,1039
   10b64:	08113c23          	sd	ra,152(sp)
   10b68:	08813823          	sd	s0,144(sp)
   10b6c:	e4dff0ef          	jal	ra,109b8 <__internal_syscall>
   10b70:	00050413          	mv	s0,a0
   10b74:	00010593          	mv	a1,sp
   10b78:	00048513          	mv	a0,s1
   10b7c:	d9dff0ef          	jal	ra,10918 <conv_stat>
   10b80:	0004051b          	sext.w	a0,s0
   10b84:	09813083          	ld	ra,152(sp)
   10b88:	09013403          	ld	s0,144(sp)
   10b8c:	08813483          	ld	s1,136(sp)
   10b90:	0a010113          	addi	sp,sp,160
   10b94:	00008067          	ret

0000000000010b98 <fstatat>:
   10b98:	f6010113          	addi	sp,sp,-160
   10b9c:	08913423          	sd	s1,136(sp)
   10ba0:	00068713          	mv	a4,a3
   10ba4:	00060493          	mv	s1,a2
   10ba8:	00010693          	mv	a3,sp
   10bac:	00058613          	mv	a2,a1
   10bb0:	00050593          	mv	a1,a0
   10bb4:	04f00513          	li	a0,79
   10bb8:	08113c23          	sd	ra,152(sp)
   10bbc:	08813823          	sd	s0,144(sp)
   10bc0:	00000097          	auipc	ra,0x0
   10bc4:	df8080e7          	jalr	-520(ra) # 109b8 <__internal_syscall>
   10bc8:	00050413          	mv	s0,a0
   10bcc:	00010593          	mv	a1,sp
   10bd0:	00048513          	mv	a0,s1
   10bd4:	00000097          	auipc	ra,0x0
   10bd8:	d44080e7          	jalr	-700(ra) # 10918 <conv_stat>
   10bdc:	0004051b          	sext.w	a0,s0
   10be0:	09813083          	ld	ra,152(sp)
   10be4:	09013403          	ld	s0,144(sp)
   10be8:	08813483          	ld	s1,136(sp)
   10bec:	0a010113          	addi	sp,sp,160
   10bf0:	00008067          	ret

0000000000010bf4 <access>:
   10bf4:	ff010113          	addi	sp,sp,-16
   10bf8:	00058613          	mv	a2,a1
   10bfc:	00000713          	li	a4,0
   10c00:	00050593          	mv	a1,a0
   10c04:	00000693          	li	a3,0
   10c08:	40900513          	li	a0,1033
   10c0c:	00113423          	sd	ra,8(sp)
   10c10:	da9ff0ef          	jal	ra,109b8 <__internal_syscall>
   10c14:	00813083          	ld	ra,8(sp)
   10c18:	0005051b          	sext.w	a0,a0
   10c1c:	01010113          	addi	sp,sp,16
   10c20:	00008067          	ret

0000000000010c24 <faccessat>:
   10c24:	ff010113          	addi	sp,sp,-16
   10c28:	00068713          	mv	a4,a3
   10c2c:	00060693          	mv	a3,a2
   10c30:	00058613          	mv	a2,a1
   10c34:	00050593          	mv	a1,a0
   10c38:	03000513          	li	a0,48
   10c3c:	00113423          	sd	ra,8(sp)
   10c40:	00000097          	auipc	ra,0x0
   10c44:	d78080e7          	jalr	-648(ra) # 109b8 <__internal_syscall>
   10c48:	00813083          	ld	ra,8(sp)
   10c4c:	0005051b          	sext.w	a0,a0
   10c50:	01010113          	addi	sp,sp,16
   10c54:	00008067          	ret

0000000000010c58 <close>:
   10c58:	ff010113          	addi	sp,sp,-16
   10c5c:	00050593          	mv	a1,a0
   10c60:	00000713          	li	a4,0
   10c64:	00000693          	li	a3,0
   10c68:	00000613          	li	a2,0
   10c6c:	03900513          	li	a0,57
   10c70:	00113423          	sd	ra,8(sp)
   10c74:	d45ff0ef          	jal	ra,109b8 <__internal_syscall>
   10c78:	00813083          	ld	ra,8(sp)
   10c7c:	0005051b          	sext.w	a0,a0
   10c80:	01010113          	addi	sp,sp,16
   10c84:	00008067          	ret

0000000000010c88 <link>:
   10c88:	ff010113          	addi	sp,sp,-16
   10c8c:	00058613          	mv	a2,a1
   10c90:	00000713          	li	a4,0
   10c94:	00050593          	mv	a1,a0
   10c98:	00000693          	li	a3,0
   10c9c:	40100513          	li	a0,1025
   10ca0:	00113423          	sd	ra,8(sp)
   10ca4:	00000097          	auipc	ra,0x0
   10ca8:	d14080e7          	jalr	-748(ra) # 109b8 <__internal_syscall>
   10cac:	00813083          	ld	ra,8(sp)
   10cb0:	0005051b          	sext.w	a0,a0
   10cb4:	01010113          	addi	sp,sp,16
   10cb8:	00008067          	ret

0000000000010cbc <unlink>:
   10cbc:	ff010113          	addi	sp,sp,-16
   10cc0:	00050593          	mv	a1,a0
   10cc4:	00000713          	li	a4,0
   10cc8:	00000693          	li	a3,0
   10ccc:	00000613          	li	a2,0
   10cd0:	40200513          	li	a0,1026
   10cd4:	00113423          	sd	ra,8(sp)
   10cd8:	ce1ff0ef          	jal	ra,109b8 <__internal_syscall>
   10cdc:	00813083          	ld	ra,8(sp)
   10ce0:	0005051b          	sext.w	a0,a0
   10ce4:	01010113          	addi	sp,sp,16
   10ce8:	00008067          	ret

0000000000010cec <execve>:
   10cec:	ff010113          	addi	sp,sp,-16
   10cf0:	00113423          	sd	ra,8(sp)
   10cf4:	00000097          	auipc	ra,0x0
   10cf8:	298080e7          	jalr	664(ra) # 10f8c <__errno>
   10cfc:	00813083          	ld	ra,8(sp)
   10d00:	00c00793          	li	a5,12
   10d04:	00f52023          	sw	a5,0(a0)
   10d08:	fff00513          	li	a0,-1
   10d0c:	01010113          	addi	sp,sp,16
   10d10:	00008067          	ret

0000000000010d14 <fork>:
   10d14:	ff010113          	addi	sp,sp,-16
   10d18:	00113423          	sd	ra,8(sp)
   10d1c:	270000ef          	jal	ra,10f8c <__errno>
   10d20:	00813083          	ld	ra,8(sp)
   10d24:	00b00793          	li	a5,11
   10d28:	00f52023          	sw	a5,0(a0)
   10d2c:	fff00513          	li	a0,-1
   10d30:	01010113          	addi	sp,sp,16
   10d34:	00008067          	ret

0000000000010d38 <getpid>:
   10d38:	00100513          	li	a0,1
   10d3c:	00008067          	ret

0000000000010d40 <kill>:
   10d40:	ff010113          	addi	sp,sp,-16
   10d44:	00113423          	sd	ra,8(sp)
   10d48:	244000ef          	jal	ra,10f8c <__errno>
   10d4c:	00813083          	ld	ra,8(sp)
   10d50:	01600793          	li	a5,22
   10d54:	00f52023          	sw	a5,0(a0)
   10d58:	fff00513          	li	a0,-1
   10d5c:	01010113          	addi	sp,sp,16
   10d60:	00008067          	ret

0000000000010d64 <wait>:
   10d64:	ff010113          	addi	sp,sp,-16
   10d68:	00113423          	sd	ra,8(sp)
   10d6c:	00000097          	auipc	ra,0x0
   10d70:	220080e7          	jalr	544(ra) # 10f8c <__errno>
   10d74:	00813083          	ld	ra,8(sp)
   10d78:	00a00793          	li	a5,10
   10d7c:	00f52023          	sw	a5,0(a0)
   10d80:	fff00513          	li	a0,-1
   10d84:	01010113          	addi	sp,sp,16
   10d88:	00008067          	ret

0000000000010d8c <isatty>:
   10d8c:	f8010113          	addi	sp,sp,-128
   10d90:	00810593          	addi	a1,sp,8
   10d94:	06113c23          	sd	ra,120(sp)
   10d98:	cfdff0ef          	jal	ra,10a94 <fstat>
   10d9c:	fff00793          	li	a5,-1
   10da0:	00f50863          	beq	a0,a5,10db0 <isatty+0x24>
   10da4:	00c12503          	lw	a0,12(sp)
   10da8:	40d5551b          	sraiw	a0,a0,0xd
   10dac:	00157513          	andi	a0,a0,1
   10db0:	07813083          	ld	ra,120(sp)
   10db4:	08010113          	addi	sp,sp,128
   10db8:	00008067          	ret

0000000000010dbc <gettimeofday>:
   10dbc:	ff010113          	addi	sp,sp,-16
   10dc0:	00050593          	mv	a1,a0
   10dc4:	00000713          	li	a4,0
   10dc8:	00000693          	li	a3,0
   10dcc:	00000613          	li	a2,0
   10dd0:	0a900513          	li	a0,169
   10dd4:	00113423          	sd	ra,8(sp)
   10dd8:	00000097          	auipc	ra,0x0
   10ddc:	be0080e7          	jalr	-1056(ra) # 109b8 <__internal_syscall>
   10de0:	00813083          	ld	ra,8(sp)
   10de4:	0005051b          	sext.w	a0,a0
   10de8:	01010113          	addi	sp,sp,16
   10dec:	00008067          	ret

0000000000010df0 <times>:
   10df0:	fd010113          	addi	sp,sp,-48
   10df4:	02813023          	sd	s0,32(sp)
   10df8:	00050413          	mv	s0,a0
   10dfc:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10e00:	00913c23          	sd	s1,24(sp)
   10e04:	02113423          	sd	ra,40(sp)
   10e08:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10e0c:	00079a63          	bnez	a5,10e20 <times+0x30>
   10e10:	00000593          	li	a1,0
   10e14:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10e18:	00000097          	auipc	ra,0x0
   10e1c:	fa4080e7          	jalr	-92(ra) # 10dbc <gettimeofday>
   10e20:	00000593          	li	a1,0
   10e24:	00010513          	mv	a0,sp
   10e28:	00000097          	auipc	ra,0x0
   10e2c:	f94080e7          	jalr	-108(ra) # 10dbc <gettimeofday>
   10e30:	0004b783          	ld	a5,0(s1)
   10e34:	00013503          	ld	a0,0(sp)
   10e38:	000f45b7          	lui	a1,0xf4
   10e3c:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10e40:	40f50533          	sub	a0,a0,a5
   10e44:	db0ff0ef          	jal	ra,103f4 <__muldi3>
   10e48:	0084b703          	ld	a4,8(s1)
   10e4c:	00813783          	ld	a5,8(sp)
   10e50:	00043823          	sd	zero,16(s0)
   10e54:	00043c23          	sd	zero,24(s0)
   10e58:	40e787b3          	sub	a5,a5,a4
   10e5c:	00f50533          	add	a0,a0,a5
   10e60:	00a43023          	sd	a0,0(s0)
   10e64:	00043423          	sd	zero,8(s0)
   10e68:	02813083          	ld	ra,40(sp)
   10e6c:	02013403          	ld	s0,32(sp)
   10e70:	01813483          	ld	s1,24(sp)
   10e74:	fff00513          	li	a0,-1
   10e78:	03010113          	addi	sp,sp,48
   10e7c:	00008067          	ret

0000000000010e80 <ftime>:
   10e80:	00051423          	sh	zero,8(a0)
   10e84:	00053023          	sd	zero,0(a0)
   10e88:	00000513          	li	a0,0
   10e8c:	00008067          	ret

0000000000010e90 <utime>:
   10e90:	fff00513          	li	a0,-1
   10e94:	00008067          	ret

0000000000010e98 <chown>:
   10e98:	fff00513          	li	a0,-1
   10e9c:	00008067          	ret

0000000000010ea0 <chmod>:
   10ea0:	fff00513          	li	a0,-1
   10ea4:	00008067          	ret

0000000000010ea8 <chdir>:
   10ea8:	fff00513          	li	a0,-1
   10eac:	00008067          	ret

0000000000010eb0 <getcwd>:
   10eb0:	00000513          	li	a0,0
   10eb4:	00008067          	ret

0000000000010eb8 <sysconf>:
   10eb8:	00200793          	li	a5,2
   10ebc:	00f50663          	beq	a0,a5,10ec8 <sysconf+0x10>
   10ec0:	fff00513          	li	a0,-1
   10ec4:	00008067          	ret
   10ec8:	000f4537          	lui	a0,0xf4
   10ecc:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10ed0:	00008067          	ret

0000000000010ed4 <sbrk>:
   10ed4:	fe010113          	addi	sp,sp,-32
   10ed8:	00813823          	sd	s0,16(sp)
   10edc:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10ee0:	00913423          	sd	s1,8(sp)
   10ee4:	00113c23          	sd	ra,24(sp)
   10ee8:	00050493          	mv	s1,a0
   10eec:	04079063          	bnez	a5,10f2c <sbrk+0x58>
   10ef0:	00000713          	li	a4,0
   10ef4:	00000693          	li	a3,0
   10ef8:	00000613          	li	a2,0
   10efc:	00000593          	li	a1,0
   10f00:	0d600513          	li	a0,214
   10f04:	ab5ff0ef          	jal	ra,109b8 <__internal_syscall>
   10f08:	fff00793          	li	a5,-1
   10f0c:	00f51e63          	bne	a0,a5,10f28 <sbrk+0x54>
   10f10:	fff00513          	li	a0,-1
   10f14:	01813083          	ld	ra,24(sp)
   10f18:	01013403          	ld	s0,16(sp)
   10f1c:	00813483          	ld	s1,8(sp)
   10f20:	02010113          	addi	sp,sp,32
   10f24:	00008067          	ret
   10f28:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10f2c:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10f30:	00000713          	li	a4,0
   10f34:	00000693          	li	a3,0
   10f38:	00b485b3          	add	a1,s1,a1
   10f3c:	00000613          	li	a2,0
   10f40:	0d600513          	li	a0,214
   10f44:	a75ff0ef          	jal	ra,109b8 <__internal_syscall>
   10f48:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10f4c:	00f484b3          	add	s1,s1,a5
   10f50:	fc9510e3          	bne	a0,s1,10f10 <sbrk+0x3c>
   10f54:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10f58:	00078513          	mv	a0,a5
   10f5c:	fb9ff06f          	j	10f14 <sbrk+0x40>

0000000000010f60 <_exit>:
   10f60:	ff010113          	addi	sp,sp,-16
   10f64:	00050593          	mv	a1,a0
   10f68:	00000713          	li	a4,0
   10f6c:	00000693          	li	a3,0
   10f70:	00000613          	li	a2,0
   10f74:	05d00513          	li	a0,93
   10f78:	00113423          	sd	ra,8(sp)
   10f7c:	00000097          	auipc	ra,0x0
   10f80:	a3c080e7          	jalr	-1476(ra) # 109b8 <__internal_syscall>
   10f84:	0000006f          	j	10f84 <_exit+0x24>
   10f88:	0000                	unimp
	...

0000000000010f8c <__errno>:
   10f8c:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10f90:	00008067          	ret
   10f94:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010f98 <__EH_FRAME_BEGIN__>:
   10f98:	0000                	unimp
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
  10:	03f4                	addi	a3,sp,460
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
  40:	041c                	addi	a5,sp,512
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
  10:	03f4                	addi	a3,sp,460
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0418                	addi	a4,sp,512
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
  3e:	041c                	addi	a5,sp,512
  40:	0001                	nop
  42:	0000                	unimp
  44:	0000                	unimp
  46:	051c                	addi	a5,sp,640
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
  9c:	f402                	sd	zero,40(sp)
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
 178:	041c                	addi	a5,sp,512
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
