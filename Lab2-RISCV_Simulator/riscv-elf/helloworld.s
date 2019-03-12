
helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	368000ef          	jal	ra,10430 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	24450513          	addi	a0,a0,580 # 10310 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	1e8080e7          	jalr	488(ra) # 102bc <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2ac080e7          	jalr	684(ra) # 10388 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	1dc30067          	jr	476(t1) # 102d4 <exit>

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
   1019c:	d7050513          	addi	a0,a0,-656 # 10d70 <__EH_FRAME_BEGIN__>
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
   101e0:	d7050513          	addi	a0,a0,-656 # 10d70 <__EH_FRAME_BEGIN__>
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
   10210:	d6078513          	addi	a0,a5,-672 # 10d60 <__muldi3+0x2c>
   10214:	00000097          	auipc	ra,0x0
   10218:	050080e7          	jalr	80(ra) # 10264 <print_s>
   1021c:	00000793          	li	a5,0
   10220:	00078513          	mv	a0,a5
   10224:	00813083          	ld	ra,8(sp)
   10228:	00013403          	ld	s0,0(sp)
   1022c:	01010113          	addi	sp,sp,16
   10230:	00008067          	ret
   10234:	0000                	unimp
	...

0000000000010238 <print_d>:
   10238:	fe010113          	addi	sp,sp,-32
   1023c:	00813c23          	sd	s0,24(sp)
   10240:	02010413          	addi	s0,sp,32
   10244:	00050793          	mv	a5,a0
   10248:	fef42623          	sw	a5,-20(s0)
   1024c:	00200893          	li	a7,2
   10250:	00000073          	ecall
   10254:	00000013          	nop
   10258:	01813403          	ld	s0,24(sp)
   1025c:	02010113          	addi	sp,sp,32
   10260:	00008067          	ret

0000000000010264 <print_s>:
   10264:	fe010113          	addi	sp,sp,-32
   10268:	00813c23          	sd	s0,24(sp)
   1026c:	02010413          	addi	s0,sp,32
   10270:	fea43423          	sd	a0,-24(s0)
   10274:	00000893          	li	a7,0
   10278:	00000073          	ecall
   1027c:	00000013          	nop
   10280:	01813403          	ld	s0,24(sp)
   10284:	02010113          	addi	sp,sp,32
   10288:	00008067          	ret

000000000001028c <print_c>:
   1028c:	fe010113          	addi	sp,sp,-32
   10290:	00813c23          	sd	s0,24(sp)
   10294:	02010413          	addi	s0,sp,32
   10298:	00050793          	mv	a5,a0
   1029c:	fef407a3          	sb	a5,-17(s0)
   102a0:	00100893          	li	a7,1
   102a4:	00000073          	ecall
   102a8:	00000013          	nop
   102ac:	01813403          	ld	s0,24(sp)
   102b0:	02010113          	addi	sp,sp,32
   102b4:	00008067          	ret
   102b8:	0000                	unimp
	...

00000000000102bc <atexit>:
   102bc:	00050593          	mv	a1,a0
   102c0:	00000693          	li	a3,0
   102c4:	00000613          	li	a2,0
   102c8:	00000513          	li	a0,0
   102cc:	2400006f          	j	1050c <__register_exitproc>
   102d0:	0000                	unimp
	...

00000000000102d4 <exit>:
   102d4:	ff010113          	addi	sp,sp,-16
   102d8:	00000593          	li	a1,0
   102dc:	00813023          	sd	s0,0(sp)
   102e0:	00113423          	sd	ra,8(sp)
   102e4:	00050413          	mv	s0,a0
   102e8:	2b0000ef          	jal	ra,10598 <__call_exitprocs>
   102ec:	000117b7          	lui	a5,0x11
   102f0:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   102f4:	05853783          	ld	a5,88(a0)
   102f8:	00078463          	beqz	a5,10300 <exit+0x2c>
   102fc:	000780e7          	jalr	a5
   10300:	00040513          	mv	a0,s0
   10304:	00001097          	auipc	ra,0x1
   10308:	9f8080e7          	jalr	-1544(ra) # 10cfc <_exit>
   1030c:	0000                	unimp
	...

0000000000010310 <__libc_fini_array>:
   10310:	fe010113          	addi	sp,sp,-32
   10314:	000117b7          	lui	a5,0x11
   10318:	00011737          	lui	a4,0x11
   1031c:	00813823          	sd	s0,16(sp)
   10320:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10324:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10328:	40e40433          	sub	s0,s0,a4
   1032c:	00913423          	sd	s1,8(sp)
   10330:	01213023          	sd	s2,0(sp)
   10334:	00113c23          	sd	ra,24(sp)
   10338:	40345413          	srai	s0,s0,0x3
   1033c:	00000493          	li	s1,0
   10340:	01078913          	addi	s2,a5,16
   10344:	02941063          	bne	s0,s1,10364 <__libc_fini_array+0x54>
   10348:	01013403          	ld	s0,16(sp)
   1034c:	01813083          	ld	ra,24(sp)
   10350:	00813483          	ld	s1,8(sp)
   10354:	00013903          	ld	s2,0(sp)
   10358:	02010113          	addi	sp,sp,32
   1035c:	00000317          	auipc	t1,0x0
   10360:	da430067          	jr	-604(t1) # 10100 <_fini>
   10364:	ff800593          	li	a1,-8
   10368:	00048513          	mv	a0,s1
   1036c:	1c9000ef          	jal	ra,10d34 <__muldi3>
   10370:	00a90533          	add	a0,s2,a0
   10374:	ff853783          	ld	a5,-8(a0)
   10378:	00148493          	addi	s1,s1,1
   1037c:	000780e7          	jalr	a5
   10380:	fc5ff06f          	j	10344 <__libc_fini_array+0x34>
   10384:	0000                	unimp
	...

0000000000010388 <__libc_init_array>:
   10388:	fe010113          	addi	sp,sp,-32
   1038c:	00813823          	sd	s0,16(sp)
   10390:	00913423          	sd	s1,8(sp)
   10394:	00011437          	lui	s0,0x11
   10398:	000114b7          	lui	s1,0x11
   1039c:	00048793          	mv	a5,s1
   103a0:	00040413          	mv	s0,s0
   103a4:	40f40433          	sub	s0,s0,a5
   103a8:	01213023          	sd	s2,0(sp)
   103ac:	00113c23          	sd	ra,24(sp)
   103b0:	40345413          	srai	s0,s0,0x3
   103b4:	00048493          	mv	s1,s1
   103b8:	00000913          	li	s2,0
   103bc:	04891463          	bne	s2,s0,10404 <__libc_init_array+0x7c>
   103c0:	000114b7          	lui	s1,0x11
   103c4:	00000097          	auipc	ra,0x0
   103c8:	d3c080e7          	jalr	-708(ra) # 10100 <_fini>
   103cc:	00011437          	lui	s0,0x11
   103d0:	00048793          	mv	a5,s1
   103d4:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   103d8:	40f40433          	sub	s0,s0,a5
   103dc:	40345413          	srai	s0,s0,0x3
   103e0:	00048493          	mv	s1,s1
   103e4:	00000913          	li	s2,0
   103e8:	02891863          	bne	s2,s0,10418 <__libc_init_array+0x90>
   103ec:	01813083          	ld	ra,24(sp)
   103f0:	01013403          	ld	s0,16(sp)
   103f4:	00813483          	ld	s1,8(sp)
   103f8:	00013903          	ld	s2,0(sp)
   103fc:	02010113          	addi	sp,sp,32
   10400:	00008067          	ret
   10404:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10408:	00190913          	addi	s2,s2,1
   1040c:	00848493          	addi	s1,s1,8
   10410:	000780e7          	jalr	a5
   10414:	fa9ff06f          	j	103bc <__libc_init_array+0x34>
   10418:	0004b783          	ld	a5,0(s1)
   1041c:	00190913          	addi	s2,s2,1
   10420:	00848493          	addi	s1,s1,8
   10424:	000780e7          	jalr	a5
   10428:	fc1ff06f          	j	103e8 <__libc_init_array+0x60>
   1042c:	0000                	unimp
	...

0000000000010430 <memset>:
   10430:	00f00813          	li	a6,15
   10434:	00050713          	mv	a4,a0
   10438:	02c87a63          	bleu	a2,a6,1046c <memset+0x3c>
   1043c:	00f77793          	andi	a5,a4,15
   10440:	0a079063          	bnez	a5,104e0 <memset+0xb0>
   10444:	06059e63          	bnez	a1,104c0 <memset+0x90>
   10448:	ff067693          	andi	a3,a2,-16
   1044c:	00f67613          	andi	a2,a2,15
   10450:	00e686b3          	add	a3,a3,a4
   10454:	00b73023          	sd	a1,0(a4)
   10458:	00b73423          	sd	a1,8(a4)
   1045c:	01070713          	addi	a4,a4,16
   10460:	fed76ae3          	bltu	a4,a3,10454 <memset+0x24>
   10464:	00061463          	bnez	a2,1046c <memset+0x3c>
   10468:	00008067          	ret
   1046c:	40c806b3          	sub	a3,a6,a2
   10470:	00269693          	slli	a3,a3,0x2
   10474:	00000297          	auipc	t0,0x0
   10478:	005686b3          	add	a3,a3,t0
   1047c:	00c68067          	jr	12(a3)
   10480:	00b70723          	sb	a1,14(a4)
   10484:	00b706a3          	sb	a1,13(a4)
   10488:	00b70623          	sb	a1,12(a4)
   1048c:	00b705a3          	sb	a1,11(a4)
   10490:	00b70523          	sb	a1,10(a4)
   10494:	00b704a3          	sb	a1,9(a4)
   10498:	00b70423          	sb	a1,8(a4)
   1049c:	00b703a3          	sb	a1,7(a4)
   104a0:	00b70323          	sb	a1,6(a4)
   104a4:	00b702a3          	sb	a1,5(a4)
   104a8:	00b70223          	sb	a1,4(a4)
   104ac:	00b701a3          	sb	a1,3(a4)
   104b0:	00b70123          	sb	a1,2(a4)
   104b4:	00b700a3          	sb	a1,1(a4)
   104b8:	00b70023          	sb	a1,0(a4)
   104bc:	00008067          	ret
   104c0:	0ff5f593          	andi	a1,a1,255
   104c4:	00859693          	slli	a3,a1,0x8
   104c8:	00d5e5b3          	or	a1,a1,a3
   104cc:	01059693          	slli	a3,a1,0x10
   104d0:	00d5e5b3          	or	a1,a1,a3
   104d4:	02059693          	slli	a3,a1,0x20
   104d8:	00d5e5b3          	or	a1,a1,a3
   104dc:	f6dff06f          	j	10448 <memset+0x18>
   104e0:	00279693          	slli	a3,a5,0x2
   104e4:	00000297          	auipc	t0,0x0
   104e8:	005686b3          	add	a3,a3,t0
   104ec:	00008293          	mv	t0,ra
   104f0:	f98680e7          	jalr	-104(a3)
   104f4:	00028093          	mv	ra,t0
   104f8:	ff078793          	addi	a5,a5,-16
   104fc:	40f70733          	sub	a4,a4,a5
   10500:	00f60633          	add	a2,a2,a5
   10504:	f6c874e3          	bleu	a2,a6,1046c <memset+0x3c>
   10508:	f3dff06f          	j	10444 <memset+0x14>

000000000001050c <__register_exitproc>:
   1050c:	000117b7          	lui	a5,0x11
   10510:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10514:	00050313          	mv	t1,a0
   10518:	1f873783          	ld	a5,504(a4)
   1051c:	00079663          	bnez	a5,10528 <__register_exitproc+0x1c>
   10520:	20070793          	addi	a5,a4,512
   10524:	1ef73c23          	sd	a5,504(a4)
   10528:	0087a703          	lw	a4,8(a5)
   1052c:	01f00813          	li	a6,31
   10530:	fff00513          	li	a0,-1
   10534:	04e84e63          	blt	a6,a4,10590 <__register_exitproc+0x84>
   10538:	02030e63          	beqz	t1,10574 <__register_exitproc+0x68>
   1053c:	00371813          	slli	a6,a4,0x3
   10540:	01078833          	add	a6,a5,a6
   10544:	10c83823          	sd	a2,272(a6)
   10548:	3107a883          	lw	a7,784(a5)
   1054c:	00100613          	li	a2,1
   10550:	00e6163b          	sllw	a2,a2,a4
   10554:	00c8e8b3          	or	a7,a7,a2
   10558:	3117a823          	sw	a7,784(a5)
   1055c:	20d83823          	sd	a3,528(a6)
   10560:	00200693          	li	a3,2
   10564:	00d31863          	bne	t1,a3,10574 <__register_exitproc+0x68>
   10568:	3147a683          	lw	a3,788(a5)
   1056c:	00c6e633          	or	a2,a3,a2
   10570:	30c7aa23          	sw	a2,788(a5)
   10574:	0017069b          	addiw	a3,a4,1
   10578:	00270713          	addi	a4,a4,2
   1057c:	00371713          	slli	a4,a4,0x3
   10580:	00d7a423          	sw	a3,8(a5)
   10584:	00e787b3          	add	a5,a5,a4
   10588:	00b7b023          	sd	a1,0(a5)
   1058c:	00000513          	li	a0,0
   10590:	00008067          	ret
   10594:	0000                	unimp
	...

0000000000010598 <__call_exitprocs>:
   10598:	fb010113          	addi	sp,sp,-80
   1059c:	000117b7          	lui	a5,0x11
   105a0:	03313423          	sd	s3,40(sp)
   105a4:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105a8:	03413023          	sd	s4,32(sp)
   105ac:	01513c23          	sd	s5,24(sp)
   105b0:	01613823          	sd	s6,16(sp)
   105b4:	04113423          	sd	ra,72(sp)
   105b8:	04813023          	sd	s0,64(sp)
   105bc:	02913c23          	sd	s1,56(sp)
   105c0:	03213823          	sd	s2,48(sp)
   105c4:	01713423          	sd	s7,8(sp)
   105c8:	00050a93          	mv	s5,a0
   105cc:	00058a13          	mv	s4,a1
   105d0:	00100b13          	li	s6,1
   105d4:	1f89b403          	ld	s0,504(s3)
   105d8:	00040c63          	beqz	s0,105f0 <__call_exitprocs+0x58>
   105dc:	00842483          	lw	s1,8(s0)
   105e0:	fff4849b          	addiw	s1,s1,-1
   105e4:	00349913          	slli	s2,s1,0x3
   105e8:	01240933          	add	s2,s0,s2
   105ec:	0204d863          	bgez	s1,1061c <__call_exitprocs+0x84>
   105f0:	04813083          	ld	ra,72(sp)
   105f4:	04013403          	ld	s0,64(sp)
   105f8:	03813483          	ld	s1,56(sp)
   105fc:	03013903          	ld	s2,48(sp)
   10600:	02813983          	ld	s3,40(sp)
   10604:	02013a03          	ld	s4,32(sp)
   10608:	01813a83          	ld	s5,24(sp)
   1060c:	01013b03          	ld	s6,16(sp)
   10610:	00813b83          	ld	s7,8(sp)
   10614:	05010113          	addi	sp,sp,80
   10618:	00008067          	ret
   1061c:	000a0c63          	beqz	s4,10634 <__call_exitprocs+0x9c>
   10620:	21093783          	ld	a5,528(s2)
   10624:	01478863          	beq	a5,s4,10634 <__call_exitprocs+0x9c>
   10628:	fff4849b          	addiw	s1,s1,-1
   1062c:	ff890913          	addi	s2,s2,-8
   10630:	fbdff06f          	j	105ec <__call_exitprocs+0x54>
   10634:	00842783          	lw	a5,8(s0)
   10638:	01093683          	ld	a3,16(s2)
   1063c:	fff7879b          	addiw	a5,a5,-1
   10640:	02979e63          	bne	a5,s1,1067c <__call_exitprocs+0xe4>
   10644:	00942423          	sw	s1,8(s0)
   10648:	fe0680e3          	beqz	a3,10628 <__call_exitprocs+0x90>
   1064c:	31042703          	lw	a4,784(s0)
   10650:	009b163b          	sllw	a2,s6,s1
   10654:	00842b83          	lw	s7,8(s0)
   10658:	00c77733          	and	a4,a4,a2
   1065c:	0007071b          	sext.w	a4,a4
   10660:	02071263          	bnez	a4,10684 <__call_exitprocs+0xec>
   10664:	000680e7          	jalr	a3
   10668:	00842703          	lw	a4,8(s0)
   1066c:	1f89b783          	ld	a5,504(s3)
   10670:	f77712e3          	bne	a4,s7,105d4 <__call_exitprocs+0x3c>
   10674:	faf40ae3          	beq	s0,a5,10628 <__call_exitprocs+0x90>
   10678:	f5dff06f          	j	105d4 <__call_exitprocs+0x3c>
   1067c:	00093823          	sd	zero,16(s2)
   10680:	fc9ff06f          	j	10648 <__call_exitprocs+0xb0>
   10684:	31442783          	lw	a5,788(s0)
   10688:	11093583          	ld	a1,272(s2)
   1068c:	00c7f7b3          	and	a5,a5,a2
   10690:	0007879b          	sext.w	a5,a5
   10694:	00079863          	bnez	a5,106a4 <__call_exitprocs+0x10c>
   10698:	000a8513          	mv	a0,s5
   1069c:	000680e7          	jalr	a3
   106a0:	fc9ff06f          	j	10668 <__call_exitprocs+0xd0>
   106a4:	00058513          	mv	a0,a1
   106a8:	000680e7          	jalr	a3
   106ac:	fbdff06f          	j	10668 <__call_exitprocs+0xd0>
   106b0:	0000                	unimp
	...

00000000000106b4 <conv_stat>:
   106b4:	0005b783          	ld	a5,0(a1)
   106b8:	00f51023          	sh	a5,0(a0)
   106bc:	0085b783          	ld	a5,8(a1)
   106c0:	00f51123          	sh	a5,2(a0)
   106c4:	0105a783          	lw	a5,16(a1)
   106c8:	00f52223          	sw	a5,4(a0)
   106cc:	0145a783          	lw	a5,20(a1)
   106d0:	00f51423          	sh	a5,8(a0)
   106d4:	0185a783          	lw	a5,24(a1)
   106d8:	00f51523          	sh	a5,10(a0)
   106dc:	01c5a783          	lw	a5,28(a1)
   106e0:	00f51623          	sh	a5,12(a0)
   106e4:	0205b783          	ld	a5,32(a1)
   106e8:	00f51723          	sh	a5,14(a0)
   106ec:	0305b783          	ld	a5,48(a1)
   106f0:	00f53823          	sd	a5,16(a0)
   106f4:	0405b783          	ld	a5,64(a1)
   106f8:	04f53823          	sd	a5,80(a0)
   106fc:	0385a783          	lw	a5,56(a1)
   10700:	04f53423          	sd	a5,72(a0)
   10704:	0485b783          	ld	a5,72(a1)
   10708:	00f53c23          	sd	a5,24(a0)
   1070c:	0585b783          	ld	a5,88(a1)
   10710:	02f53423          	sd	a5,40(a0)
   10714:	0685b783          	ld	a5,104(a1)
   10718:	02f53c23          	sd	a5,56(a0)
   1071c:	00008067          	ret

0000000000010720 <__syscall_error>:
   10720:	ff010113          	addi	sp,sp,-16
   10724:	00813023          	sd	s0,0(sp)
   10728:	00113423          	sd	ra,8(sp)
   1072c:	00050413          	mv	s0,a0
   10730:	00000097          	auipc	ra,0x0
   10734:	5f8080e7          	jalr	1528(ra) # 10d28 <__errno>
   10738:	408007bb          	negw	a5,s0
   1073c:	00813083          	ld	ra,8(sp)
   10740:	00013403          	ld	s0,0(sp)
   10744:	00f52023          	sw	a5,0(a0)
   10748:	fff00513          	li	a0,-1
   1074c:	01010113          	addi	sp,sp,16
   10750:	00008067          	ret

0000000000010754 <__internal_syscall>:
   10754:	00050893          	mv	a7,a0
   10758:	00058513          	mv	a0,a1
   1075c:	00060593          	mv	a1,a2
   10760:	00068613          	mv	a2,a3
   10764:	00070693          	mv	a3,a4
   10768:	00000073          	ecall
   1076c:	00055663          	bgez	a0,10778 <__internal_syscall+0x24>
   10770:	00000317          	auipc	t1,0x0
   10774:	fb030067          	jr	-80(t1) # 10720 <__syscall_error>
   10778:	00008067          	ret

000000000001077c <open>:
   1077c:	ff010113          	addi	sp,sp,-16
   10780:	00060693          	mv	a3,a2
   10784:	00000713          	li	a4,0
   10788:	00058613          	mv	a2,a1
   1078c:	00050593          	mv	a1,a0
   10790:	40000513          	li	a0,1024
   10794:	00113423          	sd	ra,8(sp)
   10798:	00000097          	auipc	ra,0x0
   1079c:	fbc080e7          	jalr	-68(ra) # 10754 <__internal_syscall>
   107a0:	00813083          	ld	ra,8(sp)
   107a4:	0005051b          	sext.w	a0,a0
   107a8:	01010113          	addi	sp,sp,16
   107ac:	00008067          	ret

00000000000107b0 <openat>:
   107b0:	ff010113          	addi	sp,sp,-16
   107b4:	00068713          	mv	a4,a3
   107b8:	00060693          	mv	a3,a2
   107bc:	00058613          	mv	a2,a1
   107c0:	00050593          	mv	a1,a0
   107c4:	03800513          	li	a0,56
   107c8:	00113423          	sd	ra,8(sp)
   107cc:	f89ff0ef          	jal	ra,10754 <__internal_syscall>
   107d0:	00813083          	ld	ra,8(sp)
   107d4:	0005051b          	sext.w	a0,a0
   107d8:	01010113          	addi	sp,sp,16
   107dc:	00008067          	ret

00000000000107e0 <lseek>:
   107e0:	00060693          	mv	a3,a2
   107e4:	00000713          	li	a4,0
   107e8:	00058613          	mv	a2,a1
   107ec:	00050593          	mv	a1,a0
   107f0:	03e00513          	li	a0,62
   107f4:	00000317          	auipc	t1,0x0
   107f8:	f6030067          	jr	-160(t1) # 10754 <__internal_syscall>

00000000000107fc <read>:
   107fc:	00060693          	mv	a3,a2
   10800:	00000713          	li	a4,0
   10804:	00058613          	mv	a2,a1
   10808:	00050593          	mv	a1,a0
   1080c:	03f00513          	li	a0,63
   10810:	f45ff06f          	j	10754 <__internal_syscall>

0000000000010814 <write>:
   10814:	00060693          	mv	a3,a2
   10818:	00000713          	li	a4,0
   1081c:	00058613          	mv	a2,a1
   10820:	00050593          	mv	a1,a0
   10824:	04000513          	li	a0,64
   10828:	00000317          	auipc	t1,0x0
   1082c:	f2c30067          	jr	-212(t1) # 10754 <__internal_syscall>

0000000000010830 <fstat>:
   10830:	f6010113          	addi	sp,sp,-160
   10834:	08913423          	sd	s1,136(sp)
   10838:	00010613          	mv	a2,sp
   1083c:	00058493          	mv	s1,a1
   10840:	00000713          	li	a4,0
   10844:	00050593          	mv	a1,a0
   10848:	00000693          	li	a3,0
   1084c:	05000513          	li	a0,80
   10850:	08113c23          	sd	ra,152(sp)
   10854:	08813823          	sd	s0,144(sp)
   10858:	efdff0ef          	jal	ra,10754 <__internal_syscall>
   1085c:	00050413          	mv	s0,a0
   10860:	00010593          	mv	a1,sp
   10864:	00048513          	mv	a0,s1
   10868:	e4dff0ef          	jal	ra,106b4 <conv_stat>
   1086c:	0004051b          	sext.w	a0,s0
   10870:	09813083          	ld	ra,152(sp)
   10874:	09013403          	ld	s0,144(sp)
   10878:	08813483          	ld	s1,136(sp)
   1087c:	0a010113          	addi	sp,sp,160
   10880:	00008067          	ret

0000000000010884 <stat>:
   10884:	f6010113          	addi	sp,sp,-160
   10888:	08913423          	sd	s1,136(sp)
   1088c:	00010613          	mv	a2,sp
   10890:	00058493          	mv	s1,a1
   10894:	00000713          	li	a4,0
   10898:	00050593          	mv	a1,a0
   1089c:	00000693          	li	a3,0
   108a0:	40e00513          	li	a0,1038
   108a4:	08113c23          	sd	ra,152(sp)
   108a8:	08813823          	sd	s0,144(sp)
   108ac:	00000097          	auipc	ra,0x0
   108b0:	ea8080e7          	jalr	-344(ra) # 10754 <__internal_syscall>
   108b4:	00050413          	mv	s0,a0
   108b8:	00010593          	mv	a1,sp
   108bc:	00048513          	mv	a0,s1
   108c0:	00000097          	auipc	ra,0x0
   108c4:	df4080e7          	jalr	-524(ra) # 106b4 <conv_stat>
   108c8:	0004051b          	sext.w	a0,s0
   108cc:	09813083          	ld	ra,152(sp)
   108d0:	09013403          	ld	s0,144(sp)
   108d4:	08813483          	ld	s1,136(sp)
   108d8:	0a010113          	addi	sp,sp,160
   108dc:	00008067          	ret

00000000000108e0 <lstat>:
   108e0:	f6010113          	addi	sp,sp,-160
   108e4:	08913423          	sd	s1,136(sp)
   108e8:	00010613          	mv	a2,sp
   108ec:	00058493          	mv	s1,a1
   108f0:	00000713          	li	a4,0
   108f4:	00050593          	mv	a1,a0
   108f8:	00000693          	li	a3,0
   108fc:	40f00513          	li	a0,1039
   10900:	08113c23          	sd	ra,152(sp)
   10904:	08813823          	sd	s0,144(sp)
   10908:	e4dff0ef          	jal	ra,10754 <__internal_syscall>
   1090c:	00050413          	mv	s0,a0
   10910:	00010593          	mv	a1,sp
   10914:	00048513          	mv	a0,s1
   10918:	d9dff0ef          	jal	ra,106b4 <conv_stat>
   1091c:	0004051b          	sext.w	a0,s0
   10920:	09813083          	ld	ra,152(sp)
   10924:	09013403          	ld	s0,144(sp)
   10928:	08813483          	ld	s1,136(sp)
   1092c:	0a010113          	addi	sp,sp,160
   10930:	00008067          	ret

0000000000010934 <fstatat>:
   10934:	f6010113          	addi	sp,sp,-160
   10938:	08913423          	sd	s1,136(sp)
   1093c:	00068713          	mv	a4,a3
   10940:	00060493          	mv	s1,a2
   10944:	00010693          	mv	a3,sp
   10948:	00058613          	mv	a2,a1
   1094c:	00050593          	mv	a1,a0
   10950:	04f00513          	li	a0,79
   10954:	08113c23          	sd	ra,152(sp)
   10958:	08813823          	sd	s0,144(sp)
   1095c:	00000097          	auipc	ra,0x0
   10960:	df8080e7          	jalr	-520(ra) # 10754 <__internal_syscall>
   10964:	00050413          	mv	s0,a0
   10968:	00010593          	mv	a1,sp
   1096c:	00048513          	mv	a0,s1
   10970:	00000097          	auipc	ra,0x0
   10974:	d44080e7          	jalr	-700(ra) # 106b4 <conv_stat>
   10978:	0004051b          	sext.w	a0,s0
   1097c:	09813083          	ld	ra,152(sp)
   10980:	09013403          	ld	s0,144(sp)
   10984:	08813483          	ld	s1,136(sp)
   10988:	0a010113          	addi	sp,sp,160
   1098c:	00008067          	ret

0000000000010990 <access>:
   10990:	ff010113          	addi	sp,sp,-16
   10994:	00058613          	mv	a2,a1
   10998:	00000713          	li	a4,0
   1099c:	00050593          	mv	a1,a0
   109a0:	00000693          	li	a3,0
   109a4:	40900513          	li	a0,1033
   109a8:	00113423          	sd	ra,8(sp)
   109ac:	da9ff0ef          	jal	ra,10754 <__internal_syscall>
   109b0:	00813083          	ld	ra,8(sp)
   109b4:	0005051b          	sext.w	a0,a0
   109b8:	01010113          	addi	sp,sp,16
   109bc:	00008067          	ret

00000000000109c0 <faccessat>:
   109c0:	ff010113          	addi	sp,sp,-16
   109c4:	00068713          	mv	a4,a3
   109c8:	00060693          	mv	a3,a2
   109cc:	00058613          	mv	a2,a1
   109d0:	00050593          	mv	a1,a0
   109d4:	03000513          	li	a0,48
   109d8:	00113423          	sd	ra,8(sp)
   109dc:	00000097          	auipc	ra,0x0
   109e0:	d78080e7          	jalr	-648(ra) # 10754 <__internal_syscall>
   109e4:	00813083          	ld	ra,8(sp)
   109e8:	0005051b          	sext.w	a0,a0
   109ec:	01010113          	addi	sp,sp,16
   109f0:	00008067          	ret

00000000000109f4 <close>:
   109f4:	ff010113          	addi	sp,sp,-16
   109f8:	00050593          	mv	a1,a0
   109fc:	00000713          	li	a4,0
   10a00:	00000693          	li	a3,0
   10a04:	00000613          	li	a2,0
   10a08:	03900513          	li	a0,57
   10a0c:	00113423          	sd	ra,8(sp)
   10a10:	d45ff0ef          	jal	ra,10754 <__internal_syscall>
   10a14:	00813083          	ld	ra,8(sp)
   10a18:	0005051b          	sext.w	a0,a0
   10a1c:	01010113          	addi	sp,sp,16
   10a20:	00008067          	ret

0000000000010a24 <link>:
   10a24:	ff010113          	addi	sp,sp,-16
   10a28:	00058613          	mv	a2,a1
   10a2c:	00000713          	li	a4,0
   10a30:	00050593          	mv	a1,a0
   10a34:	00000693          	li	a3,0
   10a38:	40100513          	li	a0,1025
   10a3c:	00113423          	sd	ra,8(sp)
   10a40:	00000097          	auipc	ra,0x0
   10a44:	d14080e7          	jalr	-748(ra) # 10754 <__internal_syscall>
   10a48:	00813083          	ld	ra,8(sp)
   10a4c:	0005051b          	sext.w	a0,a0
   10a50:	01010113          	addi	sp,sp,16
   10a54:	00008067          	ret

0000000000010a58 <unlink>:
   10a58:	ff010113          	addi	sp,sp,-16
   10a5c:	00050593          	mv	a1,a0
   10a60:	00000713          	li	a4,0
   10a64:	00000693          	li	a3,0
   10a68:	00000613          	li	a2,0
   10a6c:	40200513          	li	a0,1026
   10a70:	00113423          	sd	ra,8(sp)
   10a74:	ce1ff0ef          	jal	ra,10754 <__internal_syscall>
   10a78:	00813083          	ld	ra,8(sp)
   10a7c:	0005051b          	sext.w	a0,a0
   10a80:	01010113          	addi	sp,sp,16
   10a84:	00008067          	ret

0000000000010a88 <execve>:
   10a88:	ff010113          	addi	sp,sp,-16
   10a8c:	00113423          	sd	ra,8(sp)
   10a90:	00000097          	auipc	ra,0x0
   10a94:	298080e7          	jalr	664(ra) # 10d28 <__errno>
   10a98:	00813083          	ld	ra,8(sp)
   10a9c:	00c00793          	li	a5,12
   10aa0:	00f52023          	sw	a5,0(a0)
   10aa4:	fff00513          	li	a0,-1
   10aa8:	01010113          	addi	sp,sp,16
   10aac:	00008067          	ret

0000000000010ab0 <fork>:
   10ab0:	ff010113          	addi	sp,sp,-16
   10ab4:	00113423          	sd	ra,8(sp)
   10ab8:	270000ef          	jal	ra,10d28 <__errno>
   10abc:	00813083          	ld	ra,8(sp)
   10ac0:	00b00793          	li	a5,11
   10ac4:	00f52023          	sw	a5,0(a0)
   10ac8:	fff00513          	li	a0,-1
   10acc:	01010113          	addi	sp,sp,16
   10ad0:	00008067          	ret

0000000000010ad4 <getpid>:
   10ad4:	00100513          	li	a0,1
   10ad8:	00008067          	ret

0000000000010adc <kill>:
   10adc:	ff010113          	addi	sp,sp,-16
   10ae0:	00113423          	sd	ra,8(sp)
   10ae4:	244000ef          	jal	ra,10d28 <__errno>
   10ae8:	00813083          	ld	ra,8(sp)
   10aec:	01600793          	li	a5,22
   10af0:	00f52023          	sw	a5,0(a0)
   10af4:	fff00513          	li	a0,-1
   10af8:	01010113          	addi	sp,sp,16
   10afc:	00008067          	ret

0000000000010b00 <wait>:
   10b00:	ff010113          	addi	sp,sp,-16
   10b04:	00113423          	sd	ra,8(sp)
   10b08:	00000097          	auipc	ra,0x0
   10b0c:	220080e7          	jalr	544(ra) # 10d28 <__errno>
   10b10:	00813083          	ld	ra,8(sp)
   10b14:	00a00793          	li	a5,10
   10b18:	00f52023          	sw	a5,0(a0)
   10b1c:	fff00513          	li	a0,-1
   10b20:	01010113          	addi	sp,sp,16
   10b24:	00008067          	ret

0000000000010b28 <isatty>:
   10b28:	f8010113          	addi	sp,sp,-128
   10b2c:	00810593          	addi	a1,sp,8
   10b30:	06113c23          	sd	ra,120(sp)
   10b34:	cfdff0ef          	jal	ra,10830 <fstat>
   10b38:	fff00793          	li	a5,-1
   10b3c:	00f50863          	beq	a0,a5,10b4c <isatty+0x24>
   10b40:	00c12503          	lw	a0,12(sp)
   10b44:	40d5551b          	sraiw	a0,a0,0xd
   10b48:	00157513          	andi	a0,a0,1
   10b4c:	07813083          	ld	ra,120(sp)
   10b50:	08010113          	addi	sp,sp,128
   10b54:	00008067          	ret

0000000000010b58 <gettimeofday>:
   10b58:	ff010113          	addi	sp,sp,-16
   10b5c:	00050593          	mv	a1,a0
   10b60:	00000713          	li	a4,0
   10b64:	00000693          	li	a3,0
   10b68:	00000613          	li	a2,0
   10b6c:	0a900513          	li	a0,169
   10b70:	00113423          	sd	ra,8(sp)
   10b74:	00000097          	auipc	ra,0x0
   10b78:	be0080e7          	jalr	-1056(ra) # 10754 <__internal_syscall>
   10b7c:	00813083          	ld	ra,8(sp)
   10b80:	0005051b          	sext.w	a0,a0
   10b84:	01010113          	addi	sp,sp,16
   10b88:	00008067          	ret

0000000000010b8c <times>:
   10b8c:	fd010113          	addi	sp,sp,-48
   10b90:	02813023          	sd	s0,32(sp)
   10b94:	00050413          	mv	s0,a0
   10b98:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10b9c:	00913c23          	sd	s1,24(sp)
   10ba0:	02113423          	sd	ra,40(sp)
   10ba4:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10ba8:	00079a63          	bnez	a5,10bbc <times+0x30>
   10bac:	00000593          	li	a1,0
   10bb0:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10bb4:	00000097          	auipc	ra,0x0
   10bb8:	fa4080e7          	jalr	-92(ra) # 10b58 <gettimeofday>
   10bbc:	00000593          	li	a1,0
   10bc0:	00010513          	mv	a0,sp
   10bc4:	00000097          	auipc	ra,0x0
   10bc8:	f94080e7          	jalr	-108(ra) # 10b58 <gettimeofday>
   10bcc:	0004b783          	ld	a5,0(s1)
   10bd0:	00013503          	ld	a0,0(sp)
   10bd4:	000f45b7          	lui	a1,0xf4
   10bd8:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10bdc:	40f50533          	sub	a0,a0,a5
   10be0:	154000ef          	jal	ra,10d34 <__muldi3>
   10be4:	0084b703          	ld	a4,8(s1)
   10be8:	00813783          	ld	a5,8(sp)
   10bec:	00043823          	sd	zero,16(s0)
   10bf0:	00043c23          	sd	zero,24(s0)
   10bf4:	40e787b3          	sub	a5,a5,a4
   10bf8:	00f50533          	add	a0,a0,a5
   10bfc:	00a43023          	sd	a0,0(s0)
   10c00:	00043423          	sd	zero,8(s0)
   10c04:	02813083          	ld	ra,40(sp)
   10c08:	02013403          	ld	s0,32(sp)
   10c0c:	01813483          	ld	s1,24(sp)
   10c10:	fff00513          	li	a0,-1
   10c14:	03010113          	addi	sp,sp,48
   10c18:	00008067          	ret

0000000000010c1c <ftime>:
   10c1c:	00051423          	sh	zero,8(a0)
   10c20:	00053023          	sd	zero,0(a0)
   10c24:	00000513          	li	a0,0
   10c28:	00008067          	ret

0000000000010c2c <utime>:
   10c2c:	fff00513          	li	a0,-1
   10c30:	00008067          	ret

0000000000010c34 <chown>:
   10c34:	fff00513          	li	a0,-1
   10c38:	00008067          	ret

0000000000010c3c <chmod>:
   10c3c:	fff00513          	li	a0,-1
   10c40:	00008067          	ret

0000000000010c44 <chdir>:
   10c44:	fff00513          	li	a0,-1
   10c48:	00008067          	ret

0000000000010c4c <getcwd>:
   10c4c:	00000513          	li	a0,0
   10c50:	00008067          	ret

0000000000010c54 <sysconf>:
   10c54:	00200793          	li	a5,2
   10c58:	00f50663          	beq	a0,a5,10c64 <sysconf+0x10>
   10c5c:	fff00513          	li	a0,-1
   10c60:	00008067          	ret
   10c64:	000f4537          	lui	a0,0xf4
   10c68:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10c6c:	00008067          	ret

0000000000010c70 <sbrk>:
   10c70:	fe010113          	addi	sp,sp,-32
   10c74:	00813823          	sd	s0,16(sp)
   10c78:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10c7c:	00913423          	sd	s1,8(sp)
   10c80:	00113c23          	sd	ra,24(sp)
   10c84:	00050493          	mv	s1,a0
   10c88:	04079063          	bnez	a5,10cc8 <sbrk+0x58>
   10c8c:	00000713          	li	a4,0
   10c90:	00000693          	li	a3,0
   10c94:	00000613          	li	a2,0
   10c98:	00000593          	li	a1,0
   10c9c:	0d600513          	li	a0,214
   10ca0:	ab5ff0ef          	jal	ra,10754 <__internal_syscall>
   10ca4:	fff00793          	li	a5,-1
   10ca8:	00f51e63          	bne	a0,a5,10cc4 <sbrk+0x54>
   10cac:	fff00513          	li	a0,-1
   10cb0:	01813083          	ld	ra,24(sp)
   10cb4:	01013403          	ld	s0,16(sp)
   10cb8:	00813483          	ld	s1,8(sp)
   10cbc:	02010113          	addi	sp,sp,32
   10cc0:	00008067          	ret
   10cc4:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10cc8:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ccc:	00000713          	li	a4,0
   10cd0:	00000693          	li	a3,0
   10cd4:	00b485b3          	add	a1,s1,a1
   10cd8:	00000613          	li	a2,0
   10cdc:	0d600513          	li	a0,214
   10ce0:	a75ff0ef          	jal	ra,10754 <__internal_syscall>
   10ce4:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10ce8:	00f484b3          	add	s1,s1,a5
   10cec:	fc9510e3          	bne	a0,s1,10cac <sbrk+0x3c>
   10cf0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10cf4:	00078513          	mv	a0,a5
   10cf8:	fb9ff06f          	j	10cb0 <sbrk+0x40>

0000000000010cfc <_exit>:
   10cfc:	ff010113          	addi	sp,sp,-16
   10d00:	00050593          	mv	a1,a0
   10d04:	00000713          	li	a4,0
   10d08:	00000693          	li	a3,0
   10d0c:	00000613          	li	a2,0
   10d10:	05d00513          	li	a0,93
   10d14:	00113423          	sd	ra,8(sp)
   10d18:	00000097          	auipc	ra,0x0
   10d1c:	a3c080e7          	jalr	-1476(ra) # 10754 <__internal_syscall>
   10d20:	0000006f          	j	10d20 <_exit+0x24>
   10d24:	0000                	unimp
	...

0000000000010d28 <__errno>:
   10d28:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10d2c:	00008067          	ret
   10d30:	0000                	unimp
	...

0000000000010d34 <__muldi3>:
   10d34:	00050613          	mv	a2,a0
   10d38:	00000513          	li	a0,0
   10d3c:	0015f693          	andi	a3,a1,1
   10d40:	00068463          	beqz	a3,10d48 <__muldi3+0x14>
   10d44:	00c50533          	add	a0,a0,a2
   10d48:	0015d593          	srli	a1,a1,0x1
   10d4c:	00161613          	slli	a2,a2,0x1
   10d50:	fe0596e3          	bnez	a1,10d3c <__muldi3+0x8>
   10d54:	00008067          	ret
   10d58:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010d60 <.rodata>:
   10d60:	6548                	ld	a0,136(a0)
   10d62:	6c6c                	ld	a1,216(s0)
   10d64:	57202c6f          	jal	s8,132d6 <__global_pointer$+0x137e>
   10d68:	646c726f          	jal	tp,d83ae <__global_pointer$+0xc6456>
   10d6c:	0a21                	addi	s4,s4,8
	...

Disassembly of section .eh_frame:

0000000000010d70 <__EH_FRAME_BEGIN__>:
   10d70:	0000                	unimp
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
  10:	0d34                	addi	a3,sp,664
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
  10:	0d34                	addi	a3,sp,664
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0d58                	addi	a4,sp,660
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
  9c:	3402                	fld	fs0,32(sp)
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
