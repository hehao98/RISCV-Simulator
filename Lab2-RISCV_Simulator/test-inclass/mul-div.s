
mul-div.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ed018193          	addi	gp,gp,-304 # 11f80 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11798 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117e8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	3a0000ef          	jal	ra,10468 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	27c50513          	addi	a0,a0,636 # 10348 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	220080e7          	jalr	544(ra) # 102f4 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2e4080e7          	jalr	740(ra) # 103c0 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	21430067          	jr	532(t1) # 1030c <exit>

0000000000010100 <_fini>:
   10100:	00008067          	ret

0000000000010104 <deregister_tm_clones>:
   10104:	00011537          	lui	a0,0x11
   10108:	000117b7          	lui	a5,0x11
   1010c:	78050713          	addi	a4,a0,1920 # 11780 <__TMC_END__>
   10110:	78078793          	addi	a5,a5,1920 # 11780 <__TMC_END__>
   10114:	00e78c63          	beq	a5,a4,1012c <deregister_tm_clones+0x28>
   10118:	00000337          	lui	t1,0x0
   1011c:	00030313          	mv	t1,t1
   10120:	00030663          	beqz	t1,1012c <deregister_tm_clones+0x28>
   10124:	78050513          	addi	a0,a0,1920
   10128:	00030067          	jr	t1
   1012c:	00008067          	ret

0000000000010130 <register_tm_clones>:
   10130:	000117b7          	lui	a5,0x11
   10134:	00011537          	lui	a0,0x11
   10138:	78078593          	addi	a1,a5,1920 # 11780 <__TMC_END__>
   1013c:	78050793          	addi	a5,a0,1920 # 11780 <__TMC_END__>
   10140:	40f585b3          	sub	a1,a1,a5
   10144:	4035d593          	srai	a1,a1,0x3
   10148:	03f5d793          	srli	a5,a1,0x3f
   1014c:	00b785b3          	add	a1,a5,a1
   10150:	4015d593          	srai	a1,a1,0x1
   10154:	00058c63          	beqz	a1,1016c <register_tm_clones+0x3c>
   10158:	00000337          	lui	t1,0x0
   1015c:	00030313          	mv	t1,t1
   10160:	00030663          	beqz	t1,1016c <register_tm_clones+0x3c>
   10164:	78050513          	addi	a0,a0,1920
   10168:	00030067          	jr	t1
   1016c:	00008067          	ret

0000000000010170 <__do_global_dtors_aux>:
   10170:	8201c703          	lbu	a4,-2016(gp) # 117a0 <completed.5182>
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
   1019c:	d9450513          	addi	a0,a0,-620 # 10d94 <__EH_FRAME_BEGIN__>
   101a0:	ffff0097          	auipc	ra,0xffff0
   101a4:	e60080e7          	jalr	-416(ra) # 0 <_start-0x100b0>
   101a8:	00100793          	li	a5,1
   101ac:	82f18023          	sb	a5,-2016(gp) # 117a0 <completed.5182>
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
   101dc:	7a858593          	addi	a1,a1,1960 # 117a8 <object.5187>
   101e0:	d9450513          	addi	a0,a0,-620 # 10d94 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	fe010113          	addi	sp,sp,-32
   10200:	00813c23          	sd	s0,24(sp)
   10204:	02010413          	addi	s0,sp,32
   10208:	fe042623          	sw	zero,-20(s0)
   1020c:	fe042623          	sw	zero,-20(s0)
   10210:	0540006f          	j	10264 <main+0x68>
   10214:	000117b7          	lui	a5,0x11
   10218:	fec42703          	lw	a4,-20(s0)
   1021c:	00271713          	slli	a4,a4,0x2
   10220:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10224:	00f707b3          	add	a5,a4,a5
   10228:	0007a783          	lw	a5,0(a5)
   1022c:	00078713          	mv	a4,a5
   10230:	00070793          	mv	a5,a4
   10234:	0027979b          	slliw	a5,a5,0x2
   10238:	00e787bb          	addw	a5,a5,a4
   1023c:	0007871b          	sext.w	a4,a5
   10240:	000117b7          	lui	a5,0x11
   10244:	fec42683          	lw	a3,-20(s0)
   10248:	00269693          	slli	a3,a3,0x2
   1024c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10250:	00f687b3          	add	a5,a3,a5
   10254:	00e7a023          	sw	a4,0(a5)
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	0017879b          	addiw	a5,a5,1
   10260:	fef42623          	sw	a5,-20(s0)
   10264:	fec42783          	lw	a5,-20(s0)
   10268:	0007871b          	sext.w	a4,a5
   1026c:	00400793          	li	a5,4
   10270:	fae7d2e3          	ble	a4,a5,10214 <main+0x18>
   10274:	00500793          	li	a5,5
   10278:	fef42623          	sw	a5,-20(s0)
   1027c:	0500006f          	j	102cc <main+0xd0>
   10280:	000117b7          	lui	a5,0x11
   10284:	fec42703          	lw	a4,-20(s0)
   10288:	00271713          	slli	a4,a4,0x2
   1028c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10290:	00f707b3          	add	a5,a4,a5
   10294:	0007a783          	lw	a5,0(a5)
   10298:	01f7d71b          	srliw	a4,a5,0x1f
   1029c:	00f707bb          	addw	a5,a4,a5
   102a0:	4017d79b          	sraiw	a5,a5,0x1
   102a4:	0007871b          	sext.w	a4,a5
   102a8:	000117b7          	lui	a5,0x11
   102ac:	fec42683          	lw	a3,-20(s0)
   102b0:	00269693          	slli	a3,a3,0x2
   102b4:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102b8:	00f687b3          	add	a5,a3,a5
   102bc:	00e7a023          	sw	a4,0(a5)
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	0017879b          	addiw	a5,a5,1
   102c8:	fef42623          	sw	a5,-20(s0)
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	0007871b          	sext.w	a4,a5
   102d4:	00900793          	li	a5,9
   102d8:	fae7d4e3          	ble	a4,a5,10280 <main+0x84>
   102dc:	00000793          	li	a5,0
   102e0:	00078513          	mv	a0,a5
   102e4:	01813403          	ld	s0,24(sp)
   102e8:	02010113          	addi	sp,sp,32
   102ec:	00008067          	ret
   102f0:	0000                	unimp
	...

00000000000102f4 <atexit>:
   102f4:	00050593          	mv	a1,a0
   102f8:	00000693          	li	a3,0
   102fc:	00000613          	li	a2,0
   10300:	00000513          	li	a0,0
   10304:	2400006f          	j	10544 <__register_exitproc>
   10308:	0000                	unimp
	...

000000000001030c <exit>:
   1030c:	ff010113          	addi	sp,sp,-16
   10310:	00000593          	li	a1,0
   10314:	00813023          	sd	s0,0(sp)
   10318:	00113423          	sd	ra,8(sp)
   1031c:	00050413          	mv	s0,a0
   10320:	2b0000ef          	jal	ra,105d0 <__call_exitprocs>
   10324:	000117b7          	lui	a5,0x11
   10328:	7887b503          	ld	a0,1928(a5) # 11788 <_global_impure_ptr>
   1032c:	05853783          	ld	a5,88(a0)
   10330:	00078463          	beqz	a5,10338 <exit+0x2c>
   10334:	000780e7          	jalr	a5
   10338:	00040513          	mv	a0,s0
   1033c:	00001097          	auipc	ra,0x1
   10340:	9f8080e7          	jalr	-1544(ra) # 10d34 <_exit>
   10344:	0000                	unimp
	...

0000000000010348 <__libc_fini_array>:
   10348:	fe010113          	addi	sp,sp,-32
   1034c:	000117b7          	lui	a5,0x11
   10350:	00011737          	lui	a4,0x11
   10354:	00813823          	sd	s0,16(sp)
   10358:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1035c:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10360:	40e40433          	sub	s0,s0,a4
   10364:	00913423          	sd	s1,8(sp)
   10368:	01213023          	sd	s2,0(sp)
   1036c:	00113c23          	sd	ra,24(sp)
   10370:	40345413          	srai	s0,s0,0x3
   10374:	00000493          	li	s1,0
   10378:	01078913          	addi	s2,a5,16
   1037c:	02941063          	bne	s0,s1,1039c <__libc_fini_array+0x54>
   10380:	01013403          	ld	s0,16(sp)
   10384:	01813083          	ld	ra,24(sp)
   10388:	00813483          	ld	s1,8(sp)
   1038c:	00013903          	ld	s2,0(sp)
   10390:	02010113          	addi	sp,sp,32
   10394:	00000317          	auipc	t1,0x0
   10398:	d6c30067          	jr	-660(t1) # 10100 <_fini>
   1039c:	ff800593          	li	a1,-8
   103a0:	00048513          	mv	a0,s1
   103a4:	1c9000ef          	jal	ra,10d6c <__muldi3>
   103a8:	00a90533          	add	a0,s2,a0
   103ac:	ff853783          	ld	a5,-8(a0)
   103b0:	00148493          	addi	s1,s1,1
   103b4:	000780e7          	jalr	a5
   103b8:	fc5ff06f          	j	1037c <__libc_fini_array+0x34>
   103bc:	0000                	unimp
	...

00000000000103c0 <__libc_init_array>:
   103c0:	fe010113          	addi	sp,sp,-32
   103c4:	00813823          	sd	s0,16(sp)
   103c8:	00913423          	sd	s1,8(sp)
   103cc:	00011437          	lui	s0,0x11
   103d0:	000114b7          	lui	s1,0x11
   103d4:	00048793          	mv	a5,s1
   103d8:	00040413          	mv	s0,s0
   103dc:	40f40433          	sub	s0,s0,a5
   103e0:	01213023          	sd	s2,0(sp)
   103e4:	00113c23          	sd	ra,24(sp)
   103e8:	40345413          	srai	s0,s0,0x3
   103ec:	00048493          	mv	s1,s1
   103f0:	00000913          	li	s2,0
   103f4:	04891463          	bne	s2,s0,1043c <__libc_init_array+0x7c>
   103f8:	000114b7          	lui	s1,0x11
   103fc:	00000097          	auipc	ra,0x0
   10400:	d04080e7          	jalr	-764(ra) # 10100 <_fini>
   10404:	00011437          	lui	s0,0x11
   10408:	00048793          	mv	a5,s1
   1040c:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10410:	40f40433          	sub	s0,s0,a5
   10414:	40345413          	srai	s0,s0,0x3
   10418:	00048493          	mv	s1,s1
   1041c:	00000913          	li	s2,0
   10420:	02891863          	bne	s2,s0,10450 <__libc_init_array+0x90>
   10424:	01813083          	ld	ra,24(sp)
   10428:	01013403          	ld	s0,16(sp)
   1042c:	00813483          	ld	s1,8(sp)
   10430:	00013903          	ld	s2,0(sp)
   10434:	02010113          	addi	sp,sp,32
   10438:	00008067          	ret
   1043c:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10440:	00190913          	addi	s2,s2,1
   10444:	00848493          	addi	s1,s1,8
   10448:	000780e7          	jalr	a5
   1044c:	fa9ff06f          	j	103f4 <__libc_init_array+0x34>
   10450:	0004b783          	ld	a5,0(s1)
   10454:	00190913          	addi	s2,s2,1
   10458:	00848493          	addi	s1,s1,8
   1045c:	000780e7          	jalr	a5
   10460:	fc1ff06f          	j	10420 <__libc_init_array+0x60>
   10464:	0000                	unimp
	...

0000000000010468 <memset>:
   10468:	00f00813          	li	a6,15
   1046c:	00050713          	mv	a4,a0
   10470:	02c87a63          	bleu	a2,a6,104a4 <memset+0x3c>
   10474:	00f77793          	andi	a5,a4,15
   10478:	0a079063          	bnez	a5,10518 <memset+0xb0>
   1047c:	06059e63          	bnez	a1,104f8 <memset+0x90>
   10480:	ff067693          	andi	a3,a2,-16
   10484:	00f67613          	andi	a2,a2,15
   10488:	00e686b3          	add	a3,a3,a4
   1048c:	00b73023          	sd	a1,0(a4)
   10490:	00b73423          	sd	a1,8(a4)
   10494:	01070713          	addi	a4,a4,16
   10498:	fed76ae3          	bltu	a4,a3,1048c <memset+0x24>
   1049c:	00061463          	bnez	a2,104a4 <memset+0x3c>
   104a0:	00008067          	ret
   104a4:	40c806b3          	sub	a3,a6,a2
   104a8:	00269693          	slli	a3,a3,0x2
   104ac:	00000297          	auipc	t0,0x0
   104b0:	005686b3          	add	a3,a3,t0
   104b4:	00c68067          	jr	12(a3)
   104b8:	00b70723          	sb	a1,14(a4)
   104bc:	00b706a3          	sb	a1,13(a4)
   104c0:	00b70623          	sb	a1,12(a4)
   104c4:	00b705a3          	sb	a1,11(a4)
   104c8:	00b70523          	sb	a1,10(a4)
   104cc:	00b704a3          	sb	a1,9(a4)
   104d0:	00b70423          	sb	a1,8(a4)
   104d4:	00b703a3          	sb	a1,7(a4)
   104d8:	00b70323          	sb	a1,6(a4)
   104dc:	00b702a3          	sb	a1,5(a4)
   104e0:	00b70223          	sb	a1,4(a4)
   104e4:	00b701a3          	sb	a1,3(a4)
   104e8:	00b70123          	sb	a1,2(a4)
   104ec:	00b700a3          	sb	a1,1(a4)
   104f0:	00b70023          	sb	a1,0(a4)
   104f4:	00008067          	ret
   104f8:	0ff5f593          	andi	a1,a1,255
   104fc:	00859693          	slli	a3,a1,0x8
   10500:	00d5e5b3          	or	a1,a1,a3
   10504:	01059693          	slli	a3,a1,0x10
   10508:	00d5e5b3          	or	a1,a1,a3
   1050c:	02059693          	slli	a3,a1,0x20
   10510:	00d5e5b3          	or	a1,a1,a3
   10514:	f6dff06f          	j	10480 <memset+0x18>
   10518:	00279693          	slli	a3,a5,0x2
   1051c:	00000297          	auipc	t0,0x0
   10520:	005686b3          	add	a3,a3,t0
   10524:	00008293          	mv	t0,ra
   10528:	f98680e7          	jalr	-104(a3)
   1052c:	00028093          	mv	ra,t0
   10530:	ff078793          	addi	a5,a5,-16
   10534:	40f70733          	sub	a4,a4,a5
   10538:	00f60633          	add	a2,a2,a5
   1053c:	f6c874e3          	bleu	a2,a6,104a4 <memset+0x3c>
   10540:	f3dff06f          	j	1047c <memset+0x14>

0000000000010544 <__register_exitproc>:
   10544:	000117b7          	lui	a5,0x11
   10548:	7887b703          	ld	a4,1928(a5) # 11788 <_global_impure_ptr>
   1054c:	00050313          	mv	t1,a0
   10550:	1f873783          	ld	a5,504(a4)
   10554:	00079663          	bnez	a5,10560 <__register_exitproc+0x1c>
   10558:	20070793          	addi	a5,a4,512
   1055c:	1ef73c23          	sd	a5,504(a4)
   10560:	0087a703          	lw	a4,8(a5)
   10564:	01f00813          	li	a6,31
   10568:	fff00513          	li	a0,-1
   1056c:	04e84e63          	blt	a6,a4,105c8 <__register_exitproc+0x84>
   10570:	02030e63          	beqz	t1,105ac <__register_exitproc+0x68>
   10574:	00371813          	slli	a6,a4,0x3
   10578:	01078833          	add	a6,a5,a6
   1057c:	10c83823          	sd	a2,272(a6)
   10580:	3107a883          	lw	a7,784(a5)
   10584:	00100613          	li	a2,1
   10588:	00e6163b          	sllw	a2,a2,a4
   1058c:	00c8e8b3          	or	a7,a7,a2
   10590:	3117a823          	sw	a7,784(a5)
   10594:	20d83823          	sd	a3,528(a6)
   10598:	00200693          	li	a3,2
   1059c:	00d31863          	bne	t1,a3,105ac <__register_exitproc+0x68>
   105a0:	3147a683          	lw	a3,788(a5)
   105a4:	00c6e633          	or	a2,a3,a2
   105a8:	30c7aa23          	sw	a2,788(a5)
   105ac:	0017069b          	addiw	a3,a4,1
   105b0:	00270713          	addi	a4,a4,2
   105b4:	00371713          	slli	a4,a4,0x3
   105b8:	00d7a423          	sw	a3,8(a5)
   105bc:	00e787b3          	add	a5,a5,a4
   105c0:	00b7b023          	sd	a1,0(a5)
   105c4:	00000513          	li	a0,0
   105c8:	00008067          	ret
   105cc:	0000                	unimp
	...

00000000000105d0 <__call_exitprocs>:
   105d0:	fb010113          	addi	sp,sp,-80
   105d4:	000117b7          	lui	a5,0x11
   105d8:	03313423          	sd	s3,40(sp)
   105dc:	7887b983          	ld	s3,1928(a5) # 11788 <_global_impure_ptr>
   105e0:	03413023          	sd	s4,32(sp)
   105e4:	01513c23          	sd	s5,24(sp)
   105e8:	01613823          	sd	s6,16(sp)
   105ec:	04113423          	sd	ra,72(sp)
   105f0:	04813023          	sd	s0,64(sp)
   105f4:	02913c23          	sd	s1,56(sp)
   105f8:	03213823          	sd	s2,48(sp)
   105fc:	01713423          	sd	s7,8(sp)
   10600:	00050a93          	mv	s5,a0
   10604:	00058a13          	mv	s4,a1
   10608:	00100b13          	li	s6,1
   1060c:	1f89b403          	ld	s0,504(s3)
   10610:	00040c63          	beqz	s0,10628 <__call_exitprocs+0x58>
   10614:	00842483          	lw	s1,8(s0)
   10618:	fff4849b          	addiw	s1,s1,-1
   1061c:	00349913          	slli	s2,s1,0x3
   10620:	01240933          	add	s2,s0,s2
   10624:	0204d863          	bgez	s1,10654 <__call_exitprocs+0x84>
   10628:	04813083          	ld	ra,72(sp)
   1062c:	04013403          	ld	s0,64(sp)
   10630:	03813483          	ld	s1,56(sp)
   10634:	03013903          	ld	s2,48(sp)
   10638:	02813983          	ld	s3,40(sp)
   1063c:	02013a03          	ld	s4,32(sp)
   10640:	01813a83          	ld	s5,24(sp)
   10644:	01013b03          	ld	s6,16(sp)
   10648:	00813b83          	ld	s7,8(sp)
   1064c:	05010113          	addi	sp,sp,80
   10650:	00008067          	ret
   10654:	000a0c63          	beqz	s4,1066c <__call_exitprocs+0x9c>
   10658:	21093783          	ld	a5,528(s2)
   1065c:	01478863          	beq	a5,s4,1066c <__call_exitprocs+0x9c>
   10660:	fff4849b          	addiw	s1,s1,-1
   10664:	ff890913          	addi	s2,s2,-8
   10668:	fbdff06f          	j	10624 <__call_exitprocs+0x54>
   1066c:	00842783          	lw	a5,8(s0)
   10670:	01093683          	ld	a3,16(s2)
   10674:	fff7879b          	addiw	a5,a5,-1
   10678:	02979e63          	bne	a5,s1,106b4 <__call_exitprocs+0xe4>
   1067c:	00942423          	sw	s1,8(s0)
   10680:	fe0680e3          	beqz	a3,10660 <__call_exitprocs+0x90>
   10684:	31042703          	lw	a4,784(s0)
   10688:	009b163b          	sllw	a2,s6,s1
   1068c:	00842b83          	lw	s7,8(s0)
   10690:	00c77733          	and	a4,a4,a2
   10694:	0007071b          	sext.w	a4,a4
   10698:	02071263          	bnez	a4,106bc <__call_exitprocs+0xec>
   1069c:	000680e7          	jalr	a3
   106a0:	00842703          	lw	a4,8(s0)
   106a4:	1f89b783          	ld	a5,504(s3)
   106a8:	f77712e3          	bne	a4,s7,1060c <__call_exitprocs+0x3c>
   106ac:	faf40ae3          	beq	s0,a5,10660 <__call_exitprocs+0x90>
   106b0:	f5dff06f          	j	1060c <__call_exitprocs+0x3c>
   106b4:	00093823          	sd	zero,16(s2)
   106b8:	fc9ff06f          	j	10680 <__call_exitprocs+0xb0>
   106bc:	31442783          	lw	a5,788(s0)
   106c0:	11093583          	ld	a1,272(s2)
   106c4:	00c7f7b3          	and	a5,a5,a2
   106c8:	0007879b          	sext.w	a5,a5
   106cc:	00079863          	bnez	a5,106dc <__call_exitprocs+0x10c>
   106d0:	000a8513          	mv	a0,s5
   106d4:	000680e7          	jalr	a3
   106d8:	fc9ff06f          	j	106a0 <__call_exitprocs+0xd0>
   106dc:	00058513          	mv	a0,a1
   106e0:	000680e7          	jalr	a3
   106e4:	fbdff06f          	j	106a0 <__call_exitprocs+0xd0>
   106e8:	0000                	unimp
	...

00000000000106ec <conv_stat>:
   106ec:	0005b783          	ld	a5,0(a1)
   106f0:	00f51023          	sh	a5,0(a0)
   106f4:	0085b783          	ld	a5,8(a1)
   106f8:	00f51123          	sh	a5,2(a0)
   106fc:	0105a783          	lw	a5,16(a1)
   10700:	00f52223          	sw	a5,4(a0)
   10704:	0145a783          	lw	a5,20(a1)
   10708:	00f51423          	sh	a5,8(a0)
   1070c:	0185a783          	lw	a5,24(a1)
   10710:	00f51523          	sh	a5,10(a0)
   10714:	01c5a783          	lw	a5,28(a1)
   10718:	00f51623          	sh	a5,12(a0)
   1071c:	0205b783          	ld	a5,32(a1)
   10720:	00f51723          	sh	a5,14(a0)
   10724:	0305b783          	ld	a5,48(a1)
   10728:	00f53823          	sd	a5,16(a0)
   1072c:	0405b783          	ld	a5,64(a1)
   10730:	04f53823          	sd	a5,80(a0)
   10734:	0385a783          	lw	a5,56(a1)
   10738:	04f53423          	sd	a5,72(a0)
   1073c:	0485b783          	ld	a5,72(a1)
   10740:	00f53c23          	sd	a5,24(a0)
   10744:	0585b783          	ld	a5,88(a1)
   10748:	02f53423          	sd	a5,40(a0)
   1074c:	0685b783          	ld	a5,104(a1)
   10750:	02f53c23          	sd	a5,56(a0)
   10754:	00008067          	ret

0000000000010758 <__syscall_error>:
   10758:	ff010113          	addi	sp,sp,-16
   1075c:	00813023          	sd	s0,0(sp)
   10760:	00113423          	sd	ra,8(sp)
   10764:	00050413          	mv	s0,a0
   10768:	00000097          	auipc	ra,0x0
   1076c:	5f8080e7          	jalr	1528(ra) # 10d60 <__errno>
   10770:	408007bb          	negw	a5,s0
   10774:	00813083          	ld	ra,8(sp)
   10778:	00013403          	ld	s0,0(sp)
   1077c:	00f52023          	sw	a5,0(a0)
   10780:	fff00513          	li	a0,-1
   10784:	01010113          	addi	sp,sp,16
   10788:	00008067          	ret

000000000001078c <__internal_syscall>:
   1078c:	00050893          	mv	a7,a0
   10790:	00058513          	mv	a0,a1
   10794:	00060593          	mv	a1,a2
   10798:	00068613          	mv	a2,a3
   1079c:	00070693          	mv	a3,a4
   107a0:	00000073          	ecall
   107a4:	00055663          	bgez	a0,107b0 <__internal_syscall+0x24>
   107a8:	00000317          	auipc	t1,0x0
   107ac:	fb030067          	jr	-80(t1) # 10758 <__syscall_error>
   107b0:	00008067          	ret

00000000000107b4 <open>:
   107b4:	ff010113          	addi	sp,sp,-16
   107b8:	00060693          	mv	a3,a2
   107bc:	00000713          	li	a4,0
   107c0:	00058613          	mv	a2,a1
   107c4:	00050593          	mv	a1,a0
   107c8:	40000513          	li	a0,1024
   107cc:	00113423          	sd	ra,8(sp)
   107d0:	00000097          	auipc	ra,0x0
   107d4:	fbc080e7          	jalr	-68(ra) # 1078c <__internal_syscall>
   107d8:	00813083          	ld	ra,8(sp)
   107dc:	0005051b          	sext.w	a0,a0
   107e0:	01010113          	addi	sp,sp,16
   107e4:	00008067          	ret

00000000000107e8 <openat>:
   107e8:	ff010113          	addi	sp,sp,-16
   107ec:	00068713          	mv	a4,a3
   107f0:	00060693          	mv	a3,a2
   107f4:	00058613          	mv	a2,a1
   107f8:	00050593          	mv	a1,a0
   107fc:	03800513          	li	a0,56
   10800:	00113423          	sd	ra,8(sp)
   10804:	f89ff0ef          	jal	ra,1078c <__internal_syscall>
   10808:	00813083          	ld	ra,8(sp)
   1080c:	0005051b          	sext.w	a0,a0
   10810:	01010113          	addi	sp,sp,16
   10814:	00008067          	ret

0000000000010818 <lseek>:
   10818:	00060693          	mv	a3,a2
   1081c:	00000713          	li	a4,0
   10820:	00058613          	mv	a2,a1
   10824:	00050593          	mv	a1,a0
   10828:	03e00513          	li	a0,62
   1082c:	00000317          	auipc	t1,0x0
   10830:	f6030067          	jr	-160(t1) # 1078c <__internal_syscall>

0000000000010834 <read>:
   10834:	00060693          	mv	a3,a2
   10838:	00000713          	li	a4,0
   1083c:	00058613          	mv	a2,a1
   10840:	00050593          	mv	a1,a0
   10844:	03f00513          	li	a0,63
   10848:	f45ff06f          	j	1078c <__internal_syscall>

000000000001084c <write>:
   1084c:	00060693          	mv	a3,a2
   10850:	00000713          	li	a4,0
   10854:	00058613          	mv	a2,a1
   10858:	00050593          	mv	a1,a0
   1085c:	04000513          	li	a0,64
   10860:	00000317          	auipc	t1,0x0
   10864:	f2c30067          	jr	-212(t1) # 1078c <__internal_syscall>

0000000000010868 <fstat>:
   10868:	f6010113          	addi	sp,sp,-160
   1086c:	08913423          	sd	s1,136(sp)
   10870:	00010613          	mv	a2,sp
   10874:	00058493          	mv	s1,a1
   10878:	00000713          	li	a4,0
   1087c:	00050593          	mv	a1,a0
   10880:	00000693          	li	a3,0
   10884:	05000513          	li	a0,80
   10888:	08113c23          	sd	ra,152(sp)
   1088c:	08813823          	sd	s0,144(sp)
   10890:	efdff0ef          	jal	ra,1078c <__internal_syscall>
   10894:	00050413          	mv	s0,a0
   10898:	00010593          	mv	a1,sp
   1089c:	00048513          	mv	a0,s1
   108a0:	e4dff0ef          	jal	ra,106ec <conv_stat>
   108a4:	0004051b          	sext.w	a0,s0
   108a8:	09813083          	ld	ra,152(sp)
   108ac:	09013403          	ld	s0,144(sp)
   108b0:	08813483          	ld	s1,136(sp)
   108b4:	0a010113          	addi	sp,sp,160
   108b8:	00008067          	ret

00000000000108bc <stat>:
   108bc:	f6010113          	addi	sp,sp,-160
   108c0:	08913423          	sd	s1,136(sp)
   108c4:	00010613          	mv	a2,sp
   108c8:	00058493          	mv	s1,a1
   108cc:	00000713          	li	a4,0
   108d0:	00050593          	mv	a1,a0
   108d4:	00000693          	li	a3,0
   108d8:	40e00513          	li	a0,1038
   108dc:	08113c23          	sd	ra,152(sp)
   108e0:	08813823          	sd	s0,144(sp)
   108e4:	00000097          	auipc	ra,0x0
   108e8:	ea8080e7          	jalr	-344(ra) # 1078c <__internal_syscall>
   108ec:	00050413          	mv	s0,a0
   108f0:	00010593          	mv	a1,sp
   108f4:	00048513          	mv	a0,s1
   108f8:	00000097          	auipc	ra,0x0
   108fc:	df4080e7          	jalr	-524(ra) # 106ec <conv_stat>
   10900:	0004051b          	sext.w	a0,s0
   10904:	09813083          	ld	ra,152(sp)
   10908:	09013403          	ld	s0,144(sp)
   1090c:	08813483          	ld	s1,136(sp)
   10910:	0a010113          	addi	sp,sp,160
   10914:	00008067          	ret

0000000000010918 <lstat>:
   10918:	f6010113          	addi	sp,sp,-160
   1091c:	08913423          	sd	s1,136(sp)
   10920:	00010613          	mv	a2,sp
   10924:	00058493          	mv	s1,a1
   10928:	00000713          	li	a4,0
   1092c:	00050593          	mv	a1,a0
   10930:	00000693          	li	a3,0
   10934:	40f00513          	li	a0,1039
   10938:	08113c23          	sd	ra,152(sp)
   1093c:	08813823          	sd	s0,144(sp)
   10940:	e4dff0ef          	jal	ra,1078c <__internal_syscall>
   10944:	00050413          	mv	s0,a0
   10948:	00010593          	mv	a1,sp
   1094c:	00048513          	mv	a0,s1
   10950:	d9dff0ef          	jal	ra,106ec <conv_stat>
   10954:	0004051b          	sext.w	a0,s0
   10958:	09813083          	ld	ra,152(sp)
   1095c:	09013403          	ld	s0,144(sp)
   10960:	08813483          	ld	s1,136(sp)
   10964:	0a010113          	addi	sp,sp,160
   10968:	00008067          	ret

000000000001096c <fstatat>:
   1096c:	f6010113          	addi	sp,sp,-160
   10970:	08913423          	sd	s1,136(sp)
   10974:	00068713          	mv	a4,a3
   10978:	00060493          	mv	s1,a2
   1097c:	00010693          	mv	a3,sp
   10980:	00058613          	mv	a2,a1
   10984:	00050593          	mv	a1,a0
   10988:	04f00513          	li	a0,79
   1098c:	08113c23          	sd	ra,152(sp)
   10990:	08813823          	sd	s0,144(sp)
   10994:	00000097          	auipc	ra,0x0
   10998:	df8080e7          	jalr	-520(ra) # 1078c <__internal_syscall>
   1099c:	00050413          	mv	s0,a0
   109a0:	00010593          	mv	a1,sp
   109a4:	00048513          	mv	a0,s1
   109a8:	00000097          	auipc	ra,0x0
   109ac:	d44080e7          	jalr	-700(ra) # 106ec <conv_stat>
   109b0:	0004051b          	sext.w	a0,s0
   109b4:	09813083          	ld	ra,152(sp)
   109b8:	09013403          	ld	s0,144(sp)
   109bc:	08813483          	ld	s1,136(sp)
   109c0:	0a010113          	addi	sp,sp,160
   109c4:	00008067          	ret

00000000000109c8 <access>:
   109c8:	ff010113          	addi	sp,sp,-16
   109cc:	00058613          	mv	a2,a1
   109d0:	00000713          	li	a4,0
   109d4:	00050593          	mv	a1,a0
   109d8:	00000693          	li	a3,0
   109dc:	40900513          	li	a0,1033
   109e0:	00113423          	sd	ra,8(sp)
   109e4:	da9ff0ef          	jal	ra,1078c <__internal_syscall>
   109e8:	00813083          	ld	ra,8(sp)
   109ec:	0005051b          	sext.w	a0,a0
   109f0:	01010113          	addi	sp,sp,16
   109f4:	00008067          	ret

00000000000109f8 <faccessat>:
   109f8:	ff010113          	addi	sp,sp,-16
   109fc:	00068713          	mv	a4,a3
   10a00:	00060693          	mv	a3,a2
   10a04:	00058613          	mv	a2,a1
   10a08:	00050593          	mv	a1,a0
   10a0c:	03000513          	li	a0,48
   10a10:	00113423          	sd	ra,8(sp)
   10a14:	00000097          	auipc	ra,0x0
   10a18:	d78080e7          	jalr	-648(ra) # 1078c <__internal_syscall>
   10a1c:	00813083          	ld	ra,8(sp)
   10a20:	0005051b          	sext.w	a0,a0
   10a24:	01010113          	addi	sp,sp,16
   10a28:	00008067          	ret

0000000000010a2c <close>:
   10a2c:	ff010113          	addi	sp,sp,-16
   10a30:	00050593          	mv	a1,a0
   10a34:	00000713          	li	a4,0
   10a38:	00000693          	li	a3,0
   10a3c:	00000613          	li	a2,0
   10a40:	03900513          	li	a0,57
   10a44:	00113423          	sd	ra,8(sp)
   10a48:	d45ff0ef          	jal	ra,1078c <__internal_syscall>
   10a4c:	00813083          	ld	ra,8(sp)
   10a50:	0005051b          	sext.w	a0,a0
   10a54:	01010113          	addi	sp,sp,16
   10a58:	00008067          	ret

0000000000010a5c <link>:
   10a5c:	ff010113          	addi	sp,sp,-16
   10a60:	00058613          	mv	a2,a1
   10a64:	00000713          	li	a4,0
   10a68:	00050593          	mv	a1,a0
   10a6c:	00000693          	li	a3,0
   10a70:	40100513          	li	a0,1025
   10a74:	00113423          	sd	ra,8(sp)
   10a78:	00000097          	auipc	ra,0x0
   10a7c:	d14080e7          	jalr	-748(ra) # 1078c <__internal_syscall>
   10a80:	00813083          	ld	ra,8(sp)
   10a84:	0005051b          	sext.w	a0,a0
   10a88:	01010113          	addi	sp,sp,16
   10a8c:	00008067          	ret

0000000000010a90 <unlink>:
   10a90:	ff010113          	addi	sp,sp,-16
   10a94:	00050593          	mv	a1,a0
   10a98:	00000713          	li	a4,0
   10a9c:	00000693          	li	a3,0
   10aa0:	00000613          	li	a2,0
   10aa4:	40200513          	li	a0,1026
   10aa8:	00113423          	sd	ra,8(sp)
   10aac:	ce1ff0ef          	jal	ra,1078c <__internal_syscall>
   10ab0:	00813083          	ld	ra,8(sp)
   10ab4:	0005051b          	sext.w	a0,a0
   10ab8:	01010113          	addi	sp,sp,16
   10abc:	00008067          	ret

0000000000010ac0 <execve>:
   10ac0:	ff010113          	addi	sp,sp,-16
   10ac4:	00113423          	sd	ra,8(sp)
   10ac8:	00000097          	auipc	ra,0x0
   10acc:	298080e7          	jalr	664(ra) # 10d60 <__errno>
   10ad0:	00813083          	ld	ra,8(sp)
   10ad4:	00c00793          	li	a5,12
   10ad8:	00f52023          	sw	a5,0(a0)
   10adc:	fff00513          	li	a0,-1
   10ae0:	01010113          	addi	sp,sp,16
   10ae4:	00008067          	ret

0000000000010ae8 <fork>:
   10ae8:	ff010113          	addi	sp,sp,-16
   10aec:	00113423          	sd	ra,8(sp)
   10af0:	270000ef          	jal	ra,10d60 <__errno>
   10af4:	00813083          	ld	ra,8(sp)
   10af8:	00b00793          	li	a5,11
   10afc:	00f52023          	sw	a5,0(a0)
   10b00:	fff00513          	li	a0,-1
   10b04:	01010113          	addi	sp,sp,16
   10b08:	00008067          	ret

0000000000010b0c <getpid>:
   10b0c:	00100513          	li	a0,1
   10b10:	00008067          	ret

0000000000010b14 <kill>:
   10b14:	ff010113          	addi	sp,sp,-16
   10b18:	00113423          	sd	ra,8(sp)
   10b1c:	244000ef          	jal	ra,10d60 <__errno>
   10b20:	00813083          	ld	ra,8(sp)
   10b24:	01600793          	li	a5,22
   10b28:	00f52023          	sw	a5,0(a0)
   10b2c:	fff00513          	li	a0,-1
   10b30:	01010113          	addi	sp,sp,16
   10b34:	00008067          	ret

0000000000010b38 <wait>:
   10b38:	ff010113          	addi	sp,sp,-16
   10b3c:	00113423          	sd	ra,8(sp)
   10b40:	00000097          	auipc	ra,0x0
   10b44:	220080e7          	jalr	544(ra) # 10d60 <__errno>
   10b48:	00813083          	ld	ra,8(sp)
   10b4c:	00a00793          	li	a5,10
   10b50:	00f52023          	sw	a5,0(a0)
   10b54:	fff00513          	li	a0,-1
   10b58:	01010113          	addi	sp,sp,16
   10b5c:	00008067          	ret

0000000000010b60 <isatty>:
   10b60:	f8010113          	addi	sp,sp,-128
   10b64:	00810593          	addi	a1,sp,8
   10b68:	06113c23          	sd	ra,120(sp)
   10b6c:	cfdff0ef          	jal	ra,10868 <fstat>
   10b70:	fff00793          	li	a5,-1
   10b74:	00f50863          	beq	a0,a5,10b84 <isatty+0x24>
   10b78:	00c12503          	lw	a0,12(sp)
   10b7c:	40d5551b          	sraiw	a0,a0,0xd
   10b80:	00157513          	andi	a0,a0,1
   10b84:	07813083          	ld	ra,120(sp)
   10b88:	08010113          	addi	sp,sp,128
   10b8c:	00008067          	ret

0000000000010b90 <gettimeofday>:
   10b90:	ff010113          	addi	sp,sp,-16
   10b94:	00050593          	mv	a1,a0
   10b98:	00000713          	li	a4,0
   10b9c:	00000693          	li	a3,0
   10ba0:	00000613          	li	a2,0
   10ba4:	0a900513          	li	a0,169
   10ba8:	00113423          	sd	ra,8(sp)
   10bac:	00000097          	auipc	ra,0x0
   10bb0:	be0080e7          	jalr	-1056(ra) # 1078c <__internal_syscall>
   10bb4:	00813083          	ld	ra,8(sp)
   10bb8:	0005051b          	sext.w	a0,a0
   10bbc:	01010113          	addi	sp,sp,16
   10bc0:	00008067          	ret

0000000000010bc4 <times>:
   10bc4:	fd010113          	addi	sp,sp,-48
   10bc8:	02813023          	sd	s0,32(sp)
   10bcc:	00050413          	mv	s0,a0
   10bd0:	8581b783          	ld	a5,-1960(gp) # 117d8 <t0.2572>
   10bd4:	00913c23          	sd	s1,24(sp)
   10bd8:	02113423          	sd	ra,40(sp)
   10bdc:	85818493          	addi	s1,gp,-1960 # 117d8 <t0.2572>
   10be0:	00079a63          	bnez	a5,10bf4 <times+0x30>
   10be4:	00000593          	li	a1,0
   10be8:	85818513          	addi	a0,gp,-1960 # 117d8 <t0.2572>
   10bec:	00000097          	auipc	ra,0x0
   10bf0:	fa4080e7          	jalr	-92(ra) # 10b90 <gettimeofday>
   10bf4:	00000593          	li	a1,0
   10bf8:	00010513          	mv	a0,sp
   10bfc:	00000097          	auipc	ra,0x0
   10c00:	f94080e7          	jalr	-108(ra) # 10b90 <gettimeofday>
   10c04:	0004b783          	ld	a5,0(s1)
   10c08:	00013503          	ld	a0,0(sp)
   10c0c:	000f45b7          	lui	a1,0xf4
   10c10:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22c0>
   10c14:	40f50533          	sub	a0,a0,a5
   10c18:	154000ef          	jal	ra,10d6c <__muldi3>
   10c1c:	0084b703          	ld	a4,8(s1)
   10c20:	00813783          	ld	a5,8(sp)
   10c24:	00043823          	sd	zero,16(s0)
   10c28:	00043c23          	sd	zero,24(s0)
   10c2c:	40e787b3          	sub	a5,a5,a4
   10c30:	00f50533          	add	a0,a0,a5
   10c34:	00a43023          	sd	a0,0(s0)
   10c38:	00043423          	sd	zero,8(s0)
   10c3c:	02813083          	ld	ra,40(sp)
   10c40:	02013403          	ld	s0,32(sp)
   10c44:	01813483          	ld	s1,24(sp)
   10c48:	fff00513          	li	a0,-1
   10c4c:	03010113          	addi	sp,sp,48
   10c50:	00008067          	ret

0000000000010c54 <ftime>:
   10c54:	00051423          	sh	zero,8(a0)
   10c58:	00053023          	sd	zero,0(a0)
   10c5c:	00000513          	li	a0,0
   10c60:	00008067          	ret

0000000000010c64 <utime>:
   10c64:	fff00513          	li	a0,-1
   10c68:	00008067          	ret

0000000000010c6c <chown>:
   10c6c:	fff00513          	li	a0,-1
   10c70:	00008067          	ret

0000000000010c74 <chmod>:
   10c74:	fff00513          	li	a0,-1
   10c78:	00008067          	ret

0000000000010c7c <chdir>:
   10c7c:	fff00513          	li	a0,-1
   10c80:	00008067          	ret

0000000000010c84 <getcwd>:
   10c84:	00000513          	li	a0,0
   10c88:	00008067          	ret

0000000000010c8c <sysconf>:
   10c8c:	00200793          	li	a5,2
   10c90:	00f50663          	beq	a0,a5,10c9c <sysconf+0x10>
   10c94:	fff00513          	li	a0,-1
   10c98:	00008067          	ret
   10c9c:	000f4537          	lui	a0,0xf4
   10ca0:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22c0>
   10ca4:	00008067          	ret

0000000000010ca8 <sbrk>:
   10ca8:	fe010113          	addi	sp,sp,-32
   10cac:	00813823          	sd	s0,16(sp)
   10cb0:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10cb4:	00913423          	sd	s1,8(sp)
   10cb8:	00113c23          	sd	ra,24(sp)
   10cbc:	00050493          	mv	s1,a0
   10cc0:	04079063          	bnez	a5,10d00 <sbrk+0x58>
   10cc4:	00000713          	li	a4,0
   10cc8:	00000693          	li	a3,0
   10ccc:	00000613          	li	a2,0
   10cd0:	00000593          	li	a1,0
   10cd4:	0d600513          	li	a0,214
   10cd8:	ab5ff0ef          	jal	ra,1078c <__internal_syscall>
   10cdc:	fff00793          	li	a5,-1
   10ce0:	00f51e63          	bne	a0,a5,10cfc <sbrk+0x54>
   10ce4:	fff00513          	li	a0,-1
   10ce8:	01813083          	ld	ra,24(sp)
   10cec:	01013403          	ld	s0,16(sp)
   10cf0:	00813483          	ld	s1,8(sp)
   10cf4:	02010113          	addi	sp,sp,32
   10cf8:	00008067          	ret
   10cfc:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10d00:	8181b583          	ld	a1,-2024(gp) # 11798 <_edata>
   10d04:	00000713          	li	a4,0
   10d08:	00000693          	li	a3,0
   10d0c:	00b485b3          	add	a1,s1,a1
   10d10:	00000613          	li	a2,0
   10d14:	0d600513          	li	a0,214
   10d18:	a75ff0ef          	jal	ra,1078c <__internal_syscall>
   10d1c:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10d20:	00f484b3          	add	s1,s1,a5
   10d24:	fc9510e3          	bne	a0,s1,10ce4 <sbrk+0x3c>
   10d28:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10d2c:	00078513          	mv	a0,a5
   10d30:	fb9ff06f          	j	10ce8 <sbrk+0x40>

0000000000010d34 <_exit>:
   10d34:	ff010113          	addi	sp,sp,-16
   10d38:	00050593          	mv	a1,a0
   10d3c:	00000713          	li	a4,0
   10d40:	00000693          	li	a3,0
   10d44:	00000613          	li	a2,0
   10d48:	05d00513          	li	a0,93
   10d4c:	00113423          	sd	ra,8(sp)
   10d50:	00000097          	auipc	ra,0x0
   10d54:	a3c080e7          	jalr	-1476(ra) # 1078c <__internal_syscall>
   10d58:	0000006f          	j	10d58 <_exit+0x24>
   10d5c:	0000                	unimp
	...

0000000000010d60 <__errno>:
   10d60:	8101b503          	ld	a0,-2032(gp) # 11790 <_impure_ptr>
   10d64:	00008067          	ret
   10d68:	0000                	unimp
	...

0000000000010d6c <__muldi3>:
   10d6c:	00050613          	mv	a2,a0
   10d70:	00000513          	li	a0,0
   10d74:	0015f693          	andi	a3,a1,1
   10d78:	00068463          	beqz	a3,10d80 <__muldi3+0x14>
   10d7c:	00c50533          	add	a0,a0,a2
   10d80:	0015d593          	srli	a1,a1,0x1
   10d84:	00161613          	slli	a2,a2,0x1
   10d88:	fe0596e3          	bnez	a1,10d74 <__muldi3+0x8>
   10d8c:	00008067          	ret
   10d90:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010d94 <__EH_FRAME_BEGIN__>:
   10d94:	0000                	unimp
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

0000000000011010 <result>:
   11010:	0001                	nop
   11012:	0000                	unimp
   11014:	0002                	0x2
   11016:	0000                	unimp
   11018:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   1101c:	0004                	addi	s1,sp,0
   1101e:	0000                	unimp
   11020:	0005                	c.addi	zero,1
   11022:	0000                	unimp
   11024:	0002                	0x2
   11026:	0000                	unimp
   11028:	0004                	addi	s1,sp,0
   1102a:	0000                	unimp
   1102c:	0006                	0x6
   1102e:	0000                	unimp
   11030:	0008                	addi	a0,sp,0
   11032:	0000                	unimp
   11034:	000a                	0xa
	...

0000000000011038 <impure_data>:
	...
   11040:	1570                	addi	a2,sp,684
   11042:	0001                	nop
   11044:	0000                	unimp
   11046:	0000                	unimp
   11048:	1620                	addi	s0,sp,808
   1104a:	0001                	nop
   1104c:	0000                	unimp
   1104e:	0000                	unimp
   11050:	16d0                	addi	a2,sp,868
   11052:	0001                	nop
	...
   11120:	0001                	nop
   11122:	0000                	unimp
   11124:	0000                	unimp
   11126:	0000                	unimp
   11128:	330e                	fld	ft6,224(sp)
   1112a:	abcd                	j	1171c <impure_data+0x6e4>
   1112c:	1234                	addi	a3,sp,296
   1112e:	e66d                	bnez	a2,11218 <impure_data+0x1e0>
   11130:	deec                	sw	a1,124(a3)
   11132:	0005                	c.addi	zero,1
   11134:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011780 <__TMC_END__>:
	...

0000000000011788 <_global_impure_ptr>:
   11788:	1038                	addi	a4,sp,40
   1178a:	0001                	nop
   1178c:	0000                	unimp
	...

0000000000011790 <_impure_ptr>:
   11790:	1038                	addi	a4,sp,40
   11792:	0001                	nop
   11794:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011798 <__bss_start>:
	...

Disassembly of section .bss:

00000000000117a0 <completed.5182>:
	...

00000000000117a8 <object.5187>:
	...

00000000000117d8 <t0.2572>:
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
  10:	0d6c                	addi	a1,sp,668
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
  10:	0d6c                	addi	a1,sp,668
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0d90                	addi	a2,sp,720
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
  2c:	7364616f          	jal	sp,46762 <__global_pointer$+0x347e2>
  30:	6572662f          	0x6572662f
  34:	6465                	lui	s0,0x19
  36:	722f6d6f          	jal	s10,f6758 <__global_pointer$+0xe47d8>
  3a:	656b636f          	jal	t1,b6690 <__global_pointer$+0xa4710>
  3e:	2d74                	fld	fa3,216(a0)
  40:	70696863          	bltu	s2,t1,750 <_start-0xf960>
  44:	7369722f          	0x7369722f
  48:	742d7663          	bleu	sp,s10,794 <_start-0xf91c>
  4c:	736c6f6f          	jal	t5,c6782 <__global_pointer$+0xb4802>
  50:	7369722f          	0x7369722f
  54:	672d7663          	bleu	s2,s10,6c0 <_start-0xf9f0>
  58:	756e                	ld	a0,248(sp)
  5a:	742d                	lui	s0,0xfffeb
  5c:	636c6f6f          	jal	t5,c6692 <__global_pointer$+0xb4712>
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
  80:	69666e6f          	jal	t3,66716 <__global_pointer$+0x54796>
  84:	69722f67          	0x69722f67
  88:	00766373          	csrrsi	t1,0x7,12
  8c:	6d00                	ld	s0,24(a0)
  8e:	6c75                	lui	s8,0x1d
  90:	6964                	ld	s1,208(a0)
  92:	00532e33          	slt	t3,t1,t0
  96:	0001                	nop
  98:	0000                	unimp
  9a:	0900                	addi	s0,sp,144
  9c:	6c02                	ld	s8,0(sp)
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
   a:	6f442f6f          	jal	t5,426fe <__global_pointer$+0x3077e>
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
  32:	2f736c6f          	jal	s8,36b28 <__global_pointer$+0x24ba8>
  36:	6972                	ld	s2,280(sp)
  38:	2d766373          	csrrsi	t1,0x2d7,12
  3c:	2d756e67          	0x2d756e67
  40:	6f74                	ld	a3,216(a4)
  42:	68636c6f          	jal	s8,366c8 <__global_pointer$+0x24748>
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
  84:	6f442f6f          	jal	t5,42778 <__global_pointer$+0x307f8>
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
  ac:	2f736c6f          	jal	s8,36ba2 <__global_pointer$+0x24c22>
  b0:	6972                	ld	s2,280(sp)
  b2:	2d766373          	csrrsi	t1,0x2d7,12
  b6:	2d756e67          	0x2d756e67
  ba:	6f74                	ld	a3,216(a4)
  bc:	68636c6f          	jal	s8,36742 <__global_pointer$+0x247c2>
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
