
simple-function.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ed018193          	addi	gp,gp,-304 # 11f80 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11798 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117e8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	3b4000ef          	jal	ra,1047c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	29050513          	addi	a0,a0,656 # 1035c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	234080e7          	jalr	564(ra) # 10308 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2f8080e7          	jalr	760(ra) # 103d4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	1e4000ef          	jal	ra,102d4 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	22c30067          	jr	556(t1) # 10320 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00011537          	lui	a0,0x11
   10104:	000117b7          	lui	a5,0x11
   10108:	78050713          	addi	a4,a0,1920 # 11780 <__TMC_END__>
   1010c:	78078793          	addi	a5,a5,1920 # 11780 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	78050513          	addi	a0,a0,1920
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000117b7          	lui	a5,0x11
   10130:	00011537          	lui	a0,0x11
   10134:	78078593          	addi	a1,a5,1920 # 11780 <__TMC_END__>
   10138:	78050793          	addi	a5,a0,1920 # 11780 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	78050513          	addi	a0,a0,1920
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8201c703          	lbu	a4,-2016(gp) # 117a0 <completed.5182>
   10170:	04071663          	bnez	a4,101bc <__do_global_dtors_aux+0x50>
   10174:	ff010113          	addi	sp,sp,-16
   10178:	00813023          	sd	s0,0(sp)
   1017c:	00113423          	sd	ra,8(sp)
   10180:	00078413          	mv	s0,a5
   10184:	f7dff0ef          	jal	ra,10100 <deregister_tm_clones>
   10188:	000007b7          	lui	a5,0x0
   1018c:	00078793          	mv	a5,a5
   10190:	00078a63          	beqz	a5,101a4 <__do_global_dtors_aux+0x38>
   10194:	00011537          	lui	a0,0x11
   10198:	da850513          	addi	a0,a0,-600 # 10da8 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18023          	sb	a5,-2016(gp) # 117a0 <completed.5182>
   101ac:	00813083          	ld	ra,8(sp)
   101b0:	00013403          	ld	s0,0(sp)
   101b4:	01010113          	addi	sp,sp,16
   101b8:	00008067          	ret
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	000007b7          	lui	a5,0x0
   101c4:	00078793          	mv	a5,a5
   101c8:	02078663          	beqz	a5,101f4 <frame_dummy+0x34>
   101cc:	000115b7          	lui	a1,0x11
   101d0:	00011537          	lui	a0,0x11
   101d4:	ff010113          	addi	sp,sp,-16
   101d8:	7a858593          	addi	a1,a1,1960 # 117a8 <object.5187>
   101dc:	da850513          	addi	a0,a0,-600 # 10da8 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <fuction>:
   101f8:	fe010113          	addi	sp,sp,-32
   101fc:	00813c23          	sd	s0,24(sp)
   10200:	02010413          	addi	s0,sp,32
   10204:	fe042623          	sw	zero,-20(s0)
   10208:	fe042623          	sw	zero,-20(s0)
   1020c:	0480006f          	j	10254 <fuction+0x5c>
   10210:	000117b7          	lui	a5,0x11
   10214:	fec42703          	lw	a4,-20(s0)
   10218:	00271713          	slli	a4,a4,0x2
   1021c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10220:	00f707b3          	add	a5,a4,a5
   10224:	0007a783          	lw	a5,0(a5)
   10228:	00a7879b          	addiw	a5,a5,10
   1022c:	0007871b          	sext.w	a4,a5
   10230:	000117b7          	lui	a5,0x11
   10234:	fec42683          	lw	a3,-20(s0)
   10238:	00269693          	slli	a3,a3,0x2
   1023c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10240:	00f687b3          	add	a5,a3,a5
   10244:	00e7a023          	sw	a4,0(a5)
   10248:	fec42783          	lw	a5,-20(s0)
   1024c:	0017879b          	addiw	a5,a5,1
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	fec42783          	lw	a5,-20(s0)
   10258:	0007871b          	sext.w	a4,a5
   1025c:	00400793          	li	a5,4
   10260:	fae7d8e3          	ble	a4,a5,10210 <fuction+0x18>
   10264:	00500793          	li	a5,5
   10268:	fef42623          	sw	a5,-20(s0)
   1026c:	0480006f          	j	102b4 <fuction+0xbc>
   10270:	000117b7          	lui	a5,0x11
   10274:	fec42703          	lw	a4,-20(s0)
   10278:	00271713          	slli	a4,a4,0x2
   1027c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10280:	00f707b3          	add	a5,a4,a5
   10284:	0007a783          	lw	a5,0(a5)
   10288:	ffb7879b          	addiw	a5,a5,-5
   1028c:	0007871b          	sext.w	a4,a5
   10290:	000117b7          	lui	a5,0x11
   10294:	fec42683          	lw	a3,-20(s0)
   10298:	00269693          	slli	a3,a3,0x2
   1029c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102a0:	00f687b3          	add	a5,a3,a5
   102a4:	00e7a023          	sw	a4,0(a5)
   102a8:	fec42783          	lw	a5,-20(s0)
   102ac:	0017879b          	addiw	a5,a5,1
   102b0:	fef42623          	sw	a5,-20(s0)
   102b4:	fec42783          	lw	a5,-20(s0)
   102b8:	0007871b          	sext.w	a4,a5
   102bc:	00900793          	li	a5,9
   102c0:	fae7d8e3          	ble	a4,a5,10270 <fuction+0x78>
   102c4:	00000013          	nop
   102c8:	01813403          	ld	s0,24(sp)
   102cc:	02010113          	addi	sp,sp,32
   102d0:	00008067          	ret

00000000000102d4 <main>:
   102d4:	ff010113          	addi	sp,sp,-16
   102d8:	00113423          	sd	ra,8(sp)
   102dc:	00813023          	sd	s0,0(sp)
   102e0:	01010413          	addi	s0,sp,16
   102e4:	00000097          	auipc	ra,0x0
   102e8:	f14080e7          	jalr	-236(ra) # 101f8 <fuction>
   102ec:	00000793          	li	a5,0
   102f0:	00078513          	mv	a0,a5
   102f4:	00813083          	ld	ra,8(sp)
   102f8:	00013403          	ld	s0,0(sp)
   102fc:	01010113          	addi	sp,sp,16
   10300:	00008067          	ret
   10304:	0000                	unimp
	...

0000000000010308 <atexit>:
   10308:	00050593          	mv	a1,a0
   1030c:	00000693          	li	a3,0
   10310:	00000613          	li	a2,0
   10314:	00000513          	li	a0,0
   10318:	2400006f          	j	10558 <__register_exitproc>
   1031c:	0000                	unimp
	...

0000000000010320 <exit>:
   10320:	ff010113          	addi	sp,sp,-16
   10324:	00000593          	li	a1,0
   10328:	00813023          	sd	s0,0(sp)
   1032c:	00113423          	sd	ra,8(sp)
   10330:	00050413          	mv	s0,a0
   10334:	2b0000ef          	jal	ra,105e4 <__call_exitprocs>
   10338:	000117b7          	lui	a5,0x11
   1033c:	7887b503          	ld	a0,1928(a5) # 11788 <_global_impure_ptr>
   10340:	05853783          	ld	a5,88(a0)
   10344:	00078463          	beqz	a5,1034c <exit+0x2c>
   10348:	000780e7          	jalr	a5
   1034c:	00040513          	mv	a0,s0
   10350:	00001097          	auipc	ra,0x1
   10354:	9f8080e7          	jalr	-1544(ra) # 10d48 <_exit>
   10358:	0000                	unimp
	...

000000000001035c <__libc_fini_array>:
   1035c:	fe010113          	addi	sp,sp,-32
   10360:	000117b7          	lui	a5,0x11
   10364:	00011737          	lui	a4,0x11
   10368:	00813823          	sd	s0,16(sp)
   1036c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10370:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10374:	40e40433          	sub	s0,s0,a4
   10378:	00913423          	sd	s1,8(sp)
   1037c:	01213023          	sd	s2,0(sp)
   10380:	00113c23          	sd	ra,24(sp)
   10384:	40345413          	srai	s0,s0,0x3
   10388:	00000493          	li	s1,0
   1038c:	01078913          	addi	s2,a5,16
   10390:	02941063          	bne	s0,s1,103b0 <__libc_fini_array+0x54>
   10394:	01013403          	ld	s0,16(sp)
   10398:	01813083          	ld	ra,24(sp)
   1039c:	00813483          	ld	s1,8(sp)
   103a0:	00013903          	ld	s2,0(sp)
   103a4:	02010113          	addi	sp,sp,32
   103a8:	00000317          	auipc	t1,0x0
   103ac:	d5430067          	jr	-684(t1) # 100fc <_fini>
   103b0:	ff800593          	li	a1,-8
   103b4:	00048513          	mv	a0,s1
   103b8:	1c9000ef          	jal	ra,10d80 <__muldi3>
   103bc:	00a90533          	add	a0,s2,a0
   103c0:	ff853783          	ld	a5,-8(a0)
   103c4:	00148493          	addi	s1,s1,1
   103c8:	000780e7          	jalr	a5
   103cc:	fc5ff06f          	j	10390 <__libc_fini_array+0x34>
   103d0:	0000                	unimp
	...

00000000000103d4 <__libc_init_array>:
   103d4:	fe010113          	addi	sp,sp,-32
   103d8:	00813823          	sd	s0,16(sp)
   103dc:	00913423          	sd	s1,8(sp)
   103e0:	00011437          	lui	s0,0x11
   103e4:	000114b7          	lui	s1,0x11
   103e8:	00048793          	mv	a5,s1
   103ec:	00040413          	mv	s0,s0
   103f0:	40f40433          	sub	s0,s0,a5
   103f4:	01213023          	sd	s2,0(sp)
   103f8:	00113c23          	sd	ra,24(sp)
   103fc:	40345413          	srai	s0,s0,0x3
   10400:	00048493          	mv	s1,s1
   10404:	00000913          	li	s2,0
   10408:	04891463          	bne	s2,s0,10450 <__libc_init_array+0x7c>
   1040c:	000114b7          	lui	s1,0x11
   10410:	00000097          	auipc	ra,0x0
   10414:	cec080e7          	jalr	-788(ra) # 100fc <_fini>
   10418:	00011437          	lui	s0,0x11
   1041c:	00048793          	mv	a5,s1
   10420:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10424:	40f40433          	sub	s0,s0,a5
   10428:	40345413          	srai	s0,s0,0x3
   1042c:	00048493          	mv	s1,s1
   10430:	00000913          	li	s2,0
   10434:	02891863          	bne	s2,s0,10464 <__libc_init_array+0x90>
   10438:	01813083          	ld	ra,24(sp)
   1043c:	01013403          	ld	s0,16(sp)
   10440:	00813483          	ld	s1,8(sp)
   10444:	00013903          	ld	s2,0(sp)
   10448:	02010113          	addi	sp,sp,32
   1044c:	00008067          	ret
   10450:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10454:	00190913          	addi	s2,s2,1
   10458:	00848493          	addi	s1,s1,8
   1045c:	000780e7          	jalr	a5
   10460:	fa9ff06f          	j	10408 <__libc_init_array+0x34>
   10464:	0004b783          	ld	a5,0(s1)
   10468:	00190913          	addi	s2,s2,1
   1046c:	00848493          	addi	s1,s1,8
   10470:	000780e7          	jalr	a5
   10474:	fc1ff06f          	j	10434 <__libc_init_array+0x60>
   10478:	0000                	unimp
	...

000000000001047c <memset>:
   1047c:	00f00813          	li	a6,15
   10480:	00050713          	mv	a4,a0
   10484:	02c87a63          	bleu	a2,a6,104b8 <memset+0x3c>
   10488:	00f77793          	andi	a5,a4,15
   1048c:	0a079063          	bnez	a5,1052c <memset+0xb0>
   10490:	06059e63          	bnez	a1,1050c <memset+0x90>
   10494:	ff067693          	andi	a3,a2,-16
   10498:	00f67613          	andi	a2,a2,15
   1049c:	00e686b3          	add	a3,a3,a4
   104a0:	00b73023          	sd	a1,0(a4)
   104a4:	00b73423          	sd	a1,8(a4)
   104a8:	01070713          	addi	a4,a4,16
   104ac:	fed76ae3          	bltu	a4,a3,104a0 <memset+0x24>
   104b0:	00061463          	bnez	a2,104b8 <memset+0x3c>
   104b4:	00008067          	ret
   104b8:	40c806b3          	sub	a3,a6,a2
   104bc:	00269693          	slli	a3,a3,0x2
   104c0:	00000297          	auipc	t0,0x0
   104c4:	005686b3          	add	a3,a3,t0
   104c8:	00c68067          	jr	12(a3)
   104cc:	00b70723          	sb	a1,14(a4)
   104d0:	00b706a3          	sb	a1,13(a4)
   104d4:	00b70623          	sb	a1,12(a4)
   104d8:	00b705a3          	sb	a1,11(a4)
   104dc:	00b70523          	sb	a1,10(a4)
   104e0:	00b704a3          	sb	a1,9(a4)
   104e4:	00b70423          	sb	a1,8(a4)
   104e8:	00b703a3          	sb	a1,7(a4)
   104ec:	00b70323          	sb	a1,6(a4)
   104f0:	00b702a3          	sb	a1,5(a4)
   104f4:	00b70223          	sb	a1,4(a4)
   104f8:	00b701a3          	sb	a1,3(a4)
   104fc:	00b70123          	sb	a1,2(a4)
   10500:	00b700a3          	sb	a1,1(a4)
   10504:	00b70023          	sb	a1,0(a4)
   10508:	00008067          	ret
   1050c:	0ff5f593          	andi	a1,a1,255
   10510:	00859693          	slli	a3,a1,0x8
   10514:	00d5e5b3          	or	a1,a1,a3
   10518:	01059693          	slli	a3,a1,0x10
   1051c:	00d5e5b3          	or	a1,a1,a3
   10520:	02059693          	slli	a3,a1,0x20
   10524:	00d5e5b3          	or	a1,a1,a3
   10528:	f6dff06f          	j	10494 <memset+0x18>
   1052c:	00279693          	slli	a3,a5,0x2
   10530:	00000297          	auipc	t0,0x0
   10534:	005686b3          	add	a3,a3,t0
   10538:	00008293          	mv	t0,ra
   1053c:	f98680e7          	jalr	-104(a3)
   10540:	00028093          	mv	ra,t0
   10544:	ff078793          	addi	a5,a5,-16
   10548:	40f70733          	sub	a4,a4,a5
   1054c:	00f60633          	add	a2,a2,a5
   10550:	f6c874e3          	bleu	a2,a6,104b8 <memset+0x3c>
   10554:	f3dff06f          	j	10490 <memset+0x14>

0000000000010558 <__register_exitproc>:
   10558:	000117b7          	lui	a5,0x11
   1055c:	7887b703          	ld	a4,1928(a5) # 11788 <_global_impure_ptr>
   10560:	00050313          	mv	t1,a0
   10564:	1f873783          	ld	a5,504(a4)
   10568:	00079663          	bnez	a5,10574 <__register_exitproc+0x1c>
   1056c:	20070793          	addi	a5,a4,512
   10570:	1ef73c23          	sd	a5,504(a4)
   10574:	0087a703          	lw	a4,8(a5)
   10578:	01f00813          	li	a6,31
   1057c:	fff00513          	li	a0,-1
   10580:	04e84e63          	blt	a6,a4,105dc <__register_exitproc+0x84>
   10584:	02030e63          	beqz	t1,105c0 <__register_exitproc+0x68>
   10588:	00371813          	slli	a6,a4,0x3
   1058c:	01078833          	add	a6,a5,a6
   10590:	10c83823          	sd	a2,272(a6)
   10594:	3107a883          	lw	a7,784(a5)
   10598:	00100613          	li	a2,1
   1059c:	00e6163b          	sllw	a2,a2,a4
   105a0:	00c8e8b3          	or	a7,a7,a2
   105a4:	3117a823          	sw	a7,784(a5)
   105a8:	20d83823          	sd	a3,528(a6)
   105ac:	00200693          	li	a3,2
   105b0:	00d31863          	bne	t1,a3,105c0 <__register_exitproc+0x68>
   105b4:	3147a683          	lw	a3,788(a5)
   105b8:	00c6e633          	or	a2,a3,a2
   105bc:	30c7aa23          	sw	a2,788(a5)
   105c0:	0017069b          	addiw	a3,a4,1
   105c4:	00270713          	addi	a4,a4,2
   105c8:	00371713          	slli	a4,a4,0x3
   105cc:	00d7a423          	sw	a3,8(a5)
   105d0:	00e787b3          	add	a5,a5,a4
   105d4:	00b7b023          	sd	a1,0(a5)
   105d8:	00000513          	li	a0,0
   105dc:	00008067          	ret
   105e0:	0000                	unimp
	...

00000000000105e4 <__call_exitprocs>:
   105e4:	fb010113          	addi	sp,sp,-80
   105e8:	000117b7          	lui	a5,0x11
   105ec:	03313423          	sd	s3,40(sp)
   105f0:	7887b983          	ld	s3,1928(a5) # 11788 <_global_impure_ptr>
   105f4:	03413023          	sd	s4,32(sp)
   105f8:	01513c23          	sd	s5,24(sp)
   105fc:	01613823          	sd	s6,16(sp)
   10600:	04113423          	sd	ra,72(sp)
   10604:	04813023          	sd	s0,64(sp)
   10608:	02913c23          	sd	s1,56(sp)
   1060c:	03213823          	sd	s2,48(sp)
   10610:	01713423          	sd	s7,8(sp)
   10614:	00050a93          	mv	s5,a0
   10618:	00058a13          	mv	s4,a1
   1061c:	00100b13          	li	s6,1
   10620:	1f89b403          	ld	s0,504(s3)
   10624:	00040c63          	beqz	s0,1063c <__call_exitprocs+0x58>
   10628:	00842483          	lw	s1,8(s0)
   1062c:	fff4849b          	addiw	s1,s1,-1
   10630:	00349913          	slli	s2,s1,0x3
   10634:	01240933          	add	s2,s0,s2
   10638:	0204d863          	bgez	s1,10668 <__call_exitprocs+0x84>
   1063c:	04813083          	ld	ra,72(sp)
   10640:	04013403          	ld	s0,64(sp)
   10644:	03813483          	ld	s1,56(sp)
   10648:	03013903          	ld	s2,48(sp)
   1064c:	02813983          	ld	s3,40(sp)
   10650:	02013a03          	ld	s4,32(sp)
   10654:	01813a83          	ld	s5,24(sp)
   10658:	01013b03          	ld	s6,16(sp)
   1065c:	00813b83          	ld	s7,8(sp)
   10660:	05010113          	addi	sp,sp,80
   10664:	00008067          	ret
   10668:	000a0c63          	beqz	s4,10680 <__call_exitprocs+0x9c>
   1066c:	21093783          	ld	a5,528(s2)
   10670:	01478863          	beq	a5,s4,10680 <__call_exitprocs+0x9c>
   10674:	fff4849b          	addiw	s1,s1,-1
   10678:	ff890913          	addi	s2,s2,-8
   1067c:	fbdff06f          	j	10638 <__call_exitprocs+0x54>
   10680:	00842783          	lw	a5,8(s0)
   10684:	01093683          	ld	a3,16(s2)
   10688:	fff7879b          	addiw	a5,a5,-1
   1068c:	02979e63          	bne	a5,s1,106c8 <__call_exitprocs+0xe4>
   10690:	00942423          	sw	s1,8(s0)
   10694:	fe0680e3          	beqz	a3,10674 <__call_exitprocs+0x90>
   10698:	31042703          	lw	a4,784(s0)
   1069c:	009b163b          	sllw	a2,s6,s1
   106a0:	00842b83          	lw	s7,8(s0)
   106a4:	00c77733          	and	a4,a4,a2
   106a8:	0007071b          	sext.w	a4,a4
   106ac:	02071263          	bnez	a4,106d0 <__call_exitprocs+0xec>
   106b0:	000680e7          	jalr	a3
   106b4:	00842703          	lw	a4,8(s0)
   106b8:	1f89b783          	ld	a5,504(s3)
   106bc:	f77712e3          	bne	a4,s7,10620 <__call_exitprocs+0x3c>
   106c0:	faf40ae3          	beq	s0,a5,10674 <__call_exitprocs+0x90>
   106c4:	f5dff06f          	j	10620 <__call_exitprocs+0x3c>
   106c8:	00093823          	sd	zero,16(s2)
   106cc:	fc9ff06f          	j	10694 <__call_exitprocs+0xb0>
   106d0:	31442783          	lw	a5,788(s0)
   106d4:	11093583          	ld	a1,272(s2)
   106d8:	00c7f7b3          	and	a5,a5,a2
   106dc:	0007879b          	sext.w	a5,a5
   106e0:	00079863          	bnez	a5,106f0 <__call_exitprocs+0x10c>
   106e4:	000a8513          	mv	a0,s5
   106e8:	000680e7          	jalr	a3
   106ec:	fc9ff06f          	j	106b4 <__call_exitprocs+0xd0>
   106f0:	00058513          	mv	a0,a1
   106f4:	000680e7          	jalr	a3
   106f8:	fbdff06f          	j	106b4 <__call_exitprocs+0xd0>
   106fc:	0000                	unimp
	...

0000000000010700 <conv_stat>:
   10700:	0005b783          	ld	a5,0(a1)
   10704:	00f51023          	sh	a5,0(a0)
   10708:	0085b783          	ld	a5,8(a1)
   1070c:	00f51123          	sh	a5,2(a0)
   10710:	0105a783          	lw	a5,16(a1)
   10714:	00f52223          	sw	a5,4(a0)
   10718:	0145a783          	lw	a5,20(a1)
   1071c:	00f51423          	sh	a5,8(a0)
   10720:	0185a783          	lw	a5,24(a1)
   10724:	00f51523          	sh	a5,10(a0)
   10728:	01c5a783          	lw	a5,28(a1)
   1072c:	00f51623          	sh	a5,12(a0)
   10730:	0205b783          	ld	a5,32(a1)
   10734:	00f51723          	sh	a5,14(a0)
   10738:	0305b783          	ld	a5,48(a1)
   1073c:	00f53823          	sd	a5,16(a0)
   10740:	0405b783          	ld	a5,64(a1)
   10744:	04f53823          	sd	a5,80(a0)
   10748:	0385a783          	lw	a5,56(a1)
   1074c:	04f53423          	sd	a5,72(a0)
   10750:	0485b783          	ld	a5,72(a1)
   10754:	00f53c23          	sd	a5,24(a0)
   10758:	0585b783          	ld	a5,88(a1)
   1075c:	02f53423          	sd	a5,40(a0)
   10760:	0685b783          	ld	a5,104(a1)
   10764:	02f53c23          	sd	a5,56(a0)
   10768:	00008067          	ret

000000000001076c <__syscall_error>:
   1076c:	ff010113          	addi	sp,sp,-16
   10770:	00813023          	sd	s0,0(sp)
   10774:	00113423          	sd	ra,8(sp)
   10778:	00050413          	mv	s0,a0
   1077c:	00000097          	auipc	ra,0x0
   10780:	5f8080e7          	jalr	1528(ra) # 10d74 <__errno>
   10784:	408007bb          	negw	a5,s0
   10788:	00813083          	ld	ra,8(sp)
   1078c:	00013403          	ld	s0,0(sp)
   10790:	00f52023          	sw	a5,0(a0)
   10794:	fff00513          	li	a0,-1
   10798:	01010113          	addi	sp,sp,16
   1079c:	00008067          	ret

00000000000107a0 <__internal_syscall>:
   107a0:	00050893          	mv	a7,a0
   107a4:	00058513          	mv	a0,a1
   107a8:	00060593          	mv	a1,a2
   107ac:	00068613          	mv	a2,a3
   107b0:	00070693          	mv	a3,a4
   107b4:	00000073          	ecall
   107b8:	00055663          	bgez	a0,107c4 <__internal_syscall+0x24>
   107bc:	00000317          	auipc	t1,0x0
   107c0:	fb030067          	jr	-80(t1) # 1076c <__syscall_error>
   107c4:	00008067          	ret

00000000000107c8 <open>:
   107c8:	ff010113          	addi	sp,sp,-16
   107cc:	00060693          	mv	a3,a2
   107d0:	00000713          	li	a4,0
   107d4:	00058613          	mv	a2,a1
   107d8:	00050593          	mv	a1,a0
   107dc:	40000513          	li	a0,1024
   107e0:	00113423          	sd	ra,8(sp)
   107e4:	00000097          	auipc	ra,0x0
   107e8:	fbc080e7          	jalr	-68(ra) # 107a0 <__internal_syscall>
   107ec:	00813083          	ld	ra,8(sp)
   107f0:	0005051b          	sext.w	a0,a0
   107f4:	01010113          	addi	sp,sp,16
   107f8:	00008067          	ret

00000000000107fc <openat>:
   107fc:	ff010113          	addi	sp,sp,-16
   10800:	00068713          	mv	a4,a3
   10804:	00060693          	mv	a3,a2
   10808:	00058613          	mv	a2,a1
   1080c:	00050593          	mv	a1,a0
   10810:	03800513          	li	a0,56
   10814:	00113423          	sd	ra,8(sp)
   10818:	f89ff0ef          	jal	ra,107a0 <__internal_syscall>
   1081c:	00813083          	ld	ra,8(sp)
   10820:	0005051b          	sext.w	a0,a0
   10824:	01010113          	addi	sp,sp,16
   10828:	00008067          	ret

000000000001082c <lseek>:
   1082c:	00060693          	mv	a3,a2
   10830:	00000713          	li	a4,0
   10834:	00058613          	mv	a2,a1
   10838:	00050593          	mv	a1,a0
   1083c:	03e00513          	li	a0,62
   10840:	00000317          	auipc	t1,0x0
   10844:	f6030067          	jr	-160(t1) # 107a0 <__internal_syscall>

0000000000010848 <read>:
   10848:	00060693          	mv	a3,a2
   1084c:	00000713          	li	a4,0
   10850:	00058613          	mv	a2,a1
   10854:	00050593          	mv	a1,a0
   10858:	03f00513          	li	a0,63
   1085c:	f45ff06f          	j	107a0 <__internal_syscall>

0000000000010860 <write>:
   10860:	00060693          	mv	a3,a2
   10864:	00000713          	li	a4,0
   10868:	00058613          	mv	a2,a1
   1086c:	00050593          	mv	a1,a0
   10870:	04000513          	li	a0,64
   10874:	00000317          	auipc	t1,0x0
   10878:	f2c30067          	jr	-212(t1) # 107a0 <__internal_syscall>

000000000001087c <fstat>:
   1087c:	f6010113          	addi	sp,sp,-160
   10880:	08913423          	sd	s1,136(sp)
   10884:	00010613          	mv	a2,sp
   10888:	00058493          	mv	s1,a1
   1088c:	00000713          	li	a4,0
   10890:	00050593          	mv	a1,a0
   10894:	00000693          	li	a3,0
   10898:	05000513          	li	a0,80
   1089c:	08113c23          	sd	ra,152(sp)
   108a0:	08813823          	sd	s0,144(sp)
   108a4:	efdff0ef          	jal	ra,107a0 <__internal_syscall>
   108a8:	00050413          	mv	s0,a0
   108ac:	00010593          	mv	a1,sp
   108b0:	00048513          	mv	a0,s1
   108b4:	e4dff0ef          	jal	ra,10700 <conv_stat>
   108b8:	0004051b          	sext.w	a0,s0
   108bc:	09813083          	ld	ra,152(sp)
   108c0:	09013403          	ld	s0,144(sp)
   108c4:	08813483          	ld	s1,136(sp)
   108c8:	0a010113          	addi	sp,sp,160
   108cc:	00008067          	ret

00000000000108d0 <stat>:
   108d0:	f6010113          	addi	sp,sp,-160
   108d4:	08913423          	sd	s1,136(sp)
   108d8:	00010613          	mv	a2,sp
   108dc:	00058493          	mv	s1,a1
   108e0:	00000713          	li	a4,0
   108e4:	00050593          	mv	a1,a0
   108e8:	00000693          	li	a3,0
   108ec:	40e00513          	li	a0,1038
   108f0:	08113c23          	sd	ra,152(sp)
   108f4:	08813823          	sd	s0,144(sp)
   108f8:	00000097          	auipc	ra,0x0
   108fc:	ea8080e7          	jalr	-344(ra) # 107a0 <__internal_syscall>
   10900:	00050413          	mv	s0,a0
   10904:	00010593          	mv	a1,sp
   10908:	00048513          	mv	a0,s1
   1090c:	00000097          	auipc	ra,0x0
   10910:	df4080e7          	jalr	-524(ra) # 10700 <conv_stat>
   10914:	0004051b          	sext.w	a0,s0
   10918:	09813083          	ld	ra,152(sp)
   1091c:	09013403          	ld	s0,144(sp)
   10920:	08813483          	ld	s1,136(sp)
   10924:	0a010113          	addi	sp,sp,160
   10928:	00008067          	ret

000000000001092c <lstat>:
   1092c:	f6010113          	addi	sp,sp,-160
   10930:	08913423          	sd	s1,136(sp)
   10934:	00010613          	mv	a2,sp
   10938:	00058493          	mv	s1,a1
   1093c:	00000713          	li	a4,0
   10940:	00050593          	mv	a1,a0
   10944:	00000693          	li	a3,0
   10948:	40f00513          	li	a0,1039
   1094c:	08113c23          	sd	ra,152(sp)
   10950:	08813823          	sd	s0,144(sp)
   10954:	e4dff0ef          	jal	ra,107a0 <__internal_syscall>
   10958:	00050413          	mv	s0,a0
   1095c:	00010593          	mv	a1,sp
   10960:	00048513          	mv	a0,s1
   10964:	d9dff0ef          	jal	ra,10700 <conv_stat>
   10968:	0004051b          	sext.w	a0,s0
   1096c:	09813083          	ld	ra,152(sp)
   10970:	09013403          	ld	s0,144(sp)
   10974:	08813483          	ld	s1,136(sp)
   10978:	0a010113          	addi	sp,sp,160
   1097c:	00008067          	ret

0000000000010980 <fstatat>:
   10980:	f6010113          	addi	sp,sp,-160
   10984:	08913423          	sd	s1,136(sp)
   10988:	00068713          	mv	a4,a3
   1098c:	00060493          	mv	s1,a2
   10990:	00010693          	mv	a3,sp
   10994:	00058613          	mv	a2,a1
   10998:	00050593          	mv	a1,a0
   1099c:	04f00513          	li	a0,79
   109a0:	08113c23          	sd	ra,152(sp)
   109a4:	08813823          	sd	s0,144(sp)
   109a8:	00000097          	auipc	ra,0x0
   109ac:	df8080e7          	jalr	-520(ra) # 107a0 <__internal_syscall>
   109b0:	00050413          	mv	s0,a0
   109b4:	00010593          	mv	a1,sp
   109b8:	00048513          	mv	a0,s1
   109bc:	00000097          	auipc	ra,0x0
   109c0:	d44080e7          	jalr	-700(ra) # 10700 <conv_stat>
   109c4:	0004051b          	sext.w	a0,s0
   109c8:	09813083          	ld	ra,152(sp)
   109cc:	09013403          	ld	s0,144(sp)
   109d0:	08813483          	ld	s1,136(sp)
   109d4:	0a010113          	addi	sp,sp,160
   109d8:	00008067          	ret

00000000000109dc <access>:
   109dc:	ff010113          	addi	sp,sp,-16
   109e0:	00058613          	mv	a2,a1
   109e4:	00000713          	li	a4,0
   109e8:	00050593          	mv	a1,a0
   109ec:	00000693          	li	a3,0
   109f0:	40900513          	li	a0,1033
   109f4:	00113423          	sd	ra,8(sp)
   109f8:	da9ff0ef          	jal	ra,107a0 <__internal_syscall>
   109fc:	00813083          	ld	ra,8(sp)
   10a00:	0005051b          	sext.w	a0,a0
   10a04:	01010113          	addi	sp,sp,16
   10a08:	00008067          	ret

0000000000010a0c <faccessat>:
   10a0c:	ff010113          	addi	sp,sp,-16
   10a10:	00068713          	mv	a4,a3
   10a14:	00060693          	mv	a3,a2
   10a18:	00058613          	mv	a2,a1
   10a1c:	00050593          	mv	a1,a0
   10a20:	03000513          	li	a0,48
   10a24:	00113423          	sd	ra,8(sp)
   10a28:	00000097          	auipc	ra,0x0
   10a2c:	d78080e7          	jalr	-648(ra) # 107a0 <__internal_syscall>
   10a30:	00813083          	ld	ra,8(sp)
   10a34:	0005051b          	sext.w	a0,a0
   10a38:	01010113          	addi	sp,sp,16
   10a3c:	00008067          	ret

0000000000010a40 <close>:
   10a40:	ff010113          	addi	sp,sp,-16
   10a44:	00050593          	mv	a1,a0
   10a48:	00000713          	li	a4,0
   10a4c:	00000693          	li	a3,0
   10a50:	00000613          	li	a2,0
   10a54:	03900513          	li	a0,57
   10a58:	00113423          	sd	ra,8(sp)
   10a5c:	d45ff0ef          	jal	ra,107a0 <__internal_syscall>
   10a60:	00813083          	ld	ra,8(sp)
   10a64:	0005051b          	sext.w	a0,a0
   10a68:	01010113          	addi	sp,sp,16
   10a6c:	00008067          	ret

0000000000010a70 <link>:
   10a70:	ff010113          	addi	sp,sp,-16
   10a74:	00058613          	mv	a2,a1
   10a78:	00000713          	li	a4,0
   10a7c:	00050593          	mv	a1,a0
   10a80:	00000693          	li	a3,0
   10a84:	40100513          	li	a0,1025
   10a88:	00113423          	sd	ra,8(sp)
   10a8c:	00000097          	auipc	ra,0x0
   10a90:	d14080e7          	jalr	-748(ra) # 107a0 <__internal_syscall>
   10a94:	00813083          	ld	ra,8(sp)
   10a98:	0005051b          	sext.w	a0,a0
   10a9c:	01010113          	addi	sp,sp,16
   10aa0:	00008067          	ret

0000000000010aa4 <unlink>:
   10aa4:	ff010113          	addi	sp,sp,-16
   10aa8:	00050593          	mv	a1,a0
   10aac:	00000713          	li	a4,0
   10ab0:	00000693          	li	a3,0
   10ab4:	00000613          	li	a2,0
   10ab8:	40200513          	li	a0,1026
   10abc:	00113423          	sd	ra,8(sp)
   10ac0:	ce1ff0ef          	jal	ra,107a0 <__internal_syscall>
   10ac4:	00813083          	ld	ra,8(sp)
   10ac8:	0005051b          	sext.w	a0,a0
   10acc:	01010113          	addi	sp,sp,16
   10ad0:	00008067          	ret

0000000000010ad4 <execve>:
   10ad4:	ff010113          	addi	sp,sp,-16
   10ad8:	00113423          	sd	ra,8(sp)
   10adc:	00000097          	auipc	ra,0x0
   10ae0:	298080e7          	jalr	664(ra) # 10d74 <__errno>
   10ae4:	00813083          	ld	ra,8(sp)
   10ae8:	00c00793          	li	a5,12
   10aec:	00f52023          	sw	a5,0(a0)
   10af0:	fff00513          	li	a0,-1
   10af4:	01010113          	addi	sp,sp,16
   10af8:	00008067          	ret

0000000000010afc <fork>:
   10afc:	ff010113          	addi	sp,sp,-16
   10b00:	00113423          	sd	ra,8(sp)
   10b04:	270000ef          	jal	ra,10d74 <__errno>
   10b08:	00813083          	ld	ra,8(sp)
   10b0c:	00b00793          	li	a5,11
   10b10:	00f52023          	sw	a5,0(a0)
   10b14:	fff00513          	li	a0,-1
   10b18:	01010113          	addi	sp,sp,16
   10b1c:	00008067          	ret

0000000000010b20 <getpid>:
   10b20:	00100513          	li	a0,1
   10b24:	00008067          	ret

0000000000010b28 <kill>:
   10b28:	ff010113          	addi	sp,sp,-16
   10b2c:	00113423          	sd	ra,8(sp)
   10b30:	244000ef          	jal	ra,10d74 <__errno>
   10b34:	00813083          	ld	ra,8(sp)
   10b38:	01600793          	li	a5,22
   10b3c:	00f52023          	sw	a5,0(a0)
   10b40:	fff00513          	li	a0,-1
   10b44:	01010113          	addi	sp,sp,16
   10b48:	00008067          	ret

0000000000010b4c <wait>:
   10b4c:	ff010113          	addi	sp,sp,-16
   10b50:	00113423          	sd	ra,8(sp)
   10b54:	00000097          	auipc	ra,0x0
   10b58:	220080e7          	jalr	544(ra) # 10d74 <__errno>
   10b5c:	00813083          	ld	ra,8(sp)
   10b60:	00a00793          	li	a5,10
   10b64:	00f52023          	sw	a5,0(a0)
   10b68:	fff00513          	li	a0,-1
   10b6c:	01010113          	addi	sp,sp,16
   10b70:	00008067          	ret

0000000000010b74 <isatty>:
   10b74:	f8010113          	addi	sp,sp,-128
   10b78:	00810593          	addi	a1,sp,8
   10b7c:	06113c23          	sd	ra,120(sp)
   10b80:	cfdff0ef          	jal	ra,1087c <fstat>
   10b84:	fff00793          	li	a5,-1
   10b88:	00f50863          	beq	a0,a5,10b98 <isatty+0x24>
   10b8c:	00c12503          	lw	a0,12(sp)
   10b90:	40d5551b          	sraiw	a0,a0,0xd
   10b94:	00157513          	andi	a0,a0,1
   10b98:	07813083          	ld	ra,120(sp)
   10b9c:	08010113          	addi	sp,sp,128
   10ba0:	00008067          	ret

0000000000010ba4 <gettimeofday>:
   10ba4:	ff010113          	addi	sp,sp,-16
   10ba8:	00050593          	mv	a1,a0
   10bac:	00000713          	li	a4,0
   10bb0:	00000693          	li	a3,0
   10bb4:	00000613          	li	a2,0
   10bb8:	0a900513          	li	a0,169
   10bbc:	00113423          	sd	ra,8(sp)
   10bc0:	00000097          	auipc	ra,0x0
   10bc4:	be0080e7          	jalr	-1056(ra) # 107a0 <__internal_syscall>
   10bc8:	00813083          	ld	ra,8(sp)
   10bcc:	0005051b          	sext.w	a0,a0
   10bd0:	01010113          	addi	sp,sp,16
   10bd4:	00008067          	ret

0000000000010bd8 <times>:
   10bd8:	fd010113          	addi	sp,sp,-48
   10bdc:	02813023          	sd	s0,32(sp)
   10be0:	00050413          	mv	s0,a0
   10be4:	8581b783          	ld	a5,-1960(gp) # 117d8 <t0.2572>
   10be8:	00913c23          	sd	s1,24(sp)
   10bec:	02113423          	sd	ra,40(sp)
   10bf0:	85818493          	addi	s1,gp,-1960 # 117d8 <t0.2572>
   10bf4:	00079a63          	bnez	a5,10c08 <times+0x30>
   10bf8:	00000593          	li	a1,0
   10bfc:	85818513          	addi	a0,gp,-1960 # 117d8 <t0.2572>
   10c00:	00000097          	auipc	ra,0x0
   10c04:	fa4080e7          	jalr	-92(ra) # 10ba4 <gettimeofday>
   10c08:	00000593          	li	a1,0
   10c0c:	00010513          	mv	a0,sp
   10c10:	00000097          	auipc	ra,0x0
   10c14:	f94080e7          	jalr	-108(ra) # 10ba4 <gettimeofday>
   10c18:	0004b783          	ld	a5,0(s1)
   10c1c:	00013503          	ld	a0,0(sp)
   10c20:	000f45b7          	lui	a1,0xf4
   10c24:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22c0>
   10c28:	40f50533          	sub	a0,a0,a5
   10c2c:	154000ef          	jal	ra,10d80 <__muldi3>
   10c30:	0084b703          	ld	a4,8(s1)
   10c34:	00813783          	ld	a5,8(sp)
   10c38:	00043823          	sd	zero,16(s0)
   10c3c:	00043c23          	sd	zero,24(s0)
   10c40:	40e787b3          	sub	a5,a5,a4
   10c44:	00f50533          	add	a0,a0,a5
   10c48:	00a43023          	sd	a0,0(s0)
   10c4c:	00043423          	sd	zero,8(s0)
   10c50:	02813083          	ld	ra,40(sp)
   10c54:	02013403          	ld	s0,32(sp)
   10c58:	01813483          	ld	s1,24(sp)
   10c5c:	fff00513          	li	a0,-1
   10c60:	03010113          	addi	sp,sp,48
   10c64:	00008067          	ret

0000000000010c68 <ftime>:
   10c68:	00051423          	sh	zero,8(a0)
   10c6c:	00053023          	sd	zero,0(a0)
   10c70:	00000513          	li	a0,0
   10c74:	00008067          	ret

0000000000010c78 <utime>:
   10c78:	fff00513          	li	a0,-1
   10c7c:	00008067          	ret

0000000000010c80 <chown>:
   10c80:	fff00513          	li	a0,-1
   10c84:	00008067          	ret

0000000000010c88 <chmod>:
   10c88:	fff00513          	li	a0,-1
   10c8c:	00008067          	ret

0000000000010c90 <chdir>:
   10c90:	fff00513          	li	a0,-1
   10c94:	00008067          	ret

0000000000010c98 <getcwd>:
   10c98:	00000513          	li	a0,0
   10c9c:	00008067          	ret

0000000000010ca0 <sysconf>:
   10ca0:	00200793          	li	a5,2
   10ca4:	00f50663          	beq	a0,a5,10cb0 <sysconf+0x10>
   10ca8:	fff00513          	li	a0,-1
   10cac:	00008067          	ret
   10cb0:	000f4537          	lui	a0,0xf4
   10cb4:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22c0>
   10cb8:	00008067          	ret

0000000000010cbc <sbrk>:
   10cbc:	fe010113          	addi	sp,sp,-32
   10cc0:	00813823          	sd	s0,16(sp)
   10cc4:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10cc8:	00913423          	sd	s1,8(sp)
   10ccc:	00113c23          	sd	ra,24(sp)
   10cd0:	00050493          	mv	s1,a0
   10cd4:	04079063          	bnez	a5,10d14 <sbrk+0x58>
   10cd8:	00000713          	li	a4,0
   10cdc:	00000693          	li	a3,0
   10ce0:	00000613          	li	a2,0
   10ce4:	00000593          	li	a1,0
   10ce8:	0d600513          	li	a0,214
   10cec:	ab5ff0ef          	jal	ra,107a0 <__internal_syscall>
   10cf0:	fff00793          	li	a5,-1
   10cf4:	00f51e63          	bne	a0,a5,10d10 <sbrk+0x54>
   10cf8:	fff00513          	li	a0,-1
   10cfc:	01813083          	ld	ra,24(sp)
   10d00:	01013403          	ld	s0,16(sp)
   10d04:	00813483          	ld	s1,8(sp)
   10d08:	02010113          	addi	sp,sp,32
   10d0c:	00008067          	ret
   10d10:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10d14:	8181b583          	ld	a1,-2024(gp) # 11798 <_edata>
   10d18:	00000713          	li	a4,0
   10d1c:	00000693          	li	a3,0
   10d20:	00b485b3          	add	a1,s1,a1
   10d24:	00000613          	li	a2,0
   10d28:	0d600513          	li	a0,214
   10d2c:	a75ff0ef          	jal	ra,107a0 <__internal_syscall>
   10d30:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   10d34:	00f484b3          	add	s1,s1,a5
   10d38:	fc9510e3          	bne	a0,s1,10cf8 <sbrk+0x3c>
   10d3c:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10d40:	00078513          	mv	a0,a5
   10d44:	fb9ff06f          	j	10cfc <sbrk+0x40>

0000000000010d48 <_exit>:
   10d48:	ff010113          	addi	sp,sp,-16
   10d4c:	00050593          	mv	a1,a0
   10d50:	00000713          	li	a4,0
   10d54:	00000693          	li	a3,0
   10d58:	00000613          	li	a2,0
   10d5c:	05d00513          	li	a0,93
   10d60:	00113423          	sd	ra,8(sp)
   10d64:	00000097          	auipc	ra,0x0
   10d68:	a3c080e7          	jalr	-1476(ra) # 107a0 <__internal_syscall>
   10d6c:	0000006f          	j	10d6c <_exit+0x24>
   10d70:	0000                	unimp
	...

0000000000010d74 <__errno>:
   10d74:	8101b503          	ld	a0,-2032(gp) # 11790 <_impure_ptr>
   10d78:	00008067          	ret
   10d7c:	0000                	unimp
	...

0000000000010d80 <__muldi3>:
   10d80:	00050613          	mv	a2,a0
   10d84:	00000513          	li	a0,0
   10d88:	0015f693          	andi	a3,a1,1
   10d8c:	00068463          	beqz	a3,10d94 <__muldi3+0x14>
   10d90:	00c50533          	add	a0,a0,a2
   10d94:	0015d593          	srli	a1,a1,0x1
   10d98:	00161613          	slli	a2,a2,0x1
   10d9c:	fe0596e3          	bnez	a1,10d88 <__muldi3+0x8>
   10da0:	00008067          	ret
   10da4:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010da8 <__EH_FRAME_BEGIN__>:
   10da8:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	01c0                	addi	s0,sp,196
   11002:	0001                	nop
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	016c                	addi	a1,sp,140
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
  10:	0d80                	addi	s0,sp,720
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
  10:	0d80                	addi	s0,sp,720
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0da4                	addi	s1,sp,728
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
  9c:	8002                	0x8002
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
