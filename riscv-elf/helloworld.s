
helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	3f4000ef          	jal	ra,104bc <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	2d050513          	addi	a0,a0,720 # 1039c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	274080e7          	jalr	628(ra) # 10348 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	338080e7          	jalr	824(ra) # 10414 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	26830067          	jr	616(t1) # 10360 <exit>

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
   1019c:	df850513          	addi	a0,a0,-520 # 10df8 <__EH_FRAME_BEGIN__>
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
   101e0:	df850513          	addi	a0,a0,-520 # 10df8 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	ff010113          	addi	sp,sp,-16
   10200:	00113423          	sd	ra,8(sp)
   10204:	00813023          	sd	s0,0(sp)
   10208:	01010413          	addi	s0,sp,16
   1020c:	000117b7          	lui	a5,0x11
   10210:	de878513          	addi	a0,a5,-536 # 10de8 <__muldi3+0x28>
   10214:	00000097          	auipc	ra,0x0
   10218:	058080e7          	jalr	88(ra) # 1026c <print_s>
   1021c:	00000097          	auipc	ra,0x0
   10220:	0a4080e7          	jalr	164(ra) # 102c0 <exit_proc>
   10224:	00000793          	li	a5,0
   10228:	00078513          	mv	a0,a5
   1022c:	00813083          	ld	ra,8(sp)
   10230:	00013403          	ld	s0,0(sp)
   10234:	01010113          	addi	sp,sp,16
   10238:	00008067          	ret
   1023c:	0000                	unimp
	...

0000000000010240 <print_d>:
   10240:	fe010113          	addi	sp,sp,-32
   10244:	00813c23          	sd	s0,24(sp)
   10248:	02010413          	addi	s0,sp,32
   1024c:	00050793          	mv	a5,a0
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	00200893          	li	a7,2
   10258:	00000073          	ecall
   1025c:	00000013          	nop
   10260:	01813403          	ld	s0,24(sp)
   10264:	02010113          	addi	sp,sp,32
   10268:	00008067          	ret

000000000001026c <print_s>:
   1026c:	fe010113          	addi	sp,sp,-32
   10270:	00813c23          	sd	s0,24(sp)
   10274:	02010413          	addi	s0,sp,32
   10278:	fea43423          	sd	a0,-24(s0)
   1027c:	00000893          	li	a7,0
   10280:	00000073          	ecall
   10284:	00000013          	nop
   10288:	01813403          	ld	s0,24(sp)
   1028c:	02010113          	addi	sp,sp,32
   10290:	00008067          	ret

0000000000010294 <print_c>:
   10294:	fe010113          	addi	sp,sp,-32
   10298:	00813c23          	sd	s0,24(sp)
   1029c:	02010413          	addi	s0,sp,32
   102a0:	00050793          	mv	a5,a0
   102a4:	fef407a3          	sb	a5,-17(s0)
   102a8:	00100893          	li	a7,1
   102ac:	00000073          	ecall
   102b0:	00000013          	nop
   102b4:	01813403          	ld	s0,24(sp)
   102b8:	02010113          	addi	sp,sp,32
   102bc:	00008067          	ret

00000000000102c0 <exit_proc>:
   102c0:	ff010113          	addi	sp,sp,-16
   102c4:	00813423          	sd	s0,8(sp)
   102c8:	01010413          	addi	s0,sp,16
   102cc:	00300893          	li	a7,3
   102d0:	00000073          	ecall
   102d4:	00000013          	nop
   102d8:	00813403          	ld	s0,8(sp)
   102dc:	01010113          	addi	sp,sp,16
   102e0:	00008067          	ret

00000000000102e4 <read_char>:
   102e4:	fe010113          	addi	sp,sp,-32
   102e8:	00813c23          	sd	s0,24(sp)
   102ec:	02010413          	addi	s0,sp,32
   102f0:	00400893          	li	a7,4
   102f4:	00000073          	ecall
   102f8:	00050793          	mv	a5,a0
   102fc:	fef407a3          	sb	a5,-17(s0)
   10300:	fef44783          	lbu	a5,-17(s0)
   10304:	00078513          	mv	a0,a5
   10308:	01813403          	ld	s0,24(sp)
   1030c:	02010113          	addi	sp,sp,32
   10310:	00008067          	ret

0000000000010314 <read_num>:
   10314:	fe010113          	addi	sp,sp,-32
   10318:	00813c23          	sd	s0,24(sp)
   1031c:	02010413          	addi	s0,sp,32
   10320:	00500893          	li	a7,5
   10324:	00000073          	ecall
   10328:	00050793          	mv	a5,a0
   1032c:	fef43423          	sd	a5,-24(s0)
   10330:	fe843783          	ld	a5,-24(s0)
   10334:	00078513          	mv	a0,a5
   10338:	01813403          	ld	s0,24(sp)
   1033c:	02010113          	addi	sp,sp,32
   10340:	00008067          	ret
   10344:	0000                	unimp
	...

0000000000010348 <atexit>:
   10348:	00050593          	mv	a1,a0
   1034c:	00000693          	li	a3,0
   10350:	00000613          	li	a2,0
   10354:	00000513          	li	a0,0
   10358:	2400006f          	j	10598 <__register_exitproc>
   1035c:	0000                	unimp
	...

0000000000010360 <exit>:
   10360:	ff010113          	addi	sp,sp,-16
   10364:	00000593          	li	a1,0
   10368:	00813023          	sd	s0,0(sp)
   1036c:	00113423          	sd	ra,8(sp)
   10370:	00050413          	mv	s0,a0
   10374:	2b0000ef          	jal	ra,10624 <__call_exitprocs>
   10378:	000117b7          	lui	a5,0x11
   1037c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10380:	05853783          	ld	a5,88(a0)
   10384:	00078463          	beqz	a5,1038c <exit+0x2c>
   10388:	000780e7          	jalr	a5
   1038c:	00040513          	mv	a0,s0
   10390:	00001097          	auipc	ra,0x1
   10394:	9f8080e7          	jalr	-1544(ra) # 10d88 <_exit>
   10398:	0000                	unimp
	...

000000000001039c <__libc_fini_array>:
   1039c:	fe010113          	addi	sp,sp,-32
   103a0:	000117b7          	lui	a5,0x11
   103a4:	00011737          	lui	a4,0x11
   103a8:	00813823          	sd	s0,16(sp)
   103ac:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   103b0:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   103b4:	40e40433          	sub	s0,s0,a4
   103b8:	00913423          	sd	s1,8(sp)
   103bc:	01213023          	sd	s2,0(sp)
   103c0:	00113c23          	sd	ra,24(sp)
   103c4:	40345413          	srai	s0,s0,0x3
   103c8:	00000493          	li	s1,0
   103cc:	01078913          	addi	s2,a5,16
   103d0:	02941063          	bne	s0,s1,103f0 <__libc_fini_array+0x54>
   103d4:	01013403          	ld	s0,16(sp)
   103d8:	01813083          	ld	ra,24(sp)
   103dc:	00813483          	ld	s1,8(sp)
   103e0:	00013903          	ld	s2,0(sp)
   103e4:	02010113          	addi	sp,sp,32
   103e8:	00000317          	auipc	t1,0x0
   103ec:	d1830067          	jr	-744(t1) # 10100 <_fini>
   103f0:	ff800593          	li	a1,-8
   103f4:	00048513          	mv	a0,s1
   103f8:	1c9000ef          	jal	ra,10dc0 <__muldi3>
   103fc:	00a90533          	add	a0,s2,a0
   10400:	ff853783          	ld	a5,-8(a0)
   10404:	00148493          	addi	s1,s1,1
   10408:	000780e7          	jalr	a5
   1040c:	fc5ff06f          	j	103d0 <__libc_fini_array+0x34>
   10410:	0000                	unimp
	...

0000000000010414 <__libc_init_array>:
   10414:	fe010113          	addi	sp,sp,-32
   10418:	00813823          	sd	s0,16(sp)
   1041c:	00913423          	sd	s1,8(sp)
   10420:	00011437          	lui	s0,0x11
   10424:	000114b7          	lui	s1,0x11
   10428:	00048793          	mv	a5,s1
   1042c:	00040413          	mv	s0,s0
   10430:	40f40433          	sub	s0,s0,a5
   10434:	01213023          	sd	s2,0(sp)
   10438:	00113c23          	sd	ra,24(sp)
   1043c:	40345413          	srai	s0,s0,0x3
   10440:	00048493          	mv	s1,s1
   10444:	00000913          	li	s2,0
   10448:	04891463          	bne	s2,s0,10490 <__libc_init_array+0x7c>
   1044c:	000114b7          	lui	s1,0x11
   10450:	00000097          	auipc	ra,0x0
   10454:	cb0080e7          	jalr	-848(ra) # 10100 <_fini>
   10458:	00011437          	lui	s0,0x11
   1045c:	00048793          	mv	a5,s1
   10460:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10464:	40f40433          	sub	s0,s0,a5
   10468:	40345413          	srai	s0,s0,0x3
   1046c:	00048493          	mv	s1,s1
   10470:	00000913          	li	s2,0
   10474:	02891863          	bne	s2,s0,104a4 <__libc_init_array+0x90>
   10478:	01813083          	ld	ra,24(sp)
   1047c:	01013403          	ld	s0,16(sp)
   10480:	00813483          	ld	s1,8(sp)
   10484:	00013903          	ld	s2,0(sp)
   10488:	02010113          	addi	sp,sp,32
   1048c:	00008067          	ret
   10490:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10494:	00190913          	addi	s2,s2,1
   10498:	00848493          	addi	s1,s1,8
   1049c:	000780e7          	jalr	a5
   104a0:	fa9ff06f          	j	10448 <__libc_init_array+0x34>
   104a4:	0004b783          	ld	a5,0(s1)
   104a8:	00190913          	addi	s2,s2,1
   104ac:	00848493          	addi	s1,s1,8
   104b0:	000780e7          	jalr	a5
   104b4:	fc1ff06f          	j	10474 <__libc_init_array+0x60>
   104b8:	0000                	unimp
	...

00000000000104bc <memset>:
   104bc:	00f00813          	li	a6,15
   104c0:	00050713          	mv	a4,a0
   104c4:	02c87a63          	bleu	a2,a6,104f8 <memset+0x3c>
   104c8:	00f77793          	andi	a5,a4,15
   104cc:	0a079063          	bnez	a5,1056c <memset+0xb0>
   104d0:	06059e63          	bnez	a1,1054c <memset+0x90>
   104d4:	ff067693          	andi	a3,a2,-16
   104d8:	00f67613          	andi	a2,a2,15
   104dc:	00e686b3          	add	a3,a3,a4
   104e0:	00b73023          	sd	a1,0(a4)
   104e4:	00b73423          	sd	a1,8(a4)
   104e8:	01070713          	addi	a4,a4,16
   104ec:	fed76ae3          	bltu	a4,a3,104e0 <memset+0x24>
   104f0:	00061463          	bnez	a2,104f8 <memset+0x3c>
   104f4:	00008067          	ret
   104f8:	40c806b3          	sub	a3,a6,a2
   104fc:	00269693          	slli	a3,a3,0x2
   10500:	00000297          	auipc	t0,0x0
   10504:	005686b3          	add	a3,a3,t0
   10508:	00c68067          	jr	12(a3)
   1050c:	00b70723          	sb	a1,14(a4)
   10510:	00b706a3          	sb	a1,13(a4)
   10514:	00b70623          	sb	a1,12(a4)
   10518:	00b705a3          	sb	a1,11(a4)
   1051c:	00b70523          	sb	a1,10(a4)
   10520:	00b704a3          	sb	a1,9(a4)
   10524:	00b70423          	sb	a1,8(a4)
   10528:	00b703a3          	sb	a1,7(a4)
   1052c:	00b70323          	sb	a1,6(a4)
   10530:	00b702a3          	sb	a1,5(a4)
   10534:	00b70223          	sb	a1,4(a4)
   10538:	00b701a3          	sb	a1,3(a4)
   1053c:	00b70123          	sb	a1,2(a4)
   10540:	00b700a3          	sb	a1,1(a4)
   10544:	00b70023          	sb	a1,0(a4)
   10548:	00008067          	ret
   1054c:	0ff5f593          	andi	a1,a1,255
   10550:	00859693          	slli	a3,a1,0x8
   10554:	00d5e5b3          	or	a1,a1,a3
   10558:	01059693          	slli	a3,a1,0x10
   1055c:	00d5e5b3          	or	a1,a1,a3
   10560:	02059693          	slli	a3,a1,0x20
   10564:	00d5e5b3          	or	a1,a1,a3
   10568:	f6dff06f          	j	104d4 <memset+0x18>
   1056c:	00279693          	slli	a3,a5,0x2
   10570:	00000297          	auipc	t0,0x0
   10574:	005686b3          	add	a3,a3,t0
   10578:	00008293          	mv	t0,ra
   1057c:	f98680e7          	jalr	-104(a3)
   10580:	00028093          	mv	ra,t0
   10584:	ff078793          	addi	a5,a5,-16
   10588:	40f70733          	sub	a4,a4,a5
   1058c:	00f60633          	add	a2,a2,a5
   10590:	f6c874e3          	bleu	a2,a6,104f8 <memset+0x3c>
   10594:	f3dff06f          	j	104d0 <memset+0x14>

0000000000010598 <__register_exitproc>:
   10598:	000117b7          	lui	a5,0x11
   1059c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   105a0:	00050313          	mv	t1,a0
   105a4:	1f873783          	ld	a5,504(a4)
   105a8:	00079663          	bnez	a5,105b4 <__register_exitproc+0x1c>
   105ac:	20070793          	addi	a5,a4,512
   105b0:	1ef73c23          	sd	a5,504(a4)
   105b4:	0087a703          	lw	a4,8(a5)
   105b8:	01f00813          	li	a6,31
   105bc:	fff00513          	li	a0,-1
   105c0:	04e84e63          	blt	a6,a4,1061c <__register_exitproc+0x84>
   105c4:	02030e63          	beqz	t1,10600 <__register_exitproc+0x68>
   105c8:	00371813          	slli	a6,a4,0x3
   105cc:	01078833          	add	a6,a5,a6
   105d0:	10c83823          	sd	a2,272(a6)
   105d4:	3107a883          	lw	a7,784(a5)
   105d8:	00100613          	li	a2,1
   105dc:	00e6163b          	sllw	a2,a2,a4
   105e0:	00c8e8b3          	or	a7,a7,a2
   105e4:	3117a823          	sw	a7,784(a5)
   105e8:	20d83823          	sd	a3,528(a6)
   105ec:	00200693          	li	a3,2
   105f0:	00d31863          	bne	t1,a3,10600 <__register_exitproc+0x68>
   105f4:	3147a683          	lw	a3,788(a5)
   105f8:	00c6e633          	or	a2,a3,a2
   105fc:	30c7aa23          	sw	a2,788(a5)
   10600:	0017069b          	addiw	a3,a4,1
   10604:	00270713          	addi	a4,a4,2
   10608:	00371713          	slli	a4,a4,0x3
   1060c:	00d7a423          	sw	a3,8(a5)
   10610:	00e787b3          	add	a5,a5,a4
   10614:	00b7b023          	sd	a1,0(a5)
   10618:	00000513          	li	a0,0
   1061c:	00008067          	ret
   10620:	0000                	unimp
	...

0000000000010624 <__call_exitprocs>:
   10624:	fb010113          	addi	sp,sp,-80
   10628:	000117b7          	lui	a5,0x11
   1062c:	03313423          	sd	s3,40(sp)
   10630:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10634:	03413023          	sd	s4,32(sp)
   10638:	01513c23          	sd	s5,24(sp)
   1063c:	01613823          	sd	s6,16(sp)
   10640:	04113423          	sd	ra,72(sp)
   10644:	04813023          	sd	s0,64(sp)
   10648:	02913c23          	sd	s1,56(sp)
   1064c:	03213823          	sd	s2,48(sp)
   10650:	01713423          	sd	s7,8(sp)
   10654:	00050a93          	mv	s5,a0
   10658:	00058a13          	mv	s4,a1
   1065c:	00100b13          	li	s6,1
   10660:	1f89b403          	ld	s0,504(s3)
   10664:	00040c63          	beqz	s0,1067c <__call_exitprocs+0x58>
   10668:	00842483          	lw	s1,8(s0)
   1066c:	fff4849b          	addiw	s1,s1,-1
   10670:	00349913          	slli	s2,s1,0x3
   10674:	01240933          	add	s2,s0,s2
   10678:	0204d863          	bgez	s1,106a8 <__call_exitprocs+0x84>
   1067c:	04813083          	ld	ra,72(sp)
   10680:	04013403          	ld	s0,64(sp)
   10684:	03813483          	ld	s1,56(sp)
   10688:	03013903          	ld	s2,48(sp)
   1068c:	02813983          	ld	s3,40(sp)
   10690:	02013a03          	ld	s4,32(sp)
   10694:	01813a83          	ld	s5,24(sp)
   10698:	01013b03          	ld	s6,16(sp)
   1069c:	00813b83          	ld	s7,8(sp)
   106a0:	05010113          	addi	sp,sp,80
   106a4:	00008067          	ret
   106a8:	000a0c63          	beqz	s4,106c0 <__call_exitprocs+0x9c>
   106ac:	21093783          	ld	a5,528(s2)
   106b0:	01478863          	beq	a5,s4,106c0 <__call_exitprocs+0x9c>
   106b4:	fff4849b          	addiw	s1,s1,-1
   106b8:	ff890913          	addi	s2,s2,-8
   106bc:	fbdff06f          	j	10678 <__call_exitprocs+0x54>
   106c0:	00842783          	lw	a5,8(s0)
   106c4:	01093683          	ld	a3,16(s2)
   106c8:	fff7879b          	addiw	a5,a5,-1
   106cc:	02979e63          	bne	a5,s1,10708 <__call_exitprocs+0xe4>
   106d0:	00942423          	sw	s1,8(s0)
   106d4:	fe0680e3          	beqz	a3,106b4 <__call_exitprocs+0x90>
   106d8:	31042703          	lw	a4,784(s0)
   106dc:	009b163b          	sllw	a2,s6,s1
   106e0:	00842b83          	lw	s7,8(s0)
   106e4:	00c77733          	and	a4,a4,a2
   106e8:	0007071b          	sext.w	a4,a4
   106ec:	02071263          	bnez	a4,10710 <__call_exitprocs+0xec>
   106f0:	000680e7          	jalr	a3
   106f4:	00842703          	lw	a4,8(s0)
   106f8:	1f89b783          	ld	a5,504(s3)
   106fc:	f77712e3          	bne	a4,s7,10660 <__call_exitprocs+0x3c>
   10700:	faf40ae3          	beq	s0,a5,106b4 <__call_exitprocs+0x90>
   10704:	f5dff06f          	j	10660 <__call_exitprocs+0x3c>
   10708:	00093823          	sd	zero,16(s2)
   1070c:	fc9ff06f          	j	106d4 <__call_exitprocs+0xb0>
   10710:	31442783          	lw	a5,788(s0)
   10714:	11093583          	ld	a1,272(s2)
   10718:	00c7f7b3          	and	a5,a5,a2
   1071c:	0007879b          	sext.w	a5,a5
   10720:	00079863          	bnez	a5,10730 <__call_exitprocs+0x10c>
   10724:	000a8513          	mv	a0,s5
   10728:	000680e7          	jalr	a3
   1072c:	fc9ff06f          	j	106f4 <__call_exitprocs+0xd0>
   10730:	00058513          	mv	a0,a1
   10734:	000680e7          	jalr	a3
   10738:	fbdff06f          	j	106f4 <__call_exitprocs+0xd0>
   1073c:	0000                	unimp
	...

0000000000010740 <conv_stat>:
   10740:	0005b783          	ld	a5,0(a1)
   10744:	00f51023          	sh	a5,0(a0)
   10748:	0085b783          	ld	a5,8(a1)
   1074c:	00f51123          	sh	a5,2(a0)
   10750:	0105a783          	lw	a5,16(a1)
   10754:	00f52223          	sw	a5,4(a0)
   10758:	0145a783          	lw	a5,20(a1)
   1075c:	00f51423          	sh	a5,8(a0)
   10760:	0185a783          	lw	a5,24(a1)
   10764:	00f51523          	sh	a5,10(a0)
   10768:	01c5a783          	lw	a5,28(a1)
   1076c:	00f51623          	sh	a5,12(a0)
   10770:	0205b783          	ld	a5,32(a1)
   10774:	00f51723          	sh	a5,14(a0)
   10778:	0305b783          	ld	a5,48(a1)
   1077c:	00f53823          	sd	a5,16(a0)
   10780:	0405b783          	ld	a5,64(a1)
   10784:	04f53823          	sd	a5,80(a0)
   10788:	0385a783          	lw	a5,56(a1)
   1078c:	04f53423          	sd	a5,72(a0)
   10790:	0485b783          	ld	a5,72(a1)
   10794:	00f53c23          	sd	a5,24(a0)
   10798:	0585b783          	ld	a5,88(a1)
   1079c:	02f53423          	sd	a5,40(a0)
   107a0:	0685b783          	ld	a5,104(a1)
   107a4:	02f53c23          	sd	a5,56(a0)
   107a8:	00008067          	ret

00000000000107ac <__syscall_error>:
   107ac:	ff010113          	addi	sp,sp,-16
   107b0:	00813023          	sd	s0,0(sp)
   107b4:	00113423          	sd	ra,8(sp)
   107b8:	00050413          	mv	s0,a0
   107bc:	00000097          	auipc	ra,0x0
   107c0:	5f8080e7          	jalr	1528(ra) # 10db4 <__errno>
   107c4:	408007bb          	negw	a5,s0
   107c8:	00813083          	ld	ra,8(sp)
   107cc:	00013403          	ld	s0,0(sp)
   107d0:	00f52023          	sw	a5,0(a0)
   107d4:	fff00513          	li	a0,-1
   107d8:	01010113          	addi	sp,sp,16
   107dc:	00008067          	ret

00000000000107e0 <__internal_syscall>:
   107e0:	00050893          	mv	a7,a0
   107e4:	00058513          	mv	a0,a1
   107e8:	00060593          	mv	a1,a2
   107ec:	00068613          	mv	a2,a3
   107f0:	00070693          	mv	a3,a4
   107f4:	00000073          	ecall
   107f8:	00055663          	bgez	a0,10804 <__internal_syscall+0x24>
   107fc:	00000317          	auipc	t1,0x0
   10800:	fb030067          	jr	-80(t1) # 107ac <__syscall_error>
   10804:	00008067          	ret

0000000000010808 <open>:
   10808:	ff010113          	addi	sp,sp,-16
   1080c:	00060693          	mv	a3,a2
   10810:	00000713          	li	a4,0
   10814:	00058613          	mv	a2,a1
   10818:	00050593          	mv	a1,a0
   1081c:	40000513          	li	a0,1024
   10820:	00113423          	sd	ra,8(sp)
   10824:	00000097          	auipc	ra,0x0
   10828:	fbc080e7          	jalr	-68(ra) # 107e0 <__internal_syscall>
   1082c:	00813083          	ld	ra,8(sp)
   10830:	0005051b          	sext.w	a0,a0
   10834:	01010113          	addi	sp,sp,16
   10838:	00008067          	ret

000000000001083c <openat>:
   1083c:	ff010113          	addi	sp,sp,-16
   10840:	00068713          	mv	a4,a3
   10844:	00060693          	mv	a3,a2
   10848:	00058613          	mv	a2,a1
   1084c:	00050593          	mv	a1,a0
   10850:	03800513          	li	a0,56
   10854:	00113423          	sd	ra,8(sp)
   10858:	f89ff0ef          	jal	ra,107e0 <__internal_syscall>
   1085c:	00813083          	ld	ra,8(sp)
   10860:	0005051b          	sext.w	a0,a0
   10864:	01010113          	addi	sp,sp,16
   10868:	00008067          	ret

000000000001086c <lseek>:
   1086c:	00060693          	mv	a3,a2
   10870:	00000713          	li	a4,0
   10874:	00058613          	mv	a2,a1
   10878:	00050593          	mv	a1,a0
   1087c:	03e00513          	li	a0,62
   10880:	00000317          	auipc	t1,0x0
   10884:	f6030067          	jr	-160(t1) # 107e0 <__internal_syscall>

0000000000010888 <read>:
   10888:	00060693          	mv	a3,a2
   1088c:	00000713          	li	a4,0
   10890:	00058613          	mv	a2,a1
   10894:	00050593          	mv	a1,a0
   10898:	03f00513          	li	a0,63
   1089c:	f45ff06f          	j	107e0 <__internal_syscall>

00000000000108a0 <write>:
   108a0:	00060693          	mv	a3,a2
   108a4:	00000713          	li	a4,0
   108a8:	00058613          	mv	a2,a1
   108ac:	00050593          	mv	a1,a0
   108b0:	04000513          	li	a0,64
   108b4:	00000317          	auipc	t1,0x0
   108b8:	f2c30067          	jr	-212(t1) # 107e0 <__internal_syscall>

00000000000108bc <fstat>:
   108bc:	f6010113          	addi	sp,sp,-160
   108c0:	08913423          	sd	s1,136(sp)
   108c4:	00010613          	mv	a2,sp
   108c8:	00058493          	mv	s1,a1
   108cc:	00000713          	li	a4,0
   108d0:	00050593          	mv	a1,a0
   108d4:	00000693          	li	a3,0
   108d8:	05000513          	li	a0,80
   108dc:	08113c23          	sd	ra,152(sp)
   108e0:	08813823          	sd	s0,144(sp)
   108e4:	efdff0ef          	jal	ra,107e0 <__internal_syscall>
   108e8:	00050413          	mv	s0,a0
   108ec:	00010593          	mv	a1,sp
   108f0:	00048513          	mv	a0,s1
   108f4:	e4dff0ef          	jal	ra,10740 <conv_stat>
   108f8:	0004051b          	sext.w	a0,s0
   108fc:	09813083          	ld	ra,152(sp)
   10900:	09013403          	ld	s0,144(sp)
   10904:	08813483          	ld	s1,136(sp)
   10908:	0a010113          	addi	sp,sp,160
   1090c:	00008067          	ret

0000000000010910 <stat>:
   10910:	f6010113          	addi	sp,sp,-160
   10914:	08913423          	sd	s1,136(sp)
   10918:	00010613          	mv	a2,sp
   1091c:	00058493          	mv	s1,a1
   10920:	00000713          	li	a4,0
   10924:	00050593          	mv	a1,a0
   10928:	00000693          	li	a3,0
   1092c:	40e00513          	li	a0,1038
   10930:	08113c23          	sd	ra,152(sp)
   10934:	08813823          	sd	s0,144(sp)
   10938:	00000097          	auipc	ra,0x0
   1093c:	ea8080e7          	jalr	-344(ra) # 107e0 <__internal_syscall>
   10940:	00050413          	mv	s0,a0
   10944:	00010593          	mv	a1,sp
   10948:	00048513          	mv	a0,s1
   1094c:	00000097          	auipc	ra,0x0
   10950:	df4080e7          	jalr	-524(ra) # 10740 <conv_stat>
   10954:	0004051b          	sext.w	a0,s0
   10958:	09813083          	ld	ra,152(sp)
   1095c:	09013403          	ld	s0,144(sp)
   10960:	08813483          	ld	s1,136(sp)
   10964:	0a010113          	addi	sp,sp,160
   10968:	00008067          	ret

000000000001096c <lstat>:
   1096c:	f6010113          	addi	sp,sp,-160
   10970:	08913423          	sd	s1,136(sp)
   10974:	00010613          	mv	a2,sp
   10978:	00058493          	mv	s1,a1
   1097c:	00000713          	li	a4,0
   10980:	00050593          	mv	a1,a0
   10984:	00000693          	li	a3,0
   10988:	40f00513          	li	a0,1039
   1098c:	08113c23          	sd	ra,152(sp)
   10990:	08813823          	sd	s0,144(sp)
   10994:	e4dff0ef          	jal	ra,107e0 <__internal_syscall>
   10998:	00050413          	mv	s0,a0
   1099c:	00010593          	mv	a1,sp
   109a0:	00048513          	mv	a0,s1
   109a4:	d9dff0ef          	jal	ra,10740 <conv_stat>
   109a8:	0004051b          	sext.w	a0,s0
   109ac:	09813083          	ld	ra,152(sp)
   109b0:	09013403          	ld	s0,144(sp)
   109b4:	08813483          	ld	s1,136(sp)
   109b8:	0a010113          	addi	sp,sp,160
   109bc:	00008067          	ret

00000000000109c0 <fstatat>:
   109c0:	f6010113          	addi	sp,sp,-160
   109c4:	08913423          	sd	s1,136(sp)
   109c8:	00068713          	mv	a4,a3
   109cc:	00060493          	mv	s1,a2
   109d0:	00010693          	mv	a3,sp
   109d4:	00058613          	mv	a2,a1
   109d8:	00050593          	mv	a1,a0
   109dc:	04f00513          	li	a0,79
   109e0:	08113c23          	sd	ra,152(sp)
   109e4:	08813823          	sd	s0,144(sp)
   109e8:	00000097          	auipc	ra,0x0
   109ec:	df8080e7          	jalr	-520(ra) # 107e0 <__internal_syscall>
   109f0:	00050413          	mv	s0,a0
   109f4:	00010593          	mv	a1,sp
   109f8:	00048513          	mv	a0,s1
   109fc:	00000097          	auipc	ra,0x0
   10a00:	d44080e7          	jalr	-700(ra) # 10740 <conv_stat>
   10a04:	0004051b          	sext.w	a0,s0
   10a08:	09813083          	ld	ra,152(sp)
   10a0c:	09013403          	ld	s0,144(sp)
   10a10:	08813483          	ld	s1,136(sp)
   10a14:	0a010113          	addi	sp,sp,160
   10a18:	00008067          	ret

0000000000010a1c <access>:
   10a1c:	ff010113          	addi	sp,sp,-16
   10a20:	00058613          	mv	a2,a1
   10a24:	00000713          	li	a4,0
   10a28:	00050593          	mv	a1,a0
   10a2c:	00000693          	li	a3,0
   10a30:	40900513          	li	a0,1033
   10a34:	00113423          	sd	ra,8(sp)
   10a38:	da9ff0ef          	jal	ra,107e0 <__internal_syscall>
   10a3c:	00813083          	ld	ra,8(sp)
   10a40:	0005051b          	sext.w	a0,a0
   10a44:	01010113          	addi	sp,sp,16
   10a48:	00008067          	ret

0000000000010a4c <faccessat>:
   10a4c:	ff010113          	addi	sp,sp,-16
   10a50:	00068713          	mv	a4,a3
   10a54:	00060693          	mv	a3,a2
   10a58:	00058613          	mv	a2,a1
   10a5c:	00050593          	mv	a1,a0
   10a60:	03000513          	li	a0,48
   10a64:	00113423          	sd	ra,8(sp)
   10a68:	00000097          	auipc	ra,0x0
   10a6c:	d78080e7          	jalr	-648(ra) # 107e0 <__internal_syscall>
   10a70:	00813083          	ld	ra,8(sp)
   10a74:	0005051b          	sext.w	a0,a0
   10a78:	01010113          	addi	sp,sp,16
   10a7c:	00008067          	ret

0000000000010a80 <close>:
   10a80:	ff010113          	addi	sp,sp,-16
   10a84:	00050593          	mv	a1,a0
   10a88:	00000713          	li	a4,0
   10a8c:	00000693          	li	a3,0
   10a90:	00000613          	li	a2,0
   10a94:	03900513          	li	a0,57
   10a98:	00113423          	sd	ra,8(sp)
   10a9c:	d45ff0ef          	jal	ra,107e0 <__internal_syscall>
   10aa0:	00813083          	ld	ra,8(sp)
   10aa4:	0005051b          	sext.w	a0,a0
   10aa8:	01010113          	addi	sp,sp,16
   10aac:	00008067          	ret

0000000000010ab0 <link>:
   10ab0:	ff010113          	addi	sp,sp,-16
   10ab4:	00058613          	mv	a2,a1
   10ab8:	00000713          	li	a4,0
   10abc:	00050593          	mv	a1,a0
   10ac0:	00000693          	li	a3,0
   10ac4:	40100513          	li	a0,1025
   10ac8:	00113423          	sd	ra,8(sp)
   10acc:	00000097          	auipc	ra,0x0
   10ad0:	d14080e7          	jalr	-748(ra) # 107e0 <__internal_syscall>
   10ad4:	00813083          	ld	ra,8(sp)
   10ad8:	0005051b          	sext.w	a0,a0
   10adc:	01010113          	addi	sp,sp,16
   10ae0:	00008067          	ret

0000000000010ae4 <unlink>:
   10ae4:	ff010113          	addi	sp,sp,-16
   10ae8:	00050593          	mv	a1,a0
   10aec:	00000713          	li	a4,0
   10af0:	00000693          	li	a3,0
   10af4:	00000613          	li	a2,0
   10af8:	40200513          	li	a0,1026
   10afc:	00113423          	sd	ra,8(sp)
   10b00:	ce1ff0ef          	jal	ra,107e0 <__internal_syscall>
   10b04:	00813083          	ld	ra,8(sp)
   10b08:	0005051b          	sext.w	a0,a0
   10b0c:	01010113          	addi	sp,sp,16
   10b10:	00008067          	ret

0000000000010b14 <execve>:
   10b14:	ff010113          	addi	sp,sp,-16
   10b18:	00113423          	sd	ra,8(sp)
   10b1c:	00000097          	auipc	ra,0x0
   10b20:	298080e7          	jalr	664(ra) # 10db4 <__errno>
   10b24:	00813083          	ld	ra,8(sp)
   10b28:	00c00793          	li	a5,12
   10b2c:	00f52023          	sw	a5,0(a0)
   10b30:	fff00513          	li	a0,-1
   10b34:	01010113          	addi	sp,sp,16
   10b38:	00008067          	ret

0000000000010b3c <fork>:
   10b3c:	ff010113          	addi	sp,sp,-16
   10b40:	00113423          	sd	ra,8(sp)
   10b44:	270000ef          	jal	ra,10db4 <__errno>
   10b48:	00813083          	ld	ra,8(sp)
   10b4c:	00b00793          	li	a5,11
   10b50:	00f52023          	sw	a5,0(a0)
   10b54:	fff00513          	li	a0,-1
   10b58:	01010113          	addi	sp,sp,16
   10b5c:	00008067          	ret

0000000000010b60 <getpid>:
   10b60:	00100513          	li	a0,1
   10b64:	00008067          	ret

0000000000010b68 <kill>:
   10b68:	ff010113          	addi	sp,sp,-16
   10b6c:	00113423          	sd	ra,8(sp)
   10b70:	244000ef          	jal	ra,10db4 <__errno>
   10b74:	00813083          	ld	ra,8(sp)
   10b78:	01600793          	li	a5,22
   10b7c:	00f52023          	sw	a5,0(a0)
   10b80:	fff00513          	li	a0,-1
   10b84:	01010113          	addi	sp,sp,16
   10b88:	00008067          	ret

0000000000010b8c <wait>:
   10b8c:	ff010113          	addi	sp,sp,-16
   10b90:	00113423          	sd	ra,8(sp)
   10b94:	00000097          	auipc	ra,0x0
   10b98:	220080e7          	jalr	544(ra) # 10db4 <__errno>
   10b9c:	00813083          	ld	ra,8(sp)
   10ba0:	00a00793          	li	a5,10
   10ba4:	00f52023          	sw	a5,0(a0)
   10ba8:	fff00513          	li	a0,-1
   10bac:	01010113          	addi	sp,sp,16
   10bb0:	00008067          	ret

0000000000010bb4 <isatty>:
   10bb4:	f8010113          	addi	sp,sp,-128
   10bb8:	00810593          	addi	a1,sp,8
   10bbc:	06113c23          	sd	ra,120(sp)
   10bc0:	cfdff0ef          	jal	ra,108bc <fstat>
   10bc4:	fff00793          	li	a5,-1
   10bc8:	00f50863          	beq	a0,a5,10bd8 <isatty+0x24>
   10bcc:	00c12503          	lw	a0,12(sp)
   10bd0:	40d5551b          	sraiw	a0,a0,0xd
   10bd4:	00157513          	andi	a0,a0,1
   10bd8:	07813083          	ld	ra,120(sp)
   10bdc:	08010113          	addi	sp,sp,128
   10be0:	00008067          	ret

0000000000010be4 <gettimeofday>:
   10be4:	ff010113          	addi	sp,sp,-16
   10be8:	00050593          	mv	a1,a0
   10bec:	00000713          	li	a4,0
   10bf0:	00000693          	li	a3,0
   10bf4:	00000613          	li	a2,0
   10bf8:	0a900513          	li	a0,169
   10bfc:	00113423          	sd	ra,8(sp)
   10c00:	00000097          	auipc	ra,0x0
   10c04:	be0080e7          	jalr	-1056(ra) # 107e0 <__internal_syscall>
   10c08:	00813083          	ld	ra,8(sp)
   10c0c:	0005051b          	sext.w	a0,a0
   10c10:	01010113          	addi	sp,sp,16
   10c14:	00008067          	ret

0000000000010c18 <times>:
   10c18:	fd010113          	addi	sp,sp,-48
   10c1c:	02813023          	sd	s0,32(sp)
   10c20:	00050413          	mv	s0,a0
   10c24:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10c28:	00913c23          	sd	s1,24(sp)
   10c2c:	02113423          	sd	ra,40(sp)
   10c30:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10c34:	00079a63          	bnez	a5,10c48 <times+0x30>
   10c38:	00000593          	li	a1,0
   10c3c:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10c40:	00000097          	auipc	ra,0x0
   10c44:	fa4080e7          	jalr	-92(ra) # 10be4 <gettimeofday>
   10c48:	00000593          	li	a1,0
   10c4c:	00010513          	mv	a0,sp
   10c50:	00000097          	auipc	ra,0x0
   10c54:	f94080e7          	jalr	-108(ra) # 10be4 <gettimeofday>
   10c58:	0004b783          	ld	a5,0(s1)
   10c5c:	00013503          	ld	a0,0(sp)
   10c60:	000f45b7          	lui	a1,0xf4
   10c64:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10c68:	40f50533          	sub	a0,a0,a5
   10c6c:	154000ef          	jal	ra,10dc0 <__muldi3>
   10c70:	0084b703          	ld	a4,8(s1)
   10c74:	00813783          	ld	a5,8(sp)
   10c78:	00043823          	sd	zero,16(s0)
   10c7c:	00043c23          	sd	zero,24(s0)
   10c80:	40e787b3          	sub	a5,a5,a4
   10c84:	00f50533          	add	a0,a0,a5
   10c88:	00a43023          	sd	a0,0(s0)
   10c8c:	00043423          	sd	zero,8(s0)
   10c90:	02813083          	ld	ra,40(sp)
   10c94:	02013403          	ld	s0,32(sp)
   10c98:	01813483          	ld	s1,24(sp)
   10c9c:	fff00513          	li	a0,-1
   10ca0:	03010113          	addi	sp,sp,48
   10ca4:	00008067          	ret

0000000000010ca8 <ftime>:
   10ca8:	00051423          	sh	zero,8(a0)
   10cac:	00053023          	sd	zero,0(a0)
   10cb0:	00000513          	li	a0,0
   10cb4:	00008067          	ret

0000000000010cb8 <utime>:
   10cb8:	fff00513          	li	a0,-1
   10cbc:	00008067          	ret

0000000000010cc0 <chown>:
   10cc0:	fff00513          	li	a0,-1
   10cc4:	00008067          	ret

0000000000010cc8 <chmod>:
   10cc8:	fff00513          	li	a0,-1
   10ccc:	00008067          	ret

0000000000010cd0 <chdir>:
   10cd0:	fff00513          	li	a0,-1
   10cd4:	00008067          	ret

0000000000010cd8 <getcwd>:
   10cd8:	00000513          	li	a0,0
   10cdc:	00008067          	ret

0000000000010ce0 <sysconf>:
   10ce0:	00200793          	li	a5,2
   10ce4:	00f50663          	beq	a0,a5,10cf0 <sysconf+0x10>
   10ce8:	fff00513          	li	a0,-1
   10cec:	00008067          	ret
   10cf0:	000f4537          	lui	a0,0xf4
   10cf4:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10cf8:	00008067          	ret

0000000000010cfc <sbrk>:
   10cfc:	fe010113          	addi	sp,sp,-32
   10d00:	00813823          	sd	s0,16(sp)
   10d04:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10d08:	00913423          	sd	s1,8(sp)
   10d0c:	00113c23          	sd	ra,24(sp)
   10d10:	00050493          	mv	s1,a0
   10d14:	04079063          	bnez	a5,10d54 <sbrk+0x58>
   10d18:	00000713          	li	a4,0
   10d1c:	00000693          	li	a3,0
   10d20:	00000613          	li	a2,0
   10d24:	00000593          	li	a1,0
   10d28:	0d600513          	li	a0,214
   10d2c:	ab5ff0ef          	jal	ra,107e0 <__internal_syscall>
   10d30:	fff00793          	li	a5,-1
   10d34:	00f51e63          	bne	a0,a5,10d50 <sbrk+0x54>
   10d38:	fff00513          	li	a0,-1
   10d3c:	01813083          	ld	ra,24(sp)
   10d40:	01013403          	ld	s0,16(sp)
   10d44:	00813483          	ld	s1,8(sp)
   10d48:	02010113          	addi	sp,sp,32
   10d4c:	00008067          	ret
   10d50:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10d54:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10d58:	00000713          	li	a4,0
   10d5c:	00000693          	li	a3,0
   10d60:	00b485b3          	add	a1,s1,a1
   10d64:	00000613          	li	a2,0
   10d68:	0d600513          	li	a0,214
   10d6c:	a75ff0ef          	jal	ra,107e0 <__internal_syscall>
   10d70:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10d74:	00f484b3          	add	s1,s1,a5
   10d78:	fc9510e3          	bne	a0,s1,10d38 <sbrk+0x3c>
   10d7c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10d80:	00078513          	mv	a0,a5
   10d84:	fb9ff06f          	j	10d3c <sbrk+0x40>

0000000000010d88 <_exit>:
   10d88:	ff010113          	addi	sp,sp,-16
   10d8c:	00050593          	mv	a1,a0
   10d90:	00000713          	li	a4,0
   10d94:	00000693          	li	a3,0
   10d98:	00000613          	li	a2,0
   10d9c:	05d00513          	li	a0,93
   10da0:	00113423          	sd	ra,8(sp)
   10da4:	00000097          	auipc	ra,0x0
   10da8:	a3c080e7          	jalr	-1476(ra) # 107e0 <__internal_syscall>
   10dac:	0000006f          	j	10dac <_exit+0x24>
   10db0:	0000                	unimp
	...

0000000000010db4 <__errno>:
   10db4:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10db8:	00008067          	ret
   10dbc:	0000                	unimp
	...

0000000000010dc0 <__muldi3>:
   10dc0:	00050613          	mv	a2,a0
   10dc4:	00000513          	li	a0,0
   10dc8:	0015f693          	andi	a3,a1,1
   10dcc:	00068463          	beqz	a3,10dd4 <__muldi3+0x14>
   10dd0:	00c50533          	add	a0,a0,a2
   10dd4:	0015d593          	srli	a1,a1,0x1
   10dd8:	00161613          	slli	a2,a2,0x1
   10ddc:	fe0596e3          	bnez	a1,10dc8 <__muldi3+0x8>
   10de0:	00008067          	ret
   10de4:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010de8 <.rodata>:
   10de8:	6548                	ld	a0,136(a0)
   10dea:	6c6c                	ld	a1,216(s0)
   10dec:	57202c6f          	jal	s8,1335e <__global_pointer$+0x1406>
   10df0:	646c726f          	jal	tp,d8436 <__global_pointer$+0xc64de>
   10df4:	0a21                	addi	s4,s4,8
	...

Disassembly of section .eh_frame:

0000000000010df8 <__EH_FRAME_BEGIN__>:
   10df8:	0000                	unimp
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
  10:	0dc0                	addi	s0,sp,724
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
  10:	0dc0                	addi	s0,sp,724
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0de4                	addi	s1,sp,732
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
  9c:	c002                	sw	zero,0(sp)
  9e:	010d                	addi	sp,sp,3
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
