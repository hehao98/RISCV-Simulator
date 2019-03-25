
test_syscall.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	3bc000ef          	jal	ra,10484 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	29850513          	addi	a0,a0,664 # 10364 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	23c080e7          	jalr	572(ra) # 10310 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	300080e7          	jalr	768(ra) # 103dc <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	23030067          	jr	560(t1) # 10328 <exit>

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
   1019c:	dd050513          	addi	a0,a0,-560 # 10dd0 <__EH_FRAME_BEGIN__>
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
   101e0:	dd050513          	addi	a0,a0,-560 # 10dd0 <__EH_FRAME_BEGIN__>
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
   10210:	db078513          	addi	a0,a5,-592 # 10db0 <__muldi3+0x28>
   10214:	00000097          	auipc	ra,0x0
   10218:	084080e7          	jalr	132(ra) # 10298 <print_s>
   1021c:	0001e7b7          	lui	a5,0x1e
   10220:	24078513          	addi	a0,a5,576 # 1e240 <__global_pointer$+0xc2e8>
   10224:	048000ef          	jal	ra,1026c <print_d>
   10228:	06100513          	li	a0,97
   1022c:	094000ef          	jal	ra,102c0 <print_c>
   10230:	06200513          	li	a0,98
   10234:	08c000ef          	jal	ra,102c0 <print_c>
   10238:	06300513          	li	a0,99
   1023c:	084000ef          	jal	ra,102c0 <print_c>
   10240:	00a00513          	li	a0,10
   10244:	07c000ef          	jal	ra,102c0 <print_c>
   10248:	00000097          	auipc	ra,0x0
   1024c:	0a4080e7          	jalr	164(ra) # 102ec <exit_proc>
   10250:	00000793          	li	a5,0
   10254:	00078513          	mv	a0,a5
   10258:	00813083          	ld	ra,8(sp)
   1025c:	00013403          	ld	s0,0(sp)
   10260:	01010113          	addi	sp,sp,16
   10264:	00008067          	ret
   10268:	0000                	unimp
	...

000000000001026c <print_d>:
   1026c:	fe010113          	addi	sp,sp,-32
   10270:	00813c23          	sd	s0,24(sp)
   10274:	02010413          	addi	s0,sp,32
   10278:	00050793          	mv	a5,a0
   1027c:	fef42623          	sw	a5,-20(s0)
   10280:	00200893          	li	a7,2
   10284:	00000073          	ecall
   10288:	00000013          	nop
   1028c:	01813403          	ld	s0,24(sp)
   10290:	02010113          	addi	sp,sp,32
   10294:	00008067          	ret

0000000000010298 <print_s>:
   10298:	fe010113          	addi	sp,sp,-32
   1029c:	00813c23          	sd	s0,24(sp)
   102a0:	02010413          	addi	s0,sp,32
   102a4:	fea43423          	sd	a0,-24(s0)
   102a8:	00000893          	li	a7,0
   102ac:	00000073          	ecall
   102b0:	00000013          	nop
   102b4:	01813403          	ld	s0,24(sp)
   102b8:	02010113          	addi	sp,sp,32
   102bc:	00008067          	ret

00000000000102c0 <print_c>:
   102c0:	fe010113          	addi	sp,sp,-32
   102c4:	00813c23          	sd	s0,24(sp)
   102c8:	02010413          	addi	s0,sp,32
   102cc:	00050793          	mv	a5,a0
   102d0:	fef407a3          	sb	a5,-17(s0)
   102d4:	00100893          	li	a7,1
   102d8:	00000073          	ecall
   102dc:	00000013          	nop
   102e0:	01813403          	ld	s0,24(sp)
   102e4:	02010113          	addi	sp,sp,32
   102e8:	00008067          	ret

00000000000102ec <exit_proc>:
   102ec:	ff010113          	addi	sp,sp,-16
   102f0:	00813423          	sd	s0,8(sp)
   102f4:	01010413          	addi	s0,sp,16
   102f8:	00300893          	li	a7,3
   102fc:	00000073          	ecall
   10300:	00000013          	nop
   10304:	00813403          	ld	s0,8(sp)
   10308:	01010113          	addi	sp,sp,16
   1030c:	00008067          	ret

0000000000010310 <atexit>:
   10310:	00050593          	mv	a1,a0
   10314:	00000693          	li	a3,0
   10318:	00000613          	li	a2,0
   1031c:	00000513          	li	a0,0
   10320:	2400006f          	j	10560 <__register_exitproc>
   10324:	0000                	unimp
	...

0000000000010328 <exit>:
   10328:	ff010113          	addi	sp,sp,-16
   1032c:	00000593          	li	a1,0
   10330:	00813023          	sd	s0,0(sp)
   10334:	00113423          	sd	ra,8(sp)
   10338:	00050413          	mv	s0,a0
   1033c:	2b0000ef          	jal	ra,105ec <__call_exitprocs>
   10340:	000117b7          	lui	a5,0x11
   10344:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10348:	05853783          	ld	a5,88(a0)
   1034c:	00078463          	beqz	a5,10354 <exit+0x2c>
   10350:	000780e7          	jalr	a5
   10354:	00040513          	mv	a0,s0
   10358:	00001097          	auipc	ra,0x1
   1035c:	9f8080e7          	jalr	-1544(ra) # 10d50 <_exit>
   10360:	0000                	unimp
	...

0000000000010364 <__libc_fini_array>:
   10364:	fe010113          	addi	sp,sp,-32
   10368:	000117b7          	lui	a5,0x11
   1036c:	00011737          	lui	a4,0x11
   10370:	00813823          	sd	s0,16(sp)
   10374:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10378:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1037c:	40e40433          	sub	s0,s0,a4
   10380:	00913423          	sd	s1,8(sp)
   10384:	01213023          	sd	s2,0(sp)
   10388:	00113c23          	sd	ra,24(sp)
   1038c:	40345413          	srai	s0,s0,0x3
   10390:	00000493          	li	s1,0
   10394:	01078913          	addi	s2,a5,16
   10398:	02941063          	bne	s0,s1,103b8 <__libc_fini_array+0x54>
   1039c:	01013403          	ld	s0,16(sp)
   103a0:	01813083          	ld	ra,24(sp)
   103a4:	00813483          	ld	s1,8(sp)
   103a8:	00013903          	ld	s2,0(sp)
   103ac:	02010113          	addi	sp,sp,32
   103b0:	00000317          	auipc	t1,0x0
   103b4:	d5030067          	jr	-688(t1) # 10100 <_fini>
   103b8:	ff800593          	li	a1,-8
   103bc:	00048513          	mv	a0,s1
   103c0:	1c9000ef          	jal	ra,10d88 <__muldi3>
   103c4:	00a90533          	add	a0,s2,a0
   103c8:	ff853783          	ld	a5,-8(a0)
   103cc:	00148493          	addi	s1,s1,1
   103d0:	000780e7          	jalr	a5
   103d4:	fc5ff06f          	j	10398 <__libc_fini_array+0x34>
   103d8:	0000                	unimp
	...

00000000000103dc <__libc_init_array>:
   103dc:	fe010113          	addi	sp,sp,-32
   103e0:	00813823          	sd	s0,16(sp)
   103e4:	00913423          	sd	s1,8(sp)
   103e8:	00011437          	lui	s0,0x11
   103ec:	000114b7          	lui	s1,0x11
   103f0:	00048793          	mv	a5,s1
   103f4:	00040413          	mv	s0,s0
   103f8:	40f40433          	sub	s0,s0,a5
   103fc:	01213023          	sd	s2,0(sp)
   10400:	00113c23          	sd	ra,24(sp)
   10404:	40345413          	srai	s0,s0,0x3
   10408:	00048493          	mv	s1,s1
   1040c:	00000913          	li	s2,0
   10410:	04891463          	bne	s2,s0,10458 <__libc_init_array+0x7c>
   10414:	000114b7          	lui	s1,0x11
   10418:	00000097          	auipc	ra,0x0
   1041c:	ce8080e7          	jalr	-792(ra) # 10100 <_fini>
   10420:	00011437          	lui	s0,0x11
   10424:	00048793          	mv	a5,s1
   10428:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1042c:	40f40433          	sub	s0,s0,a5
   10430:	40345413          	srai	s0,s0,0x3
   10434:	00048493          	mv	s1,s1
   10438:	00000913          	li	s2,0
   1043c:	02891863          	bne	s2,s0,1046c <__libc_init_array+0x90>
   10440:	01813083          	ld	ra,24(sp)
   10444:	01013403          	ld	s0,16(sp)
   10448:	00813483          	ld	s1,8(sp)
   1044c:	00013903          	ld	s2,0(sp)
   10450:	02010113          	addi	sp,sp,32
   10454:	00008067          	ret
   10458:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   1045c:	00190913          	addi	s2,s2,1
   10460:	00848493          	addi	s1,s1,8
   10464:	000780e7          	jalr	a5
   10468:	fa9ff06f          	j	10410 <__libc_init_array+0x34>
   1046c:	0004b783          	ld	a5,0(s1)
   10470:	00190913          	addi	s2,s2,1
   10474:	00848493          	addi	s1,s1,8
   10478:	000780e7          	jalr	a5
   1047c:	fc1ff06f          	j	1043c <__libc_init_array+0x60>
   10480:	0000                	unimp
	...

0000000000010484 <memset>:
   10484:	00f00813          	li	a6,15
   10488:	00050713          	mv	a4,a0
   1048c:	02c87a63          	bleu	a2,a6,104c0 <memset+0x3c>
   10490:	00f77793          	andi	a5,a4,15
   10494:	0a079063          	bnez	a5,10534 <memset+0xb0>
   10498:	06059e63          	bnez	a1,10514 <memset+0x90>
   1049c:	ff067693          	andi	a3,a2,-16
   104a0:	00f67613          	andi	a2,a2,15
   104a4:	00e686b3          	add	a3,a3,a4
   104a8:	00b73023          	sd	a1,0(a4)
   104ac:	00b73423          	sd	a1,8(a4)
   104b0:	01070713          	addi	a4,a4,16
   104b4:	fed76ae3          	bltu	a4,a3,104a8 <memset+0x24>
   104b8:	00061463          	bnez	a2,104c0 <memset+0x3c>
   104bc:	00008067          	ret
   104c0:	40c806b3          	sub	a3,a6,a2
   104c4:	00269693          	slli	a3,a3,0x2
   104c8:	00000297          	auipc	t0,0x0
   104cc:	005686b3          	add	a3,a3,t0
   104d0:	00c68067          	jr	12(a3)
   104d4:	00b70723          	sb	a1,14(a4)
   104d8:	00b706a3          	sb	a1,13(a4)
   104dc:	00b70623          	sb	a1,12(a4)
   104e0:	00b705a3          	sb	a1,11(a4)
   104e4:	00b70523          	sb	a1,10(a4)
   104e8:	00b704a3          	sb	a1,9(a4)
   104ec:	00b70423          	sb	a1,8(a4)
   104f0:	00b703a3          	sb	a1,7(a4)
   104f4:	00b70323          	sb	a1,6(a4)
   104f8:	00b702a3          	sb	a1,5(a4)
   104fc:	00b70223          	sb	a1,4(a4)
   10500:	00b701a3          	sb	a1,3(a4)
   10504:	00b70123          	sb	a1,2(a4)
   10508:	00b700a3          	sb	a1,1(a4)
   1050c:	00b70023          	sb	a1,0(a4)
   10510:	00008067          	ret
   10514:	0ff5f593          	andi	a1,a1,255
   10518:	00859693          	slli	a3,a1,0x8
   1051c:	00d5e5b3          	or	a1,a1,a3
   10520:	01059693          	slli	a3,a1,0x10
   10524:	00d5e5b3          	or	a1,a1,a3
   10528:	02059693          	slli	a3,a1,0x20
   1052c:	00d5e5b3          	or	a1,a1,a3
   10530:	f6dff06f          	j	1049c <memset+0x18>
   10534:	00279693          	slli	a3,a5,0x2
   10538:	00000297          	auipc	t0,0x0
   1053c:	005686b3          	add	a3,a3,t0
   10540:	00008293          	mv	t0,ra
   10544:	f98680e7          	jalr	-104(a3)
   10548:	00028093          	mv	ra,t0
   1054c:	ff078793          	addi	a5,a5,-16
   10550:	40f70733          	sub	a4,a4,a5
   10554:	00f60633          	add	a2,a2,a5
   10558:	f6c874e3          	bleu	a2,a6,104c0 <memset+0x3c>
   1055c:	f3dff06f          	j	10498 <memset+0x14>

0000000000010560 <__register_exitproc>:
   10560:	000117b7          	lui	a5,0x11
   10564:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10568:	00050313          	mv	t1,a0
   1056c:	1f873783          	ld	a5,504(a4)
   10570:	00079663          	bnez	a5,1057c <__register_exitproc+0x1c>
   10574:	20070793          	addi	a5,a4,512
   10578:	1ef73c23          	sd	a5,504(a4)
   1057c:	0087a703          	lw	a4,8(a5)
   10580:	01f00813          	li	a6,31
   10584:	fff00513          	li	a0,-1
   10588:	04e84e63          	blt	a6,a4,105e4 <__register_exitproc+0x84>
   1058c:	02030e63          	beqz	t1,105c8 <__register_exitproc+0x68>
   10590:	00371813          	slli	a6,a4,0x3
   10594:	01078833          	add	a6,a5,a6
   10598:	10c83823          	sd	a2,272(a6)
   1059c:	3107a883          	lw	a7,784(a5)
   105a0:	00100613          	li	a2,1
   105a4:	00e6163b          	sllw	a2,a2,a4
   105a8:	00c8e8b3          	or	a7,a7,a2
   105ac:	3117a823          	sw	a7,784(a5)
   105b0:	20d83823          	sd	a3,528(a6)
   105b4:	00200693          	li	a3,2
   105b8:	00d31863          	bne	t1,a3,105c8 <__register_exitproc+0x68>
   105bc:	3147a683          	lw	a3,788(a5)
   105c0:	00c6e633          	or	a2,a3,a2
   105c4:	30c7aa23          	sw	a2,788(a5)
   105c8:	0017069b          	addiw	a3,a4,1
   105cc:	00270713          	addi	a4,a4,2
   105d0:	00371713          	slli	a4,a4,0x3
   105d4:	00d7a423          	sw	a3,8(a5)
   105d8:	00e787b3          	add	a5,a5,a4
   105dc:	00b7b023          	sd	a1,0(a5)
   105e0:	00000513          	li	a0,0
   105e4:	00008067          	ret
   105e8:	0000                	unimp
	...

00000000000105ec <__call_exitprocs>:
   105ec:	fb010113          	addi	sp,sp,-80
   105f0:	000117b7          	lui	a5,0x11
   105f4:	03313423          	sd	s3,40(sp)
   105f8:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105fc:	03413023          	sd	s4,32(sp)
   10600:	01513c23          	sd	s5,24(sp)
   10604:	01613823          	sd	s6,16(sp)
   10608:	04113423          	sd	ra,72(sp)
   1060c:	04813023          	sd	s0,64(sp)
   10610:	02913c23          	sd	s1,56(sp)
   10614:	03213823          	sd	s2,48(sp)
   10618:	01713423          	sd	s7,8(sp)
   1061c:	00050a93          	mv	s5,a0
   10620:	00058a13          	mv	s4,a1
   10624:	00100b13          	li	s6,1
   10628:	1f89b403          	ld	s0,504(s3)
   1062c:	00040c63          	beqz	s0,10644 <__call_exitprocs+0x58>
   10630:	00842483          	lw	s1,8(s0)
   10634:	fff4849b          	addiw	s1,s1,-1
   10638:	00349913          	slli	s2,s1,0x3
   1063c:	01240933          	add	s2,s0,s2
   10640:	0204d863          	bgez	s1,10670 <__call_exitprocs+0x84>
   10644:	04813083          	ld	ra,72(sp)
   10648:	04013403          	ld	s0,64(sp)
   1064c:	03813483          	ld	s1,56(sp)
   10650:	03013903          	ld	s2,48(sp)
   10654:	02813983          	ld	s3,40(sp)
   10658:	02013a03          	ld	s4,32(sp)
   1065c:	01813a83          	ld	s5,24(sp)
   10660:	01013b03          	ld	s6,16(sp)
   10664:	00813b83          	ld	s7,8(sp)
   10668:	05010113          	addi	sp,sp,80
   1066c:	00008067          	ret
   10670:	000a0c63          	beqz	s4,10688 <__call_exitprocs+0x9c>
   10674:	21093783          	ld	a5,528(s2)
   10678:	01478863          	beq	a5,s4,10688 <__call_exitprocs+0x9c>
   1067c:	fff4849b          	addiw	s1,s1,-1
   10680:	ff890913          	addi	s2,s2,-8
   10684:	fbdff06f          	j	10640 <__call_exitprocs+0x54>
   10688:	00842783          	lw	a5,8(s0)
   1068c:	01093683          	ld	a3,16(s2)
   10690:	fff7879b          	addiw	a5,a5,-1
   10694:	02979e63          	bne	a5,s1,106d0 <__call_exitprocs+0xe4>
   10698:	00942423          	sw	s1,8(s0)
   1069c:	fe0680e3          	beqz	a3,1067c <__call_exitprocs+0x90>
   106a0:	31042703          	lw	a4,784(s0)
   106a4:	009b163b          	sllw	a2,s6,s1
   106a8:	00842b83          	lw	s7,8(s0)
   106ac:	00c77733          	and	a4,a4,a2
   106b0:	0007071b          	sext.w	a4,a4
   106b4:	02071263          	bnez	a4,106d8 <__call_exitprocs+0xec>
   106b8:	000680e7          	jalr	a3
   106bc:	00842703          	lw	a4,8(s0)
   106c0:	1f89b783          	ld	a5,504(s3)
   106c4:	f77712e3          	bne	a4,s7,10628 <__call_exitprocs+0x3c>
   106c8:	faf40ae3          	beq	s0,a5,1067c <__call_exitprocs+0x90>
   106cc:	f5dff06f          	j	10628 <__call_exitprocs+0x3c>
   106d0:	00093823          	sd	zero,16(s2)
   106d4:	fc9ff06f          	j	1069c <__call_exitprocs+0xb0>
   106d8:	31442783          	lw	a5,788(s0)
   106dc:	11093583          	ld	a1,272(s2)
   106e0:	00c7f7b3          	and	a5,a5,a2
   106e4:	0007879b          	sext.w	a5,a5
   106e8:	00079863          	bnez	a5,106f8 <__call_exitprocs+0x10c>
   106ec:	000a8513          	mv	a0,s5
   106f0:	000680e7          	jalr	a3
   106f4:	fc9ff06f          	j	106bc <__call_exitprocs+0xd0>
   106f8:	00058513          	mv	a0,a1
   106fc:	000680e7          	jalr	a3
   10700:	fbdff06f          	j	106bc <__call_exitprocs+0xd0>
   10704:	0000                	unimp
	...

0000000000010708 <conv_stat>:
   10708:	0005b783          	ld	a5,0(a1)
   1070c:	00f51023          	sh	a5,0(a0)
   10710:	0085b783          	ld	a5,8(a1)
   10714:	00f51123          	sh	a5,2(a0)
   10718:	0105a783          	lw	a5,16(a1)
   1071c:	00f52223          	sw	a5,4(a0)
   10720:	0145a783          	lw	a5,20(a1)
   10724:	00f51423          	sh	a5,8(a0)
   10728:	0185a783          	lw	a5,24(a1)
   1072c:	00f51523          	sh	a5,10(a0)
   10730:	01c5a783          	lw	a5,28(a1)
   10734:	00f51623          	sh	a5,12(a0)
   10738:	0205b783          	ld	a5,32(a1)
   1073c:	00f51723          	sh	a5,14(a0)
   10740:	0305b783          	ld	a5,48(a1)
   10744:	00f53823          	sd	a5,16(a0)
   10748:	0405b783          	ld	a5,64(a1)
   1074c:	04f53823          	sd	a5,80(a0)
   10750:	0385a783          	lw	a5,56(a1)
   10754:	04f53423          	sd	a5,72(a0)
   10758:	0485b783          	ld	a5,72(a1)
   1075c:	00f53c23          	sd	a5,24(a0)
   10760:	0585b783          	ld	a5,88(a1)
   10764:	02f53423          	sd	a5,40(a0)
   10768:	0685b783          	ld	a5,104(a1)
   1076c:	02f53c23          	sd	a5,56(a0)
   10770:	00008067          	ret

0000000000010774 <__syscall_error>:
   10774:	ff010113          	addi	sp,sp,-16
   10778:	00813023          	sd	s0,0(sp)
   1077c:	00113423          	sd	ra,8(sp)
   10780:	00050413          	mv	s0,a0
   10784:	00000097          	auipc	ra,0x0
   10788:	5f8080e7          	jalr	1528(ra) # 10d7c <__errno>
   1078c:	408007bb          	negw	a5,s0
   10790:	00813083          	ld	ra,8(sp)
   10794:	00013403          	ld	s0,0(sp)
   10798:	00f52023          	sw	a5,0(a0)
   1079c:	fff00513          	li	a0,-1
   107a0:	01010113          	addi	sp,sp,16
   107a4:	00008067          	ret

00000000000107a8 <__internal_syscall>:
   107a8:	00050893          	mv	a7,a0
   107ac:	00058513          	mv	a0,a1
   107b0:	00060593          	mv	a1,a2
   107b4:	00068613          	mv	a2,a3
   107b8:	00070693          	mv	a3,a4
   107bc:	00000073          	ecall
   107c0:	00055663          	bgez	a0,107cc <__internal_syscall+0x24>
   107c4:	00000317          	auipc	t1,0x0
   107c8:	fb030067          	jr	-80(t1) # 10774 <__syscall_error>
   107cc:	00008067          	ret

00000000000107d0 <open>:
   107d0:	ff010113          	addi	sp,sp,-16
   107d4:	00060693          	mv	a3,a2
   107d8:	00000713          	li	a4,0
   107dc:	00058613          	mv	a2,a1
   107e0:	00050593          	mv	a1,a0
   107e4:	40000513          	li	a0,1024
   107e8:	00113423          	sd	ra,8(sp)
   107ec:	00000097          	auipc	ra,0x0
   107f0:	fbc080e7          	jalr	-68(ra) # 107a8 <__internal_syscall>
   107f4:	00813083          	ld	ra,8(sp)
   107f8:	0005051b          	sext.w	a0,a0
   107fc:	01010113          	addi	sp,sp,16
   10800:	00008067          	ret

0000000000010804 <openat>:
   10804:	ff010113          	addi	sp,sp,-16
   10808:	00068713          	mv	a4,a3
   1080c:	00060693          	mv	a3,a2
   10810:	00058613          	mv	a2,a1
   10814:	00050593          	mv	a1,a0
   10818:	03800513          	li	a0,56
   1081c:	00113423          	sd	ra,8(sp)
   10820:	f89ff0ef          	jal	ra,107a8 <__internal_syscall>
   10824:	00813083          	ld	ra,8(sp)
   10828:	0005051b          	sext.w	a0,a0
   1082c:	01010113          	addi	sp,sp,16
   10830:	00008067          	ret

0000000000010834 <lseek>:
   10834:	00060693          	mv	a3,a2
   10838:	00000713          	li	a4,0
   1083c:	00058613          	mv	a2,a1
   10840:	00050593          	mv	a1,a0
   10844:	03e00513          	li	a0,62
   10848:	00000317          	auipc	t1,0x0
   1084c:	f6030067          	jr	-160(t1) # 107a8 <__internal_syscall>

0000000000010850 <read>:
   10850:	00060693          	mv	a3,a2
   10854:	00000713          	li	a4,0
   10858:	00058613          	mv	a2,a1
   1085c:	00050593          	mv	a1,a0
   10860:	03f00513          	li	a0,63
   10864:	f45ff06f          	j	107a8 <__internal_syscall>

0000000000010868 <write>:
   10868:	00060693          	mv	a3,a2
   1086c:	00000713          	li	a4,0
   10870:	00058613          	mv	a2,a1
   10874:	00050593          	mv	a1,a0
   10878:	04000513          	li	a0,64
   1087c:	00000317          	auipc	t1,0x0
   10880:	f2c30067          	jr	-212(t1) # 107a8 <__internal_syscall>

0000000000010884 <fstat>:
   10884:	f6010113          	addi	sp,sp,-160
   10888:	08913423          	sd	s1,136(sp)
   1088c:	00010613          	mv	a2,sp
   10890:	00058493          	mv	s1,a1
   10894:	00000713          	li	a4,0
   10898:	00050593          	mv	a1,a0
   1089c:	00000693          	li	a3,0
   108a0:	05000513          	li	a0,80
   108a4:	08113c23          	sd	ra,152(sp)
   108a8:	08813823          	sd	s0,144(sp)
   108ac:	efdff0ef          	jal	ra,107a8 <__internal_syscall>
   108b0:	00050413          	mv	s0,a0
   108b4:	00010593          	mv	a1,sp
   108b8:	00048513          	mv	a0,s1
   108bc:	e4dff0ef          	jal	ra,10708 <conv_stat>
   108c0:	0004051b          	sext.w	a0,s0
   108c4:	09813083          	ld	ra,152(sp)
   108c8:	09013403          	ld	s0,144(sp)
   108cc:	08813483          	ld	s1,136(sp)
   108d0:	0a010113          	addi	sp,sp,160
   108d4:	00008067          	ret

00000000000108d8 <stat>:
   108d8:	f6010113          	addi	sp,sp,-160
   108dc:	08913423          	sd	s1,136(sp)
   108e0:	00010613          	mv	a2,sp
   108e4:	00058493          	mv	s1,a1
   108e8:	00000713          	li	a4,0
   108ec:	00050593          	mv	a1,a0
   108f0:	00000693          	li	a3,0
   108f4:	40e00513          	li	a0,1038
   108f8:	08113c23          	sd	ra,152(sp)
   108fc:	08813823          	sd	s0,144(sp)
   10900:	00000097          	auipc	ra,0x0
   10904:	ea8080e7          	jalr	-344(ra) # 107a8 <__internal_syscall>
   10908:	00050413          	mv	s0,a0
   1090c:	00010593          	mv	a1,sp
   10910:	00048513          	mv	a0,s1
   10914:	00000097          	auipc	ra,0x0
   10918:	df4080e7          	jalr	-524(ra) # 10708 <conv_stat>
   1091c:	0004051b          	sext.w	a0,s0
   10920:	09813083          	ld	ra,152(sp)
   10924:	09013403          	ld	s0,144(sp)
   10928:	08813483          	ld	s1,136(sp)
   1092c:	0a010113          	addi	sp,sp,160
   10930:	00008067          	ret

0000000000010934 <lstat>:
   10934:	f6010113          	addi	sp,sp,-160
   10938:	08913423          	sd	s1,136(sp)
   1093c:	00010613          	mv	a2,sp
   10940:	00058493          	mv	s1,a1
   10944:	00000713          	li	a4,0
   10948:	00050593          	mv	a1,a0
   1094c:	00000693          	li	a3,0
   10950:	40f00513          	li	a0,1039
   10954:	08113c23          	sd	ra,152(sp)
   10958:	08813823          	sd	s0,144(sp)
   1095c:	e4dff0ef          	jal	ra,107a8 <__internal_syscall>
   10960:	00050413          	mv	s0,a0
   10964:	00010593          	mv	a1,sp
   10968:	00048513          	mv	a0,s1
   1096c:	d9dff0ef          	jal	ra,10708 <conv_stat>
   10970:	0004051b          	sext.w	a0,s0
   10974:	09813083          	ld	ra,152(sp)
   10978:	09013403          	ld	s0,144(sp)
   1097c:	08813483          	ld	s1,136(sp)
   10980:	0a010113          	addi	sp,sp,160
   10984:	00008067          	ret

0000000000010988 <fstatat>:
   10988:	f6010113          	addi	sp,sp,-160
   1098c:	08913423          	sd	s1,136(sp)
   10990:	00068713          	mv	a4,a3
   10994:	00060493          	mv	s1,a2
   10998:	00010693          	mv	a3,sp
   1099c:	00058613          	mv	a2,a1
   109a0:	00050593          	mv	a1,a0
   109a4:	04f00513          	li	a0,79
   109a8:	08113c23          	sd	ra,152(sp)
   109ac:	08813823          	sd	s0,144(sp)
   109b0:	00000097          	auipc	ra,0x0
   109b4:	df8080e7          	jalr	-520(ra) # 107a8 <__internal_syscall>
   109b8:	00050413          	mv	s0,a0
   109bc:	00010593          	mv	a1,sp
   109c0:	00048513          	mv	a0,s1
   109c4:	00000097          	auipc	ra,0x0
   109c8:	d44080e7          	jalr	-700(ra) # 10708 <conv_stat>
   109cc:	0004051b          	sext.w	a0,s0
   109d0:	09813083          	ld	ra,152(sp)
   109d4:	09013403          	ld	s0,144(sp)
   109d8:	08813483          	ld	s1,136(sp)
   109dc:	0a010113          	addi	sp,sp,160
   109e0:	00008067          	ret

00000000000109e4 <access>:
   109e4:	ff010113          	addi	sp,sp,-16
   109e8:	00058613          	mv	a2,a1
   109ec:	00000713          	li	a4,0
   109f0:	00050593          	mv	a1,a0
   109f4:	00000693          	li	a3,0
   109f8:	40900513          	li	a0,1033
   109fc:	00113423          	sd	ra,8(sp)
   10a00:	da9ff0ef          	jal	ra,107a8 <__internal_syscall>
   10a04:	00813083          	ld	ra,8(sp)
   10a08:	0005051b          	sext.w	a0,a0
   10a0c:	01010113          	addi	sp,sp,16
   10a10:	00008067          	ret

0000000000010a14 <faccessat>:
   10a14:	ff010113          	addi	sp,sp,-16
   10a18:	00068713          	mv	a4,a3
   10a1c:	00060693          	mv	a3,a2
   10a20:	00058613          	mv	a2,a1
   10a24:	00050593          	mv	a1,a0
   10a28:	03000513          	li	a0,48
   10a2c:	00113423          	sd	ra,8(sp)
   10a30:	00000097          	auipc	ra,0x0
   10a34:	d78080e7          	jalr	-648(ra) # 107a8 <__internal_syscall>
   10a38:	00813083          	ld	ra,8(sp)
   10a3c:	0005051b          	sext.w	a0,a0
   10a40:	01010113          	addi	sp,sp,16
   10a44:	00008067          	ret

0000000000010a48 <close>:
   10a48:	ff010113          	addi	sp,sp,-16
   10a4c:	00050593          	mv	a1,a0
   10a50:	00000713          	li	a4,0
   10a54:	00000693          	li	a3,0
   10a58:	00000613          	li	a2,0
   10a5c:	03900513          	li	a0,57
   10a60:	00113423          	sd	ra,8(sp)
   10a64:	d45ff0ef          	jal	ra,107a8 <__internal_syscall>
   10a68:	00813083          	ld	ra,8(sp)
   10a6c:	0005051b          	sext.w	a0,a0
   10a70:	01010113          	addi	sp,sp,16
   10a74:	00008067          	ret

0000000000010a78 <link>:
   10a78:	ff010113          	addi	sp,sp,-16
   10a7c:	00058613          	mv	a2,a1
   10a80:	00000713          	li	a4,0
   10a84:	00050593          	mv	a1,a0
   10a88:	00000693          	li	a3,0
   10a8c:	40100513          	li	a0,1025
   10a90:	00113423          	sd	ra,8(sp)
   10a94:	00000097          	auipc	ra,0x0
   10a98:	d14080e7          	jalr	-748(ra) # 107a8 <__internal_syscall>
   10a9c:	00813083          	ld	ra,8(sp)
   10aa0:	0005051b          	sext.w	a0,a0
   10aa4:	01010113          	addi	sp,sp,16
   10aa8:	00008067          	ret

0000000000010aac <unlink>:
   10aac:	ff010113          	addi	sp,sp,-16
   10ab0:	00050593          	mv	a1,a0
   10ab4:	00000713          	li	a4,0
   10ab8:	00000693          	li	a3,0
   10abc:	00000613          	li	a2,0
   10ac0:	40200513          	li	a0,1026
   10ac4:	00113423          	sd	ra,8(sp)
   10ac8:	ce1ff0ef          	jal	ra,107a8 <__internal_syscall>
   10acc:	00813083          	ld	ra,8(sp)
   10ad0:	0005051b          	sext.w	a0,a0
   10ad4:	01010113          	addi	sp,sp,16
   10ad8:	00008067          	ret

0000000000010adc <execve>:
   10adc:	ff010113          	addi	sp,sp,-16
   10ae0:	00113423          	sd	ra,8(sp)
   10ae4:	00000097          	auipc	ra,0x0
   10ae8:	298080e7          	jalr	664(ra) # 10d7c <__errno>
   10aec:	00813083          	ld	ra,8(sp)
   10af0:	00c00793          	li	a5,12
   10af4:	00f52023          	sw	a5,0(a0)
   10af8:	fff00513          	li	a0,-1
   10afc:	01010113          	addi	sp,sp,16
   10b00:	00008067          	ret

0000000000010b04 <fork>:
   10b04:	ff010113          	addi	sp,sp,-16
   10b08:	00113423          	sd	ra,8(sp)
   10b0c:	270000ef          	jal	ra,10d7c <__errno>
   10b10:	00813083          	ld	ra,8(sp)
   10b14:	00b00793          	li	a5,11
   10b18:	00f52023          	sw	a5,0(a0)
   10b1c:	fff00513          	li	a0,-1
   10b20:	01010113          	addi	sp,sp,16
   10b24:	00008067          	ret

0000000000010b28 <getpid>:
   10b28:	00100513          	li	a0,1
   10b2c:	00008067          	ret

0000000000010b30 <kill>:
   10b30:	ff010113          	addi	sp,sp,-16
   10b34:	00113423          	sd	ra,8(sp)
   10b38:	244000ef          	jal	ra,10d7c <__errno>
   10b3c:	00813083          	ld	ra,8(sp)
   10b40:	01600793          	li	a5,22
   10b44:	00f52023          	sw	a5,0(a0)
   10b48:	fff00513          	li	a0,-1
   10b4c:	01010113          	addi	sp,sp,16
   10b50:	00008067          	ret

0000000000010b54 <wait>:
   10b54:	ff010113          	addi	sp,sp,-16
   10b58:	00113423          	sd	ra,8(sp)
   10b5c:	00000097          	auipc	ra,0x0
   10b60:	220080e7          	jalr	544(ra) # 10d7c <__errno>
   10b64:	00813083          	ld	ra,8(sp)
   10b68:	00a00793          	li	a5,10
   10b6c:	00f52023          	sw	a5,0(a0)
   10b70:	fff00513          	li	a0,-1
   10b74:	01010113          	addi	sp,sp,16
   10b78:	00008067          	ret

0000000000010b7c <isatty>:
   10b7c:	f8010113          	addi	sp,sp,-128
   10b80:	00810593          	addi	a1,sp,8
   10b84:	06113c23          	sd	ra,120(sp)
   10b88:	cfdff0ef          	jal	ra,10884 <fstat>
   10b8c:	fff00793          	li	a5,-1
   10b90:	00f50863          	beq	a0,a5,10ba0 <isatty+0x24>
   10b94:	00c12503          	lw	a0,12(sp)
   10b98:	40d5551b          	sraiw	a0,a0,0xd
   10b9c:	00157513          	andi	a0,a0,1
   10ba0:	07813083          	ld	ra,120(sp)
   10ba4:	08010113          	addi	sp,sp,128
   10ba8:	00008067          	ret

0000000000010bac <gettimeofday>:
   10bac:	ff010113          	addi	sp,sp,-16
   10bb0:	00050593          	mv	a1,a0
   10bb4:	00000713          	li	a4,0
   10bb8:	00000693          	li	a3,0
   10bbc:	00000613          	li	a2,0
   10bc0:	0a900513          	li	a0,169
   10bc4:	00113423          	sd	ra,8(sp)
   10bc8:	00000097          	auipc	ra,0x0
   10bcc:	be0080e7          	jalr	-1056(ra) # 107a8 <__internal_syscall>
   10bd0:	00813083          	ld	ra,8(sp)
   10bd4:	0005051b          	sext.w	a0,a0
   10bd8:	01010113          	addi	sp,sp,16
   10bdc:	00008067          	ret

0000000000010be0 <times>:
   10be0:	fd010113          	addi	sp,sp,-48
   10be4:	02813023          	sd	s0,32(sp)
   10be8:	00050413          	mv	s0,a0
   10bec:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10bf0:	00913c23          	sd	s1,24(sp)
   10bf4:	02113423          	sd	ra,40(sp)
   10bf8:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10bfc:	00079a63          	bnez	a5,10c10 <times+0x30>
   10c00:	00000593          	li	a1,0
   10c04:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10c08:	00000097          	auipc	ra,0x0
   10c0c:	fa4080e7          	jalr	-92(ra) # 10bac <gettimeofday>
   10c10:	00000593          	li	a1,0
   10c14:	00010513          	mv	a0,sp
   10c18:	00000097          	auipc	ra,0x0
   10c1c:	f94080e7          	jalr	-108(ra) # 10bac <gettimeofday>
   10c20:	0004b783          	ld	a5,0(s1)
   10c24:	00013503          	ld	a0,0(sp)
   10c28:	000f45b7          	lui	a1,0xf4
   10c2c:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10c30:	40f50533          	sub	a0,a0,a5
   10c34:	154000ef          	jal	ra,10d88 <__muldi3>
   10c38:	0084b703          	ld	a4,8(s1)
   10c3c:	00813783          	ld	a5,8(sp)
   10c40:	00043823          	sd	zero,16(s0)
   10c44:	00043c23          	sd	zero,24(s0)
   10c48:	40e787b3          	sub	a5,a5,a4
   10c4c:	00f50533          	add	a0,a0,a5
   10c50:	00a43023          	sd	a0,0(s0)
   10c54:	00043423          	sd	zero,8(s0)
   10c58:	02813083          	ld	ra,40(sp)
   10c5c:	02013403          	ld	s0,32(sp)
   10c60:	01813483          	ld	s1,24(sp)
   10c64:	fff00513          	li	a0,-1
   10c68:	03010113          	addi	sp,sp,48
   10c6c:	00008067          	ret

0000000000010c70 <ftime>:
   10c70:	00051423          	sh	zero,8(a0)
   10c74:	00053023          	sd	zero,0(a0)
   10c78:	00000513          	li	a0,0
   10c7c:	00008067          	ret

0000000000010c80 <utime>:
   10c80:	fff00513          	li	a0,-1
   10c84:	00008067          	ret

0000000000010c88 <chown>:
   10c88:	fff00513          	li	a0,-1
   10c8c:	00008067          	ret

0000000000010c90 <chmod>:
   10c90:	fff00513          	li	a0,-1
   10c94:	00008067          	ret

0000000000010c98 <chdir>:
   10c98:	fff00513          	li	a0,-1
   10c9c:	00008067          	ret

0000000000010ca0 <getcwd>:
   10ca0:	00000513          	li	a0,0
   10ca4:	00008067          	ret

0000000000010ca8 <sysconf>:
   10ca8:	00200793          	li	a5,2
   10cac:	00f50663          	beq	a0,a5,10cb8 <sysconf+0x10>
   10cb0:	fff00513          	li	a0,-1
   10cb4:	00008067          	ret
   10cb8:	000f4537          	lui	a0,0xf4
   10cbc:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10cc0:	00008067          	ret

0000000000010cc4 <sbrk>:
   10cc4:	fe010113          	addi	sp,sp,-32
   10cc8:	00813823          	sd	s0,16(sp)
   10ccc:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10cd0:	00913423          	sd	s1,8(sp)
   10cd4:	00113c23          	sd	ra,24(sp)
   10cd8:	00050493          	mv	s1,a0
   10cdc:	04079063          	bnez	a5,10d1c <sbrk+0x58>
   10ce0:	00000713          	li	a4,0
   10ce4:	00000693          	li	a3,0
   10ce8:	00000613          	li	a2,0
   10cec:	00000593          	li	a1,0
   10cf0:	0d600513          	li	a0,214
   10cf4:	ab5ff0ef          	jal	ra,107a8 <__internal_syscall>
   10cf8:	fff00793          	li	a5,-1
   10cfc:	00f51e63          	bne	a0,a5,10d18 <sbrk+0x54>
   10d00:	fff00513          	li	a0,-1
   10d04:	01813083          	ld	ra,24(sp)
   10d08:	01013403          	ld	s0,16(sp)
   10d0c:	00813483          	ld	s1,8(sp)
   10d10:	02010113          	addi	sp,sp,32
   10d14:	00008067          	ret
   10d18:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10d1c:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10d20:	00000713          	li	a4,0
   10d24:	00000693          	li	a3,0
   10d28:	00b485b3          	add	a1,s1,a1
   10d2c:	00000613          	li	a2,0
   10d30:	0d600513          	li	a0,214
   10d34:	a75ff0ef          	jal	ra,107a8 <__internal_syscall>
   10d38:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10d3c:	00f484b3          	add	s1,s1,a5
   10d40:	fc9510e3          	bne	a0,s1,10d00 <sbrk+0x3c>
   10d44:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10d48:	00078513          	mv	a0,a5
   10d4c:	fb9ff06f          	j	10d04 <sbrk+0x40>

0000000000010d50 <_exit>:
   10d50:	ff010113          	addi	sp,sp,-16
   10d54:	00050593          	mv	a1,a0
   10d58:	00000713          	li	a4,0
   10d5c:	00000693          	li	a3,0
   10d60:	00000613          	li	a2,0
   10d64:	05d00513          	li	a0,93
   10d68:	00113423          	sd	ra,8(sp)
   10d6c:	00000097          	auipc	ra,0x0
   10d70:	a3c080e7          	jalr	-1476(ra) # 107a8 <__internal_syscall>
   10d74:	0000006f          	j	10d74 <_exit+0x24>
   10d78:	0000                	unimp
	...

0000000000010d7c <__errno>:
   10d7c:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10d80:	00008067          	ret
   10d84:	0000                	unimp
	...

0000000000010d88 <__muldi3>:
   10d88:	00050613          	mv	a2,a0
   10d8c:	00000513          	li	a0,0
   10d90:	0015f693          	andi	a3,a1,1
   10d94:	00068463          	beqz	a3,10d9c <__muldi3+0x14>
   10d98:	00c50533          	add	a0,a0,a2
   10d9c:	0015d593          	srli	a1,a1,0x1
   10da0:	00161613          	slli	a2,a2,0x1
   10da4:	fe0596e3          	bnez	a1,10d90 <__muldi3+0x8>
   10da8:	00008067          	ret
   10dac:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010db0 <.rodata>:
   10db0:	6854                	ld	a3,144(s0)
   10db2:	7369                	lui	t1,0xffffa
   10db4:	6920                	ld	s0,80(a0)
   10db6:	74732073          	csrs	0x747,t1
   10dba:	6972                	ld	s2,280(sp)
   10dbc:	676e                	ld	a4,216(sp)
   10dbe:	6620                	ld	s0,72(a2)
   10dc0:	6f72                	ld	t5,280(sp)
   10dc2:	206d                	0x206d
   10dc4:	7270                	ld	a2,224(a2)
   10dc6:	6e69                	lui	t3,0x1a
   10dc8:	5f74                	lw	a3,124(a4)
   10dca:	0a292873          	csrrs	a6,0xa2,s2
	...

Disassembly of section .eh_frame:

0000000000010dd0 <__EH_FRAME_BEGIN__>:
   10dd0:	0000                	unimp
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
  10:	0d88                	addi	a0,sp,720
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
  10:	0d88                	addi	a0,sp,720
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0dac                	addi	a1,sp,728
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
  9c:	8802                	jr	a6
  9e:	010d                	addi	sp,sp,3
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
