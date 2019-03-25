
add.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ed018193          	addi	gp,gp,-304 # 11f80 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11798 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117e8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	38c000ef          	jal	ra,10454 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	26850513          	addi	a0,a0,616 # 10334 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	20c080e7          	jalr	524(ra) # 102e0 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2d0080e7          	jalr	720(ra) # 103ac <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	20030067          	jr	512(t1) # 102f8 <exit>

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
   1019c:	d8050513          	addi	a0,a0,-640 # 10d80 <__EH_FRAME_BEGIN__>
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
   101e0:	d8050513          	addi	a0,a0,-640 # 10d80 <__EH_FRAME_BEGIN__>
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
   10210:	0480006f          	j	10258 <main+0x5c>
   10214:	000117b7          	lui	a5,0x11
   10218:	fec42703          	lw	a4,-20(s0)
   1021c:	00271713          	slli	a4,a4,0x2
   10220:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10224:	00f707b3          	add	a5,a4,a5
   10228:	0007a783          	lw	a5,0(a5)
   1022c:	00a7879b          	addiw	a5,a5,10
   10230:	0007871b          	sext.w	a4,a5
   10234:	000117b7          	lui	a5,0x11
   10238:	fec42683          	lw	a3,-20(s0)
   1023c:	00269693          	slli	a3,a3,0x2
   10240:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10244:	00f687b3          	add	a5,a3,a5
   10248:	00e7a023          	sw	a4,0(a5)
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	0017879b          	addiw	a5,a5,1
   10254:	fef42623          	sw	a5,-20(s0)
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	0007871b          	sext.w	a4,a5
   10260:	00400793          	li	a5,4
   10264:	fae7d8e3          	ble	a4,a5,10214 <main+0x18>
   10268:	00500793          	li	a5,5
   1026c:	fef42623          	sw	a5,-20(s0)
   10270:	0480006f          	j	102b8 <main+0xbc>
   10274:	000117b7          	lui	a5,0x11
   10278:	fec42703          	lw	a4,-20(s0)
   1027c:	00271713          	slli	a4,a4,0x2
   10280:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10284:	00f707b3          	add	a5,a4,a5
   10288:	0007a783          	lw	a5,0(a5)
   1028c:	ffb7879b          	addiw	a5,a5,-5
   10290:	0007871b          	sext.w	a4,a5
   10294:	000117b7          	lui	a5,0x11
   10298:	fec42683          	lw	a3,-20(s0)
   1029c:	00269693          	slli	a3,a3,0x2
   102a0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102a4:	00f687b3          	add	a5,a3,a5
   102a8:	00e7a023          	sw	a4,0(a5)
   102ac:	fec42783          	lw	a5,-20(s0)
   102b0:	0017879b          	addiw	a5,a5,1
   102b4:	fef42623          	sw	a5,-20(s0)
   102b8:	fec42783          	lw	a5,-20(s0)
   102bc:	0007871b          	sext.w	a4,a5
   102c0:	00900793          	li	a5,9
   102c4:	fae7d8e3          	ble	a4,a5,10274 <main+0x78>
   102c8:	00000793          	li	a5,0
   102cc:	00078513          	mv	a0,a5
   102d0:	01813403          	ld	s0,24(sp)
   102d4:	02010113          	addi	sp,sp,32
   102d8:	00008067          	ret
   102dc:	0000                	unimp
	...

00000000000102e0 <atexit>:
   102e0:	00050593          	mv	a1,a0
   102e4:	00000693          	li	a3,0
   102e8:	00000613          	li	a2,0
   102ec:	00000513          	li	a0,0
   102f0:	2400006f          	j	10530 <__register_exitproc>
   102f4:	0000                	unimp
	...

00000000000102f8 <exit>:
   102f8:	ff010113          	addi	sp,sp,-16
   102fc:	00000593          	li	a1,0
   10300:	00813023          	sd	s0,0(sp)
   10304:	00113423          	sd	ra,8(sp)
   10308:	00050413          	mv	s0,a0
   1030c:	2b0000ef          	jal	ra,105bc <__call_exitprocs>
   10310:	000117b7          	lui	a5,0x11
   10314:	7887b503          	ld	a0,1928(a5) # 11788 <_global_impure_ptr>
   10318:	05853783          	ld	a5,88(a0)
   1031c:	00078463          	beqz	a5,10324 <exit+0x2c>
   10320:	000780e7          	jalr	a5
   10324:	00040513          	mv	a0,s0
   10328:	00001097          	auipc	ra,0x1
   1032c:	9f8080e7          	jalr	-1544(ra) # 10d20 <_exit>
   10330:	0000                	unimp
	...

0000000000010334 <__libc_fini_array>:
   10334:	fe010113          	addi	sp,sp,-32
   10338:	000117b7          	lui	a5,0x11
   1033c:	00011737          	lui	a4,0x11
   10340:	00813823          	sd	s0,16(sp)
   10344:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10348:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1034c:	40e40433          	sub	s0,s0,a4
   10350:	00913423          	sd	s1,8(sp)
   10354:	01213023          	sd	s2,0(sp)
   10358:	00113c23          	sd	ra,24(sp)
   1035c:	40345413          	srai	s0,s0,0x3
   10360:	00000493          	li	s1,0
   10364:	01078913          	addi	s2,a5,16
   10368:	02941063          	bne	s0,s1,10388 <__libc_fini_array+0x54>
   1036c:	01013403          	ld	s0,16(sp)
   10370:	01813083          	ld	ra,24(sp)
   10374:	00813483          	ld	s1,8(sp)
   10378:	00013903          	ld	s2,0(sp)
   1037c:	02010113          	addi	sp,sp,32
   10380:	00000317          	auipc	t1,0x0
   10384:	d8030067          	jr	-640(t1) # 10100 <_fini>
   10388:	ff800593          	li	a1,-8
   1038c:	00048513          	mv	a0,s1
   10390:	1c9000ef          	jal	ra,10d58 <__muldi3>
   10394:	00a90533          	add	a0,s2,a0
   10398:	ff853783          	ld	a5,-8(a0)
   1039c:	00148493          	addi	s1,s1,1
   103a0:	000780e7          	jalr	a5
   103a4:	fc5ff06f          	j	10368 <__libc_fini_array+0x34>
   103a8:	0000                	unimp
	...

00000000000103ac <__libc_init_array>:
   103ac:	fe010113          	addi	sp,sp,-32
   103b0:	00813823          	sd	s0,16(sp)
   103b4:	00913423          	sd	s1,8(sp)
   103b8:	00011437          	lui	s0,0x11
   103bc:	000114b7          	lui	s1,0x11
   103c0:	00048793          	mv	a5,s1
   103c4:	00040413          	mv	s0,s0
   103c8:	40f40433          	sub	s0,s0,a5
   103cc:	01213023          	sd	s2,0(sp)
   103d0:	00113c23          	sd	ra,24(sp)
   103d4:	40345413          	srai	s0,s0,0x3
   103d8:	00048493          	mv	s1,s1
   103dc:	00000913          	li	s2,0
   103e0:	04891463          	bne	s2,s0,10428 <__libc_init_array+0x7c>
   103e4:	000114b7          	lui	s1,0x11
   103e8:	00000097          	auipc	ra,0x0
   103ec:	d18080e7          	jalr	-744(ra) # 10100 <_fini>
   103f0:	00011437          	lui	s0,0x11
   103f4:	00048793          	mv	a5,s1
   103f8:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   103fc:	40f40433          	sub	s0,s0,a5
   10400:	40345413          	srai	s0,s0,0x3
   10404:	00048493          	mv	s1,s1
   10408:	00000913          	li	s2,0
   1040c:	02891863          	bne	s2,s0,1043c <__libc_init_array+0x90>
   10410:	01813083          	ld	ra,24(sp)
   10414:	01013403          	ld	s0,16(sp)
   10418:	00813483          	ld	s1,8(sp)
   1041c:	00013903          	ld	s2,0(sp)
   10420:	02010113          	addi	sp,sp,32
   10424:	00008067          	ret
   10428:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   1042c:	00190913          	addi	s2,s2,1
   10430:	00848493          	addi	s1,s1,8
   10434:	000780e7          	jalr	a5
   10438:	fa9ff06f          	j	103e0 <__libc_init_array+0x34>
   1043c:	0004b783          	ld	a5,0(s1)
   10440:	00190913          	addi	s2,s2,1
   10444:	00848493          	addi	s1,s1,8
   10448:	000780e7          	jalr	a5
   1044c:	fc1ff06f          	j	1040c <__libc_init_array+0x60>
   10450:	0000                	unimp
	...

0000000000010454 <memset>:
   10454:	00f00813          	li	a6,15
   10458:	00050713          	mv	a4,a0
   1045c:	02c87a63          	bleu	a2,a6,10490 <memset+0x3c>
   10460:	00f77793          	andi	a5,a4,15
   10464:	0a079063          	bnez	a5,10504 <memset+0xb0>
   10468:	06059e63          	bnez	a1,104e4 <memset+0x90>
   1046c:	ff067693          	andi	a3,a2,-16
   10470:	00f67613          	andi	a2,a2,15
   10474:	00e686b3          	add	a3,a3,a4
   10478:	00b73023          	sd	a1,0(a4)
   1047c:	00b73423          	sd	a1,8(a4)
   10480:	01070713          	addi	a4,a4,16
   10484:	fed76ae3          	bltu	a4,a3,10478 <memset+0x24>
   10488:	00061463          	bnez	a2,10490 <memset+0x3c>
   1048c:	00008067          	ret
   10490:	40c806b3          	sub	a3,a6,a2
   10494:	00269693          	slli	a3,a3,0x2
   10498:	00000297          	auipc	t0,0x0
   1049c:	005686b3          	add	a3,a3,t0
   104a0:	00c68067          	jr	12(a3)
   104a4:	00b70723          	sb	a1,14(a4)
   104a8:	00b706a3          	sb	a1,13(a4)
   104ac:	00b70623          	sb	a1,12(a4)
   104b0:	00b705a3          	sb	a1,11(a4)
   104b4:	00b70523          	sb	a1,10(a4)
   104b8:	00b704a3          	sb	a1,9(a4)
   104bc:	00b70423          	sb	a1,8(a4)
   104c0:	00b703a3          	sb	a1,7(a4)
   104c4:	00b70323          	sb	a1,6(a4)
   104c8:	00b702a3          	sb	a1,5(a4)
   104cc:	00b70223          	sb	a1,4(a4)
   104d0:	00b701a3          	sb	a1,3(a4)
   104d4:	00b70123          	sb	a1,2(a4)
   104d8:	00b700a3          	sb	a1,1(a4)
   104dc:	00b70023          	sb	a1,0(a4)
   104e0:	00008067          	ret
   104e4:	0ff5f593          	andi	a1,a1,255
   104e8:	00859693          	slli	a3,a1,0x8
   104ec:	00d5e5b3          	or	a1,a1,a3
   104f0:	01059693          	slli	a3,a1,0x10
   104f4:	00d5e5b3          	or	a1,a1,a3
   104f8:	02059693          	slli	a3,a1,0x20
   104fc:	00d5e5b3          	or	a1,a1,a3
   10500:	f6dff06f          	j	1046c <memset+0x18>
   10504:	00279693          	slli	a3,a5,0x2
   10508:	00000297          	auipc	t0,0x0
   1050c:	005686b3          	add	a3,a3,t0
   10510:	00008293          	mv	t0,ra
   10514:	f98680e7          	jalr	-104(a3)
   10518:	00028093          	mv	ra,t0
   1051c:	ff078793          	addi	a5,a5,-16
   10520:	40f70733          	sub	a4,a4,a5
   10524:	00f60633          	add	a2,a2,a5
   10528:	f6c874e3          	bleu	a2,a6,10490 <memset+0x3c>
   1052c:	f3dff06f          	j	10468 <memset+0x14>

0000000000010530 <__register_exitproc>:
   10530:	000117b7          	lui	a5,0x11
   10534:	7887b703          	ld	a4,1928(a5) # 11788 <_global_impure_ptr>
   10538:	00050313          	mv	t1,a0
   1053c:	1f873783          	ld	a5,504(a4)
   10540:	00079663          	bnez	a5,1054c <__register_exitproc+0x1c>
   10544:	20070793          	addi	a5,a4,512
   10548:	1ef73c23          	sd	a5,504(a4)
   1054c:	0087a703          	lw	a4,8(a5)
   10550:	01f00813          	li	a6,31
   10554:	fff00513          	li	a0,-1
   10558:	04e84e63          	blt	a6,a4,105b4 <__register_exitproc+0x84>
   1055c:	02030e63          	beqz	t1,10598 <__register_exitproc+0x68>
   10560:	00371813          	slli	a6,a4,0x3
   10564:	01078833          	add	a6,a5,a6
   10568:	10c83823          	sd	a2,272(a6)
   1056c:	3107a883          	lw	a7,784(a5)
   10570:	00100613          	li	a2,1
   10574:	00e6163b          	sllw	a2,a2,a4
   10578:	00c8e8b3          	or	a7,a7,a2
   1057c:	3117a823          	sw	a7,784(a5)
   10580:	20d83823          	sd	a3,528(a6)
   10584:	00200693          	li	a3,2
   10588:	00d31863          	bne	t1,a3,10598 <__register_exitproc+0x68>
   1058c:	3147a683          	lw	a3,788(a5)
   10590:	00c6e633          	or	a2,a3,a2
   10594:	30c7aa23          	sw	a2,788(a5)
   10598:	0017069b          	addiw	a3,a4,1
   1059c:	00270713          	addi	a4,a4,2
   105a0:	00371713          	slli	a4,a4,0x3
   105a4:	00d7a423          	sw	a3,8(a5)
   105a8:	00e787b3          	add	a5,a5,a4
   105ac:	00b7b023          	sd	a1,0(a5)
   105b0:	00000513          	li	a0,0
   105b4:	00008067          	ret
   105b8:	0000                	unimp
	...

00000000000105bc <__call_exitprocs>:
   105bc:	fb010113          	addi	sp,sp,-80
   105c0:	000117b7          	lui	a5,0x11
   105c4:	03313423          	sd	s3,40(sp)
   105c8:	7887b983          	ld	s3,1928(a5) # 11788 <_global_impure_ptr>
   105cc:	03413023          	sd	s4,32(sp)
   105d0:	01513c23          	sd	s5,24(sp)
   105d4:	01613823          	sd	s6,16(sp)
   105d8:	04113423          	sd	ra,72(sp)
   105dc:	04813023          	sd	s0,64(sp)
   105e0:	02913c23          	sd	s1,56(sp)
   105e4:	03213823          	sd	s2,48(sp)
   105e8:	01713423          	sd	s7,8(sp)
   105ec:	00050a93          	mv	s5,a0
   105f0:	00058a13          	mv	s4,a1
   105f4:	00100b13          	li	s6,1
   105f8:	1f89b403          	ld	s0,504(s3)
   105fc:	00040c63          	beqz	s0,10614 <__call_exitprocs+0x58>
   10600:	00842483          	lw	s1,8(s0)
   10604:	fff4849b          	addiw	s1,s1,-1
   10608:	00349913          	slli	s2,s1,0x3
   1060c:	01240933          	add	s2,s0,s2
   10610:	0204d863          	bgez	s1,10640 <__call_exitprocs+0x84>
   10614:	04813083          	ld	ra,72(sp)
   10618:	04013403          	ld	s0,64(sp)
   1061c:	03813483          	ld	s1,56(sp)
   10620:	03013903          	ld	s2,48(sp)
   10624:	02813983          	ld	s3,40(sp)
   10628:	02013a03          	ld	s4,32(sp)
   1062c:	01813a83          	ld	s5,24(sp)
   10630:	01013b03          	ld	s6,16(sp)
   10634:	00813b83          	ld	s7,8(sp)
   10638:	05010113          	addi	sp,sp,80
   1063c:	00008067          	ret
   10640:	000a0c63          	beqz	s4,10658 <__call_exitprocs+0x9c>
   10644:	21093783          	ld	a5,528(s2)
   10648:	01478863          	beq	a5,s4,10658 <__call_exitprocs+0x9c>
   1064c:	fff4849b          	addiw	s1,s1,-1
   10650:	ff890913          	addi	s2,s2,-8
   10654:	fbdff06f          	j	10610 <__call_exitprocs+0x54>
   10658:	00842783          	lw	a5,8(s0)
   1065c:	01093683          	ld	a3,16(s2)
   10660:	fff7879b          	addiw	a5,a5,-1
   10664:	02979e63          	bne	a5,s1,106a0 <__call_exitprocs+0xe4>
   10668:	00942423          	sw	s1,8(s0)
   1066c:	fe0680e3          	beqz	a3,1064c <__call_exitprocs+0x90>
   10670:	31042703          	lw	a4,784(s0)
   10674:	009b163b          	sllw	a2,s6,s1
   10678:	00842b83          	lw	s7,8(s0)
   1067c:	00c77733          	and	a4,a4,a2
   10680:	0007071b          	sext.w	a4,a4
   10684:	02071263          	bnez	a4,106a8 <__call_exitprocs+0xec>
   10688:	000680e7          	jalr	a3
   1068c:	00842703          	lw	a4,8(s0)
   10690:	1f89b783          	ld	a5,504(s3)
   10694:	f77712e3          	bne	a4,s7,105f8 <__call_exitprocs+0x3c>
   10698:	faf40ae3          	beq	s0,a5,1064c <__call_exitprocs+0x90>
   1069c:	f5dff06f          	j	105f8 <__call_exitprocs+0x3c>
   106a0:	00093823          	sd	zero,16(s2)
   106a4:	fc9ff06f          	j	1066c <__call_exitprocs+0xb0>
   106a8:	31442783          	lw	a5,788(s0)
   106ac:	11093583          	ld	a1,272(s2)
   106b0:	00c7f7b3          	and	a5,a5,a2
   106b4:	0007879b          	sext.w	a5,a5
   106b8:	00079863          	bnez	a5,106c8 <__call_exitprocs+0x10c>
   106bc:	000a8513          	mv	a0,s5
   106c0:	000680e7          	jalr	a3
   106c4:	fc9ff06f          	j	1068c <__call_exitprocs+0xd0>
   106c8:	00058513          	mv	a0,a1
   106cc:	000680e7          	jalr	a3
   106d0:	fbdff06f          	j	1068c <__call_exitprocs+0xd0>
   106d4:	0000                	unimp
	...

00000000000106d8 <conv_stat>:
   106d8:	0005b783          	ld	a5,0(a1)
   106dc:	00f51023          	sh	a5,0(a0)
   106e0:	0085b783          	ld	a5,8(a1)
   106e4:	00f51123          	sh	a5,2(a0)
   106e8:	0105a783          	lw	a5,16(a1)
   106ec:	00f52223          	sw	a5,4(a0)
   106f0:	0145a783          	lw	a5,20(a1)
   106f4:	00f51423          	sh	a5,8(a0)
   106f8:	0185a783          	lw	a5,24(a1)
   106fc:	00f51523          	sh	a5,10(a0)
   10700:	01c5a783          	lw	a5,28(a1)
   10704:	00f51623          	sh	a5,12(a0)
   10708:	0205b783          	ld	a5,32(a1)
   1070c:	00f51723          	sh	a5,14(a0)
   10710:	0305b783          	ld	a5,48(a1)
   10714:	00f53823          	sd	a5,16(a0)
   10718:	0405b783          	ld	a5,64(a1)
   1071c:	04f53823          	sd	a5,80(a0)
   10720:	0385a783          	lw	a5,56(a1)
   10724:	04f53423          	sd	a5,72(a0)
   10728:	0485b783          	ld	a5,72(a1)
   1072c:	00f53c23          	sd	a5,24(a0)
   10730:	0585b783          	ld	a5,88(a1)
   10734:	02f53423          	sd	a5,40(a0)
   10738:	0685b783          	ld	a5,104(a1)
   1073c:	02f53c23          	sd	a5,56(a0)
   10740:	00008067          	ret

0000000000010744 <__syscall_error>:
   10744:	ff010113          	addi	sp,sp,-16
   10748:	00813023          	sd	s0,0(sp)
   1074c:	00113423          	sd	ra,8(sp)
   10750:	00050413          	mv	s0,a0
   10754:	00000097          	auipc	ra,0x0
   10758:	5f8080e7          	jalr	1528(ra) # 10d4c <__errno>
   1075c:	408007bb          	negw	a5,s0
   10760:	00813083          	ld	ra,8(sp)
   10764:	00013403          	ld	s0,0(sp)
   10768:	00f52023          	sw	a5,0(a0)
   1076c:	fff00513          	li	a0,-1
   10770:	01010113          	addi	sp,sp,16
   10774:	00008067          	ret

0000000000010778 <__internal_syscall>:
   10778:	00050893          	mv	a7,a0
   1077c:	00058513          	mv	a0,a1
   10780:	00060593          	mv	a1,a2
   10784:	00068613          	mv	a2,a3
   10788:	00070693          	mv	a3,a4
   1078c:	00000073          	ecall
   10790:	00055663          	bgez	a0,1079c <__internal_syscall+0x24>
   10794:	00000317          	auipc	t1,0x0
   10798:	fb030067          	jr	-80(t1) # 10744 <__syscall_error>
   1079c:	00008067          	ret

00000000000107a0 <open>:
   107a0:	ff010113          	addi	sp,sp,-16
   107a4:	00060693          	mv	a3,a2
   107a8:	00000713          	li	a4,0
   107ac:	00058613          	mv	a2,a1
   107b0:	00050593          	mv	a1,a0
   107b4:	40000513          	li	a0,1024
   107b8:	00113423          	sd	ra,8(sp)
   107bc:	00000097          	auipc	ra,0x0
   107c0:	fbc080e7          	jalr	-68(ra) # 10778 <__internal_syscall>
   107c4:	00813083          	ld	ra,8(sp)
   107c8:	0005051b          	sext.w	a0,a0
   107cc:	01010113          	addi	sp,sp,16
   107d0:	00008067          	ret

00000000000107d4 <openat>:
   107d4:	ff010113          	addi	sp,sp,-16
   107d8:	00068713          	mv	a4,a3
   107dc:	00060693          	mv	a3,a2
   107e0:	00058613          	mv	a2,a1
   107e4:	00050593          	mv	a1,a0
   107e8:	03800513          	li	a0,56
   107ec:	00113423          	sd	ra,8(sp)
   107f0:	f89ff0ef          	jal	ra,10778 <__internal_syscall>
   107f4:	00813083          	ld	ra,8(sp)
   107f8:	0005051b          	sext.w	a0,a0
   107fc:	01010113          	addi	sp,sp,16
   10800:	00008067          	ret

0000000000010804 <lseek>:
   10804:	00060693          	mv	a3,a2
   10808:	00000713          	li	a4,0
   1080c:	00058613          	mv	a2,a1
   10810:	00050593          	mv	a1,a0
   10814:	03e00513          	li	a0,62
   10818:	00000317          	auipc	t1,0x0
   1081c:	f6030067          	jr	-160(t1) # 10778 <__internal_syscall>

0000000000010820 <read>:
   10820:	00060693          	mv	a3,a2
   10824:	00000713          	li	a4,0
   10828:	00058613          	mv	a2,a1
   1082c:	00050593          	mv	a1,a0
   10830:	03f00513          	li	a0,63
   10834:	f45ff06f          	j	10778 <__internal_syscall>

0000000000010838 <write>:
   10838:	00060693          	mv	a3,a2
   1083c:	00000713          	li	a4,0
   10840:	00058613          	mv	a2,a1
   10844:	00050593          	mv	a1,a0
   10848:	04000513          	li	a0,64
   1084c:	00000317          	auipc	t1,0x0
   10850:	f2c30067          	jr	-212(t1) # 10778 <__internal_syscall>

0000000000010854 <fstat>:
   10854:	f6010113          	addi	sp,sp,-160
   10858:	08913423          	sd	s1,136(sp)
   1085c:	00010613          	mv	a2,sp
   10860:	00058493          	mv	s1,a1
   10864:	00000713          	li	a4,0
   10868:	00050593          	mv	a1,a0
   1086c:	00000693          	li	a3,0
   10870:	05000513          	li	a0,80
   10874:	08113c23          	sd	ra,152(sp)
   10878:	08813823          	sd	s0,144(sp)
   1087c:	efdff0ef          	jal	ra,10778 <__internal_syscall>
   10880:	00050413          	mv	s0,a0
   10884:	00010593          	mv	a1,sp
   10888:	00048513          	mv	a0,s1
   1088c:	e4dff0ef          	jal	ra,106d8 <conv_stat>
   10890:	0004051b          	sext.w	a0,s0
   10894:	09813083          	ld	ra,152(sp)
   10898:	09013403          	ld	s0,144(sp)
   1089c:	08813483          	ld	s1,136(sp)
   108a0:	0a010113          	addi	sp,sp,160
   108a4:	00008067          	ret

00000000000108a8 <stat>:
   108a8:	f6010113          	addi	sp,sp,-160
   108ac:	08913423          	sd	s1,136(sp)
   108b0:	00010613          	mv	a2,sp
   108b4:	00058493          	mv	s1,a1
   108b8:	00000713          	li	a4,0
   108bc:	00050593          	mv	a1,a0
   108c0:	00000693          	li	a3,0
   108c4:	40e00513          	li	a0,1038
   108c8:	08113c23          	sd	ra,152(sp)
   108cc:	08813823          	sd	s0,144(sp)
   108d0:	00000097          	auipc	ra,0x0
   108d4:	ea8080e7          	jalr	-344(ra) # 10778 <__internal_syscall>
   108d8:	00050413          	mv	s0,a0
   108dc:	00010593          	mv	a1,sp
   108e0:	00048513          	mv	a0,s1
   108e4:	00000097          	auipc	ra,0x0
   108e8:	df4080e7          	jalr	-524(ra) # 106d8 <conv_stat>
   108ec:	0004051b          	sext.w	a0,s0
   108f0:	09813083          	ld	ra,152(sp)
   108f4:	09013403          	ld	s0,144(sp)
   108f8:	08813483          	ld	s1,136(sp)
   108fc:	0a010113          	addi	sp,sp,160
   10900:	00008067          	ret

0000000000010904 <lstat>:
   10904:	f6010113          	addi	sp,sp,-160
   10908:	08913423          	sd	s1,136(sp)
   1090c:	00010613          	mv	a2,sp
   10910:	00058493          	mv	s1,a1
   10914:	00000713          	li	a4,0
   10918:	00050593          	mv	a1,a0
   1091c:	00000693          	li	a3,0
   10920:	40f00513          	li	a0,1039
   10924:	08113c23          	sd	ra,152(sp)
   10928:	08813823          	sd	s0,144(sp)
   1092c:	e4dff0ef          	jal	ra,10778 <__internal_syscall>
   10930:	00050413          	mv	s0,a0
   10934:	00010593          	mv	a1,sp
   10938:	00048513          	mv	a0,s1
   1093c:	d9dff0ef          	jal	ra,106d8 <conv_stat>
   10940:	0004051b          	sext.w	a0,s0
   10944:	09813083          	ld	ra,152(sp)
   10948:	09013403          	ld	s0,144(sp)
   1094c:	08813483          	ld	s1,136(sp)
   10950:	0a010113          	addi	sp,sp,160
   10954:	00008067          	ret

0000000000010958 <fstatat>:
   10958:	f6010113          	addi	sp,sp,-160
   1095c:	08913423          	sd	s1,136(sp)
   10960:	00068713          	mv	a4,a3
   10964:	00060493          	mv	s1,a2
   10968:	00010693          	mv	a3,sp
   1096c:	00058613          	mv	a2,a1
   10970:	00050593          	mv	a1,a0
   10974:	04f00513          	li	a0,79
   10978:	08113c23          	sd	ra,152(sp)
   1097c:	08813823          	sd	s0,144(sp)
   10980:	00000097          	auipc	ra,0x0
   10984:	df8080e7          	jalr	-520(ra) # 10778 <__internal_syscall>
   10988:	00050413          	mv	s0,a0
   1098c:	00010593          	mv	a1,sp
   10990:	00048513          	mv	a0,s1
   10994:	00000097          	auipc	ra,0x0
   10998:	d44080e7          	jalr	-700(ra) # 106d8 <conv_stat>
   1099c:	0004051b          	sext.w	a0,s0
   109a0:	09813083          	ld	ra,152(sp)
   109a4:	09013403          	ld	s0,144(sp)
   109a8:	08813483          	ld	s1,136(sp)
   109ac:	0a010113          	addi	sp,sp,160
   109b0:	00008067          	ret

00000000000109b4 <access>:
   109b4:	ff010113          	addi	sp,sp,-16
   109b8:	00058613          	mv	a2,a1
   109bc:	00000713          	li	a4,0
   109c0:	00050593          	mv	a1,a0
   109c4:	00000693          	li	a3,0
   109c8:	40900513          	li	a0,1033
   109cc:	00113423          	sd	ra,8(sp)
   109d0:	da9ff0ef          	jal	ra,10778 <__internal_syscall>
   109d4:	00813083          	ld	ra,8(sp)
   109d8:	0005051b          	sext.w	a0,a0
   109dc:	01010113          	addi	sp,sp,16
   109e0:	00008067          	ret

00000000000109e4 <faccessat>:
   109e4:	ff010113          	addi	sp,sp,-16
   109e8:	00068713          	mv	a4,a3
   109ec:	00060693          	mv	a3,a2
   109f0:	00058613          	mv	a2,a1
   109f4:	00050593          	mv	a1,a0
   109f8:	03000513          	li	a0,48
   109fc:	00113423          	sd	ra,8(sp)
   10a00:	00000097          	auipc	ra,0x0
   10a04:	d78080e7          	jalr	-648(ra) # 10778 <__internal_syscall>
   10a08:	00813083          	ld	ra,8(sp)
   10a0c:	0005051b          	sext.w	a0,a0
   10a10:	01010113          	addi	sp,sp,16
   10a14:	00008067          	ret

0000000000010a18 <close>:
   10a18:	ff010113          	addi	sp,sp,-16
   10a1c:	00050593          	mv	a1,a0
   10a20:	00000713          	li	a4,0
   10a24:	00000693          	li	a3,0
   10a28:	00000613          	li	a2,0
   10a2c:	03900513          	li	a0,57
   10a30:	00113423          	sd	ra,8(sp)
   10a34:	d45ff0ef          	jal	ra,10778 <__internal_syscall>
   10a38:	00813083          	ld	ra,8(sp)
   10a3c:	0005051b          	sext.w	a0,a0
   10a40:	01010113          	addi	sp,sp,16
   10a44:	00008067          	ret

0000000000010a48 <link>:
   10a48:	ff010113          	addi	sp,sp,-16
   10a4c:	00058613          	mv	a2,a1
   10a50:	00000713          	li	a4,0
   10a54:	00050593          	mv	a1,a0
   10a58:	00000693          	li	a3,0
   10a5c:	40100513          	li	a0,1025
   10a60:	00113423          	sd	ra,8(sp)
   10a64:	00000097          	auipc	ra,0x0
   10a68:	d14080e7          	jalr	-748(ra) # 10778 <__internal_syscall>
   10a6c:	00813083          	ld	ra,8(sp)
   10a70:	0005051b          	sext.w	a0,a0
   10a74:	01010113          	addi	sp,sp,16
   10a78:	00008067          	ret

0000000000010a7c <unlink>:
   10a7c:	ff010113          	addi	sp,sp,-16
   10a80:	00050593          	mv	a1,a0
   10a84:	00000713          	li	a4,0
   10a88:	00000693          	li	a3,0
   10a8c:	00000613          	li	a2,0
   10a90:	40200513          	li	a0,1026
   10a94:	00113423          	sd	ra,8(sp)
   10a98:	ce1ff0ef          	jal	ra,10778 <__internal_syscall>
   10a9c:	00813083          	ld	ra,8(sp)
   10aa0:	0005051b          	sext.w	a0,a0
   10aa4:	01010113          	addi	sp,sp,16
   10aa8:	00008067          	ret

0000000000010aac <execve>:
   10aac:	ff010113          	addi	sp,sp,-16
   10ab0:	00113423          	sd	ra,8(sp)
   10ab4:	00000097          	auipc	ra,0x0
   10ab8:	298080e7          	jalr	664(ra) # 10d4c <__errno>
   10abc:	00813083          	ld	ra,8(sp)
   10ac0:	00c00793          	li	a5,12
   10ac4:	00f52023          	sw	a5,0(a0)
   10ac8:	fff00513          	li	a0,-1
   10acc:	01010113          	addi	sp,sp,16
   10ad0:	00008067          	ret

0000000000010ad4 <fork>:
   10ad4:	ff010113          	addi	sp,sp,-16
   10ad8:	00113423          	sd	ra,8(sp)
   10adc:	270000ef          	jal	ra,10d4c <__errno>
   10ae0:	00813083          	ld	ra,8(sp)
   10ae4:	00b00793          	li	a5,11
   10ae8:	00f52023          	sw	a5,0(a0)
   10aec:	fff00513          	li	a0,-1
   10af0:	01010113          	addi	sp,sp,16
   10af4:	00008067          	ret

0000000000010af8 <getpid>:
   10af8:	00100513          	li	a0,1
   10afc:	00008067          	ret

0000000000010b00 <kill>:
   10b00:	ff010113          	addi	sp,sp,-16
   10b04:	00113423          	sd	ra,8(sp)
   10b08:	244000ef          	jal	ra,10d4c <__errno>
   10b0c:	00813083          	ld	ra,8(sp)
   10b10:	01600793          	li	a5,22
   10b14:	00f52023          	sw	a5,0(a0)
   10b18:	fff00513          	li	a0,-1
   10b1c:	01010113          	addi	sp,sp,16
   10b20:	00008067          	ret

0000000000010b24 <wait>:
   10b24:	ff010113          	addi	sp,sp,-16
   10b28:	00113423          	sd	ra,8(sp)
   10b2c:	00000097          	auipc	ra,0x0
   10b30:	220080e7          	jalr	544(ra) # 10d4c <__errno>
   10b34:	00813083          	ld	ra,8(sp)
   10b38:	00a00793          	li	a5,10
   10b3c:	00f52023          	sw	a5,0(a0)
   10b40:	fff00513          	li	a0,-1
   10b44:	01010113          	addi	sp,sp,16
   10b48:	00008067          	ret

0000000000010b4c <isatty>:
   10b4c:	f8010113          	addi	sp,sp,-128
   10b50:	00810593          	addi	a1,sp,8
   10b54:	06113c23          	sd	ra,120(sp)
   10b58:	cfdff0ef          	jal	ra,10854 <fstat>
   10b5c:	fff00793          	li	a5,-1
   10b60:	00f50863          	beq	a0,a5,10b70 <isatty+0x24>
   10b64:	00c12503          	lw	a0,12(sp)
   10b68:	40d5551b          	sraiw	a0,a0,0xd
   10b6c:	00157513          	andi	a0,a0,1
   10b70:	07813083          	ld	ra,120(sp)
   10b74:	08010113          	addi	sp,sp,128
   10b78:	00008067          	ret

0000000000010b7c <gettimeofday>:
   10b7c:	ff010113          	addi	sp,sp,-16
   10b80:	00050593          	mv	a1,a0
   10b84:	00000713          	li	a4,0
   10b88:	00000693          	li	a3,0
   10b8c:	00000613          	li	a2,0
   10b90:	0a900513          	li	a0,169
   10b94:	00113423          	sd	ra,8(sp)
   10b98:	00000097          	auipc	ra,0x0
   10b9c:	be0080e7          	jalr	-1056(ra) # 10778 <__internal_syscall>
   10ba0:	00813083          	ld	ra,8(sp)
   10ba4:	0005051b          	sext.w	a0,a0
   10ba8:	01010113          	addi	sp,sp,16
   10bac:	00008067          	ret

0000000000010bb0 <times>:
   10bb0:	fd010113          	addi	sp,sp,-48
   10bb4:	02813023          	sd	s0,32(sp)
   10bb8:	00050413          	mv	s0,a0
   10bbc:	8581b783          	ld	a5,-1960(gp) # 117d8 <t0.2572>
   10bc0:	00913c23          	sd	s1,24(sp)
   10bc4:	02113423          	sd	ra,40(sp)
   10bc8:	85818493          	addi	s1,gp,-1960 # 117d8 <t0.2572>
   10bcc:	00079a63          	bnez	a5,10be0 <times+0x30>
   10bd0:	00000593          	li	a1,0
   10bd4:	85818513          	addi	a0,gp,-1960 # 117d8 <t0.2572>
   10bd8:	00000097          	auipc	ra,0x0
   10bdc:	fa4080e7          	jalr	-92(ra) # 10b7c <gettimeofday>
   10be0:	00000593          	li	a1,0
   10be4:	00010513          	mv	a0,sp
   10be8:	00000097          	auipc	ra,0x0
   10bec:	f94080e7          	jalr	-108(ra) # 10b7c <gettimeofday>
   10bf0:	0004b783          	ld	a5,0(s1)
   10bf4:	00013503          	ld	a0,0(sp)
   10bf8:	000f45b7          	lui	a1,0xf4
   10bfc:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22c0>
   10c00:	40f50533          	sub	a0,a0,a5
   10c04:	154000ef          	jal	ra,10d58 <__muldi3>
   10c08:	0084b703          	ld	a4,8(s1)
   10c0c:	00813783          	ld	a5,8(sp)
   10c10:	00043823          	sd	zero,16(s0)
   10c14:	00043c23          	sd	zero,24(s0)
   10c18:	40e787b3          	sub	a5,a5,a4
   10c1c:	00f50533          	add	a0,a0,a5
   10c20:	00a43023          	sd	a0,0(s0)
   10c24:	00043423          	sd	zero,8(s0)
   10c28:	02813083          	ld	ra,40(sp)
   10c2c:	02013403          	ld	s0,32(sp)
   10c30:	01813483          	ld	s1,24(sp)
   10c34:	fff00513          	li	a0,-1
   10c38:	03010113          	addi	sp,sp,48
   10c3c:	00008067          	ret

0000000000010c40 <ftime>:
   10c40:	00051423          	sh	zero,8(a0)
   10c44:	00053023          	sd	zero,0(a0)
   10c48:	00000513          	li	a0,0
   10c4c:	00008067          	ret

0000000000010c50 <utime>:
   10c50:	fff00513          	li	a0,-1
   10c54:	00008067          	ret

0000000000010c58 <chown>:
   10c58:	fff00513          	li	a0,-1
   10c5c:	00008067          	ret

0000000000010c60 <chmod>:
   10c60:	fff00513          	li	a0,-1
   10c64:	00008067          	ret

0000000000010c68 <chdir>:
   10c68:	fff00513          	li	a0,-1
   10c6c:	00008067          	ret

0000000000010c70 <getcwd>:
   10c70:	00000513          	li	a0,0
   10c74:	00008067          	ret

0000000000010c78 <sysconf>:
   10c78:	00200793          	li	a5,2
   10c7c:	00f50663          	beq	a0,a5,10c88 <sysconf+0x10>
   10c80:	fff00513          	li	a0,-1
   10c84:	00008067          	ret
   10c88:	000f4537          	lui	a0,0xf4
   10c8c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22c0>
   10c90:	00008067          	ret

0000000000010c94 <sbrk>:
   10c94:	fe010113          	addi	sp,sp,-32
   10c98:	00813823          	sd	s0,16(sp)
   10c9c:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10ca0:	00913423          	sd	s1,8(sp)
   10ca4:	00113c23          	sd	ra,24(sp)
   10ca8:	00050493          	mv	s1,a0
   10cac:	04079063          	bnez	a5,10cec <sbrk+0x58>
   10cb0:	00000713          	li	a4,0
   10cb4:	00000693          	li	a3,0
   10cb8:	00000613          	li	a2,0
   10cbc:	00000593          	li	a1,0
   10cc0:	0d600513          	li	a0,214
   10cc4:	ab5ff0ef          	jal	ra,10778 <__internal_syscall>
   10cc8:	fff00793          	li	a5,-1
   10ccc:	00f51e63          	bne	a0,a5,10ce8 <sbrk+0x54>
   10cd0:	fff00513          	li	a0,-1
   10cd4:	01813083          	ld	ra,24(sp)
   10cd8:	01013403          	ld	s0,16(sp)
   10cdc:	00813483          	ld	s1,8(sp)
   10ce0:	02010113          	addi	sp,sp,32
   10ce4:	00008067          	ret
   10ce8:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10cec:	8181b583          	ld	a1,-2024(gp) # 11798 <_edata>
   10cf0:	00000713          	li	a4,0
   10cf4:	00000693          	li	a3,0
   10cf8:	00b485b3          	add	a1,s1,a1
   10cfc:	00000613          	li	a2,0
   10d00:	0d600513          	li	a0,214
   10d04:	a75ff0ef          	jal	ra,10778 <__internal_syscall>
   10d08:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10d0c:	00f484b3          	add	s1,s1,a5
   10d10:	fc9510e3          	bne	a0,s1,10cd0 <sbrk+0x3c>
   10d14:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10d18:	00078513          	mv	a0,a5
   10d1c:	fb9ff06f          	j	10cd4 <sbrk+0x40>

0000000000010d20 <_exit>:
   10d20:	ff010113          	addi	sp,sp,-16
   10d24:	00050593          	mv	a1,a0
   10d28:	00000713          	li	a4,0
   10d2c:	00000693          	li	a3,0
   10d30:	00000613          	li	a2,0
   10d34:	05d00513          	li	a0,93
   10d38:	00113423          	sd	ra,8(sp)
   10d3c:	00000097          	auipc	ra,0x0
   10d40:	a3c080e7          	jalr	-1476(ra) # 10778 <__internal_syscall>
   10d44:	0000006f          	j	10d44 <_exit+0x24>
   10d48:	0000                	unimp
	...

0000000000010d4c <__errno>:
   10d4c:	8101b503          	ld	a0,-2032(gp) # 11790 <_impure_ptr>
   10d50:	00008067          	ret
   10d54:	0000                	unimp
	...

0000000000010d58 <__muldi3>:
   10d58:	00050613          	mv	a2,a0
   10d5c:	00000513          	li	a0,0
   10d60:	0015f693          	andi	a3,a1,1
   10d64:	00068463          	beqz	a3,10d6c <__muldi3+0x14>
   10d68:	00c50533          	add	a0,a0,a2
   10d6c:	0015d593          	srli	a1,a1,0x1
   10d70:	00161613          	slli	a2,a2,0x1
   10d74:	fe0596e3          	bnez	a1,10d60 <__muldi3+0x8>
   10d78:	00008067          	ret
   10d7c:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010d80 <__EH_FRAME_BEGIN__>:
   10d80:	0000                	unimp
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
   11024:	0006                	0x6
   11026:	0000                	unimp
   11028:	00000007          	0x7
   1102c:	0008                	addi	a0,sp,0
   1102e:	0000                	unimp
   11030:	0009                	c.addi	zero,2
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
  10:	0d58                	addi	a4,sp,660
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
  10:	0d58                	addi	a4,sp,660
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0d7c                	addi	a5,sp,668
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
  9c:	5802                	lw	a6,32(sp)
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
