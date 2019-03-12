
arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	384000ef          	jal	ra,1044c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	26050513          	addi	a0,a0,608 # 1032c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	204080e7          	jalr	516(ra) # 102d8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2c8080e7          	jalr	712(ra) # 103a4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	1f830067          	jr	504(t1) # 102f0 <exit>

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
   1019c:	d7850513          	addi	a0,a0,-648 # 10d78 <__EH_FRAME_BEGIN__>
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
   101e0:	d7850513          	addi	a0,a0,-648 # 10d78 <__EH_FRAME_BEGIN__>
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
   1020c:	00a00793          	li	a5,10
   10210:	fef42623          	sw	a5,-20(s0)
   10214:	01400793          	li	a5,20
   10218:	fef42423          	sw	a5,-24(s0)
   1021c:	fec42703          	lw	a4,-20(s0)
   10220:	fe842783          	lw	a5,-24(s0)
   10224:	00f707bb          	addw	a5,a4,a5
   10228:	fef42223          	sw	a5,-28(s0)
   1022c:	fe442783          	lw	a5,-28(s0)
   10230:	00078513          	mv	a0,a5
   10234:	020000ef          	jal	ra,10254 <print_d>
   10238:	00000793          	li	a5,0
   1023c:	00078513          	mv	a0,a5
   10240:	01813083          	ld	ra,24(sp)
   10244:	01013403          	ld	s0,16(sp)
   10248:	02010113          	addi	sp,sp,32
   1024c:	00008067          	ret
   10250:	0000                	unimp
	...

0000000000010254 <print_d>:
   10254:	fe010113          	addi	sp,sp,-32
   10258:	00813c23          	sd	s0,24(sp)
   1025c:	02010413          	addi	s0,sp,32
   10260:	00050793          	mv	a5,a0
   10264:	fef42623          	sw	a5,-20(s0)
   10268:	00200893          	li	a7,2
   1026c:	00000073          	ecall
   10270:	00000013          	nop
   10274:	01813403          	ld	s0,24(sp)
   10278:	02010113          	addi	sp,sp,32
   1027c:	00008067          	ret

0000000000010280 <print_s>:
   10280:	fe010113          	addi	sp,sp,-32
   10284:	00813c23          	sd	s0,24(sp)
   10288:	02010413          	addi	s0,sp,32
   1028c:	fea43423          	sd	a0,-24(s0)
   10290:	00000893          	li	a7,0
   10294:	00000073          	ecall
   10298:	00000013          	nop
   1029c:	01813403          	ld	s0,24(sp)
   102a0:	02010113          	addi	sp,sp,32
   102a4:	00008067          	ret

00000000000102a8 <print_c>:
   102a8:	fe010113          	addi	sp,sp,-32
   102ac:	00813c23          	sd	s0,24(sp)
   102b0:	02010413          	addi	s0,sp,32
   102b4:	00050793          	mv	a5,a0
   102b8:	fef407a3          	sb	a5,-17(s0)
   102bc:	00100893          	li	a7,1
   102c0:	00000073          	ecall
   102c4:	00000013          	nop
   102c8:	01813403          	ld	s0,24(sp)
   102cc:	02010113          	addi	sp,sp,32
   102d0:	00008067          	ret
   102d4:	0000                	unimp
	...

00000000000102d8 <atexit>:
   102d8:	00050593          	mv	a1,a0
   102dc:	00000693          	li	a3,0
   102e0:	00000613          	li	a2,0
   102e4:	00000513          	li	a0,0
   102e8:	2400006f          	j	10528 <__register_exitproc>
   102ec:	0000                	unimp
	...

00000000000102f0 <exit>:
   102f0:	ff010113          	addi	sp,sp,-16
   102f4:	00000593          	li	a1,0
   102f8:	00813023          	sd	s0,0(sp)
   102fc:	00113423          	sd	ra,8(sp)
   10300:	00050413          	mv	s0,a0
   10304:	2b0000ef          	jal	ra,105b4 <__call_exitprocs>
   10308:	000117b7          	lui	a5,0x11
   1030c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10310:	05853783          	ld	a5,88(a0)
   10314:	00078463          	beqz	a5,1031c <exit+0x2c>
   10318:	000780e7          	jalr	a5
   1031c:	00040513          	mv	a0,s0
   10320:	00001097          	auipc	ra,0x1
   10324:	9f8080e7          	jalr	-1544(ra) # 10d18 <_exit>
   10328:	0000                	unimp
	...

000000000001032c <__libc_fini_array>:
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	000117b7          	lui	a5,0x11
   10334:	00011737          	lui	a4,0x11
   10338:	00813823          	sd	s0,16(sp)
   1033c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10340:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10344:	40e40433          	sub	s0,s0,a4
   10348:	00913423          	sd	s1,8(sp)
   1034c:	01213023          	sd	s2,0(sp)
   10350:	00113c23          	sd	ra,24(sp)
   10354:	40345413          	srai	s0,s0,0x3
   10358:	00000493          	li	s1,0
   1035c:	01078913          	addi	s2,a5,16
   10360:	02941063          	bne	s0,s1,10380 <__libc_fini_array+0x54>
   10364:	01013403          	ld	s0,16(sp)
   10368:	01813083          	ld	ra,24(sp)
   1036c:	00813483          	ld	s1,8(sp)
   10370:	00013903          	ld	s2,0(sp)
   10374:	02010113          	addi	sp,sp,32
   10378:	00000317          	auipc	t1,0x0
   1037c:	d8830067          	jr	-632(t1) # 10100 <_fini>
   10380:	ff800593          	li	a1,-8
   10384:	00048513          	mv	a0,s1
   10388:	1c9000ef          	jal	ra,10d50 <__muldi3>
   1038c:	00a90533          	add	a0,s2,a0
   10390:	ff853783          	ld	a5,-8(a0)
   10394:	00148493          	addi	s1,s1,1
   10398:	000780e7          	jalr	a5
   1039c:	fc5ff06f          	j	10360 <__libc_fini_array+0x34>
   103a0:	0000                	unimp
	...

00000000000103a4 <__libc_init_array>:
   103a4:	fe010113          	addi	sp,sp,-32
   103a8:	00813823          	sd	s0,16(sp)
   103ac:	00913423          	sd	s1,8(sp)
   103b0:	00011437          	lui	s0,0x11
   103b4:	000114b7          	lui	s1,0x11
   103b8:	00048793          	mv	a5,s1
   103bc:	00040413          	mv	s0,s0
   103c0:	40f40433          	sub	s0,s0,a5
   103c4:	01213023          	sd	s2,0(sp)
   103c8:	00113c23          	sd	ra,24(sp)
   103cc:	40345413          	srai	s0,s0,0x3
   103d0:	00048493          	mv	s1,s1
   103d4:	00000913          	li	s2,0
   103d8:	04891463          	bne	s2,s0,10420 <__libc_init_array+0x7c>
   103dc:	000114b7          	lui	s1,0x11
   103e0:	00000097          	auipc	ra,0x0
   103e4:	d20080e7          	jalr	-736(ra) # 10100 <_fini>
   103e8:	00011437          	lui	s0,0x11
   103ec:	00048793          	mv	a5,s1
   103f0:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   103f4:	40f40433          	sub	s0,s0,a5
   103f8:	40345413          	srai	s0,s0,0x3
   103fc:	00048493          	mv	s1,s1
   10400:	00000913          	li	s2,0
   10404:	02891863          	bne	s2,s0,10434 <__libc_init_array+0x90>
   10408:	01813083          	ld	ra,24(sp)
   1040c:	01013403          	ld	s0,16(sp)
   10410:	00813483          	ld	s1,8(sp)
   10414:	00013903          	ld	s2,0(sp)
   10418:	02010113          	addi	sp,sp,32
   1041c:	00008067          	ret
   10420:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10424:	00190913          	addi	s2,s2,1
   10428:	00848493          	addi	s1,s1,8
   1042c:	000780e7          	jalr	a5
   10430:	fa9ff06f          	j	103d8 <__libc_init_array+0x34>
   10434:	0004b783          	ld	a5,0(s1)
   10438:	00190913          	addi	s2,s2,1
   1043c:	00848493          	addi	s1,s1,8
   10440:	000780e7          	jalr	a5
   10444:	fc1ff06f          	j	10404 <__libc_init_array+0x60>
   10448:	0000                	unimp
	...

000000000001044c <memset>:
   1044c:	00f00813          	li	a6,15
   10450:	00050713          	mv	a4,a0
   10454:	02c87a63          	bleu	a2,a6,10488 <memset+0x3c>
   10458:	00f77793          	andi	a5,a4,15
   1045c:	0a079063          	bnez	a5,104fc <memset+0xb0>
   10460:	06059e63          	bnez	a1,104dc <memset+0x90>
   10464:	ff067693          	andi	a3,a2,-16
   10468:	00f67613          	andi	a2,a2,15
   1046c:	00e686b3          	add	a3,a3,a4
   10470:	00b73023          	sd	a1,0(a4)
   10474:	00b73423          	sd	a1,8(a4)
   10478:	01070713          	addi	a4,a4,16
   1047c:	fed76ae3          	bltu	a4,a3,10470 <memset+0x24>
   10480:	00061463          	bnez	a2,10488 <memset+0x3c>
   10484:	00008067          	ret
   10488:	40c806b3          	sub	a3,a6,a2
   1048c:	00269693          	slli	a3,a3,0x2
   10490:	00000297          	auipc	t0,0x0
   10494:	005686b3          	add	a3,a3,t0
   10498:	00c68067          	jr	12(a3)
   1049c:	00b70723          	sb	a1,14(a4)
   104a0:	00b706a3          	sb	a1,13(a4)
   104a4:	00b70623          	sb	a1,12(a4)
   104a8:	00b705a3          	sb	a1,11(a4)
   104ac:	00b70523          	sb	a1,10(a4)
   104b0:	00b704a3          	sb	a1,9(a4)
   104b4:	00b70423          	sb	a1,8(a4)
   104b8:	00b703a3          	sb	a1,7(a4)
   104bc:	00b70323          	sb	a1,6(a4)
   104c0:	00b702a3          	sb	a1,5(a4)
   104c4:	00b70223          	sb	a1,4(a4)
   104c8:	00b701a3          	sb	a1,3(a4)
   104cc:	00b70123          	sb	a1,2(a4)
   104d0:	00b700a3          	sb	a1,1(a4)
   104d4:	00b70023          	sb	a1,0(a4)
   104d8:	00008067          	ret
   104dc:	0ff5f593          	andi	a1,a1,255
   104e0:	00859693          	slli	a3,a1,0x8
   104e4:	00d5e5b3          	or	a1,a1,a3
   104e8:	01059693          	slli	a3,a1,0x10
   104ec:	00d5e5b3          	or	a1,a1,a3
   104f0:	02059693          	slli	a3,a1,0x20
   104f4:	00d5e5b3          	or	a1,a1,a3
   104f8:	f6dff06f          	j	10464 <memset+0x18>
   104fc:	00279693          	slli	a3,a5,0x2
   10500:	00000297          	auipc	t0,0x0
   10504:	005686b3          	add	a3,a3,t0
   10508:	00008293          	mv	t0,ra
   1050c:	f98680e7          	jalr	-104(a3)
   10510:	00028093          	mv	ra,t0
   10514:	ff078793          	addi	a5,a5,-16
   10518:	40f70733          	sub	a4,a4,a5
   1051c:	00f60633          	add	a2,a2,a5
   10520:	f6c874e3          	bleu	a2,a6,10488 <memset+0x3c>
   10524:	f3dff06f          	j	10460 <memset+0x14>

0000000000010528 <__register_exitproc>:
   10528:	000117b7          	lui	a5,0x11
   1052c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10530:	00050313          	mv	t1,a0
   10534:	1f873783          	ld	a5,504(a4)
   10538:	00079663          	bnez	a5,10544 <__register_exitproc+0x1c>
   1053c:	20070793          	addi	a5,a4,512
   10540:	1ef73c23          	sd	a5,504(a4)
   10544:	0087a703          	lw	a4,8(a5)
   10548:	01f00813          	li	a6,31
   1054c:	fff00513          	li	a0,-1
   10550:	04e84e63          	blt	a6,a4,105ac <__register_exitproc+0x84>
   10554:	02030e63          	beqz	t1,10590 <__register_exitproc+0x68>
   10558:	00371813          	slli	a6,a4,0x3
   1055c:	01078833          	add	a6,a5,a6
   10560:	10c83823          	sd	a2,272(a6)
   10564:	3107a883          	lw	a7,784(a5)
   10568:	00100613          	li	a2,1
   1056c:	00e6163b          	sllw	a2,a2,a4
   10570:	00c8e8b3          	or	a7,a7,a2
   10574:	3117a823          	sw	a7,784(a5)
   10578:	20d83823          	sd	a3,528(a6)
   1057c:	00200693          	li	a3,2
   10580:	00d31863          	bne	t1,a3,10590 <__register_exitproc+0x68>
   10584:	3147a683          	lw	a3,788(a5)
   10588:	00c6e633          	or	a2,a3,a2
   1058c:	30c7aa23          	sw	a2,788(a5)
   10590:	0017069b          	addiw	a3,a4,1
   10594:	00270713          	addi	a4,a4,2
   10598:	00371713          	slli	a4,a4,0x3
   1059c:	00d7a423          	sw	a3,8(a5)
   105a0:	00e787b3          	add	a5,a5,a4
   105a4:	00b7b023          	sd	a1,0(a5)
   105a8:	00000513          	li	a0,0
   105ac:	00008067          	ret
   105b0:	0000                	unimp
	...

00000000000105b4 <__call_exitprocs>:
   105b4:	fb010113          	addi	sp,sp,-80
   105b8:	000117b7          	lui	a5,0x11
   105bc:	03313423          	sd	s3,40(sp)
   105c0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105c4:	03413023          	sd	s4,32(sp)
   105c8:	01513c23          	sd	s5,24(sp)
   105cc:	01613823          	sd	s6,16(sp)
   105d0:	04113423          	sd	ra,72(sp)
   105d4:	04813023          	sd	s0,64(sp)
   105d8:	02913c23          	sd	s1,56(sp)
   105dc:	03213823          	sd	s2,48(sp)
   105e0:	01713423          	sd	s7,8(sp)
   105e4:	00050a93          	mv	s5,a0
   105e8:	00058a13          	mv	s4,a1
   105ec:	00100b13          	li	s6,1
   105f0:	1f89b403          	ld	s0,504(s3)
   105f4:	00040c63          	beqz	s0,1060c <__call_exitprocs+0x58>
   105f8:	00842483          	lw	s1,8(s0)
   105fc:	fff4849b          	addiw	s1,s1,-1
   10600:	00349913          	slli	s2,s1,0x3
   10604:	01240933          	add	s2,s0,s2
   10608:	0204d863          	bgez	s1,10638 <__call_exitprocs+0x84>
   1060c:	04813083          	ld	ra,72(sp)
   10610:	04013403          	ld	s0,64(sp)
   10614:	03813483          	ld	s1,56(sp)
   10618:	03013903          	ld	s2,48(sp)
   1061c:	02813983          	ld	s3,40(sp)
   10620:	02013a03          	ld	s4,32(sp)
   10624:	01813a83          	ld	s5,24(sp)
   10628:	01013b03          	ld	s6,16(sp)
   1062c:	00813b83          	ld	s7,8(sp)
   10630:	05010113          	addi	sp,sp,80
   10634:	00008067          	ret
   10638:	000a0c63          	beqz	s4,10650 <__call_exitprocs+0x9c>
   1063c:	21093783          	ld	a5,528(s2)
   10640:	01478863          	beq	a5,s4,10650 <__call_exitprocs+0x9c>
   10644:	fff4849b          	addiw	s1,s1,-1
   10648:	ff890913          	addi	s2,s2,-8
   1064c:	fbdff06f          	j	10608 <__call_exitprocs+0x54>
   10650:	00842783          	lw	a5,8(s0)
   10654:	01093683          	ld	a3,16(s2)
   10658:	fff7879b          	addiw	a5,a5,-1
   1065c:	02979e63          	bne	a5,s1,10698 <__call_exitprocs+0xe4>
   10660:	00942423          	sw	s1,8(s0)
   10664:	fe0680e3          	beqz	a3,10644 <__call_exitprocs+0x90>
   10668:	31042703          	lw	a4,784(s0)
   1066c:	009b163b          	sllw	a2,s6,s1
   10670:	00842b83          	lw	s7,8(s0)
   10674:	00c77733          	and	a4,a4,a2
   10678:	0007071b          	sext.w	a4,a4
   1067c:	02071263          	bnez	a4,106a0 <__call_exitprocs+0xec>
   10680:	000680e7          	jalr	a3
   10684:	00842703          	lw	a4,8(s0)
   10688:	1f89b783          	ld	a5,504(s3)
   1068c:	f77712e3          	bne	a4,s7,105f0 <__call_exitprocs+0x3c>
   10690:	faf40ae3          	beq	s0,a5,10644 <__call_exitprocs+0x90>
   10694:	f5dff06f          	j	105f0 <__call_exitprocs+0x3c>
   10698:	00093823          	sd	zero,16(s2)
   1069c:	fc9ff06f          	j	10664 <__call_exitprocs+0xb0>
   106a0:	31442783          	lw	a5,788(s0)
   106a4:	11093583          	ld	a1,272(s2)
   106a8:	00c7f7b3          	and	a5,a5,a2
   106ac:	0007879b          	sext.w	a5,a5
   106b0:	00079863          	bnez	a5,106c0 <__call_exitprocs+0x10c>
   106b4:	000a8513          	mv	a0,s5
   106b8:	000680e7          	jalr	a3
   106bc:	fc9ff06f          	j	10684 <__call_exitprocs+0xd0>
   106c0:	00058513          	mv	a0,a1
   106c4:	000680e7          	jalr	a3
   106c8:	fbdff06f          	j	10684 <__call_exitprocs+0xd0>
   106cc:	0000                	unimp
	...

00000000000106d0 <conv_stat>:
   106d0:	0005b783          	ld	a5,0(a1)
   106d4:	00f51023          	sh	a5,0(a0)
   106d8:	0085b783          	ld	a5,8(a1)
   106dc:	00f51123          	sh	a5,2(a0)
   106e0:	0105a783          	lw	a5,16(a1)
   106e4:	00f52223          	sw	a5,4(a0)
   106e8:	0145a783          	lw	a5,20(a1)
   106ec:	00f51423          	sh	a5,8(a0)
   106f0:	0185a783          	lw	a5,24(a1)
   106f4:	00f51523          	sh	a5,10(a0)
   106f8:	01c5a783          	lw	a5,28(a1)
   106fc:	00f51623          	sh	a5,12(a0)
   10700:	0205b783          	ld	a5,32(a1)
   10704:	00f51723          	sh	a5,14(a0)
   10708:	0305b783          	ld	a5,48(a1)
   1070c:	00f53823          	sd	a5,16(a0)
   10710:	0405b783          	ld	a5,64(a1)
   10714:	04f53823          	sd	a5,80(a0)
   10718:	0385a783          	lw	a5,56(a1)
   1071c:	04f53423          	sd	a5,72(a0)
   10720:	0485b783          	ld	a5,72(a1)
   10724:	00f53c23          	sd	a5,24(a0)
   10728:	0585b783          	ld	a5,88(a1)
   1072c:	02f53423          	sd	a5,40(a0)
   10730:	0685b783          	ld	a5,104(a1)
   10734:	02f53c23          	sd	a5,56(a0)
   10738:	00008067          	ret

000000000001073c <__syscall_error>:
   1073c:	ff010113          	addi	sp,sp,-16
   10740:	00813023          	sd	s0,0(sp)
   10744:	00113423          	sd	ra,8(sp)
   10748:	00050413          	mv	s0,a0
   1074c:	00000097          	auipc	ra,0x0
   10750:	5f8080e7          	jalr	1528(ra) # 10d44 <__errno>
   10754:	408007bb          	negw	a5,s0
   10758:	00813083          	ld	ra,8(sp)
   1075c:	00013403          	ld	s0,0(sp)
   10760:	00f52023          	sw	a5,0(a0)
   10764:	fff00513          	li	a0,-1
   10768:	01010113          	addi	sp,sp,16
   1076c:	00008067          	ret

0000000000010770 <__internal_syscall>:
   10770:	00050893          	mv	a7,a0
   10774:	00058513          	mv	a0,a1
   10778:	00060593          	mv	a1,a2
   1077c:	00068613          	mv	a2,a3
   10780:	00070693          	mv	a3,a4
   10784:	00000073          	ecall
   10788:	00055663          	bgez	a0,10794 <__internal_syscall+0x24>
   1078c:	00000317          	auipc	t1,0x0
   10790:	fb030067          	jr	-80(t1) # 1073c <__syscall_error>
   10794:	00008067          	ret

0000000000010798 <open>:
   10798:	ff010113          	addi	sp,sp,-16
   1079c:	00060693          	mv	a3,a2
   107a0:	00000713          	li	a4,0
   107a4:	00058613          	mv	a2,a1
   107a8:	00050593          	mv	a1,a0
   107ac:	40000513          	li	a0,1024
   107b0:	00113423          	sd	ra,8(sp)
   107b4:	00000097          	auipc	ra,0x0
   107b8:	fbc080e7          	jalr	-68(ra) # 10770 <__internal_syscall>
   107bc:	00813083          	ld	ra,8(sp)
   107c0:	0005051b          	sext.w	a0,a0
   107c4:	01010113          	addi	sp,sp,16
   107c8:	00008067          	ret

00000000000107cc <openat>:
   107cc:	ff010113          	addi	sp,sp,-16
   107d0:	00068713          	mv	a4,a3
   107d4:	00060693          	mv	a3,a2
   107d8:	00058613          	mv	a2,a1
   107dc:	00050593          	mv	a1,a0
   107e0:	03800513          	li	a0,56
   107e4:	00113423          	sd	ra,8(sp)
   107e8:	f89ff0ef          	jal	ra,10770 <__internal_syscall>
   107ec:	00813083          	ld	ra,8(sp)
   107f0:	0005051b          	sext.w	a0,a0
   107f4:	01010113          	addi	sp,sp,16
   107f8:	00008067          	ret

00000000000107fc <lseek>:
   107fc:	00060693          	mv	a3,a2
   10800:	00000713          	li	a4,0
   10804:	00058613          	mv	a2,a1
   10808:	00050593          	mv	a1,a0
   1080c:	03e00513          	li	a0,62
   10810:	00000317          	auipc	t1,0x0
   10814:	f6030067          	jr	-160(t1) # 10770 <__internal_syscall>

0000000000010818 <read>:
   10818:	00060693          	mv	a3,a2
   1081c:	00000713          	li	a4,0
   10820:	00058613          	mv	a2,a1
   10824:	00050593          	mv	a1,a0
   10828:	03f00513          	li	a0,63
   1082c:	f45ff06f          	j	10770 <__internal_syscall>

0000000000010830 <write>:
   10830:	00060693          	mv	a3,a2
   10834:	00000713          	li	a4,0
   10838:	00058613          	mv	a2,a1
   1083c:	00050593          	mv	a1,a0
   10840:	04000513          	li	a0,64
   10844:	00000317          	auipc	t1,0x0
   10848:	f2c30067          	jr	-212(t1) # 10770 <__internal_syscall>

000000000001084c <fstat>:
   1084c:	f6010113          	addi	sp,sp,-160
   10850:	08913423          	sd	s1,136(sp)
   10854:	00010613          	mv	a2,sp
   10858:	00058493          	mv	s1,a1
   1085c:	00000713          	li	a4,0
   10860:	00050593          	mv	a1,a0
   10864:	00000693          	li	a3,0
   10868:	05000513          	li	a0,80
   1086c:	08113c23          	sd	ra,152(sp)
   10870:	08813823          	sd	s0,144(sp)
   10874:	efdff0ef          	jal	ra,10770 <__internal_syscall>
   10878:	00050413          	mv	s0,a0
   1087c:	00010593          	mv	a1,sp
   10880:	00048513          	mv	a0,s1
   10884:	e4dff0ef          	jal	ra,106d0 <conv_stat>
   10888:	0004051b          	sext.w	a0,s0
   1088c:	09813083          	ld	ra,152(sp)
   10890:	09013403          	ld	s0,144(sp)
   10894:	08813483          	ld	s1,136(sp)
   10898:	0a010113          	addi	sp,sp,160
   1089c:	00008067          	ret

00000000000108a0 <stat>:
   108a0:	f6010113          	addi	sp,sp,-160
   108a4:	08913423          	sd	s1,136(sp)
   108a8:	00010613          	mv	a2,sp
   108ac:	00058493          	mv	s1,a1
   108b0:	00000713          	li	a4,0
   108b4:	00050593          	mv	a1,a0
   108b8:	00000693          	li	a3,0
   108bc:	40e00513          	li	a0,1038
   108c0:	08113c23          	sd	ra,152(sp)
   108c4:	08813823          	sd	s0,144(sp)
   108c8:	00000097          	auipc	ra,0x0
   108cc:	ea8080e7          	jalr	-344(ra) # 10770 <__internal_syscall>
   108d0:	00050413          	mv	s0,a0
   108d4:	00010593          	mv	a1,sp
   108d8:	00048513          	mv	a0,s1
   108dc:	00000097          	auipc	ra,0x0
   108e0:	df4080e7          	jalr	-524(ra) # 106d0 <conv_stat>
   108e4:	0004051b          	sext.w	a0,s0
   108e8:	09813083          	ld	ra,152(sp)
   108ec:	09013403          	ld	s0,144(sp)
   108f0:	08813483          	ld	s1,136(sp)
   108f4:	0a010113          	addi	sp,sp,160
   108f8:	00008067          	ret

00000000000108fc <lstat>:
   108fc:	f6010113          	addi	sp,sp,-160
   10900:	08913423          	sd	s1,136(sp)
   10904:	00010613          	mv	a2,sp
   10908:	00058493          	mv	s1,a1
   1090c:	00000713          	li	a4,0
   10910:	00050593          	mv	a1,a0
   10914:	00000693          	li	a3,0
   10918:	40f00513          	li	a0,1039
   1091c:	08113c23          	sd	ra,152(sp)
   10920:	08813823          	sd	s0,144(sp)
   10924:	e4dff0ef          	jal	ra,10770 <__internal_syscall>
   10928:	00050413          	mv	s0,a0
   1092c:	00010593          	mv	a1,sp
   10930:	00048513          	mv	a0,s1
   10934:	d9dff0ef          	jal	ra,106d0 <conv_stat>
   10938:	0004051b          	sext.w	a0,s0
   1093c:	09813083          	ld	ra,152(sp)
   10940:	09013403          	ld	s0,144(sp)
   10944:	08813483          	ld	s1,136(sp)
   10948:	0a010113          	addi	sp,sp,160
   1094c:	00008067          	ret

0000000000010950 <fstatat>:
   10950:	f6010113          	addi	sp,sp,-160
   10954:	08913423          	sd	s1,136(sp)
   10958:	00068713          	mv	a4,a3
   1095c:	00060493          	mv	s1,a2
   10960:	00010693          	mv	a3,sp
   10964:	00058613          	mv	a2,a1
   10968:	00050593          	mv	a1,a0
   1096c:	04f00513          	li	a0,79
   10970:	08113c23          	sd	ra,152(sp)
   10974:	08813823          	sd	s0,144(sp)
   10978:	00000097          	auipc	ra,0x0
   1097c:	df8080e7          	jalr	-520(ra) # 10770 <__internal_syscall>
   10980:	00050413          	mv	s0,a0
   10984:	00010593          	mv	a1,sp
   10988:	00048513          	mv	a0,s1
   1098c:	00000097          	auipc	ra,0x0
   10990:	d44080e7          	jalr	-700(ra) # 106d0 <conv_stat>
   10994:	0004051b          	sext.w	a0,s0
   10998:	09813083          	ld	ra,152(sp)
   1099c:	09013403          	ld	s0,144(sp)
   109a0:	08813483          	ld	s1,136(sp)
   109a4:	0a010113          	addi	sp,sp,160
   109a8:	00008067          	ret

00000000000109ac <access>:
   109ac:	ff010113          	addi	sp,sp,-16
   109b0:	00058613          	mv	a2,a1
   109b4:	00000713          	li	a4,0
   109b8:	00050593          	mv	a1,a0
   109bc:	00000693          	li	a3,0
   109c0:	40900513          	li	a0,1033
   109c4:	00113423          	sd	ra,8(sp)
   109c8:	da9ff0ef          	jal	ra,10770 <__internal_syscall>
   109cc:	00813083          	ld	ra,8(sp)
   109d0:	0005051b          	sext.w	a0,a0
   109d4:	01010113          	addi	sp,sp,16
   109d8:	00008067          	ret

00000000000109dc <faccessat>:
   109dc:	ff010113          	addi	sp,sp,-16
   109e0:	00068713          	mv	a4,a3
   109e4:	00060693          	mv	a3,a2
   109e8:	00058613          	mv	a2,a1
   109ec:	00050593          	mv	a1,a0
   109f0:	03000513          	li	a0,48
   109f4:	00113423          	sd	ra,8(sp)
   109f8:	00000097          	auipc	ra,0x0
   109fc:	d78080e7          	jalr	-648(ra) # 10770 <__internal_syscall>
   10a00:	00813083          	ld	ra,8(sp)
   10a04:	0005051b          	sext.w	a0,a0
   10a08:	01010113          	addi	sp,sp,16
   10a0c:	00008067          	ret

0000000000010a10 <close>:
   10a10:	ff010113          	addi	sp,sp,-16
   10a14:	00050593          	mv	a1,a0
   10a18:	00000713          	li	a4,0
   10a1c:	00000693          	li	a3,0
   10a20:	00000613          	li	a2,0
   10a24:	03900513          	li	a0,57
   10a28:	00113423          	sd	ra,8(sp)
   10a2c:	d45ff0ef          	jal	ra,10770 <__internal_syscall>
   10a30:	00813083          	ld	ra,8(sp)
   10a34:	0005051b          	sext.w	a0,a0
   10a38:	01010113          	addi	sp,sp,16
   10a3c:	00008067          	ret

0000000000010a40 <link>:
   10a40:	ff010113          	addi	sp,sp,-16
   10a44:	00058613          	mv	a2,a1
   10a48:	00000713          	li	a4,0
   10a4c:	00050593          	mv	a1,a0
   10a50:	00000693          	li	a3,0
   10a54:	40100513          	li	a0,1025
   10a58:	00113423          	sd	ra,8(sp)
   10a5c:	00000097          	auipc	ra,0x0
   10a60:	d14080e7          	jalr	-748(ra) # 10770 <__internal_syscall>
   10a64:	00813083          	ld	ra,8(sp)
   10a68:	0005051b          	sext.w	a0,a0
   10a6c:	01010113          	addi	sp,sp,16
   10a70:	00008067          	ret

0000000000010a74 <unlink>:
   10a74:	ff010113          	addi	sp,sp,-16
   10a78:	00050593          	mv	a1,a0
   10a7c:	00000713          	li	a4,0
   10a80:	00000693          	li	a3,0
   10a84:	00000613          	li	a2,0
   10a88:	40200513          	li	a0,1026
   10a8c:	00113423          	sd	ra,8(sp)
   10a90:	ce1ff0ef          	jal	ra,10770 <__internal_syscall>
   10a94:	00813083          	ld	ra,8(sp)
   10a98:	0005051b          	sext.w	a0,a0
   10a9c:	01010113          	addi	sp,sp,16
   10aa0:	00008067          	ret

0000000000010aa4 <execve>:
   10aa4:	ff010113          	addi	sp,sp,-16
   10aa8:	00113423          	sd	ra,8(sp)
   10aac:	00000097          	auipc	ra,0x0
   10ab0:	298080e7          	jalr	664(ra) # 10d44 <__errno>
   10ab4:	00813083          	ld	ra,8(sp)
   10ab8:	00c00793          	li	a5,12
   10abc:	00f52023          	sw	a5,0(a0)
   10ac0:	fff00513          	li	a0,-1
   10ac4:	01010113          	addi	sp,sp,16
   10ac8:	00008067          	ret

0000000000010acc <fork>:
   10acc:	ff010113          	addi	sp,sp,-16
   10ad0:	00113423          	sd	ra,8(sp)
   10ad4:	270000ef          	jal	ra,10d44 <__errno>
   10ad8:	00813083          	ld	ra,8(sp)
   10adc:	00b00793          	li	a5,11
   10ae0:	00f52023          	sw	a5,0(a0)
   10ae4:	fff00513          	li	a0,-1
   10ae8:	01010113          	addi	sp,sp,16
   10aec:	00008067          	ret

0000000000010af0 <getpid>:
   10af0:	00100513          	li	a0,1
   10af4:	00008067          	ret

0000000000010af8 <kill>:
   10af8:	ff010113          	addi	sp,sp,-16
   10afc:	00113423          	sd	ra,8(sp)
   10b00:	244000ef          	jal	ra,10d44 <__errno>
   10b04:	00813083          	ld	ra,8(sp)
   10b08:	01600793          	li	a5,22
   10b0c:	00f52023          	sw	a5,0(a0)
   10b10:	fff00513          	li	a0,-1
   10b14:	01010113          	addi	sp,sp,16
   10b18:	00008067          	ret

0000000000010b1c <wait>:
   10b1c:	ff010113          	addi	sp,sp,-16
   10b20:	00113423          	sd	ra,8(sp)
   10b24:	00000097          	auipc	ra,0x0
   10b28:	220080e7          	jalr	544(ra) # 10d44 <__errno>
   10b2c:	00813083          	ld	ra,8(sp)
   10b30:	00a00793          	li	a5,10
   10b34:	00f52023          	sw	a5,0(a0)
   10b38:	fff00513          	li	a0,-1
   10b3c:	01010113          	addi	sp,sp,16
   10b40:	00008067          	ret

0000000000010b44 <isatty>:
   10b44:	f8010113          	addi	sp,sp,-128
   10b48:	00810593          	addi	a1,sp,8
   10b4c:	06113c23          	sd	ra,120(sp)
   10b50:	cfdff0ef          	jal	ra,1084c <fstat>
   10b54:	fff00793          	li	a5,-1
   10b58:	00f50863          	beq	a0,a5,10b68 <isatty+0x24>
   10b5c:	00c12503          	lw	a0,12(sp)
   10b60:	40d5551b          	sraiw	a0,a0,0xd
   10b64:	00157513          	andi	a0,a0,1
   10b68:	07813083          	ld	ra,120(sp)
   10b6c:	08010113          	addi	sp,sp,128
   10b70:	00008067          	ret

0000000000010b74 <gettimeofday>:
   10b74:	ff010113          	addi	sp,sp,-16
   10b78:	00050593          	mv	a1,a0
   10b7c:	00000713          	li	a4,0
   10b80:	00000693          	li	a3,0
   10b84:	00000613          	li	a2,0
   10b88:	0a900513          	li	a0,169
   10b8c:	00113423          	sd	ra,8(sp)
   10b90:	00000097          	auipc	ra,0x0
   10b94:	be0080e7          	jalr	-1056(ra) # 10770 <__internal_syscall>
   10b98:	00813083          	ld	ra,8(sp)
   10b9c:	0005051b          	sext.w	a0,a0
   10ba0:	01010113          	addi	sp,sp,16
   10ba4:	00008067          	ret

0000000000010ba8 <times>:
   10ba8:	fd010113          	addi	sp,sp,-48
   10bac:	02813023          	sd	s0,32(sp)
   10bb0:	00050413          	mv	s0,a0
   10bb4:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10bb8:	00913c23          	sd	s1,24(sp)
   10bbc:	02113423          	sd	ra,40(sp)
   10bc0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10bc4:	00079a63          	bnez	a5,10bd8 <times+0x30>
   10bc8:	00000593          	li	a1,0
   10bcc:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10bd0:	00000097          	auipc	ra,0x0
   10bd4:	fa4080e7          	jalr	-92(ra) # 10b74 <gettimeofday>
   10bd8:	00000593          	li	a1,0
   10bdc:	00010513          	mv	a0,sp
   10be0:	00000097          	auipc	ra,0x0
   10be4:	f94080e7          	jalr	-108(ra) # 10b74 <gettimeofday>
   10be8:	0004b783          	ld	a5,0(s1)
   10bec:	00013503          	ld	a0,0(sp)
   10bf0:	000f45b7          	lui	a1,0xf4
   10bf4:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10bf8:	40f50533          	sub	a0,a0,a5
   10bfc:	154000ef          	jal	ra,10d50 <__muldi3>
   10c00:	0084b703          	ld	a4,8(s1)
   10c04:	00813783          	ld	a5,8(sp)
   10c08:	00043823          	sd	zero,16(s0)
   10c0c:	00043c23          	sd	zero,24(s0)
   10c10:	40e787b3          	sub	a5,a5,a4
   10c14:	00f50533          	add	a0,a0,a5
   10c18:	00a43023          	sd	a0,0(s0)
   10c1c:	00043423          	sd	zero,8(s0)
   10c20:	02813083          	ld	ra,40(sp)
   10c24:	02013403          	ld	s0,32(sp)
   10c28:	01813483          	ld	s1,24(sp)
   10c2c:	fff00513          	li	a0,-1
   10c30:	03010113          	addi	sp,sp,48
   10c34:	00008067          	ret

0000000000010c38 <ftime>:
   10c38:	00051423          	sh	zero,8(a0)
   10c3c:	00053023          	sd	zero,0(a0)
   10c40:	00000513          	li	a0,0
   10c44:	00008067          	ret

0000000000010c48 <utime>:
   10c48:	fff00513          	li	a0,-1
   10c4c:	00008067          	ret

0000000000010c50 <chown>:
   10c50:	fff00513          	li	a0,-1
   10c54:	00008067          	ret

0000000000010c58 <chmod>:
   10c58:	fff00513          	li	a0,-1
   10c5c:	00008067          	ret

0000000000010c60 <chdir>:
   10c60:	fff00513          	li	a0,-1
   10c64:	00008067          	ret

0000000000010c68 <getcwd>:
   10c68:	00000513          	li	a0,0
   10c6c:	00008067          	ret

0000000000010c70 <sysconf>:
   10c70:	00200793          	li	a5,2
   10c74:	00f50663          	beq	a0,a5,10c80 <sysconf+0x10>
   10c78:	fff00513          	li	a0,-1
   10c7c:	00008067          	ret
   10c80:	000f4537          	lui	a0,0xf4
   10c84:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10c88:	00008067          	ret

0000000000010c8c <sbrk>:
   10c8c:	fe010113          	addi	sp,sp,-32
   10c90:	00813823          	sd	s0,16(sp)
   10c94:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10c98:	00913423          	sd	s1,8(sp)
   10c9c:	00113c23          	sd	ra,24(sp)
   10ca0:	00050493          	mv	s1,a0
   10ca4:	04079063          	bnez	a5,10ce4 <sbrk+0x58>
   10ca8:	00000713          	li	a4,0
   10cac:	00000693          	li	a3,0
   10cb0:	00000613          	li	a2,0
   10cb4:	00000593          	li	a1,0
   10cb8:	0d600513          	li	a0,214
   10cbc:	ab5ff0ef          	jal	ra,10770 <__internal_syscall>
   10cc0:	fff00793          	li	a5,-1
   10cc4:	00f51e63          	bne	a0,a5,10ce0 <sbrk+0x54>
   10cc8:	fff00513          	li	a0,-1
   10ccc:	01813083          	ld	ra,24(sp)
   10cd0:	01013403          	ld	s0,16(sp)
   10cd4:	00813483          	ld	s1,8(sp)
   10cd8:	02010113          	addi	sp,sp,32
   10cdc:	00008067          	ret
   10ce0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ce4:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ce8:	00000713          	li	a4,0
   10cec:	00000693          	li	a3,0
   10cf0:	00b485b3          	add	a1,s1,a1
   10cf4:	00000613          	li	a2,0
   10cf8:	0d600513          	li	a0,214
   10cfc:	a75ff0ef          	jal	ra,10770 <__internal_syscall>
   10d00:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10d04:	00f484b3          	add	s1,s1,a5
   10d08:	fc9510e3          	bne	a0,s1,10cc8 <sbrk+0x3c>
   10d0c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10d10:	00078513          	mv	a0,a5
   10d14:	fb9ff06f          	j	10ccc <sbrk+0x40>

0000000000010d18 <_exit>:
   10d18:	ff010113          	addi	sp,sp,-16
   10d1c:	00050593          	mv	a1,a0
   10d20:	00000713          	li	a4,0
   10d24:	00000693          	li	a3,0
   10d28:	00000613          	li	a2,0
   10d2c:	05d00513          	li	a0,93
   10d30:	00113423          	sd	ra,8(sp)
   10d34:	00000097          	auipc	ra,0x0
   10d38:	a3c080e7          	jalr	-1476(ra) # 10770 <__internal_syscall>
   10d3c:	0000006f          	j	10d3c <_exit+0x24>
   10d40:	0000                	unimp
	...

0000000000010d44 <__errno>:
   10d44:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10d48:	00008067          	ret
   10d4c:	0000                	unimp
	...

0000000000010d50 <__muldi3>:
   10d50:	00050613          	mv	a2,a0
   10d54:	00000513          	li	a0,0
   10d58:	0015f693          	andi	a3,a1,1
   10d5c:	00068463          	beqz	a3,10d64 <__muldi3+0x14>
   10d60:	00c50533          	add	a0,a0,a2
   10d64:	0015d593          	srli	a1,a1,0x1
   10d68:	00161613          	slli	a2,a2,0x1
   10d6c:	fe0596e3          	bnez	a1,10d58 <__muldi3+0x8>
   10d70:	00008067          	ret
   10d74:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010d78 <__EH_FRAME_BEGIN__>:
   10d78:	0000                	unimp
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
  10:	0d50                	addi	a2,sp,660
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
  10:	0d50                	addi	a2,sp,660
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0d74                	addi	a3,sp,668
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
  9c:	5002                	0x5002
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
