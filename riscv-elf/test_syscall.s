
test_syscall.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	4b4000ef          	jal	ra,1057c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	39050513          	addi	a0,a0,912 # 1045c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	334080e7          	jalr	820(ra) # 10408 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	3f8080e7          	jalr	1016(ra) # 104d4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	32830067          	jr	808(t1) # 10420 <exit>

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
   1019c:	f2450513          	addi	a0,a0,-220 # 10f24 <__EH_FRAME_BEGIN__>
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
   101e0:	f2450513          	addi	a0,a0,-220 # 10f24 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	fe010113          	addi	sp,sp,-32
   10200:	00113c23          	sd	ra,24(sp)
   10204:	00813823          	sd	s0,16(sp)
   10208:	02010413          	addi	s0,sp,32
   1020c:	000117b7          	lui	a5,0x11
   10210:	ea878513          	addi	a0,a5,-344 # 10ea8 <__muldi3+0x28>
   10214:	00000097          	auipc	ra,0x0
   10218:	118080e7          	jalr	280(ra) # 1032c <print_s>
   1021c:	0001e7b7          	lui	a5,0x1e
   10220:	24078513          	addi	a0,a5,576 # 1e240 <__global_pointer$+0xc2e8>
   10224:	0dc000ef          	jal	ra,10300 <print_d>
   10228:	06100513          	li	a0,97
   1022c:	128000ef          	jal	ra,10354 <print_c>
   10230:	06200513          	li	a0,98
   10234:	120000ef          	jal	ra,10354 <print_c>
   10238:	06300513          	li	a0,99
   1023c:	118000ef          	jal	ra,10354 <print_c>
   10240:	00a00513          	li	a0,10
   10244:	110000ef          	jal	ra,10354 <print_c>
   10248:	000117b7          	lui	a5,0x11
   1024c:	ec878513          	addi	a0,a5,-312 # 10ec8 <__muldi3+0x48>
   10250:	00000097          	auipc	ra,0x0
   10254:	0dc080e7          	jalr	220(ra) # 1032c <print_s>
   10258:	00000097          	auipc	ra,0x0
   1025c:	17c080e7          	jalr	380(ra) # 103d4 <read_num>
   10260:	00050793          	mv	a5,a0
   10264:	fef42623          	sw	a5,-20(s0)
   10268:	000117b7          	lui	a5,0x11
   1026c:	ee078513          	addi	a0,a5,-288 # 10ee0 <__muldi3+0x60>
   10270:	00000097          	auipc	ra,0x0
   10274:	0bc080e7          	jalr	188(ra) # 1032c <print_s>
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	00078513          	mv	a0,a5
   10280:	080000ef          	jal	ra,10300 <print_d>
   10284:	000117b7          	lui	a5,0x11
   10288:	ef078513          	addi	a0,a5,-272 # 10ef0 <__muldi3+0x70>
   1028c:	00000097          	auipc	ra,0x0
   10290:	0a0080e7          	jalr	160(ra) # 1032c <print_s>
   10294:	000117b7          	lui	a5,0x11
   10298:	ef878513          	addi	a0,a5,-264 # 10ef8 <__muldi3+0x78>
   1029c:	00000097          	auipc	ra,0x0
   102a0:	090080e7          	jalr	144(ra) # 1032c <print_s>
   102a4:	100000ef          	jal	ra,103a4 <read_char>
   102a8:	00050793          	mv	a5,a0
   102ac:	fef405a3          	sb	a5,-21(s0)
   102b0:	000117b7          	lui	a5,0x11
   102b4:	f1078513          	addi	a0,a5,-240 # 10f10 <__muldi3+0x90>
   102b8:	00000097          	auipc	ra,0x0
   102bc:	074080e7          	jalr	116(ra) # 1032c <print_s>
   102c0:	feb44783          	lbu	a5,-21(s0)
   102c4:	00078513          	mv	a0,a5
   102c8:	08c000ef          	jal	ra,10354 <print_c>
   102cc:	000117b7          	lui	a5,0x11
   102d0:	ef078513          	addi	a0,a5,-272 # 10ef0 <__muldi3+0x70>
   102d4:	00000097          	auipc	ra,0x0
   102d8:	058080e7          	jalr	88(ra) # 1032c <print_s>
   102dc:	00000097          	auipc	ra,0x0
   102e0:	0a4080e7          	jalr	164(ra) # 10380 <exit_proc>
   102e4:	00000793          	li	a5,0
   102e8:	00078513          	mv	a0,a5
   102ec:	01813083          	ld	ra,24(sp)
   102f0:	01013403          	ld	s0,16(sp)
   102f4:	02010113          	addi	sp,sp,32
   102f8:	00008067          	ret
   102fc:	0000                	unimp
	...

0000000000010300 <print_d>:
   10300:	fe010113          	addi	sp,sp,-32
   10304:	00813c23          	sd	s0,24(sp)
   10308:	02010413          	addi	s0,sp,32
   1030c:	00050793          	mv	a5,a0
   10310:	fef42623          	sw	a5,-20(s0)
   10314:	00200893          	li	a7,2
   10318:	00000073          	ecall
   1031c:	00000013          	nop
   10320:	01813403          	ld	s0,24(sp)
   10324:	02010113          	addi	sp,sp,32
   10328:	00008067          	ret

000000000001032c <print_s>:
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	00813c23          	sd	s0,24(sp)
   10334:	02010413          	addi	s0,sp,32
   10338:	fea43423          	sd	a0,-24(s0)
   1033c:	00000893          	li	a7,0
   10340:	00000073          	ecall
   10344:	00000013          	nop
   10348:	01813403          	ld	s0,24(sp)
   1034c:	02010113          	addi	sp,sp,32
   10350:	00008067          	ret

0000000000010354 <print_c>:
   10354:	fe010113          	addi	sp,sp,-32
   10358:	00813c23          	sd	s0,24(sp)
   1035c:	02010413          	addi	s0,sp,32
   10360:	00050793          	mv	a5,a0
   10364:	fef407a3          	sb	a5,-17(s0)
   10368:	00100893          	li	a7,1
   1036c:	00000073          	ecall
   10370:	00000013          	nop
   10374:	01813403          	ld	s0,24(sp)
   10378:	02010113          	addi	sp,sp,32
   1037c:	00008067          	ret

0000000000010380 <exit_proc>:
   10380:	ff010113          	addi	sp,sp,-16
   10384:	00813423          	sd	s0,8(sp)
   10388:	01010413          	addi	s0,sp,16
   1038c:	00300893          	li	a7,3
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	00813403          	ld	s0,8(sp)
   1039c:	01010113          	addi	sp,sp,16
   103a0:	00008067          	ret

00000000000103a4 <read_char>:
   103a4:	fe010113          	addi	sp,sp,-32
   103a8:	00813c23          	sd	s0,24(sp)
   103ac:	02010413          	addi	s0,sp,32
   103b0:	00400893          	li	a7,4
   103b4:	00000073          	ecall
   103b8:	00050793          	mv	a5,a0
   103bc:	fef407a3          	sb	a5,-17(s0)
   103c0:	fef44783          	lbu	a5,-17(s0)
   103c4:	00078513          	mv	a0,a5
   103c8:	01813403          	ld	s0,24(sp)
   103cc:	02010113          	addi	sp,sp,32
   103d0:	00008067          	ret

00000000000103d4 <read_num>:
   103d4:	fe010113          	addi	sp,sp,-32
   103d8:	00813c23          	sd	s0,24(sp)
   103dc:	02010413          	addi	s0,sp,32
   103e0:	00500893          	li	a7,5
   103e4:	00000073          	ecall
   103e8:	00050793          	mv	a5,a0
   103ec:	fef43423          	sd	a5,-24(s0)
   103f0:	fe843783          	ld	a5,-24(s0)
   103f4:	00078513          	mv	a0,a5
   103f8:	01813403          	ld	s0,24(sp)
   103fc:	02010113          	addi	sp,sp,32
   10400:	00008067          	ret
   10404:	0000                	unimp
	...

0000000000010408 <atexit>:
   10408:	00050593          	mv	a1,a0
   1040c:	00000693          	li	a3,0
   10410:	00000613          	li	a2,0
   10414:	00000513          	li	a0,0
   10418:	2400006f          	j	10658 <__register_exitproc>
   1041c:	0000                	unimp
	...

0000000000010420 <exit>:
   10420:	ff010113          	addi	sp,sp,-16
   10424:	00000593          	li	a1,0
   10428:	00813023          	sd	s0,0(sp)
   1042c:	00113423          	sd	ra,8(sp)
   10430:	00050413          	mv	s0,a0
   10434:	2b0000ef          	jal	ra,106e4 <__call_exitprocs>
   10438:	000117b7          	lui	a5,0x11
   1043c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10440:	05853783          	ld	a5,88(a0)
   10444:	00078463          	beqz	a5,1044c <exit+0x2c>
   10448:	000780e7          	jalr	a5
   1044c:	00040513          	mv	a0,s0
   10450:	00001097          	auipc	ra,0x1
   10454:	9f8080e7          	jalr	-1544(ra) # 10e48 <_exit>
   10458:	0000                	unimp
	...

000000000001045c <__libc_fini_array>:
   1045c:	fe010113          	addi	sp,sp,-32
   10460:	000117b7          	lui	a5,0x11
   10464:	00011737          	lui	a4,0x11
   10468:	00813823          	sd	s0,16(sp)
   1046c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10470:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10474:	40e40433          	sub	s0,s0,a4
   10478:	00913423          	sd	s1,8(sp)
   1047c:	01213023          	sd	s2,0(sp)
   10480:	00113c23          	sd	ra,24(sp)
   10484:	40345413          	srai	s0,s0,0x3
   10488:	00000493          	li	s1,0
   1048c:	01078913          	addi	s2,a5,16
   10490:	02941063          	bne	s0,s1,104b0 <__libc_fini_array+0x54>
   10494:	01013403          	ld	s0,16(sp)
   10498:	01813083          	ld	ra,24(sp)
   1049c:	00813483          	ld	s1,8(sp)
   104a0:	00013903          	ld	s2,0(sp)
   104a4:	02010113          	addi	sp,sp,32
   104a8:	00000317          	auipc	t1,0x0
   104ac:	c5830067          	jr	-936(t1) # 10100 <_fini>
   104b0:	ff800593          	li	a1,-8
   104b4:	00048513          	mv	a0,s1
   104b8:	1c9000ef          	jal	ra,10e80 <__muldi3>
   104bc:	00a90533          	add	a0,s2,a0
   104c0:	ff853783          	ld	a5,-8(a0)
   104c4:	00148493          	addi	s1,s1,1
   104c8:	000780e7          	jalr	a5
   104cc:	fc5ff06f          	j	10490 <__libc_fini_array+0x34>
   104d0:	0000                	unimp
	...

00000000000104d4 <__libc_init_array>:
   104d4:	fe010113          	addi	sp,sp,-32
   104d8:	00813823          	sd	s0,16(sp)
   104dc:	00913423          	sd	s1,8(sp)
   104e0:	00011437          	lui	s0,0x11
   104e4:	000114b7          	lui	s1,0x11
   104e8:	00048793          	mv	a5,s1
   104ec:	00040413          	mv	s0,s0
   104f0:	40f40433          	sub	s0,s0,a5
   104f4:	01213023          	sd	s2,0(sp)
   104f8:	00113c23          	sd	ra,24(sp)
   104fc:	40345413          	srai	s0,s0,0x3
   10500:	00048493          	mv	s1,s1
   10504:	00000913          	li	s2,0
   10508:	04891463          	bne	s2,s0,10550 <__libc_init_array+0x7c>
   1050c:	000114b7          	lui	s1,0x11
   10510:	00000097          	auipc	ra,0x0
   10514:	bf0080e7          	jalr	-1040(ra) # 10100 <_fini>
   10518:	00011437          	lui	s0,0x11
   1051c:	00048793          	mv	a5,s1
   10520:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10524:	40f40433          	sub	s0,s0,a5
   10528:	40345413          	srai	s0,s0,0x3
   1052c:	00048493          	mv	s1,s1
   10530:	00000913          	li	s2,0
   10534:	02891863          	bne	s2,s0,10564 <__libc_init_array+0x90>
   10538:	01813083          	ld	ra,24(sp)
   1053c:	01013403          	ld	s0,16(sp)
   10540:	00813483          	ld	s1,8(sp)
   10544:	00013903          	ld	s2,0(sp)
   10548:	02010113          	addi	sp,sp,32
   1054c:	00008067          	ret
   10550:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10554:	00190913          	addi	s2,s2,1
   10558:	00848493          	addi	s1,s1,8
   1055c:	000780e7          	jalr	a5
   10560:	fa9ff06f          	j	10508 <__libc_init_array+0x34>
   10564:	0004b783          	ld	a5,0(s1)
   10568:	00190913          	addi	s2,s2,1
   1056c:	00848493          	addi	s1,s1,8
   10570:	000780e7          	jalr	a5
   10574:	fc1ff06f          	j	10534 <__libc_init_array+0x60>
   10578:	0000                	unimp
	...

000000000001057c <memset>:
   1057c:	00f00813          	li	a6,15
   10580:	00050713          	mv	a4,a0
   10584:	02c87a63          	bleu	a2,a6,105b8 <memset+0x3c>
   10588:	00f77793          	andi	a5,a4,15
   1058c:	0a079063          	bnez	a5,1062c <memset+0xb0>
   10590:	06059e63          	bnez	a1,1060c <memset+0x90>
   10594:	ff067693          	andi	a3,a2,-16
   10598:	00f67613          	andi	a2,a2,15
   1059c:	00e686b3          	add	a3,a3,a4
   105a0:	00b73023          	sd	a1,0(a4)
   105a4:	00b73423          	sd	a1,8(a4)
   105a8:	01070713          	addi	a4,a4,16
   105ac:	fed76ae3          	bltu	a4,a3,105a0 <memset+0x24>
   105b0:	00061463          	bnez	a2,105b8 <memset+0x3c>
   105b4:	00008067          	ret
   105b8:	40c806b3          	sub	a3,a6,a2
   105bc:	00269693          	slli	a3,a3,0x2
   105c0:	00000297          	auipc	t0,0x0
   105c4:	005686b3          	add	a3,a3,t0
   105c8:	00c68067          	jr	12(a3)
   105cc:	00b70723          	sb	a1,14(a4)
   105d0:	00b706a3          	sb	a1,13(a4)
   105d4:	00b70623          	sb	a1,12(a4)
   105d8:	00b705a3          	sb	a1,11(a4)
   105dc:	00b70523          	sb	a1,10(a4)
   105e0:	00b704a3          	sb	a1,9(a4)
   105e4:	00b70423          	sb	a1,8(a4)
   105e8:	00b703a3          	sb	a1,7(a4)
   105ec:	00b70323          	sb	a1,6(a4)
   105f0:	00b702a3          	sb	a1,5(a4)
   105f4:	00b70223          	sb	a1,4(a4)
   105f8:	00b701a3          	sb	a1,3(a4)
   105fc:	00b70123          	sb	a1,2(a4)
   10600:	00b700a3          	sb	a1,1(a4)
   10604:	00b70023          	sb	a1,0(a4)
   10608:	00008067          	ret
   1060c:	0ff5f593          	andi	a1,a1,255
   10610:	00859693          	slli	a3,a1,0x8
   10614:	00d5e5b3          	or	a1,a1,a3
   10618:	01059693          	slli	a3,a1,0x10
   1061c:	00d5e5b3          	or	a1,a1,a3
   10620:	02059693          	slli	a3,a1,0x20
   10624:	00d5e5b3          	or	a1,a1,a3
   10628:	f6dff06f          	j	10594 <memset+0x18>
   1062c:	00279693          	slli	a3,a5,0x2
   10630:	00000297          	auipc	t0,0x0
   10634:	005686b3          	add	a3,a3,t0
   10638:	00008293          	mv	t0,ra
   1063c:	f98680e7          	jalr	-104(a3)
   10640:	00028093          	mv	ra,t0
   10644:	ff078793          	addi	a5,a5,-16
   10648:	40f70733          	sub	a4,a4,a5
   1064c:	00f60633          	add	a2,a2,a5
   10650:	f6c874e3          	bleu	a2,a6,105b8 <memset+0x3c>
   10654:	f3dff06f          	j	10590 <memset+0x14>

0000000000010658 <__register_exitproc>:
   10658:	000117b7          	lui	a5,0x11
   1065c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10660:	00050313          	mv	t1,a0
   10664:	1f873783          	ld	a5,504(a4)
   10668:	00079663          	bnez	a5,10674 <__register_exitproc+0x1c>
   1066c:	20070793          	addi	a5,a4,512
   10670:	1ef73c23          	sd	a5,504(a4)
   10674:	0087a703          	lw	a4,8(a5)
   10678:	01f00813          	li	a6,31
   1067c:	fff00513          	li	a0,-1
   10680:	04e84e63          	blt	a6,a4,106dc <__register_exitproc+0x84>
   10684:	02030e63          	beqz	t1,106c0 <__register_exitproc+0x68>
   10688:	00371813          	slli	a6,a4,0x3
   1068c:	01078833          	add	a6,a5,a6
   10690:	10c83823          	sd	a2,272(a6)
   10694:	3107a883          	lw	a7,784(a5)
   10698:	00100613          	li	a2,1
   1069c:	00e6163b          	sllw	a2,a2,a4
   106a0:	00c8e8b3          	or	a7,a7,a2
   106a4:	3117a823          	sw	a7,784(a5)
   106a8:	20d83823          	sd	a3,528(a6)
   106ac:	00200693          	li	a3,2
   106b0:	00d31863          	bne	t1,a3,106c0 <__register_exitproc+0x68>
   106b4:	3147a683          	lw	a3,788(a5)
   106b8:	00c6e633          	or	a2,a3,a2
   106bc:	30c7aa23          	sw	a2,788(a5)
   106c0:	0017069b          	addiw	a3,a4,1
   106c4:	00270713          	addi	a4,a4,2
   106c8:	00371713          	slli	a4,a4,0x3
   106cc:	00d7a423          	sw	a3,8(a5)
   106d0:	00e787b3          	add	a5,a5,a4
   106d4:	00b7b023          	sd	a1,0(a5)
   106d8:	00000513          	li	a0,0
   106dc:	00008067          	ret
   106e0:	0000                	unimp
	...

00000000000106e4 <__call_exitprocs>:
   106e4:	fb010113          	addi	sp,sp,-80
   106e8:	000117b7          	lui	a5,0x11
   106ec:	03313423          	sd	s3,40(sp)
   106f0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   106f4:	03413023          	sd	s4,32(sp)
   106f8:	01513c23          	sd	s5,24(sp)
   106fc:	01613823          	sd	s6,16(sp)
   10700:	04113423          	sd	ra,72(sp)
   10704:	04813023          	sd	s0,64(sp)
   10708:	02913c23          	sd	s1,56(sp)
   1070c:	03213823          	sd	s2,48(sp)
   10710:	01713423          	sd	s7,8(sp)
   10714:	00050a93          	mv	s5,a0
   10718:	00058a13          	mv	s4,a1
   1071c:	00100b13          	li	s6,1
   10720:	1f89b403          	ld	s0,504(s3)
   10724:	00040c63          	beqz	s0,1073c <__call_exitprocs+0x58>
   10728:	00842483          	lw	s1,8(s0)
   1072c:	fff4849b          	addiw	s1,s1,-1
   10730:	00349913          	slli	s2,s1,0x3
   10734:	01240933          	add	s2,s0,s2
   10738:	0204d863          	bgez	s1,10768 <__call_exitprocs+0x84>
   1073c:	04813083          	ld	ra,72(sp)
   10740:	04013403          	ld	s0,64(sp)
   10744:	03813483          	ld	s1,56(sp)
   10748:	03013903          	ld	s2,48(sp)
   1074c:	02813983          	ld	s3,40(sp)
   10750:	02013a03          	ld	s4,32(sp)
   10754:	01813a83          	ld	s5,24(sp)
   10758:	01013b03          	ld	s6,16(sp)
   1075c:	00813b83          	ld	s7,8(sp)
   10760:	05010113          	addi	sp,sp,80
   10764:	00008067          	ret
   10768:	000a0c63          	beqz	s4,10780 <__call_exitprocs+0x9c>
   1076c:	21093783          	ld	a5,528(s2)
   10770:	01478863          	beq	a5,s4,10780 <__call_exitprocs+0x9c>
   10774:	fff4849b          	addiw	s1,s1,-1
   10778:	ff890913          	addi	s2,s2,-8
   1077c:	fbdff06f          	j	10738 <__call_exitprocs+0x54>
   10780:	00842783          	lw	a5,8(s0)
   10784:	01093683          	ld	a3,16(s2)
   10788:	fff7879b          	addiw	a5,a5,-1
   1078c:	02979e63          	bne	a5,s1,107c8 <__call_exitprocs+0xe4>
   10790:	00942423          	sw	s1,8(s0)
   10794:	fe0680e3          	beqz	a3,10774 <__call_exitprocs+0x90>
   10798:	31042703          	lw	a4,784(s0)
   1079c:	009b163b          	sllw	a2,s6,s1
   107a0:	00842b83          	lw	s7,8(s0)
   107a4:	00c77733          	and	a4,a4,a2
   107a8:	0007071b          	sext.w	a4,a4
   107ac:	02071263          	bnez	a4,107d0 <__call_exitprocs+0xec>
   107b0:	000680e7          	jalr	a3
   107b4:	00842703          	lw	a4,8(s0)
   107b8:	1f89b783          	ld	a5,504(s3)
   107bc:	f77712e3          	bne	a4,s7,10720 <__call_exitprocs+0x3c>
   107c0:	faf40ae3          	beq	s0,a5,10774 <__call_exitprocs+0x90>
   107c4:	f5dff06f          	j	10720 <__call_exitprocs+0x3c>
   107c8:	00093823          	sd	zero,16(s2)
   107cc:	fc9ff06f          	j	10794 <__call_exitprocs+0xb0>
   107d0:	31442783          	lw	a5,788(s0)
   107d4:	11093583          	ld	a1,272(s2)
   107d8:	00c7f7b3          	and	a5,a5,a2
   107dc:	0007879b          	sext.w	a5,a5
   107e0:	00079863          	bnez	a5,107f0 <__call_exitprocs+0x10c>
   107e4:	000a8513          	mv	a0,s5
   107e8:	000680e7          	jalr	a3
   107ec:	fc9ff06f          	j	107b4 <__call_exitprocs+0xd0>
   107f0:	00058513          	mv	a0,a1
   107f4:	000680e7          	jalr	a3
   107f8:	fbdff06f          	j	107b4 <__call_exitprocs+0xd0>
   107fc:	0000                	unimp
	...

0000000000010800 <conv_stat>:
   10800:	0005b783          	ld	a5,0(a1)
   10804:	00f51023          	sh	a5,0(a0)
   10808:	0085b783          	ld	a5,8(a1)
   1080c:	00f51123          	sh	a5,2(a0)
   10810:	0105a783          	lw	a5,16(a1)
   10814:	00f52223          	sw	a5,4(a0)
   10818:	0145a783          	lw	a5,20(a1)
   1081c:	00f51423          	sh	a5,8(a0)
   10820:	0185a783          	lw	a5,24(a1)
   10824:	00f51523          	sh	a5,10(a0)
   10828:	01c5a783          	lw	a5,28(a1)
   1082c:	00f51623          	sh	a5,12(a0)
   10830:	0205b783          	ld	a5,32(a1)
   10834:	00f51723          	sh	a5,14(a0)
   10838:	0305b783          	ld	a5,48(a1)
   1083c:	00f53823          	sd	a5,16(a0)
   10840:	0405b783          	ld	a5,64(a1)
   10844:	04f53823          	sd	a5,80(a0)
   10848:	0385a783          	lw	a5,56(a1)
   1084c:	04f53423          	sd	a5,72(a0)
   10850:	0485b783          	ld	a5,72(a1)
   10854:	00f53c23          	sd	a5,24(a0)
   10858:	0585b783          	ld	a5,88(a1)
   1085c:	02f53423          	sd	a5,40(a0)
   10860:	0685b783          	ld	a5,104(a1)
   10864:	02f53c23          	sd	a5,56(a0)
   10868:	00008067          	ret

000000000001086c <__syscall_error>:
   1086c:	ff010113          	addi	sp,sp,-16
   10870:	00813023          	sd	s0,0(sp)
   10874:	00113423          	sd	ra,8(sp)
   10878:	00050413          	mv	s0,a0
   1087c:	00000097          	auipc	ra,0x0
   10880:	5f8080e7          	jalr	1528(ra) # 10e74 <__errno>
   10884:	408007bb          	negw	a5,s0
   10888:	00813083          	ld	ra,8(sp)
   1088c:	00013403          	ld	s0,0(sp)
   10890:	00f52023          	sw	a5,0(a0)
   10894:	fff00513          	li	a0,-1
   10898:	01010113          	addi	sp,sp,16
   1089c:	00008067          	ret

00000000000108a0 <__internal_syscall>:
   108a0:	00050893          	mv	a7,a0
   108a4:	00058513          	mv	a0,a1
   108a8:	00060593          	mv	a1,a2
   108ac:	00068613          	mv	a2,a3
   108b0:	00070693          	mv	a3,a4
   108b4:	00000073          	ecall
   108b8:	00055663          	bgez	a0,108c4 <__internal_syscall+0x24>
   108bc:	00000317          	auipc	t1,0x0
   108c0:	fb030067          	jr	-80(t1) # 1086c <__syscall_error>
   108c4:	00008067          	ret

00000000000108c8 <open>:
   108c8:	ff010113          	addi	sp,sp,-16
   108cc:	00060693          	mv	a3,a2
   108d0:	00000713          	li	a4,0
   108d4:	00058613          	mv	a2,a1
   108d8:	00050593          	mv	a1,a0
   108dc:	40000513          	li	a0,1024
   108e0:	00113423          	sd	ra,8(sp)
   108e4:	00000097          	auipc	ra,0x0
   108e8:	fbc080e7          	jalr	-68(ra) # 108a0 <__internal_syscall>
   108ec:	00813083          	ld	ra,8(sp)
   108f0:	0005051b          	sext.w	a0,a0
   108f4:	01010113          	addi	sp,sp,16
   108f8:	00008067          	ret

00000000000108fc <openat>:
   108fc:	ff010113          	addi	sp,sp,-16
   10900:	00068713          	mv	a4,a3
   10904:	00060693          	mv	a3,a2
   10908:	00058613          	mv	a2,a1
   1090c:	00050593          	mv	a1,a0
   10910:	03800513          	li	a0,56
   10914:	00113423          	sd	ra,8(sp)
   10918:	f89ff0ef          	jal	ra,108a0 <__internal_syscall>
   1091c:	00813083          	ld	ra,8(sp)
   10920:	0005051b          	sext.w	a0,a0
   10924:	01010113          	addi	sp,sp,16
   10928:	00008067          	ret

000000000001092c <lseek>:
   1092c:	00060693          	mv	a3,a2
   10930:	00000713          	li	a4,0
   10934:	00058613          	mv	a2,a1
   10938:	00050593          	mv	a1,a0
   1093c:	03e00513          	li	a0,62
   10940:	00000317          	auipc	t1,0x0
   10944:	f6030067          	jr	-160(t1) # 108a0 <__internal_syscall>

0000000000010948 <read>:
   10948:	00060693          	mv	a3,a2
   1094c:	00000713          	li	a4,0
   10950:	00058613          	mv	a2,a1
   10954:	00050593          	mv	a1,a0
   10958:	03f00513          	li	a0,63
   1095c:	f45ff06f          	j	108a0 <__internal_syscall>

0000000000010960 <write>:
   10960:	00060693          	mv	a3,a2
   10964:	00000713          	li	a4,0
   10968:	00058613          	mv	a2,a1
   1096c:	00050593          	mv	a1,a0
   10970:	04000513          	li	a0,64
   10974:	00000317          	auipc	t1,0x0
   10978:	f2c30067          	jr	-212(t1) # 108a0 <__internal_syscall>

000000000001097c <fstat>:
   1097c:	f6010113          	addi	sp,sp,-160
   10980:	08913423          	sd	s1,136(sp)
   10984:	00010613          	mv	a2,sp
   10988:	00058493          	mv	s1,a1
   1098c:	00000713          	li	a4,0
   10990:	00050593          	mv	a1,a0
   10994:	00000693          	li	a3,0
   10998:	05000513          	li	a0,80
   1099c:	08113c23          	sd	ra,152(sp)
   109a0:	08813823          	sd	s0,144(sp)
   109a4:	efdff0ef          	jal	ra,108a0 <__internal_syscall>
   109a8:	00050413          	mv	s0,a0
   109ac:	00010593          	mv	a1,sp
   109b0:	00048513          	mv	a0,s1
   109b4:	e4dff0ef          	jal	ra,10800 <conv_stat>
   109b8:	0004051b          	sext.w	a0,s0
   109bc:	09813083          	ld	ra,152(sp)
   109c0:	09013403          	ld	s0,144(sp)
   109c4:	08813483          	ld	s1,136(sp)
   109c8:	0a010113          	addi	sp,sp,160
   109cc:	00008067          	ret

00000000000109d0 <stat>:
   109d0:	f6010113          	addi	sp,sp,-160
   109d4:	08913423          	sd	s1,136(sp)
   109d8:	00010613          	mv	a2,sp
   109dc:	00058493          	mv	s1,a1
   109e0:	00000713          	li	a4,0
   109e4:	00050593          	mv	a1,a0
   109e8:	00000693          	li	a3,0
   109ec:	40e00513          	li	a0,1038
   109f0:	08113c23          	sd	ra,152(sp)
   109f4:	08813823          	sd	s0,144(sp)
   109f8:	00000097          	auipc	ra,0x0
   109fc:	ea8080e7          	jalr	-344(ra) # 108a0 <__internal_syscall>
   10a00:	00050413          	mv	s0,a0
   10a04:	00010593          	mv	a1,sp
   10a08:	00048513          	mv	a0,s1
   10a0c:	00000097          	auipc	ra,0x0
   10a10:	df4080e7          	jalr	-524(ra) # 10800 <conv_stat>
   10a14:	0004051b          	sext.w	a0,s0
   10a18:	09813083          	ld	ra,152(sp)
   10a1c:	09013403          	ld	s0,144(sp)
   10a20:	08813483          	ld	s1,136(sp)
   10a24:	0a010113          	addi	sp,sp,160
   10a28:	00008067          	ret

0000000000010a2c <lstat>:
   10a2c:	f6010113          	addi	sp,sp,-160
   10a30:	08913423          	sd	s1,136(sp)
   10a34:	00010613          	mv	a2,sp
   10a38:	00058493          	mv	s1,a1
   10a3c:	00000713          	li	a4,0
   10a40:	00050593          	mv	a1,a0
   10a44:	00000693          	li	a3,0
   10a48:	40f00513          	li	a0,1039
   10a4c:	08113c23          	sd	ra,152(sp)
   10a50:	08813823          	sd	s0,144(sp)
   10a54:	e4dff0ef          	jal	ra,108a0 <__internal_syscall>
   10a58:	00050413          	mv	s0,a0
   10a5c:	00010593          	mv	a1,sp
   10a60:	00048513          	mv	a0,s1
   10a64:	d9dff0ef          	jal	ra,10800 <conv_stat>
   10a68:	0004051b          	sext.w	a0,s0
   10a6c:	09813083          	ld	ra,152(sp)
   10a70:	09013403          	ld	s0,144(sp)
   10a74:	08813483          	ld	s1,136(sp)
   10a78:	0a010113          	addi	sp,sp,160
   10a7c:	00008067          	ret

0000000000010a80 <fstatat>:
   10a80:	f6010113          	addi	sp,sp,-160
   10a84:	08913423          	sd	s1,136(sp)
   10a88:	00068713          	mv	a4,a3
   10a8c:	00060493          	mv	s1,a2
   10a90:	00010693          	mv	a3,sp
   10a94:	00058613          	mv	a2,a1
   10a98:	00050593          	mv	a1,a0
   10a9c:	04f00513          	li	a0,79
   10aa0:	08113c23          	sd	ra,152(sp)
   10aa4:	08813823          	sd	s0,144(sp)
   10aa8:	00000097          	auipc	ra,0x0
   10aac:	df8080e7          	jalr	-520(ra) # 108a0 <__internal_syscall>
   10ab0:	00050413          	mv	s0,a0
   10ab4:	00010593          	mv	a1,sp
   10ab8:	00048513          	mv	a0,s1
   10abc:	00000097          	auipc	ra,0x0
   10ac0:	d44080e7          	jalr	-700(ra) # 10800 <conv_stat>
   10ac4:	0004051b          	sext.w	a0,s0
   10ac8:	09813083          	ld	ra,152(sp)
   10acc:	09013403          	ld	s0,144(sp)
   10ad0:	08813483          	ld	s1,136(sp)
   10ad4:	0a010113          	addi	sp,sp,160
   10ad8:	00008067          	ret

0000000000010adc <access>:
   10adc:	ff010113          	addi	sp,sp,-16
   10ae0:	00058613          	mv	a2,a1
   10ae4:	00000713          	li	a4,0
   10ae8:	00050593          	mv	a1,a0
   10aec:	00000693          	li	a3,0
   10af0:	40900513          	li	a0,1033
   10af4:	00113423          	sd	ra,8(sp)
   10af8:	da9ff0ef          	jal	ra,108a0 <__internal_syscall>
   10afc:	00813083          	ld	ra,8(sp)
   10b00:	0005051b          	sext.w	a0,a0
   10b04:	01010113          	addi	sp,sp,16
   10b08:	00008067          	ret

0000000000010b0c <faccessat>:
   10b0c:	ff010113          	addi	sp,sp,-16
   10b10:	00068713          	mv	a4,a3
   10b14:	00060693          	mv	a3,a2
   10b18:	00058613          	mv	a2,a1
   10b1c:	00050593          	mv	a1,a0
   10b20:	03000513          	li	a0,48
   10b24:	00113423          	sd	ra,8(sp)
   10b28:	00000097          	auipc	ra,0x0
   10b2c:	d78080e7          	jalr	-648(ra) # 108a0 <__internal_syscall>
   10b30:	00813083          	ld	ra,8(sp)
   10b34:	0005051b          	sext.w	a0,a0
   10b38:	01010113          	addi	sp,sp,16
   10b3c:	00008067          	ret

0000000000010b40 <close>:
   10b40:	ff010113          	addi	sp,sp,-16
   10b44:	00050593          	mv	a1,a0
   10b48:	00000713          	li	a4,0
   10b4c:	00000693          	li	a3,0
   10b50:	00000613          	li	a2,0
   10b54:	03900513          	li	a0,57
   10b58:	00113423          	sd	ra,8(sp)
   10b5c:	d45ff0ef          	jal	ra,108a0 <__internal_syscall>
   10b60:	00813083          	ld	ra,8(sp)
   10b64:	0005051b          	sext.w	a0,a0
   10b68:	01010113          	addi	sp,sp,16
   10b6c:	00008067          	ret

0000000000010b70 <link>:
   10b70:	ff010113          	addi	sp,sp,-16
   10b74:	00058613          	mv	a2,a1
   10b78:	00000713          	li	a4,0
   10b7c:	00050593          	mv	a1,a0
   10b80:	00000693          	li	a3,0
   10b84:	40100513          	li	a0,1025
   10b88:	00113423          	sd	ra,8(sp)
   10b8c:	00000097          	auipc	ra,0x0
   10b90:	d14080e7          	jalr	-748(ra) # 108a0 <__internal_syscall>
   10b94:	00813083          	ld	ra,8(sp)
   10b98:	0005051b          	sext.w	a0,a0
   10b9c:	01010113          	addi	sp,sp,16
   10ba0:	00008067          	ret

0000000000010ba4 <unlink>:
   10ba4:	ff010113          	addi	sp,sp,-16
   10ba8:	00050593          	mv	a1,a0
   10bac:	00000713          	li	a4,0
   10bb0:	00000693          	li	a3,0
   10bb4:	00000613          	li	a2,0
   10bb8:	40200513          	li	a0,1026
   10bbc:	00113423          	sd	ra,8(sp)
   10bc0:	ce1ff0ef          	jal	ra,108a0 <__internal_syscall>
   10bc4:	00813083          	ld	ra,8(sp)
   10bc8:	0005051b          	sext.w	a0,a0
   10bcc:	01010113          	addi	sp,sp,16
   10bd0:	00008067          	ret

0000000000010bd4 <execve>:
   10bd4:	ff010113          	addi	sp,sp,-16
   10bd8:	00113423          	sd	ra,8(sp)
   10bdc:	00000097          	auipc	ra,0x0
   10be0:	298080e7          	jalr	664(ra) # 10e74 <__errno>
   10be4:	00813083          	ld	ra,8(sp)
   10be8:	00c00793          	li	a5,12
   10bec:	00f52023          	sw	a5,0(a0)
   10bf0:	fff00513          	li	a0,-1
   10bf4:	01010113          	addi	sp,sp,16
   10bf8:	00008067          	ret

0000000000010bfc <fork>:
   10bfc:	ff010113          	addi	sp,sp,-16
   10c00:	00113423          	sd	ra,8(sp)
   10c04:	270000ef          	jal	ra,10e74 <__errno>
   10c08:	00813083          	ld	ra,8(sp)
   10c0c:	00b00793          	li	a5,11
   10c10:	00f52023          	sw	a5,0(a0)
   10c14:	fff00513          	li	a0,-1
   10c18:	01010113          	addi	sp,sp,16
   10c1c:	00008067          	ret

0000000000010c20 <getpid>:
   10c20:	00100513          	li	a0,1
   10c24:	00008067          	ret

0000000000010c28 <kill>:
   10c28:	ff010113          	addi	sp,sp,-16
   10c2c:	00113423          	sd	ra,8(sp)
   10c30:	244000ef          	jal	ra,10e74 <__errno>
   10c34:	00813083          	ld	ra,8(sp)
   10c38:	01600793          	li	a5,22
   10c3c:	00f52023          	sw	a5,0(a0)
   10c40:	fff00513          	li	a0,-1
   10c44:	01010113          	addi	sp,sp,16
   10c48:	00008067          	ret

0000000000010c4c <wait>:
   10c4c:	ff010113          	addi	sp,sp,-16
   10c50:	00113423          	sd	ra,8(sp)
   10c54:	00000097          	auipc	ra,0x0
   10c58:	220080e7          	jalr	544(ra) # 10e74 <__errno>
   10c5c:	00813083          	ld	ra,8(sp)
   10c60:	00a00793          	li	a5,10
   10c64:	00f52023          	sw	a5,0(a0)
   10c68:	fff00513          	li	a0,-1
   10c6c:	01010113          	addi	sp,sp,16
   10c70:	00008067          	ret

0000000000010c74 <isatty>:
   10c74:	f8010113          	addi	sp,sp,-128
   10c78:	00810593          	addi	a1,sp,8
   10c7c:	06113c23          	sd	ra,120(sp)
   10c80:	cfdff0ef          	jal	ra,1097c <fstat>
   10c84:	fff00793          	li	a5,-1
   10c88:	00f50863          	beq	a0,a5,10c98 <isatty+0x24>
   10c8c:	00c12503          	lw	a0,12(sp)
   10c90:	40d5551b          	sraiw	a0,a0,0xd
   10c94:	00157513          	andi	a0,a0,1
   10c98:	07813083          	ld	ra,120(sp)
   10c9c:	08010113          	addi	sp,sp,128
   10ca0:	00008067          	ret

0000000000010ca4 <gettimeofday>:
   10ca4:	ff010113          	addi	sp,sp,-16
   10ca8:	00050593          	mv	a1,a0
   10cac:	00000713          	li	a4,0
   10cb0:	00000693          	li	a3,0
   10cb4:	00000613          	li	a2,0
   10cb8:	0a900513          	li	a0,169
   10cbc:	00113423          	sd	ra,8(sp)
   10cc0:	00000097          	auipc	ra,0x0
   10cc4:	be0080e7          	jalr	-1056(ra) # 108a0 <__internal_syscall>
   10cc8:	00813083          	ld	ra,8(sp)
   10ccc:	0005051b          	sext.w	a0,a0
   10cd0:	01010113          	addi	sp,sp,16
   10cd4:	00008067          	ret

0000000000010cd8 <times>:
   10cd8:	fd010113          	addi	sp,sp,-48
   10cdc:	02813023          	sd	s0,32(sp)
   10ce0:	00050413          	mv	s0,a0
   10ce4:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10ce8:	00913c23          	sd	s1,24(sp)
   10cec:	02113423          	sd	ra,40(sp)
   10cf0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10cf4:	00079a63          	bnez	a5,10d08 <times+0x30>
   10cf8:	00000593          	li	a1,0
   10cfc:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10d00:	00000097          	auipc	ra,0x0
   10d04:	fa4080e7          	jalr	-92(ra) # 10ca4 <gettimeofday>
   10d08:	00000593          	li	a1,0
   10d0c:	00010513          	mv	a0,sp
   10d10:	00000097          	auipc	ra,0x0
   10d14:	f94080e7          	jalr	-108(ra) # 10ca4 <gettimeofday>
   10d18:	0004b783          	ld	a5,0(s1)
   10d1c:	00013503          	ld	a0,0(sp)
   10d20:	000f45b7          	lui	a1,0xf4
   10d24:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10d28:	40f50533          	sub	a0,a0,a5
   10d2c:	154000ef          	jal	ra,10e80 <__muldi3>
   10d30:	0084b703          	ld	a4,8(s1)
   10d34:	00813783          	ld	a5,8(sp)
   10d38:	00043823          	sd	zero,16(s0)
   10d3c:	00043c23          	sd	zero,24(s0)
   10d40:	40e787b3          	sub	a5,a5,a4
   10d44:	00f50533          	add	a0,a0,a5
   10d48:	00a43023          	sd	a0,0(s0)
   10d4c:	00043423          	sd	zero,8(s0)
   10d50:	02813083          	ld	ra,40(sp)
   10d54:	02013403          	ld	s0,32(sp)
   10d58:	01813483          	ld	s1,24(sp)
   10d5c:	fff00513          	li	a0,-1
   10d60:	03010113          	addi	sp,sp,48
   10d64:	00008067          	ret

0000000000010d68 <ftime>:
   10d68:	00051423          	sh	zero,8(a0)
   10d6c:	00053023          	sd	zero,0(a0)
   10d70:	00000513          	li	a0,0
   10d74:	00008067          	ret

0000000000010d78 <utime>:
   10d78:	fff00513          	li	a0,-1
   10d7c:	00008067          	ret

0000000000010d80 <chown>:
   10d80:	fff00513          	li	a0,-1
   10d84:	00008067          	ret

0000000000010d88 <chmod>:
   10d88:	fff00513          	li	a0,-1
   10d8c:	00008067          	ret

0000000000010d90 <chdir>:
   10d90:	fff00513          	li	a0,-1
   10d94:	00008067          	ret

0000000000010d98 <getcwd>:
   10d98:	00000513          	li	a0,0
   10d9c:	00008067          	ret

0000000000010da0 <sysconf>:
   10da0:	00200793          	li	a5,2
   10da4:	00f50663          	beq	a0,a5,10db0 <sysconf+0x10>
   10da8:	fff00513          	li	a0,-1
   10dac:	00008067          	ret
   10db0:	000f4537          	lui	a0,0xf4
   10db4:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10db8:	00008067          	ret

0000000000010dbc <sbrk>:
   10dbc:	fe010113          	addi	sp,sp,-32
   10dc0:	00813823          	sd	s0,16(sp)
   10dc4:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10dc8:	00913423          	sd	s1,8(sp)
   10dcc:	00113c23          	sd	ra,24(sp)
   10dd0:	00050493          	mv	s1,a0
   10dd4:	04079063          	bnez	a5,10e14 <sbrk+0x58>
   10dd8:	00000713          	li	a4,0
   10ddc:	00000693          	li	a3,0
   10de0:	00000613          	li	a2,0
   10de4:	00000593          	li	a1,0
   10de8:	0d600513          	li	a0,214
   10dec:	ab5ff0ef          	jal	ra,108a0 <__internal_syscall>
   10df0:	fff00793          	li	a5,-1
   10df4:	00f51e63          	bne	a0,a5,10e10 <sbrk+0x54>
   10df8:	fff00513          	li	a0,-1
   10dfc:	01813083          	ld	ra,24(sp)
   10e00:	01013403          	ld	s0,16(sp)
   10e04:	00813483          	ld	s1,8(sp)
   10e08:	02010113          	addi	sp,sp,32
   10e0c:	00008067          	ret
   10e10:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e14:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10e18:	00000713          	li	a4,0
   10e1c:	00000693          	li	a3,0
   10e20:	00b485b3          	add	a1,s1,a1
   10e24:	00000613          	li	a2,0
   10e28:	0d600513          	li	a0,214
   10e2c:	a75ff0ef          	jal	ra,108a0 <__internal_syscall>
   10e30:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e34:	00f484b3          	add	s1,s1,a5
   10e38:	fc9510e3          	bne	a0,s1,10df8 <sbrk+0x3c>
   10e3c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e40:	00078513          	mv	a0,a5
   10e44:	fb9ff06f          	j	10dfc <sbrk+0x40>

0000000000010e48 <_exit>:
   10e48:	ff010113          	addi	sp,sp,-16
   10e4c:	00050593          	mv	a1,a0
   10e50:	00000713          	li	a4,0
   10e54:	00000693          	li	a3,0
   10e58:	00000613          	li	a2,0
   10e5c:	05d00513          	li	a0,93
   10e60:	00113423          	sd	ra,8(sp)
   10e64:	00000097          	auipc	ra,0x0
   10e68:	a3c080e7          	jalr	-1476(ra) # 108a0 <__internal_syscall>
   10e6c:	0000006f          	j	10e6c <_exit+0x24>
   10e70:	0000                	unimp
	...

0000000000010e74 <__errno>:
   10e74:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10e78:	00008067          	ret
   10e7c:	0000                	unimp
	...

0000000000010e80 <__muldi3>:
   10e80:	00050613          	mv	a2,a0
   10e84:	00000513          	li	a0,0
   10e88:	0015f693          	andi	a3,a1,1
   10e8c:	00068463          	beqz	a3,10e94 <__muldi3+0x14>
   10e90:	00c50533          	add	a0,a0,a2
   10e94:	0015d593          	srli	a1,a1,0x1
   10e98:	00161613          	slli	a2,a2,0x1
   10e9c:	fe0596e3          	bnez	a1,10e88 <__muldi3+0x8>
   10ea0:	00008067          	ret
   10ea4:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010ea8 <.rodata>:
   10ea8:	6854                	ld	a3,144(s0)
   10eaa:	7369                	lui	t1,0xffffa
   10eac:	6920                	ld	s0,80(a0)
   10eae:	74732073          	csrs	0x747,t1
   10eb2:	6972                	ld	s2,280(sp)
   10eb4:	676e                	ld	a4,216(sp)
   10eb6:	6620                	ld	s0,72(a2)
   10eb8:	6f72                	ld	t5,280(sp)
   10eba:	206d                	0x206d
   10ebc:	7270                	ld	a2,224(a2)
   10ebe:	6e69                	lui	t3,0x1a
   10ec0:	5f74                	lw	a3,124(a4)
   10ec2:	0a292873          	csrrs	a6,0xa2,s2
   10ec6:	0000                	unimp
   10ec8:	6e45                	lui	t3,0x11
   10eca:	6574                	ld	a3,200(a0)
   10ecc:	2072                	fld	ft0,280(sp)
   10ece:	2061                	0x2061
   10ed0:	756e                	ld	a0,248(sp)
   10ed2:	626d                	lui	tp,0x1b
   10ed4:	7265                	lui	tp,0xffff9
   10ed6:	203a                	fld	ft0,392(sp)
	...
   10ee0:	6854                	ld	a3,144(s0)
   10ee2:	2065                	0x2065
   10ee4:	756e                	ld	a0,248(sp)
   10ee6:	626d                	lui	tp,0x1b
   10ee8:	7265                	lui	tp,0xffff9
   10eea:	6920                	ld	s0,80(a0)
   10eec:	00203a73          	csrrc	s4,frm,zero
   10ef0:	000a                	0xa
   10ef2:	0000                	unimp
   10ef4:	0000                	unimp
   10ef6:	0000                	unimp
   10ef8:	6e45                	lui	t3,0x11
   10efa:	6574                	ld	a3,200(a0)
   10efc:	2072                	fld	ft0,280(sp)
   10efe:	2061                	0x2061
   10f00:	72616863          	bltu	sp,t1,11630 <__fini_array_end+0x620>
   10f04:	6361                	lui	t1,0x18
   10f06:	6574                	ld	a3,200(a0)
   10f08:	3a72                	fld	fs4,312(sp)
   10f0a:	0020                	addi	s0,sp,8
   10f0c:	0000                	unimp
   10f0e:	0000                	unimp
   10f10:	6854                	ld	a3,144(s0)
   10f12:	2065                	0x2065
   10f14:	72616863          	bltu	sp,t1,11644 <__fini_array_end+0x634>
   10f18:	6361                	lui	t1,0x18
   10f1a:	6574                	ld	a3,200(a0)
   10f1c:	2072                	fld	ft0,280(sp)
   10f1e:	7369                	lui	t1,0xffffa
   10f20:	203a                	fld	ft0,392(sp)
	...

Disassembly of section .eh_frame:

0000000000010f24 <__EH_FRAME_BEGIN__>:
   10f24:	0000                	unimp
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
  10:	0e80                	addi	s0,sp,848
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
  10:	0e80                	addi	s0,sp,848
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0ea4                	addi	s1,sp,856
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
  9c:	8002                	0x8002
  9e:	010e                	slli	sp,sp,0x3
  a0:	0000                	unimp
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
