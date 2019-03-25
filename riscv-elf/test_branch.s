
test_branch.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	538000ef          	jal	ra,10600 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	41450513          	addi	a0,a0,1044 # 104e0 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	3b8080e7          	jalr	952(ra) # 1048c <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	47c080e7          	jalr	1148(ra) # 10558 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	3ac30067          	jr	940(t1) # 104a4 <exit>

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
   1019c:	f8050513          	addi	a0,a0,-128 # 10f80 <__EH_FRAME_BEGIN__>
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
   101e0:	f8050513          	addi	a0,a0,-128 # 10f80 <__EH_FRAME_BEGIN__>
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
   1020c:	fe042023          	sw	zero,-32(s0)
   10210:	00100793          	li	a5,1
   10214:	fcf42e23          	sw	a5,-36(s0)
   10218:	00100793          	li	a5,1
   1021c:	fcf42423          	sw	a5,-56(s0)
   10220:	00200793          	li	a5,2
   10224:	fcf42623          	sw	a5,-52(s0)
   10228:	00300793          	li	a5,3
   1022c:	fcf42823          	sw	a5,-48(s0)
   10230:	00400793          	li	a5,4
   10234:	fcf42a23          	sw	a5,-44(s0)
   10238:	00500793          	li	a5,5
   1023c:	fcf42c23          	sw	a5,-40(s0)
   10240:	fe042783          	lw	a5,-32(s0)
   10244:	0007879b          	sext.w	a5,a5
   10248:	00078a63          	beqz	a5,1025c <main+0x60>
   1024c:	000117b7          	lui	a5,0x11
   10250:	f3078513          	addi	a0,a5,-208 # 10f30 <__muldi3+0x2c>
   10254:	00000097          	auipc	ra,0x0
   10258:	1c0080e7          	jalr	448(ra) # 10414 <print_s>
   1025c:	fdc42783          	lw	a5,-36(s0)
   10260:	0007879b          	sext.w	a5,a5
   10264:	00078a63          	beqz	a5,10278 <main+0x7c>
   10268:	000117b7          	lui	a5,0x11
   1026c:	f6078513          	addi	a0,a5,-160 # 10f60 <__muldi3+0x5c>
   10270:	00000097          	auipc	ra,0x0
   10274:	1a4080e7          	jalr	420(ra) # 10414 <print_s>
   10278:	000117b7          	lui	a5,0x11
   1027c:	f7878513          	addi	a0,a5,-136 # 10f78 <__muldi3+0x74>
   10280:	00000097          	auipc	ra,0x0
   10284:	194080e7          	jalr	404(ra) # 10414 <print_s>
   10288:	fe042623          	sw	zero,-20(s0)
   1028c:	0340006f          	j	102c0 <main+0xc4>
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	00279793          	slli	a5,a5,0x2
   10298:	ff040713          	addi	a4,s0,-16
   1029c:	00f707b3          	add	a5,a4,a5
   102a0:	fd87a783          	lw	a5,-40(a5)
   102a4:	00078513          	mv	a0,a5
   102a8:	140000ef          	jal	ra,103e8 <print_d>
   102ac:	02000513          	li	a0,32
   102b0:	18c000ef          	jal	ra,1043c <print_c>
   102b4:	fec42783          	lw	a5,-20(s0)
   102b8:	0017879b          	addiw	a5,a5,1
   102bc:	fef42623          	sw	a5,-20(s0)
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	0007871b          	sext.w	a4,a5
   102c8:	00400793          	li	a5,4
   102cc:	fce7d2e3          	ble	a4,a5,10290 <main+0x94>
   102d0:	00a00513          	li	a0,10
   102d4:	168000ef          	jal	ra,1043c <print_c>
   102d8:	00100793          	li	a5,1
   102dc:	fef42423          	sw	a5,-24(s0)
   102e0:	0740006f          	j	10354 <main+0x158>
   102e4:	fe842783          	lw	a5,-24(s0)
   102e8:	00279793          	slli	a5,a5,0x2
   102ec:	ff040713          	addi	a4,s0,-16
   102f0:	00f707b3          	add	a5,a4,a5
   102f4:	fd87a703          	lw	a4,-40(a5)
   102f8:	fe842783          	lw	a5,-24(s0)
   102fc:	fff7879b          	addiw	a5,a5,-1
   10300:	0007879b          	sext.w	a5,a5
   10304:	00279793          	slli	a5,a5,0x2
   10308:	ff040693          	addi	a3,s0,-16
   1030c:	00f687b3          	add	a5,a3,a5
   10310:	fd87a783          	lw	a5,-40(a5)
   10314:	00078693          	mv	a3,a5
   10318:	00068793          	mv	a5,a3
   1031c:	0027979b          	slliw	a5,a5,0x2
   10320:	00d787bb          	addw	a5,a5,a3
   10324:	0017979b          	slliw	a5,a5,0x1
   10328:	0007879b          	sext.w	a5,a5
   1032c:	00f707bb          	addw	a5,a4,a5
   10330:	0007871b          	sext.w	a4,a5
   10334:	fe842783          	lw	a5,-24(s0)
   10338:	00279793          	slli	a5,a5,0x2
   1033c:	ff040693          	addi	a3,s0,-16
   10340:	00f687b3          	add	a5,a3,a5
   10344:	fce7ac23          	sw	a4,-40(a5)
   10348:	fe842783          	lw	a5,-24(s0)
   1034c:	0017879b          	addiw	a5,a5,1
   10350:	fef42423          	sw	a5,-24(s0)
   10354:	fe842783          	lw	a5,-24(s0)
   10358:	0007871b          	sext.w	a4,a5
   1035c:	00400793          	li	a5,4
   10360:	f8e7d2e3          	ble	a4,a5,102e4 <main+0xe8>
   10364:	000117b7          	lui	a5,0x11
   10368:	f7878513          	addi	a0,a5,-136 # 10f78 <__muldi3+0x74>
   1036c:	00000097          	auipc	ra,0x0
   10370:	0a8080e7          	jalr	168(ra) # 10414 <print_s>
   10374:	fe042223          	sw	zero,-28(s0)
   10378:	0340006f          	j	103ac <main+0x1b0>
   1037c:	fe442783          	lw	a5,-28(s0)
   10380:	00279793          	slli	a5,a5,0x2
   10384:	ff040713          	addi	a4,s0,-16
   10388:	00f707b3          	add	a5,a4,a5
   1038c:	fd87a783          	lw	a5,-40(a5)
   10390:	00078513          	mv	a0,a5
   10394:	054000ef          	jal	ra,103e8 <print_d>
   10398:	02000513          	li	a0,32
   1039c:	0a0000ef          	jal	ra,1043c <print_c>
   103a0:	fe442783          	lw	a5,-28(s0)
   103a4:	0017879b          	addiw	a5,a5,1
   103a8:	fef42223          	sw	a5,-28(s0)
   103ac:	fe442783          	lw	a5,-28(s0)
   103b0:	0007871b          	sext.w	a4,a5
   103b4:	00400793          	li	a5,4
   103b8:	fce7d2e3          	ble	a4,a5,1037c <main+0x180>
   103bc:	00a00513          	li	a0,10
   103c0:	07c000ef          	jal	ra,1043c <print_c>
   103c4:	00000097          	auipc	ra,0x0
   103c8:	0a4080e7          	jalr	164(ra) # 10468 <exit_proc>
   103cc:	00000793          	li	a5,0
   103d0:	00078513          	mv	a0,a5
   103d4:	03813083          	ld	ra,56(sp)
   103d8:	03013403          	ld	s0,48(sp)
   103dc:	04010113          	addi	sp,sp,64
   103e0:	00008067          	ret
   103e4:	0000                	unimp
	...

00000000000103e8 <print_d>:
   103e8:	fe010113          	addi	sp,sp,-32
   103ec:	00813c23          	sd	s0,24(sp)
   103f0:	02010413          	addi	s0,sp,32
   103f4:	00050793          	mv	a5,a0
   103f8:	fef42623          	sw	a5,-20(s0)
   103fc:	00200893          	li	a7,2
   10400:	00000073          	ecall
   10404:	00000013          	nop
   10408:	01813403          	ld	s0,24(sp)
   1040c:	02010113          	addi	sp,sp,32
   10410:	00008067          	ret

0000000000010414 <print_s>:
   10414:	fe010113          	addi	sp,sp,-32
   10418:	00813c23          	sd	s0,24(sp)
   1041c:	02010413          	addi	s0,sp,32
   10420:	fea43423          	sd	a0,-24(s0)
   10424:	00000893          	li	a7,0
   10428:	00000073          	ecall
   1042c:	00000013          	nop
   10430:	01813403          	ld	s0,24(sp)
   10434:	02010113          	addi	sp,sp,32
   10438:	00008067          	ret

000000000001043c <print_c>:
   1043c:	fe010113          	addi	sp,sp,-32
   10440:	00813c23          	sd	s0,24(sp)
   10444:	02010413          	addi	s0,sp,32
   10448:	00050793          	mv	a5,a0
   1044c:	fef407a3          	sb	a5,-17(s0)
   10450:	00100893          	li	a7,1
   10454:	00000073          	ecall
   10458:	00000013          	nop
   1045c:	01813403          	ld	s0,24(sp)
   10460:	02010113          	addi	sp,sp,32
   10464:	00008067          	ret

0000000000010468 <exit_proc>:
   10468:	ff010113          	addi	sp,sp,-16
   1046c:	00813423          	sd	s0,8(sp)
   10470:	01010413          	addi	s0,sp,16
   10474:	00300893          	li	a7,3
   10478:	00000073          	ecall
   1047c:	00000013          	nop
   10480:	00813403          	ld	s0,8(sp)
   10484:	01010113          	addi	sp,sp,16
   10488:	00008067          	ret

000000000001048c <atexit>:
   1048c:	00050593          	mv	a1,a0
   10490:	00000693          	li	a3,0
   10494:	00000613          	li	a2,0
   10498:	00000513          	li	a0,0
   1049c:	2400006f          	j	106dc <__register_exitproc>
   104a0:	0000                	unimp
	...

00000000000104a4 <exit>:
   104a4:	ff010113          	addi	sp,sp,-16
   104a8:	00000593          	li	a1,0
   104ac:	00813023          	sd	s0,0(sp)
   104b0:	00113423          	sd	ra,8(sp)
   104b4:	00050413          	mv	s0,a0
   104b8:	2b0000ef          	jal	ra,10768 <__call_exitprocs>
   104bc:	000117b7          	lui	a5,0x11
   104c0:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   104c4:	05853783          	ld	a5,88(a0)
   104c8:	00078463          	beqz	a5,104d0 <exit+0x2c>
   104cc:	000780e7          	jalr	a5
   104d0:	00040513          	mv	a0,s0
   104d4:	00001097          	auipc	ra,0x1
   104d8:	9f8080e7          	jalr	-1544(ra) # 10ecc <_exit>
   104dc:	0000                	unimp
	...

00000000000104e0 <__libc_fini_array>:
   104e0:	fe010113          	addi	sp,sp,-32
   104e4:	000117b7          	lui	a5,0x11
   104e8:	00011737          	lui	a4,0x11
   104ec:	00813823          	sd	s0,16(sp)
   104f0:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   104f4:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   104f8:	40e40433          	sub	s0,s0,a4
   104fc:	00913423          	sd	s1,8(sp)
   10500:	01213023          	sd	s2,0(sp)
   10504:	00113c23          	sd	ra,24(sp)
   10508:	40345413          	srai	s0,s0,0x3
   1050c:	00000493          	li	s1,0
   10510:	01078913          	addi	s2,a5,16
   10514:	02941063          	bne	s0,s1,10534 <__libc_fini_array+0x54>
   10518:	01013403          	ld	s0,16(sp)
   1051c:	01813083          	ld	ra,24(sp)
   10520:	00813483          	ld	s1,8(sp)
   10524:	00013903          	ld	s2,0(sp)
   10528:	02010113          	addi	sp,sp,32
   1052c:	00000317          	auipc	t1,0x0
   10530:	bd430067          	jr	-1068(t1) # 10100 <_fini>
   10534:	ff800593          	li	a1,-8
   10538:	00048513          	mv	a0,s1
   1053c:	1c9000ef          	jal	ra,10f04 <__muldi3>
   10540:	00a90533          	add	a0,s2,a0
   10544:	ff853783          	ld	a5,-8(a0)
   10548:	00148493          	addi	s1,s1,1
   1054c:	000780e7          	jalr	a5
   10550:	fc5ff06f          	j	10514 <__libc_fini_array+0x34>
   10554:	0000                	unimp
	...

0000000000010558 <__libc_init_array>:
   10558:	fe010113          	addi	sp,sp,-32
   1055c:	00813823          	sd	s0,16(sp)
   10560:	00913423          	sd	s1,8(sp)
   10564:	00011437          	lui	s0,0x11
   10568:	000114b7          	lui	s1,0x11
   1056c:	00048793          	mv	a5,s1
   10570:	00040413          	mv	s0,s0
   10574:	40f40433          	sub	s0,s0,a5
   10578:	01213023          	sd	s2,0(sp)
   1057c:	00113c23          	sd	ra,24(sp)
   10580:	40345413          	srai	s0,s0,0x3
   10584:	00048493          	mv	s1,s1
   10588:	00000913          	li	s2,0
   1058c:	04891463          	bne	s2,s0,105d4 <__libc_init_array+0x7c>
   10590:	000114b7          	lui	s1,0x11
   10594:	00000097          	auipc	ra,0x0
   10598:	b6c080e7          	jalr	-1172(ra) # 10100 <_fini>
   1059c:	00011437          	lui	s0,0x11
   105a0:	00048793          	mv	a5,s1
   105a4:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   105a8:	40f40433          	sub	s0,s0,a5
   105ac:	40345413          	srai	s0,s0,0x3
   105b0:	00048493          	mv	s1,s1
   105b4:	00000913          	li	s2,0
   105b8:	02891863          	bne	s2,s0,105e8 <__libc_init_array+0x90>
   105bc:	01813083          	ld	ra,24(sp)
   105c0:	01013403          	ld	s0,16(sp)
   105c4:	00813483          	ld	s1,8(sp)
   105c8:	00013903          	ld	s2,0(sp)
   105cc:	02010113          	addi	sp,sp,32
   105d0:	00008067          	ret
   105d4:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   105d8:	00190913          	addi	s2,s2,1
   105dc:	00848493          	addi	s1,s1,8
   105e0:	000780e7          	jalr	a5
   105e4:	fa9ff06f          	j	1058c <__libc_init_array+0x34>
   105e8:	0004b783          	ld	a5,0(s1)
   105ec:	00190913          	addi	s2,s2,1
   105f0:	00848493          	addi	s1,s1,8
   105f4:	000780e7          	jalr	a5
   105f8:	fc1ff06f          	j	105b8 <__libc_init_array+0x60>
   105fc:	0000                	unimp
	...

0000000000010600 <memset>:
   10600:	00f00813          	li	a6,15
   10604:	00050713          	mv	a4,a0
   10608:	02c87a63          	bleu	a2,a6,1063c <memset+0x3c>
   1060c:	00f77793          	andi	a5,a4,15
   10610:	0a079063          	bnez	a5,106b0 <memset+0xb0>
   10614:	06059e63          	bnez	a1,10690 <memset+0x90>
   10618:	ff067693          	andi	a3,a2,-16
   1061c:	00f67613          	andi	a2,a2,15
   10620:	00e686b3          	add	a3,a3,a4
   10624:	00b73023          	sd	a1,0(a4)
   10628:	00b73423          	sd	a1,8(a4)
   1062c:	01070713          	addi	a4,a4,16
   10630:	fed76ae3          	bltu	a4,a3,10624 <memset+0x24>
   10634:	00061463          	bnez	a2,1063c <memset+0x3c>
   10638:	00008067          	ret
   1063c:	40c806b3          	sub	a3,a6,a2
   10640:	00269693          	slli	a3,a3,0x2
   10644:	00000297          	auipc	t0,0x0
   10648:	005686b3          	add	a3,a3,t0
   1064c:	00c68067          	jr	12(a3)
   10650:	00b70723          	sb	a1,14(a4)
   10654:	00b706a3          	sb	a1,13(a4)
   10658:	00b70623          	sb	a1,12(a4)
   1065c:	00b705a3          	sb	a1,11(a4)
   10660:	00b70523          	sb	a1,10(a4)
   10664:	00b704a3          	sb	a1,9(a4)
   10668:	00b70423          	sb	a1,8(a4)
   1066c:	00b703a3          	sb	a1,7(a4)
   10670:	00b70323          	sb	a1,6(a4)
   10674:	00b702a3          	sb	a1,5(a4)
   10678:	00b70223          	sb	a1,4(a4)
   1067c:	00b701a3          	sb	a1,3(a4)
   10680:	00b70123          	sb	a1,2(a4)
   10684:	00b700a3          	sb	a1,1(a4)
   10688:	00b70023          	sb	a1,0(a4)
   1068c:	00008067          	ret
   10690:	0ff5f593          	andi	a1,a1,255
   10694:	00859693          	slli	a3,a1,0x8
   10698:	00d5e5b3          	or	a1,a1,a3
   1069c:	01059693          	slli	a3,a1,0x10
   106a0:	00d5e5b3          	or	a1,a1,a3
   106a4:	02059693          	slli	a3,a1,0x20
   106a8:	00d5e5b3          	or	a1,a1,a3
   106ac:	f6dff06f          	j	10618 <memset+0x18>
   106b0:	00279693          	slli	a3,a5,0x2
   106b4:	00000297          	auipc	t0,0x0
   106b8:	005686b3          	add	a3,a3,t0
   106bc:	00008293          	mv	t0,ra
   106c0:	f98680e7          	jalr	-104(a3)
   106c4:	00028093          	mv	ra,t0
   106c8:	ff078793          	addi	a5,a5,-16
   106cc:	40f70733          	sub	a4,a4,a5
   106d0:	00f60633          	add	a2,a2,a5
   106d4:	f6c874e3          	bleu	a2,a6,1063c <memset+0x3c>
   106d8:	f3dff06f          	j	10614 <memset+0x14>

00000000000106dc <__register_exitproc>:
   106dc:	000117b7          	lui	a5,0x11
   106e0:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   106e4:	00050313          	mv	t1,a0
   106e8:	1f873783          	ld	a5,504(a4)
   106ec:	00079663          	bnez	a5,106f8 <__register_exitproc+0x1c>
   106f0:	20070793          	addi	a5,a4,512
   106f4:	1ef73c23          	sd	a5,504(a4)
   106f8:	0087a703          	lw	a4,8(a5)
   106fc:	01f00813          	li	a6,31
   10700:	fff00513          	li	a0,-1
   10704:	04e84e63          	blt	a6,a4,10760 <__register_exitproc+0x84>
   10708:	02030e63          	beqz	t1,10744 <__register_exitproc+0x68>
   1070c:	00371813          	slli	a6,a4,0x3
   10710:	01078833          	add	a6,a5,a6
   10714:	10c83823          	sd	a2,272(a6)
   10718:	3107a883          	lw	a7,784(a5)
   1071c:	00100613          	li	a2,1
   10720:	00e6163b          	sllw	a2,a2,a4
   10724:	00c8e8b3          	or	a7,a7,a2
   10728:	3117a823          	sw	a7,784(a5)
   1072c:	20d83823          	sd	a3,528(a6)
   10730:	00200693          	li	a3,2
   10734:	00d31863          	bne	t1,a3,10744 <__register_exitproc+0x68>
   10738:	3147a683          	lw	a3,788(a5)
   1073c:	00c6e633          	or	a2,a3,a2
   10740:	30c7aa23          	sw	a2,788(a5)
   10744:	0017069b          	addiw	a3,a4,1
   10748:	00270713          	addi	a4,a4,2
   1074c:	00371713          	slli	a4,a4,0x3
   10750:	00d7a423          	sw	a3,8(a5)
   10754:	00e787b3          	add	a5,a5,a4
   10758:	00b7b023          	sd	a1,0(a5)
   1075c:	00000513          	li	a0,0
   10760:	00008067          	ret
   10764:	0000                	unimp
	...

0000000000010768 <__call_exitprocs>:
   10768:	fb010113          	addi	sp,sp,-80
   1076c:	000117b7          	lui	a5,0x11
   10770:	03313423          	sd	s3,40(sp)
   10774:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10778:	03413023          	sd	s4,32(sp)
   1077c:	01513c23          	sd	s5,24(sp)
   10780:	01613823          	sd	s6,16(sp)
   10784:	04113423          	sd	ra,72(sp)
   10788:	04813023          	sd	s0,64(sp)
   1078c:	02913c23          	sd	s1,56(sp)
   10790:	03213823          	sd	s2,48(sp)
   10794:	01713423          	sd	s7,8(sp)
   10798:	00050a93          	mv	s5,a0
   1079c:	00058a13          	mv	s4,a1
   107a0:	00100b13          	li	s6,1
   107a4:	1f89b403          	ld	s0,504(s3)
   107a8:	00040c63          	beqz	s0,107c0 <__call_exitprocs+0x58>
   107ac:	00842483          	lw	s1,8(s0)
   107b0:	fff4849b          	addiw	s1,s1,-1
   107b4:	00349913          	slli	s2,s1,0x3
   107b8:	01240933          	add	s2,s0,s2
   107bc:	0204d863          	bgez	s1,107ec <__call_exitprocs+0x84>
   107c0:	04813083          	ld	ra,72(sp)
   107c4:	04013403          	ld	s0,64(sp)
   107c8:	03813483          	ld	s1,56(sp)
   107cc:	03013903          	ld	s2,48(sp)
   107d0:	02813983          	ld	s3,40(sp)
   107d4:	02013a03          	ld	s4,32(sp)
   107d8:	01813a83          	ld	s5,24(sp)
   107dc:	01013b03          	ld	s6,16(sp)
   107e0:	00813b83          	ld	s7,8(sp)
   107e4:	05010113          	addi	sp,sp,80
   107e8:	00008067          	ret
   107ec:	000a0c63          	beqz	s4,10804 <__call_exitprocs+0x9c>
   107f0:	21093783          	ld	a5,528(s2)
   107f4:	01478863          	beq	a5,s4,10804 <__call_exitprocs+0x9c>
   107f8:	fff4849b          	addiw	s1,s1,-1
   107fc:	ff890913          	addi	s2,s2,-8
   10800:	fbdff06f          	j	107bc <__call_exitprocs+0x54>
   10804:	00842783          	lw	a5,8(s0)
   10808:	01093683          	ld	a3,16(s2)
   1080c:	fff7879b          	addiw	a5,a5,-1
   10810:	02979e63          	bne	a5,s1,1084c <__call_exitprocs+0xe4>
   10814:	00942423          	sw	s1,8(s0)
   10818:	fe0680e3          	beqz	a3,107f8 <__call_exitprocs+0x90>
   1081c:	31042703          	lw	a4,784(s0)
   10820:	009b163b          	sllw	a2,s6,s1
   10824:	00842b83          	lw	s7,8(s0)
   10828:	00c77733          	and	a4,a4,a2
   1082c:	0007071b          	sext.w	a4,a4
   10830:	02071263          	bnez	a4,10854 <__call_exitprocs+0xec>
   10834:	000680e7          	jalr	a3
   10838:	00842703          	lw	a4,8(s0)
   1083c:	1f89b783          	ld	a5,504(s3)
   10840:	f77712e3          	bne	a4,s7,107a4 <__call_exitprocs+0x3c>
   10844:	faf40ae3          	beq	s0,a5,107f8 <__call_exitprocs+0x90>
   10848:	f5dff06f          	j	107a4 <__call_exitprocs+0x3c>
   1084c:	00093823          	sd	zero,16(s2)
   10850:	fc9ff06f          	j	10818 <__call_exitprocs+0xb0>
   10854:	31442783          	lw	a5,788(s0)
   10858:	11093583          	ld	a1,272(s2)
   1085c:	00c7f7b3          	and	a5,a5,a2
   10860:	0007879b          	sext.w	a5,a5
   10864:	00079863          	bnez	a5,10874 <__call_exitprocs+0x10c>
   10868:	000a8513          	mv	a0,s5
   1086c:	000680e7          	jalr	a3
   10870:	fc9ff06f          	j	10838 <__call_exitprocs+0xd0>
   10874:	00058513          	mv	a0,a1
   10878:	000680e7          	jalr	a3
   1087c:	fbdff06f          	j	10838 <__call_exitprocs+0xd0>
   10880:	0000                	unimp
	...

0000000000010884 <conv_stat>:
   10884:	0005b783          	ld	a5,0(a1)
   10888:	00f51023          	sh	a5,0(a0)
   1088c:	0085b783          	ld	a5,8(a1)
   10890:	00f51123          	sh	a5,2(a0)
   10894:	0105a783          	lw	a5,16(a1)
   10898:	00f52223          	sw	a5,4(a0)
   1089c:	0145a783          	lw	a5,20(a1)
   108a0:	00f51423          	sh	a5,8(a0)
   108a4:	0185a783          	lw	a5,24(a1)
   108a8:	00f51523          	sh	a5,10(a0)
   108ac:	01c5a783          	lw	a5,28(a1)
   108b0:	00f51623          	sh	a5,12(a0)
   108b4:	0205b783          	ld	a5,32(a1)
   108b8:	00f51723          	sh	a5,14(a0)
   108bc:	0305b783          	ld	a5,48(a1)
   108c0:	00f53823          	sd	a5,16(a0)
   108c4:	0405b783          	ld	a5,64(a1)
   108c8:	04f53823          	sd	a5,80(a0)
   108cc:	0385a783          	lw	a5,56(a1)
   108d0:	04f53423          	sd	a5,72(a0)
   108d4:	0485b783          	ld	a5,72(a1)
   108d8:	00f53c23          	sd	a5,24(a0)
   108dc:	0585b783          	ld	a5,88(a1)
   108e0:	02f53423          	sd	a5,40(a0)
   108e4:	0685b783          	ld	a5,104(a1)
   108e8:	02f53c23          	sd	a5,56(a0)
   108ec:	00008067          	ret

00000000000108f0 <__syscall_error>:
   108f0:	ff010113          	addi	sp,sp,-16
   108f4:	00813023          	sd	s0,0(sp)
   108f8:	00113423          	sd	ra,8(sp)
   108fc:	00050413          	mv	s0,a0
   10900:	00000097          	auipc	ra,0x0
   10904:	5f8080e7          	jalr	1528(ra) # 10ef8 <__errno>
   10908:	408007bb          	negw	a5,s0
   1090c:	00813083          	ld	ra,8(sp)
   10910:	00013403          	ld	s0,0(sp)
   10914:	00f52023          	sw	a5,0(a0)
   10918:	fff00513          	li	a0,-1
   1091c:	01010113          	addi	sp,sp,16
   10920:	00008067          	ret

0000000000010924 <__internal_syscall>:
   10924:	00050893          	mv	a7,a0
   10928:	00058513          	mv	a0,a1
   1092c:	00060593          	mv	a1,a2
   10930:	00068613          	mv	a2,a3
   10934:	00070693          	mv	a3,a4
   10938:	00000073          	ecall
   1093c:	00055663          	bgez	a0,10948 <__internal_syscall+0x24>
   10940:	00000317          	auipc	t1,0x0
   10944:	fb030067          	jr	-80(t1) # 108f0 <__syscall_error>
   10948:	00008067          	ret

000000000001094c <open>:
   1094c:	ff010113          	addi	sp,sp,-16
   10950:	00060693          	mv	a3,a2
   10954:	00000713          	li	a4,0
   10958:	00058613          	mv	a2,a1
   1095c:	00050593          	mv	a1,a0
   10960:	40000513          	li	a0,1024
   10964:	00113423          	sd	ra,8(sp)
   10968:	00000097          	auipc	ra,0x0
   1096c:	fbc080e7          	jalr	-68(ra) # 10924 <__internal_syscall>
   10970:	00813083          	ld	ra,8(sp)
   10974:	0005051b          	sext.w	a0,a0
   10978:	01010113          	addi	sp,sp,16
   1097c:	00008067          	ret

0000000000010980 <openat>:
   10980:	ff010113          	addi	sp,sp,-16
   10984:	00068713          	mv	a4,a3
   10988:	00060693          	mv	a3,a2
   1098c:	00058613          	mv	a2,a1
   10990:	00050593          	mv	a1,a0
   10994:	03800513          	li	a0,56
   10998:	00113423          	sd	ra,8(sp)
   1099c:	f89ff0ef          	jal	ra,10924 <__internal_syscall>
   109a0:	00813083          	ld	ra,8(sp)
   109a4:	0005051b          	sext.w	a0,a0
   109a8:	01010113          	addi	sp,sp,16
   109ac:	00008067          	ret

00000000000109b0 <lseek>:
   109b0:	00060693          	mv	a3,a2
   109b4:	00000713          	li	a4,0
   109b8:	00058613          	mv	a2,a1
   109bc:	00050593          	mv	a1,a0
   109c0:	03e00513          	li	a0,62
   109c4:	00000317          	auipc	t1,0x0
   109c8:	f6030067          	jr	-160(t1) # 10924 <__internal_syscall>

00000000000109cc <read>:
   109cc:	00060693          	mv	a3,a2
   109d0:	00000713          	li	a4,0
   109d4:	00058613          	mv	a2,a1
   109d8:	00050593          	mv	a1,a0
   109dc:	03f00513          	li	a0,63
   109e0:	f45ff06f          	j	10924 <__internal_syscall>

00000000000109e4 <write>:
   109e4:	00060693          	mv	a3,a2
   109e8:	00000713          	li	a4,0
   109ec:	00058613          	mv	a2,a1
   109f0:	00050593          	mv	a1,a0
   109f4:	04000513          	li	a0,64
   109f8:	00000317          	auipc	t1,0x0
   109fc:	f2c30067          	jr	-212(t1) # 10924 <__internal_syscall>

0000000000010a00 <fstat>:
   10a00:	f6010113          	addi	sp,sp,-160
   10a04:	08913423          	sd	s1,136(sp)
   10a08:	00010613          	mv	a2,sp
   10a0c:	00058493          	mv	s1,a1
   10a10:	00000713          	li	a4,0
   10a14:	00050593          	mv	a1,a0
   10a18:	00000693          	li	a3,0
   10a1c:	05000513          	li	a0,80
   10a20:	08113c23          	sd	ra,152(sp)
   10a24:	08813823          	sd	s0,144(sp)
   10a28:	efdff0ef          	jal	ra,10924 <__internal_syscall>
   10a2c:	00050413          	mv	s0,a0
   10a30:	00010593          	mv	a1,sp
   10a34:	00048513          	mv	a0,s1
   10a38:	e4dff0ef          	jal	ra,10884 <conv_stat>
   10a3c:	0004051b          	sext.w	a0,s0
   10a40:	09813083          	ld	ra,152(sp)
   10a44:	09013403          	ld	s0,144(sp)
   10a48:	08813483          	ld	s1,136(sp)
   10a4c:	0a010113          	addi	sp,sp,160
   10a50:	00008067          	ret

0000000000010a54 <stat>:
   10a54:	f6010113          	addi	sp,sp,-160
   10a58:	08913423          	sd	s1,136(sp)
   10a5c:	00010613          	mv	a2,sp
   10a60:	00058493          	mv	s1,a1
   10a64:	00000713          	li	a4,0
   10a68:	00050593          	mv	a1,a0
   10a6c:	00000693          	li	a3,0
   10a70:	40e00513          	li	a0,1038
   10a74:	08113c23          	sd	ra,152(sp)
   10a78:	08813823          	sd	s0,144(sp)
   10a7c:	00000097          	auipc	ra,0x0
   10a80:	ea8080e7          	jalr	-344(ra) # 10924 <__internal_syscall>
   10a84:	00050413          	mv	s0,a0
   10a88:	00010593          	mv	a1,sp
   10a8c:	00048513          	mv	a0,s1
   10a90:	00000097          	auipc	ra,0x0
   10a94:	df4080e7          	jalr	-524(ra) # 10884 <conv_stat>
   10a98:	0004051b          	sext.w	a0,s0
   10a9c:	09813083          	ld	ra,152(sp)
   10aa0:	09013403          	ld	s0,144(sp)
   10aa4:	08813483          	ld	s1,136(sp)
   10aa8:	0a010113          	addi	sp,sp,160
   10aac:	00008067          	ret

0000000000010ab0 <lstat>:
   10ab0:	f6010113          	addi	sp,sp,-160
   10ab4:	08913423          	sd	s1,136(sp)
   10ab8:	00010613          	mv	a2,sp
   10abc:	00058493          	mv	s1,a1
   10ac0:	00000713          	li	a4,0
   10ac4:	00050593          	mv	a1,a0
   10ac8:	00000693          	li	a3,0
   10acc:	40f00513          	li	a0,1039
   10ad0:	08113c23          	sd	ra,152(sp)
   10ad4:	08813823          	sd	s0,144(sp)
   10ad8:	e4dff0ef          	jal	ra,10924 <__internal_syscall>
   10adc:	00050413          	mv	s0,a0
   10ae0:	00010593          	mv	a1,sp
   10ae4:	00048513          	mv	a0,s1
   10ae8:	d9dff0ef          	jal	ra,10884 <conv_stat>
   10aec:	0004051b          	sext.w	a0,s0
   10af0:	09813083          	ld	ra,152(sp)
   10af4:	09013403          	ld	s0,144(sp)
   10af8:	08813483          	ld	s1,136(sp)
   10afc:	0a010113          	addi	sp,sp,160
   10b00:	00008067          	ret

0000000000010b04 <fstatat>:
   10b04:	f6010113          	addi	sp,sp,-160
   10b08:	08913423          	sd	s1,136(sp)
   10b0c:	00068713          	mv	a4,a3
   10b10:	00060493          	mv	s1,a2
   10b14:	00010693          	mv	a3,sp
   10b18:	00058613          	mv	a2,a1
   10b1c:	00050593          	mv	a1,a0
   10b20:	04f00513          	li	a0,79
   10b24:	08113c23          	sd	ra,152(sp)
   10b28:	08813823          	sd	s0,144(sp)
   10b2c:	00000097          	auipc	ra,0x0
   10b30:	df8080e7          	jalr	-520(ra) # 10924 <__internal_syscall>
   10b34:	00050413          	mv	s0,a0
   10b38:	00010593          	mv	a1,sp
   10b3c:	00048513          	mv	a0,s1
   10b40:	00000097          	auipc	ra,0x0
   10b44:	d44080e7          	jalr	-700(ra) # 10884 <conv_stat>
   10b48:	0004051b          	sext.w	a0,s0
   10b4c:	09813083          	ld	ra,152(sp)
   10b50:	09013403          	ld	s0,144(sp)
   10b54:	08813483          	ld	s1,136(sp)
   10b58:	0a010113          	addi	sp,sp,160
   10b5c:	00008067          	ret

0000000000010b60 <access>:
   10b60:	ff010113          	addi	sp,sp,-16
   10b64:	00058613          	mv	a2,a1
   10b68:	00000713          	li	a4,0
   10b6c:	00050593          	mv	a1,a0
   10b70:	00000693          	li	a3,0
   10b74:	40900513          	li	a0,1033
   10b78:	00113423          	sd	ra,8(sp)
   10b7c:	da9ff0ef          	jal	ra,10924 <__internal_syscall>
   10b80:	00813083          	ld	ra,8(sp)
   10b84:	0005051b          	sext.w	a0,a0
   10b88:	01010113          	addi	sp,sp,16
   10b8c:	00008067          	ret

0000000000010b90 <faccessat>:
   10b90:	ff010113          	addi	sp,sp,-16
   10b94:	00068713          	mv	a4,a3
   10b98:	00060693          	mv	a3,a2
   10b9c:	00058613          	mv	a2,a1
   10ba0:	00050593          	mv	a1,a0
   10ba4:	03000513          	li	a0,48
   10ba8:	00113423          	sd	ra,8(sp)
   10bac:	00000097          	auipc	ra,0x0
   10bb0:	d78080e7          	jalr	-648(ra) # 10924 <__internal_syscall>
   10bb4:	00813083          	ld	ra,8(sp)
   10bb8:	0005051b          	sext.w	a0,a0
   10bbc:	01010113          	addi	sp,sp,16
   10bc0:	00008067          	ret

0000000000010bc4 <close>:
   10bc4:	ff010113          	addi	sp,sp,-16
   10bc8:	00050593          	mv	a1,a0
   10bcc:	00000713          	li	a4,0
   10bd0:	00000693          	li	a3,0
   10bd4:	00000613          	li	a2,0
   10bd8:	03900513          	li	a0,57
   10bdc:	00113423          	sd	ra,8(sp)
   10be0:	d45ff0ef          	jal	ra,10924 <__internal_syscall>
   10be4:	00813083          	ld	ra,8(sp)
   10be8:	0005051b          	sext.w	a0,a0
   10bec:	01010113          	addi	sp,sp,16
   10bf0:	00008067          	ret

0000000000010bf4 <link>:
   10bf4:	ff010113          	addi	sp,sp,-16
   10bf8:	00058613          	mv	a2,a1
   10bfc:	00000713          	li	a4,0
   10c00:	00050593          	mv	a1,a0
   10c04:	00000693          	li	a3,0
   10c08:	40100513          	li	a0,1025
   10c0c:	00113423          	sd	ra,8(sp)
   10c10:	00000097          	auipc	ra,0x0
   10c14:	d14080e7          	jalr	-748(ra) # 10924 <__internal_syscall>
   10c18:	00813083          	ld	ra,8(sp)
   10c1c:	0005051b          	sext.w	a0,a0
   10c20:	01010113          	addi	sp,sp,16
   10c24:	00008067          	ret

0000000000010c28 <unlink>:
   10c28:	ff010113          	addi	sp,sp,-16
   10c2c:	00050593          	mv	a1,a0
   10c30:	00000713          	li	a4,0
   10c34:	00000693          	li	a3,0
   10c38:	00000613          	li	a2,0
   10c3c:	40200513          	li	a0,1026
   10c40:	00113423          	sd	ra,8(sp)
   10c44:	ce1ff0ef          	jal	ra,10924 <__internal_syscall>
   10c48:	00813083          	ld	ra,8(sp)
   10c4c:	0005051b          	sext.w	a0,a0
   10c50:	01010113          	addi	sp,sp,16
   10c54:	00008067          	ret

0000000000010c58 <execve>:
   10c58:	ff010113          	addi	sp,sp,-16
   10c5c:	00113423          	sd	ra,8(sp)
   10c60:	00000097          	auipc	ra,0x0
   10c64:	298080e7          	jalr	664(ra) # 10ef8 <__errno>
   10c68:	00813083          	ld	ra,8(sp)
   10c6c:	00c00793          	li	a5,12
   10c70:	00f52023          	sw	a5,0(a0)
   10c74:	fff00513          	li	a0,-1
   10c78:	01010113          	addi	sp,sp,16
   10c7c:	00008067          	ret

0000000000010c80 <fork>:
   10c80:	ff010113          	addi	sp,sp,-16
   10c84:	00113423          	sd	ra,8(sp)
   10c88:	270000ef          	jal	ra,10ef8 <__errno>
   10c8c:	00813083          	ld	ra,8(sp)
   10c90:	00b00793          	li	a5,11
   10c94:	00f52023          	sw	a5,0(a0)
   10c98:	fff00513          	li	a0,-1
   10c9c:	01010113          	addi	sp,sp,16
   10ca0:	00008067          	ret

0000000000010ca4 <getpid>:
   10ca4:	00100513          	li	a0,1
   10ca8:	00008067          	ret

0000000000010cac <kill>:
   10cac:	ff010113          	addi	sp,sp,-16
   10cb0:	00113423          	sd	ra,8(sp)
   10cb4:	244000ef          	jal	ra,10ef8 <__errno>
   10cb8:	00813083          	ld	ra,8(sp)
   10cbc:	01600793          	li	a5,22
   10cc0:	00f52023          	sw	a5,0(a0)
   10cc4:	fff00513          	li	a0,-1
   10cc8:	01010113          	addi	sp,sp,16
   10ccc:	00008067          	ret

0000000000010cd0 <wait>:
   10cd0:	ff010113          	addi	sp,sp,-16
   10cd4:	00113423          	sd	ra,8(sp)
   10cd8:	00000097          	auipc	ra,0x0
   10cdc:	220080e7          	jalr	544(ra) # 10ef8 <__errno>
   10ce0:	00813083          	ld	ra,8(sp)
   10ce4:	00a00793          	li	a5,10
   10ce8:	00f52023          	sw	a5,0(a0)
   10cec:	fff00513          	li	a0,-1
   10cf0:	01010113          	addi	sp,sp,16
   10cf4:	00008067          	ret

0000000000010cf8 <isatty>:
   10cf8:	f8010113          	addi	sp,sp,-128
   10cfc:	00810593          	addi	a1,sp,8
   10d00:	06113c23          	sd	ra,120(sp)
   10d04:	cfdff0ef          	jal	ra,10a00 <fstat>
   10d08:	fff00793          	li	a5,-1
   10d0c:	00f50863          	beq	a0,a5,10d1c <isatty+0x24>
   10d10:	00c12503          	lw	a0,12(sp)
   10d14:	40d5551b          	sraiw	a0,a0,0xd
   10d18:	00157513          	andi	a0,a0,1
   10d1c:	07813083          	ld	ra,120(sp)
   10d20:	08010113          	addi	sp,sp,128
   10d24:	00008067          	ret

0000000000010d28 <gettimeofday>:
   10d28:	ff010113          	addi	sp,sp,-16
   10d2c:	00050593          	mv	a1,a0
   10d30:	00000713          	li	a4,0
   10d34:	00000693          	li	a3,0
   10d38:	00000613          	li	a2,0
   10d3c:	0a900513          	li	a0,169
   10d40:	00113423          	sd	ra,8(sp)
   10d44:	00000097          	auipc	ra,0x0
   10d48:	be0080e7          	jalr	-1056(ra) # 10924 <__internal_syscall>
   10d4c:	00813083          	ld	ra,8(sp)
   10d50:	0005051b          	sext.w	a0,a0
   10d54:	01010113          	addi	sp,sp,16
   10d58:	00008067          	ret

0000000000010d5c <times>:
   10d5c:	fd010113          	addi	sp,sp,-48
   10d60:	02813023          	sd	s0,32(sp)
   10d64:	00050413          	mv	s0,a0
   10d68:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10d6c:	00913c23          	sd	s1,24(sp)
   10d70:	02113423          	sd	ra,40(sp)
   10d74:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10d78:	00079a63          	bnez	a5,10d8c <times+0x30>
   10d7c:	00000593          	li	a1,0
   10d80:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10d84:	00000097          	auipc	ra,0x0
   10d88:	fa4080e7          	jalr	-92(ra) # 10d28 <gettimeofday>
   10d8c:	00000593          	li	a1,0
   10d90:	00010513          	mv	a0,sp
   10d94:	00000097          	auipc	ra,0x0
   10d98:	f94080e7          	jalr	-108(ra) # 10d28 <gettimeofday>
   10d9c:	0004b783          	ld	a5,0(s1)
   10da0:	00013503          	ld	a0,0(sp)
   10da4:	000f45b7          	lui	a1,0xf4
   10da8:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10dac:	40f50533          	sub	a0,a0,a5
   10db0:	154000ef          	jal	ra,10f04 <__muldi3>
   10db4:	0084b703          	ld	a4,8(s1)
   10db8:	00813783          	ld	a5,8(sp)
   10dbc:	00043823          	sd	zero,16(s0)
   10dc0:	00043c23          	sd	zero,24(s0)
   10dc4:	40e787b3          	sub	a5,a5,a4
   10dc8:	00f50533          	add	a0,a0,a5
   10dcc:	00a43023          	sd	a0,0(s0)
   10dd0:	00043423          	sd	zero,8(s0)
   10dd4:	02813083          	ld	ra,40(sp)
   10dd8:	02013403          	ld	s0,32(sp)
   10ddc:	01813483          	ld	s1,24(sp)
   10de0:	fff00513          	li	a0,-1
   10de4:	03010113          	addi	sp,sp,48
   10de8:	00008067          	ret

0000000000010dec <ftime>:
   10dec:	00051423          	sh	zero,8(a0)
   10df0:	00053023          	sd	zero,0(a0)
   10df4:	00000513          	li	a0,0
   10df8:	00008067          	ret

0000000000010dfc <utime>:
   10dfc:	fff00513          	li	a0,-1
   10e00:	00008067          	ret

0000000000010e04 <chown>:
   10e04:	fff00513          	li	a0,-1
   10e08:	00008067          	ret

0000000000010e0c <chmod>:
   10e0c:	fff00513          	li	a0,-1
   10e10:	00008067          	ret

0000000000010e14 <chdir>:
   10e14:	fff00513          	li	a0,-1
   10e18:	00008067          	ret

0000000000010e1c <getcwd>:
   10e1c:	00000513          	li	a0,0
   10e20:	00008067          	ret

0000000000010e24 <sysconf>:
   10e24:	00200793          	li	a5,2
   10e28:	00f50663          	beq	a0,a5,10e34 <sysconf+0x10>
   10e2c:	fff00513          	li	a0,-1
   10e30:	00008067          	ret
   10e34:	000f4537          	lui	a0,0xf4
   10e38:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10e3c:	00008067          	ret

0000000000010e40 <sbrk>:
   10e40:	fe010113          	addi	sp,sp,-32
   10e44:	00813823          	sd	s0,16(sp)
   10e48:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e4c:	00913423          	sd	s1,8(sp)
   10e50:	00113c23          	sd	ra,24(sp)
   10e54:	00050493          	mv	s1,a0
   10e58:	04079063          	bnez	a5,10e98 <sbrk+0x58>
   10e5c:	00000713          	li	a4,0
   10e60:	00000693          	li	a3,0
   10e64:	00000613          	li	a2,0
   10e68:	00000593          	li	a1,0
   10e6c:	0d600513          	li	a0,214
   10e70:	ab5ff0ef          	jal	ra,10924 <__internal_syscall>
   10e74:	fff00793          	li	a5,-1
   10e78:	00f51e63          	bne	a0,a5,10e94 <sbrk+0x54>
   10e7c:	fff00513          	li	a0,-1
   10e80:	01813083          	ld	ra,24(sp)
   10e84:	01013403          	ld	s0,16(sp)
   10e88:	00813483          	ld	s1,8(sp)
   10e8c:	02010113          	addi	sp,sp,32
   10e90:	00008067          	ret
   10e94:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e98:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10e9c:	00000713          	li	a4,0
   10ea0:	00000693          	li	a3,0
   10ea4:	00b485b3          	add	a1,s1,a1
   10ea8:	00000613          	li	a2,0
   10eac:	0d600513          	li	a0,214
   10eb0:	a75ff0ef          	jal	ra,10924 <__internal_syscall>
   10eb4:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10eb8:	00f484b3          	add	s1,s1,a5
   10ebc:	fc9510e3          	bne	a0,s1,10e7c <sbrk+0x3c>
   10ec0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ec4:	00078513          	mv	a0,a5
   10ec8:	fb9ff06f          	j	10e80 <sbrk+0x40>

0000000000010ecc <_exit>:
   10ecc:	ff010113          	addi	sp,sp,-16
   10ed0:	00050593          	mv	a1,a0
   10ed4:	00000713          	li	a4,0
   10ed8:	00000693          	li	a3,0
   10edc:	00000613          	li	a2,0
   10ee0:	05d00513          	li	a0,93
   10ee4:	00113423          	sd	ra,8(sp)
   10ee8:	00000097          	auipc	ra,0x0
   10eec:	a3c080e7          	jalr	-1476(ra) # 10924 <__internal_syscall>
   10ef0:	0000006f          	j	10ef0 <_exit+0x24>
   10ef4:	0000                	unimp
	...

0000000000010ef8 <__errno>:
   10ef8:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10efc:	00008067          	ret
   10f00:	0000                	unimp
	...

0000000000010f04 <__muldi3>:
   10f04:	00050613          	mv	a2,a0
   10f08:	00000513          	li	a0,0
   10f0c:	0015f693          	andi	a3,a1,1
   10f10:	00068463          	beqz	a3,10f18 <__muldi3+0x14>
   10f14:	00c50533          	add	a0,a0,a2
   10f18:	0015d593          	srli	a1,a1,0x1
   10f1c:	00161613          	slli	a2,a2,0x1
   10f20:	fe0596e3          	bnez	a1,10f0c <__muldi3+0x8>
   10f24:	00008067          	ret
   10f28:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010f30 <.rodata>:
   10f30:	7245                	lui	tp,0xffff1
   10f32:	6f72                	ld	t5,280(sp)
   10f34:	2c72                	fld	fs8,280(sp)
   10f36:	6620                	ld	s0,72(a2)
   10f38:	2031                	0x2031
   10f3a:	7369                	lui	t1,0xffffa
   10f3c:	6620                	ld	s0,72(a2)
   10f3e:	6c61                	lui	s8,0x18
   10f40:	202c6573          	csrrsi	a0,0x202,24
   10f44:	73206577          	0x73206577
   10f48:	6f68                	ld	a0,216(a4)
   10f4a:	6c75                	lui	s8,0x1d
   10f4c:	2064                	fld	fs1,192(s0)
   10f4e:	6f6e                	ld	t5,216(sp)
   10f50:	2074                	fld	fa3,192(s0)
   10f52:	68206f67          	0x68206f67
   10f56:	7265                	lui	tp,0xffff9
   10f58:	2165                	addiw	sp,sp,25
   10f5a:	000a                	0xa
   10f5c:	0000                	unimp
   10f5e:	0000                	unimp
   10f60:	6559                	lui	a0,0x16
   10f62:	66202c73          	csrr	s8,0x662
   10f66:	2032                	fld	ft0,264(sp)
   10f68:	7369                	lui	t1,0xffffa
   10f6a:	7420                	ld	s0,104(s0)
   10f6c:	7572                	ld	a0,312(sp)
   10f6e:	0a65                	addi	s4,s4,25
	...
   10f78:	5b61                	li	s6,-8
   10f7a:	5d35                	li	s10,-19
   10f7c:	3d20                	fld	fs0,120(a0)
   10f7e:	0020                	addi	s0,sp,8

Disassembly of section .eh_frame:

0000000000010f80 <__EH_FRAME_BEGIN__>:
   10f80:	0000                	unimp
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
  10:	0f04                	addi	s1,sp,912
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
  10:	0f04                	addi	s1,sp,912
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0f28                	addi	a0,sp,920
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
  9c:	0402                	slli	s0,s0,0x0
  9e:	0000010f          	0x10f
  a2:	0000                	unimp
  a4:	0300                	addi	s0,sp,384
  a6:	01030123          	sb	a6,2(t1) # ffffffffffffa002 <__global_pointer$+0xfffffffffffe80aa>
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
	...
