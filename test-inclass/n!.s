
n!.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 117c8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	388000ef          	jal	ra,10450 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	26450513          	addi	a0,a0,612 # 10330 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	208080e7          	jalr	520(ra) # 102dc <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	2cc080e7          	jalr	716(ra) # 103a8 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	180000ef          	jal	ra,10270 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	20030067          	jr	512(t1) # 102f4 <exit>

00000000000100fc <_fini>:
   100fc:	00008067          	ret

0000000000010100 <deregister_tm_clones>:
   10100:	00011537          	lui	a0,0x11
   10104:	000117b7          	lui	a5,0x11
   10108:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   1010c:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10110:	00e78c63          	beq	a5,a4,10128 <deregister_tm_clones+0x28>
   10114:	00000337          	lui	t1,0x0
   10118:	00030313          	mv	t1,t1
   1011c:	00030663          	beqz	t1,10128 <deregister_tm_clones+0x28>
   10120:	75850513          	addi	a0,a0,1880
   10124:	00030067          	jr	t1
   10128:	00008067          	ret

000000000001012c <register_tm_clones>:
   1012c:	000117b7          	lui	a5,0x11
   10130:	00011537          	lui	a0,0x11
   10134:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   10138:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   1013c:	40f585b3          	sub	a1,a1,a5
   10140:	4035d593          	srai	a1,a1,0x3
   10144:	03f5d793          	srli	a5,a1,0x3f
   10148:	00b785b3          	add	a1,a5,a1
   1014c:	4015d593          	srai	a1,a1,0x1
   10150:	00058c63          	beqz	a1,10168 <register_tm_clones+0x3c>
   10154:	00000337          	lui	t1,0x0
   10158:	00030313          	mv	t1,t1
   1015c:	00030663          	beqz	t1,10168 <register_tm_clones+0x3c>
   10160:	75850513          	addi	a0,a0,1880
   10164:	00030067          	jr	t1
   10168:	00008067          	ret

000000000001016c <__do_global_dtors_aux>:
   1016c:	8281c703          	lbu	a4,-2008(gp) # 11780 <completed.5182>
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
   10198:	d5450513          	addi	a0,a0,-684 # 10d54 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18423          	sb	a5,-2008(gp) # 11780 <completed.5182>
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
   101d8:	78858593          	addi	a1,a1,1928 # 11788 <object.5187>
   101dc:	d5450513          	addi	a0,a0,-684 # 10d54 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <cal_n>:
   101f8:	fe010113          	addi	sp,sp,-32
   101fc:	00113c23          	sd	ra,24(sp)
   10200:	00813823          	sd	s0,16(sp)
   10204:	02010413          	addi	s0,sp,32
   10208:	00050793          	mv	a5,a0
   1020c:	fef42623          	sw	a5,-20(s0)
   10210:	fec42783          	lw	a5,-20(s0)
   10214:	0007871b          	sext.w	a4,a5
   10218:	00100793          	li	a5,1
   1021c:	00f71663          	bne	a4,a5,10228 <cal_n+0x30>
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	0380006f          	j	1025c <cal_n+0x64>
   10228:	fec42783          	lw	a5,-20(s0)
   1022c:	fff7879b          	addiw	a5,a5,-1
   10230:	0007879b          	sext.w	a5,a5
   10234:	00078513          	mv	a0,a5
   10238:	fc1ff0ef          	jal	ra,101f8 <cal_n>
   1023c:	00050793          	mv	a5,a0
   10240:	00078713          	mv	a4,a5
   10244:	fec42783          	lw	a5,-20(s0)
   10248:	00078593          	mv	a1,a5
   1024c:	00070513          	mv	a0,a4
   10250:	064000ef          	jal	ra,102b4 <__muldi3>
   10254:	00050793          	mv	a5,a0
   10258:	0007879b          	sext.w	a5,a5
   1025c:	00078513          	mv	a0,a5
   10260:	01813083          	ld	ra,24(sp)
   10264:	01013403          	ld	s0,16(sp)
   10268:	02010113          	addi	sp,sp,32
   1026c:	00008067          	ret

0000000000010270 <main>:
   10270:	ff010113          	addi	sp,sp,-16
   10274:	00113423          	sd	ra,8(sp)
   10278:	00813023          	sd	s0,0(sp)
   1027c:	01010413          	addi	s0,sp,16
   10280:	00a00513          	li	a0,10
   10284:	00000097          	auipc	ra,0x0
   10288:	f74080e7          	jalr	-140(ra) # 101f8 <cal_n>
   1028c:	00050793          	mv	a5,a0
   10290:	00078713          	mv	a4,a5
   10294:	80e1ac23          	sw	a4,-2024(gp) # 11770 <_edata>
   10298:	00000793          	li	a5,0
   1029c:	00078513          	mv	a0,a5
   102a0:	00813083          	ld	ra,8(sp)
   102a4:	00013403          	ld	s0,0(sp)
   102a8:	01010113          	addi	sp,sp,16
   102ac:	00008067          	ret
   102b0:	0000                	unimp
	...

00000000000102b4 <__muldi3>:
   102b4:	00050613          	mv	a2,a0
   102b8:	00000513          	li	a0,0
   102bc:	0015f693          	andi	a3,a1,1
   102c0:	00068463          	beqz	a3,102c8 <__muldi3+0x14>
   102c4:	00c50533          	add	a0,a0,a2
   102c8:	0015d593          	srli	a1,a1,0x1
   102cc:	00161613          	slli	a2,a2,0x1
   102d0:	fe0596e3          	bnez	a1,102bc <__muldi3+0x8>
   102d4:	00008067          	ret
   102d8:	0000                	unimp
	...

00000000000102dc <atexit>:
   102dc:	00050593          	mv	a1,a0
   102e0:	00000693          	li	a3,0
   102e4:	00000613          	li	a2,0
   102e8:	00000513          	li	a0,0
   102ec:	2400006f          	j	1052c <__register_exitproc>
   102f0:	0000                	unimp
	...

00000000000102f4 <exit>:
   102f4:	ff010113          	addi	sp,sp,-16
   102f8:	00000593          	li	a1,0
   102fc:	00813023          	sd	s0,0(sp)
   10300:	00113423          	sd	ra,8(sp)
   10304:	00050413          	mv	s0,a0
   10308:	2b0000ef          	jal	ra,105b8 <__call_exitprocs>
   1030c:	000117b7          	lui	a5,0x11
   10310:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10314:	05853783          	ld	a5,88(a0)
   10318:	00078463          	beqz	a5,10320 <exit+0x2c>
   1031c:	000780e7          	jalr	a5
   10320:	00040513          	mv	a0,s0
   10324:	00001097          	auipc	ra,0x1
   10328:	9f8080e7          	jalr	-1544(ra) # 10d1c <_exit>
   1032c:	0000                	unimp
	...

0000000000010330 <__libc_fini_array>:
   10330:	fe010113          	addi	sp,sp,-32
   10334:	000117b7          	lui	a5,0x11
   10338:	00011737          	lui	a4,0x11
   1033c:	00813823          	sd	s0,16(sp)
   10340:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10344:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10348:	40e40433          	sub	s0,s0,a4
   1034c:	00913423          	sd	s1,8(sp)
   10350:	01213023          	sd	s2,0(sp)
   10354:	00113c23          	sd	ra,24(sp)
   10358:	40345413          	srai	s0,s0,0x3
   1035c:	00000493          	li	s1,0
   10360:	01078913          	addi	s2,a5,16
   10364:	02941063          	bne	s0,s1,10384 <__libc_fini_array+0x54>
   10368:	01013403          	ld	s0,16(sp)
   1036c:	01813083          	ld	ra,24(sp)
   10370:	00813483          	ld	s1,8(sp)
   10374:	00013903          	ld	s2,0(sp)
   10378:	02010113          	addi	sp,sp,32
   1037c:	00000317          	auipc	t1,0x0
   10380:	d8030067          	jr	-640(t1) # 100fc <_fini>
   10384:	ff800593          	li	a1,-8
   10388:	00048513          	mv	a0,s1
   1038c:	f29ff0ef          	jal	ra,102b4 <__muldi3>
   10390:	00a90533          	add	a0,s2,a0
   10394:	ff853783          	ld	a5,-8(a0)
   10398:	00148493          	addi	s1,s1,1
   1039c:	000780e7          	jalr	a5
   103a0:	fc5ff06f          	j	10364 <__libc_fini_array+0x34>
   103a4:	0000                	unimp
	...

00000000000103a8 <__libc_init_array>:
   103a8:	fe010113          	addi	sp,sp,-32
   103ac:	00813823          	sd	s0,16(sp)
   103b0:	00913423          	sd	s1,8(sp)
   103b4:	00011437          	lui	s0,0x11
   103b8:	000114b7          	lui	s1,0x11
   103bc:	00048793          	mv	a5,s1
   103c0:	00040413          	mv	s0,s0
   103c4:	40f40433          	sub	s0,s0,a5
   103c8:	01213023          	sd	s2,0(sp)
   103cc:	00113c23          	sd	ra,24(sp)
   103d0:	40345413          	srai	s0,s0,0x3
   103d4:	00048493          	mv	s1,s1
   103d8:	00000913          	li	s2,0
   103dc:	04891463          	bne	s2,s0,10424 <__libc_init_array+0x7c>
   103e0:	000114b7          	lui	s1,0x11
   103e4:	00000097          	auipc	ra,0x0
   103e8:	d18080e7          	jalr	-744(ra) # 100fc <_fini>
   103ec:	00011437          	lui	s0,0x11
   103f0:	00048793          	mv	a5,s1
   103f4:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   103f8:	40f40433          	sub	s0,s0,a5
   103fc:	40345413          	srai	s0,s0,0x3
   10400:	00048493          	mv	s1,s1
   10404:	00000913          	li	s2,0
   10408:	02891863          	bne	s2,s0,10438 <__libc_init_array+0x90>
   1040c:	01813083          	ld	ra,24(sp)
   10410:	01013403          	ld	s0,16(sp)
   10414:	00813483          	ld	s1,8(sp)
   10418:	00013903          	ld	s2,0(sp)
   1041c:	02010113          	addi	sp,sp,32
   10420:	00008067          	ret
   10424:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10428:	00190913          	addi	s2,s2,1
   1042c:	00848493          	addi	s1,s1,8
   10430:	000780e7          	jalr	a5
   10434:	fa9ff06f          	j	103dc <__libc_init_array+0x34>
   10438:	0004b783          	ld	a5,0(s1)
   1043c:	00190913          	addi	s2,s2,1
   10440:	00848493          	addi	s1,s1,8
   10444:	000780e7          	jalr	a5
   10448:	fc1ff06f          	j	10408 <__libc_init_array+0x60>
   1044c:	0000                	unimp
	...

0000000000010450 <memset>:
   10450:	00f00813          	li	a6,15
   10454:	00050713          	mv	a4,a0
   10458:	02c87a63          	bleu	a2,a6,1048c <memset+0x3c>
   1045c:	00f77793          	andi	a5,a4,15
   10460:	0a079063          	bnez	a5,10500 <memset+0xb0>
   10464:	06059e63          	bnez	a1,104e0 <memset+0x90>
   10468:	ff067693          	andi	a3,a2,-16
   1046c:	00f67613          	andi	a2,a2,15
   10470:	00e686b3          	add	a3,a3,a4
   10474:	00b73023          	sd	a1,0(a4)
   10478:	00b73423          	sd	a1,8(a4)
   1047c:	01070713          	addi	a4,a4,16
   10480:	fed76ae3          	bltu	a4,a3,10474 <memset+0x24>
   10484:	00061463          	bnez	a2,1048c <memset+0x3c>
   10488:	00008067          	ret
   1048c:	40c806b3          	sub	a3,a6,a2
   10490:	00269693          	slli	a3,a3,0x2
   10494:	00000297          	auipc	t0,0x0
   10498:	005686b3          	add	a3,a3,t0
   1049c:	00c68067          	jr	12(a3)
   104a0:	00b70723          	sb	a1,14(a4)
   104a4:	00b706a3          	sb	a1,13(a4)
   104a8:	00b70623          	sb	a1,12(a4)
   104ac:	00b705a3          	sb	a1,11(a4)
   104b0:	00b70523          	sb	a1,10(a4)
   104b4:	00b704a3          	sb	a1,9(a4)
   104b8:	00b70423          	sb	a1,8(a4)
   104bc:	00b703a3          	sb	a1,7(a4)
   104c0:	00b70323          	sb	a1,6(a4)
   104c4:	00b702a3          	sb	a1,5(a4)
   104c8:	00b70223          	sb	a1,4(a4)
   104cc:	00b701a3          	sb	a1,3(a4)
   104d0:	00b70123          	sb	a1,2(a4)
   104d4:	00b700a3          	sb	a1,1(a4)
   104d8:	00b70023          	sb	a1,0(a4)
   104dc:	00008067          	ret
   104e0:	0ff5f593          	andi	a1,a1,255
   104e4:	00859693          	slli	a3,a1,0x8
   104e8:	00d5e5b3          	or	a1,a1,a3
   104ec:	01059693          	slli	a3,a1,0x10
   104f0:	00d5e5b3          	or	a1,a1,a3
   104f4:	02059693          	slli	a3,a1,0x20
   104f8:	00d5e5b3          	or	a1,a1,a3
   104fc:	f6dff06f          	j	10468 <memset+0x18>
   10500:	00279693          	slli	a3,a5,0x2
   10504:	00000297          	auipc	t0,0x0
   10508:	005686b3          	add	a3,a3,t0
   1050c:	00008293          	mv	t0,ra
   10510:	f98680e7          	jalr	-104(a3)
   10514:	00028093          	mv	ra,t0
   10518:	ff078793          	addi	a5,a5,-16
   1051c:	40f70733          	sub	a4,a4,a5
   10520:	00f60633          	add	a2,a2,a5
   10524:	f6c874e3          	bleu	a2,a6,1048c <memset+0x3c>
   10528:	f3dff06f          	j	10464 <memset+0x14>

000000000001052c <__register_exitproc>:
   1052c:	000117b7          	lui	a5,0x11
   10530:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10534:	00050313          	mv	t1,a0
   10538:	1f873783          	ld	a5,504(a4)
   1053c:	00079663          	bnez	a5,10548 <__register_exitproc+0x1c>
   10540:	20070793          	addi	a5,a4,512
   10544:	1ef73c23          	sd	a5,504(a4)
   10548:	0087a703          	lw	a4,8(a5)
   1054c:	01f00813          	li	a6,31
   10550:	fff00513          	li	a0,-1
   10554:	04e84e63          	blt	a6,a4,105b0 <__register_exitproc+0x84>
   10558:	02030e63          	beqz	t1,10594 <__register_exitproc+0x68>
   1055c:	00371813          	slli	a6,a4,0x3
   10560:	01078833          	add	a6,a5,a6
   10564:	10c83823          	sd	a2,272(a6)
   10568:	3107a883          	lw	a7,784(a5)
   1056c:	00100613          	li	a2,1
   10570:	00e6163b          	sllw	a2,a2,a4
   10574:	00c8e8b3          	or	a7,a7,a2
   10578:	3117a823          	sw	a7,784(a5)
   1057c:	20d83823          	sd	a3,528(a6)
   10580:	00200693          	li	a3,2
   10584:	00d31863          	bne	t1,a3,10594 <__register_exitproc+0x68>
   10588:	3147a683          	lw	a3,788(a5)
   1058c:	00c6e633          	or	a2,a3,a2
   10590:	30c7aa23          	sw	a2,788(a5)
   10594:	0017069b          	addiw	a3,a4,1
   10598:	00270713          	addi	a4,a4,2
   1059c:	00371713          	slli	a4,a4,0x3
   105a0:	00d7a423          	sw	a3,8(a5)
   105a4:	00e787b3          	add	a5,a5,a4
   105a8:	00b7b023          	sd	a1,0(a5)
   105ac:	00000513          	li	a0,0
   105b0:	00008067          	ret
   105b4:	0000                	unimp
	...

00000000000105b8 <__call_exitprocs>:
   105b8:	fb010113          	addi	sp,sp,-80
   105bc:	000117b7          	lui	a5,0x11
   105c0:	03313423          	sd	s3,40(sp)
   105c4:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105c8:	03413023          	sd	s4,32(sp)
   105cc:	01513c23          	sd	s5,24(sp)
   105d0:	01613823          	sd	s6,16(sp)
   105d4:	04113423          	sd	ra,72(sp)
   105d8:	04813023          	sd	s0,64(sp)
   105dc:	02913c23          	sd	s1,56(sp)
   105e0:	03213823          	sd	s2,48(sp)
   105e4:	01713423          	sd	s7,8(sp)
   105e8:	00050a93          	mv	s5,a0
   105ec:	00058a13          	mv	s4,a1
   105f0:	00100b13          	li	s6,1
   105f4:	1f89b403          	ld	s0,504(s3)
   105f8:	00040c63          	beqz	s0,10610 <__call_exitprocs+0x58>
   105fc:	00842483          	lw	s1,8(s0)
   10600:	fff4849b          	addiw	s1,s1,-1
   10604:	00349913          	slli	s2,s1,0x3
   10608:	01240933          	add	s2,s0,s2
   1060c:	0204d863          	bgez	s1,1063c <__call_exitprocs+0x84>
   10610:	04813083          	ld	ra,72(sp)
   10614:	04013403          	ld	s0,64(sp)
   10618:	03813483          	ld	s1,56(sp)
   1061c:	03013903          	ld	s2,48(sp)
   10620:	02813983          	ld	s3,40(sp)
   10624:	02013a03          	ld	s4,32(sp)
   10628:	01813a83          	ld	s5,24(sp)
   1062c:	01013b03          	ld	s6,16(sp)
   10630:	00813b83          	ld	s7,8(sp)
   10634:	05010113          	addi	sp,sp,80
   10638:	00008067          	ret
   1063c:	000a0c63          	beqz	s4,10654 <__call_exitprocs+0x9c>
   10640:	21093783          	ld	a5,528(s2)
   10644:	01478863          	beq	a5,s4,10654 <__call_exitprocs+0x9c>
   10648:	fff4849b          	addiw	s1,s1,-1
   1064c:	ff890913          	addi	s2,s2,-8
   10650:	fbdff06f          	j	1060c <__call_exitprocs+0x54>
   10654:	00842783          	lw	a5,8(s0)
   10658:	01093683          	ld	a3,16(s2)
   1065c:	fff7879b          	addiw	a5,a5,-1
   10660:	02979e63          	bne	a5,s1,1069c <__call_exitprocs+0xe4>
   10664:	00942423          	sw	s1,8(s0)
   10668:	fe0680e3          	beqz	a3,10648 <__call_exitprocs+0x90>
   1066c:	31042703          	lw	a4,784(s0)
   10670:	009b163b          	sllw	a2,s6,s1
   10674:	00842b83          	lw	s7,8(s0)
   10678:	00c77733          	and	a4,a4,a2
   1067c:	0007071b          	sext.w	a4,a4
   10680:	02071263          	bnez	a4,106a4 <__call_exitprocs+0xec>
   10684:	000680e7          	jalr	a3
   10688:	00842703          	lw	a4,8(s0)
   1068c:	1f89b783          	ld	a5,504(s3)
   10690:	f77712e3          	bne	a4,s7,105f4 <__call_exitprocs+0x3c>
   10694:	faf40ae3          	beq	s0,a5,10648 <__call_exitprocs+0x90>
   10698:	f5dff06f          	j	105f4 <__call_exitprocs+0x3c>
   1069c:	00093823          	sd	zero,16(s2)
   106a0:	fc9ff06f          	j	10668 <__call_exitprocs+0xb0>
   106a4:	31442783          	lw	a5,788(s0)
   106a8:	11093583          	ld	a1,272(s2)
   106ac:	00c7f7b3          	and	a5,a5,a2
   106b0:	0007879b          	sext.w	a5,a5
   106b4:	00079863          	bnez	a5,106c4 <__call_exitprocs+0x10c>
   106b8:	000a8513          	mv	a0,s5
   106bc:	000680e7          	jalr	a3
   106c0:	fc9ff06f          	j	10688 <__call_exitprocs+0xd0>
   106c4:	00058513          	mv	a0,a1
   106c8:	000680e7          	jalr	a3
   106cc:	fbdff06f          	j	10688 <__call_exitprocs+0xd0>
   106d0:	0000                	unimp
	...

00000000000106d4 <conv_stat>:
   106d4:	0005b783          	ld	a5,0(a1)
   106d8:	00f51023          	sh	a5,0(a0)
   106dc:	0085b783          	ld	a5,8(a1)
   106e0:	00f51123          	sh	a5,2(a0)
   106e4:	0105a783          	lw	a5,16(a1)
   106e8:	00f52223          	sw	a5,4(a0)
   106ec:	0145a783          	lw	a5,20(a1)
   106f0:	00f51423          	sh	a5,8(a0)
   106f4:	0185a783          	lw	a5,24(a1)
   106f8:	00f51523          	sh	a5,10(a0)
   106fc:	01c5a783          	lw	a5,28(a1)
   10700:	00f51623          	sh	a5,12(a0)
   10704:	0205b783          	ld	a5,32(a1)
   10708:	00f51723          	sh	a5,14(a0)
   1070c:	0305b783          	ld	a5,48(a1)
   10710:	00f53823          	sd	a5,16(a0)
   10714:	0405b783          	ld	a5,64(a1)
   10718:	04f53823          	sd	a5,80(a0)
   1071c:	0385a783          	lw	a5,56(a1)
   10720:	04f53423          	sd	a5,72(a0)
   10724:	0485b783          	ld	a5,72(a1)
   10728:	00f53c23          	sd	a5,24(a0)
   1072c:	0585b783          	ld	a5,88(a1)
   10730:	02f53423          	sd	a5,40(a0)
   10734:	0685b783          	ld	a5,104(a1)
   10738:	02f53c23          	sd	a5,56(a0)
   1073c:	00008067          	ret

0000000000010740 <__syscall_error>:
   10740:	ff010113          	addi	sp,sp,-16
   10744:	00813023          	sd	s0,0(sp)
   10748:	00113423          	sd	ra,8(sp)
   1074c:	00050413          	mv	s0,a0
   10750:	00000097          	auipc	ra,0x0
   10754:	5f8080e7          	jalr	1528(ra) # 10d48 <__errno>
   10758:	408007bb          	negw	a5,s0
   1075c:	00813083          	ld	ra,8(sp)
   10760:	00013403          	ld	s0,0(sp)
   10764:	00f52023          	sw	a5,0(a0)
   10768:	fff00513          	li	a0,-1
   1076c:	01010113          	addi	sp,sp,16
   10770:	00008067          	ret

0000000000010774 <__internal_syscall>:
   10774:	00050893          	mv	a7,a0
   10778:	00058513          	mv	a0,a1
   1077c:	00060593          	mv	a1,a2
   10780:	00068613          	mv	a2,a3
   10784:	00070693          	mv	a3,a4
   10788:	00000073          	ecall
   1078c:	00055663          	bgez	a0,10798 <__internal_syscall+0x24>
   10790:	00000317          	auipc	t1,0x0
   10794:	fb030067          	jr	-80(t1) # 10740 <__syscall_error>
   10798:	00008067          	ret

000000000001079c <open>:
   1079c:	ff010113          	addi	sp,sp,-16
   107a0:	00060693          	mv	a3,a2
   107a4:	00000713          	li	a4,0
   107a8:	00058613          	mv	a2,a1
   107ac:	00050593          	mv	a1,a0
   107b0:	40000513          	li	a0,1024
   107b4:	00113423          	sd	ra,8(sp)
   107b8:	00000097          	auipc	ra,0x0
   107bc:	fbc080e7          	jalr	-68(ra) # 10774 <__internal_syscall>
   107c0:	00813083          	ld	ra,8(sp)
   107c4:	0005051b          	sext.w	a0,a0
   107c8:	01010113          	addi	sp,sp,16
   107cc:	00008067          	ret

00000000000107d0 <openat>:
   107d0:	ff010113          	addi	sp,sp,-16
   107d4:	00068713          	mv	a4,a3
   107d8:	00060693          	mv	a3,a2
   107dc:	00058613          	mv	a2,a1
   107e0:	00050593          	mv	a1,a0
   107e4:	03800513          	li	a0,56
   107e8:	00113423          	sd	ra,8(sp)
   107ec:	f89ff0ef          	jal	ra,10774 <__internal_syscall>
   107f0:	00813083          	ld	ra,8(sp)
   107f4:	0005051b          	sext.w	a0,a0
   107f8:	01010113          	addi	sp,sp,16
   107fc:	00008067          	ret

0000000000010800 <lseek>:
   10800:	00060693          	mv	a3,a2
   10804:	00000713          	li	a4,0
   10808:	00058613          	mv	a2,a1
   1080c:	00050593          	mv	a1,a0
   10810:	03e00513          	li	a0,62
   10814:	00000317          	auipc	t1,0x0
   10818:	f6030067          	jr	-160(t1) # 10774 <__internal_syscall>

000000000001081c <read>:
   1081c:	00060693          	mv	a3,a2
   10820:	00000713          	li	a4,0
   10824:	00058613          	mv	a2,a1
   10828:	00050593          	mv	a1,a0
   1082c:	03f00513          	li	a0,63
   10830:	f45ff06f          	j	10774 <__internal_syscall>

0000000000010834 <write>:
   10834:	00060693          	mv	a3,a2
   10838:	00000713          	li	a4,0
   1083c:	00058613          	mv	a2,a1
   10840:	00050593          	mv	a1,a0
   10844:	04000513          	li	a0,64
   10848:	00000317          	auipc	t1,0x0
   1084c:	f2c30067          	jr	-212(t1) # 10774 <__internal_syscall>

0000000000010850 <fstat>:
   10850:	f6010113          	addi	sp,sp,-160
   10854:	08913423          	sd	s1,136(sp)
   10858:	00010613          	mv	a2,sp
   1085c:	00058493          	mv	s1,a1
   10860:	00000713          	li	a4,0
   10864:	00050593          	mv	a1,a0
   10868:	00000693          	li	a3,0
   1086c:	05000513          	li	a0,80
   10870:	08113c23          	sd	ra,152(sp)
   10874:	08813823          	sd	s0,144(sp)
   10878:	efdff0ef          	jal	ra,10774 <__internal_syscall>
   1087c:	00050413          	mv	s0,a0
   10880:	00010593          	mv	a1,sp
   10884:	00048513          	mv	a0,s1
   10888:	e4dff0ef          	jal	ra,106d4 <conv_stat>
   1088c:	0004051b          	sext.w	a0,s0
   10890:	09813083          	ld	ra,152(sp)
   10894:	09013403          	ld	s0,144(sp)
   10898:	08813483          	ld	s1,136(sp)
   1089c:	0a010113          	addi	sp,sp,160
   108a0:	00008067          	ret

00000000000108a4 <stat>:
   108a4:	f6010113          	addi	sp,sp,-160
   108a8:	08913423          	sd	s1,136(sp)
   108ac:	00010613          	mv	a2,sp
   108b0:	00058493          	mv	s1,a1
   108b4:	00000713          	li	a4,0
   108b8:	00050593          	mv	a1,a0
   108bc:	00000693          	li	a3,0
   108c0:	40e00513          	li	a0,1038
   108c4:	08113c23          	sd	ra,152(sp)
   108c8:	08813823          	sd	s0,144(sp)
   108cc:	00000097          	auipc	ra,0x0
   108d0:	ea8080e7          	jalr	-344(ra) # 10774 <__internal_syscall>
   108d4:	00050413          	mv	s0,a0
   108d8:	00010593          	mv	a1,sp
   108dc:	00048513          	mv	a0,s1
   108e0:	00000097          	auipc	ra,0x0
   108e4:	df4080e7          	jalr	-524(ra) # 106d4 <conv_stat>
   108e8:	0004051b          	sext.w	a0,s0
   108ec:	09813083          	ld	ra,152(sp)
   108f0:	09013403          	ld	s0,144(sp)
   108f4:	08813483          	ld	s1,136(sp)
   108f8:	0a010113          	addi	sp,sp,160
   108fc:	00008067          	ret

0000000000010900 <lstat>:
   10900:	f6010113          	addi	sp,sp,-160
   10904:	08913423          	sd	s1,136(sp)
   10908:	00010613          	mv	a2,sp
   1090c:	00058493          	mv	s1,a1
   10910:	00000713          	li	a4,0
   10914:	00050593          	mv	a1,a0
   10918:	00000693          	li	a3,0
   1091c:	40f00513          	li	a0,1039
   10920:	08113c23          	sd	ra,152(sp)
   10924:	08813823          	sd	s0,144(sp)
   10928:	e4dff0ef          	jal	ra,10774 <__internal_syscall>
   1092c:	00050413          	mv	s0,a0
   10930:	00010593          	mv	a1,sp
   10934:	00048513          	mv	a0,s1
   10938:	d9dff0ef          	jal	ra,106d4 <conv_stat>
   1093c:	0004051b          	sext.w	a0,s0
   10940:	09813083          	ld	ra,152(sp)
   10944:	09013403          	ld	s0,144(sp)
   10948:	08813483          	ld	s1,136(sp)
   1094c:	0a010113          	addi	sp,sp,160
   10950:	00008067          	ret

0000000000010954 <fstatat>:
   10954:	f6010113          	addi	sp,sp,-160
   10958:	08913423          	sd	s1,136(sp)
   1095c:	00068713          	mv	a4,a3
   10960:	00060493          	mv	s1,a2
   10964:	00010693          	mv	a3,sp
   10968:	00058613          	mv	a2,a1
   1096c:	00050593          	mv	a1,a0
   10970:	04f00513          	li	a0,79
   10974:	08113c23          	sd	ra,152(sp)
   10978:	08813823          	sd	s0,144(sp)
   1097c:	00000097          	auipc	ra,0x0
   10980:	df8080e7          	jalr	-520(ra) # 10774 <__internal_syscall>
   10984:	00050413          	mv	s0,a0
   10988:	00010593          	mv	a1,sp
   1098c:	00048513          	mv	a0,s1
   10990:	00000097          	auipc	ra,0x0
   10994:	d44080e7          	jalr	-700(ra) # 106d4 <conv_stat>
   10998:	0004051b          	sext.w	a0,s0
   1099c:	09813083          	ld	ra,152(sp)
   109a0:	09013403          	ld	s0,144(sp)
   109a4:	08813483          	ld	s1,136(sp)
   109a8:	0a010113          	addi	sp,sp,160
   109ac:	00008067          	ret

00000000000109b0 <access>:
   109b0:	ff010113          	addi	sp,sp,-16
   109b4:	00058613          	mv	a2,a1
   109b8:	00000713          	li	a4,0
   109bc:	00050593          	mv	a1,a0
   109c0:	00000693          	li	a3,0
   109c4:	40900513          	li	a0,1033
   109c8:	00113423          	sd	ra,8(sp)
   109cc:	da9ff0ef          	jal	ra,10774 <__internal_syscall>
   109d0:	00813083          	ld	ra,8(sp)
   109d4:	0005051b          	sext.w	a0,a0
   109d8:	01010113          	addi	sp,sp,16
   109dc:	00008067          	ret

00000000000109e0 <faccessat>:
   109e0:	ff010113          	addi	sp,sp,-16
   109e4:	00068713          	mv	a4,a3
   109e8:	00060693          	mv	a3,a2
   109ec:	00058613          	mv	a2,a1
   109f0:	00050593          	mv	a1,a0
   109f4:	03000513          	li	a0,48
   109f8:	00113423          	sd	ra,8(sp)
   109fc:	00000097          	auipc	ra,0x0
   10a00:	d78080e7          	jalr	-648(ra) # 10774 <__internal_syscall>
   10a04:	00813083          	ld	ra,8(sp)
   10a08:	0005051b          	sext.w	a0,a0
   10a0c:	01010113          	addi	sp,sp,16
   10a10:	00008067          	ret

0000000000010a14 <close>:
   10a14:	ff010113          	addi	sp,sp,-16
   10a18:	00050593          	mv	a1,a0
   10a1c:	00000713          	li	a4,0
   10a20:	00000693          	li	a3,0
   10a24:	00000613          	li	a2,0
   10a28:	03900513          	li	a0,57
   10a2c:	00113423          	sd	ra,8(sp)
   10a30:	d45ff0ef          	jal	ra,10774 <__internal_syscall>
   10a34:	00813083          	ld	ra,8(sp)
   10a38:	0005051b          	sext.w	a0,a0
   10a3c:	01010113          	addi	sp,sp,16
   10a40:	00008067          	ret

0000000000010a44 <link>:
   10a44:	ff010113          	addi	sp,sp,-16
   10a48:	00058613          	mv	a2,a1
   10a4c:	00000713          	li	a4,0
   10a50:	00050593          	mv	a1,a0
   10a54:	00000693          	li	a3,0
   10a58:	40100513          	li	a0,1025
   10a5c:	00113423          	sd	ra,8(sp)
   10a60:	00000097          	auipc	ra,0x0
   10a64:	d14080e7          	jalr	-748(ra) # 10774 <__internal_syscall>
   10a68:	00813083          	ld	ra,8(sp)
   10a6c:	0005051b          	sext.w	a0,a0
   10a70:	01010113          	addi	sp,sp,16
   10a74:	00008067          	ret

0000000000010a78 <unlink>:
   10a78:	ff010113          	addi	sp,sp,-16
   10a7c:	00050593          	mv	a1,a0
   10a80:	00000713          	li	a4,0
   10a84:	00000693          	li	a3,0
   10a88:	00000613          	li	a2,0
   10a8c:	40200513          	li	a0,1026
   10a90:	00113423          	sd	ra,8(sp)
   10a94:	ce1ff0ef          	jal	ra,10774 <__internal_syscall>
   10a98:	00813083          	ld	ra,8(sp)
   10a9c:	0005051b          	sext.w	a0,a0
   10aa0:	01010113          	addi	sp,sp,16
   10aa4:	00008067          	ret

0000000000010aa8 <execve>:
   10aa8:	ff010113          	addi	sp,sp,-16
   10aac:	00113423          	sd	ra,8(sp)
   10ab0:	00000097          	auipc	ra,0x0
   10ab4:	298080e7          	jalr	664(ra) # 10d48 <__errno>
   10ab8:	00813083          	ld	ra,8(sp)
   10abc:	00c00793          	li	a5,12
   10ac0:	00f52023          	sw	a5,0(a0)
   10ac4:	fff00513          	li	a0,-1
   10ac8:	01010113          	addi	sp,sp,16
   10acc:	00008067          	ret

0000000000010ad0 <fork>:
   10ad0:	ff010113          	addi	sp,sp,-16
   10ad4:	00113423          	sd	ra,8(sp)
   10ad8:	270000ef          	jal	ra,10d48 <__errno>
   10adc:	00813083          	ld	ra,8(sp)
   10ae0:	00b00793          	li	a5,11
   10ae4:	00f52023          	sw	a5,0(a0)
   10ae8:	fff00513          	li	a0,-1
   10aec:	01010113          	addi	sp,sp,16
   10af0:	00008067          	ret

0000000000010af4 <getpid>:
   10af4:	00100513          	li	a0,1
   10af8:	00008067          	ret

0000000000010afc <kill>:
   10afc:	ff010113          	addi	sp,sp,-16
   10b00:	00113423          	sd	ra,8(sp)
   10b04:	244000ef          	jal	ra,10d48 <__errno>
   10b08:	00813083          	ld	ra,8(sp)
   10b0c:	01600793          	li	a5,22
   10b10:	00f52023          	sw	a5,0(a0)
   10b14:	fff00513          	li	a0,-1
   10b18:	01010113          	addi	sp,sp,16
   10b1c:	00008067          	ret

0000000000010b20 <wait>:
   10b20:	ff010113          	addi	sp,sp,-16
   10b24:	00113423          	sd	ra,8(sp)
   10b28:	00000097          	auipc	ra,0x0
   10b2c:	220080e7          	jalr	544(ra) # 10d48 <__errno>
   10b30:	00813083          	ld	ra,8(sp)
   10b34:	00a00793          	li	a5,10
   10b38:	00f52023          	sw	a5,0(a0)
   10b3c:	fff00513          	li	a0,-1
   10b40:	01010113          	addi	sp,sp,16
   10b44:	00008067          	ret

0000000000010b48 <isatty>:
   10b48:	f8010113          	addi	sp,sp,-128
   10b4c:	00810593          	addi	a1,sp,8
   10b50:	06113c23          	sd	ra,120(sp)
   10b54:	cfdff0ef          	jal	ra,10850 <fstat>
   10b58:	fff00793          	li	a5,-1
   10b5c:	00f50863          	beq	a0,a5,10b6c <isatty+0x24>
   10b60:	00c12503          	lw	a0,12(sp)
   10b64:	40d5551b          	sraiw	a0,a0,0xd
   10b68:	00157513          	andi	a0,a0,1
   10b6c:	07813083          	ld	ra,120(sp)
   10b70:	08010113          	addi	sp,sp,128
   10b74:	00008067          	ret

0000000000010b78 <gettimeofday>:
   10b78:	ff010113          	addi	sp,sp,-16
   10b7c:	00050593          	mv	a1,a0
   10b80:	00000713          	li	a4,0
   10b84:	00000693          	li	a3,0
   10b88:	00000613          	li	a2,0
   10b8c:	0a900513          	li	a0,169
   10b90:	00113423          	sd	ra,8(sp)
   10b94:	00000097          	auipc	ra,0x0
   10b98:	be0080e7          	jalr	-1056(ra) # 10774 <__internal_syscall>
   10b9c:	00813083          	ld	ra,8(sp)
   10ba0:	0005051b          	sext.w	a0,a0
   10ba4:	01010113          	addi	sp,sp,16
   10ba8:	00008067          	ret

0000000000010bac <times>:
   10bac:	fd010113          	addi	sp,sp,-48
   10bb0:	02813023          	sd	s0,32(sp)
   10bb4:	00050413          	mv	s0,a0
   10bb8:	8601b783          	ld	a5,-1952(gp) # 117b8 <t0.2572>
   10bbc:	00913c23          	sd	s1,24(sp)
   10bc0:	02113423          	sd	ra,40(sp)
   10bc4:	86018493          	addi	s1,gp,-1952 # 117b8 <t0.2572>
   10bc8:	00079a63          	bnez	a5,10bdc <times+0x30>
   10bcc:	00000593          	li	a1,0
   10bd0:	86018513          	addi	a0,gp,-1952 # 117b8 <t0.2572>
   10bd4:	00000097          	auipc	ra,0x0
   10bd8:	fa4080e7          	jalr	-92(ra) # 10b78 <gettimeofday>
   10bdc:	00000593          	li	a1,0
   10be0:	00010513          	mv	a0,sp
   10be4:	00000097          	auipc	ra,0x0
   10be8:	f94080e7          	jalr	-108(ra) # 10b78 <gettimeofday>
   10bec:	0004b783          	ld	a5,0(s1)
   10bf0:	00013503          	ld	a0,0(sp)
   10bf4:	000f45b7          	lui	a1,0xf4
   10bf8:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10bfc:	40f50533          	sub	a0,a0,a5
   10c00:	eb4ff0ef          	jal	ra,102b4 <__muldi3>
   10c04:	0084b703          	ld	a4,8(s1)
   10c08:	00813783          	ld	a5,8(sp)
   10c0c:	00043823          	sd	zero,16(s0)
   10c10:	00043c23          	sd	zero,24(s0)
   10c14:	40e787b3          	sub	a5,a5,a4
   10c18:	00f50533          	add	a0,a0,a5
   10c1c:	00a43023          	sd	a0,0(s0)
   10c20:	00043423          	sd	zero,8(s0)
   10c24:	02813083          	ld	ra,40(sp)
   10c28:	02013403          	ld	s0,32(sp)
   10c2c:	01813483          	ld	s1,24(sp)
   10c30:	fff00513          	li	a0,-1
   10c34:	03010113          	addi	sp,sp,48
   10c38:	00008067          	ret

0000000000010c3c <ftime>:
   10c3c:	00051423          	sh	zero,8(a0)
   10c40:	00053023          	sd	zero,0(a0)
   10c44:	00000513          	li	a0,0
   10c48:	00008067          	ret

0000000000010c4c <utime>:
   10c4c:	fff00513          	li	a0,-1
   10c50:	00008067          	ret

0000000000010c54 <chown>:
   10c54:	fff00513          	li	a0,-1
   10c58:	00008067          	ret

0000000000010c5c <chmod>:
   10c5c:	fff00513          	li	a0,-1
   10c60:	00008067          	ret

0000000000010c64 <chdir>:
   10c64:	fff00513          	li	a0,-1
   10c68:	00008067          	ret

0000000000010c6c <getcwd>:
   10c6c:	00000513          	li	a0,0
   10c70:	00008067          	ret

0000000000010c74 <sysconf>:
   10c74:	00200793          	li	a5,2
   10c78:	00f50663          	beq	a0,a5,10c84 <sysconf+0x10>
   10c7c:	fff00513          	li	a0,-1
   10c80:	00008067          	ret
   10c84:	000f4537          	lui	a0,0xf4
   10c88:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10c8c:	00008067          	ret

0000000000010c90 <sbrk>:
   10c90:	fe010113          	addi	sp,sp,-32
   10c94:	00813823          	sd	s0,16(sp)
   10c98:	8201b783          	ld	a5,-2016(gp) # 11778 <heap_end.2609>
   10c9c:	00913423          	sd	s1,8(sp)
   10ca0:	00113c23          	sd	ra,24(sp)
   10ca4:	00050493          	mv	s1,a0
   10ca8:	04079063          	bnez	a5,10ce8 <sbrk+0x58>
   10cac:	00000713          	li	a4,0
   10cb0:	00000693          	li	a3,0
   10cb4:	00000613          	li	a2,0
   10cb8:	00000593          	li	a1,0
   10cbc:	0d600513          	li	a0,214
   10cc0:	ab5ff0ef          	jal	ra,10774 <__internal_syscall>
   10cc4:	fff00793          	li	a5,-1
   10cc8:	00f51e63          	bne	a0,a5,10ce4 <sbrk+0x54>
   10ccc:	fff00513          	li	a0,-1
   10cd0:	01813083          	ld	ra,24(sp)
   10cd4:	01013403          	ld	s0,16(sp)
   10cd8:	00813483          	ld	s1,8(sp)
   10cdc:	02010113          	addi	sp,sp,32
   10ce0:	00008067          	ret
   10ce4:	82a1b023          	sd	a0,-2016(gp) # 11778 <heap_end.2609>
   10ce8:	8201b583          	ld	a1,-2016(gp) # 11778 <heap_end.2609>
   10cec:	00000713          	li	a4,0
   10cf0:	00000693          	li	a3,0
   10cf4:	00b485b3          	add	a1,s1,a1
   10cf8:	00000613          	li	a2,0
   10cfc:	0d600513          	li	a0,214
   10d00:	a75ff0ef          	jal	ra,10774 <__internal_syscall>
   10d04:	8201b783          	ld	a5,-2016(gp) # 11778 <heap_end.2609>
   10d08:	00f484b3          	add	s1,s1,a5
   10d0c:	fc9510e3          	bne	a0,s1,10ccc <sbrk+0x3c>
   10d10:	82a1b023          	sd	a0,-2016(gp) # 11778 <heap_end.2609>
   10d14:	00078513          	mv	a0,a5
   10d18:	fb9ff06f          	j	10cd0 <sbrk+0x40>

0000000000010d1c <_exit>:
   10d1c:	ff010113          	addi	sp,sp,-16
   10d20:	00050593          	mv	a1,a0
   10d24:	00000713          	li	a4,0
   10d28:	00000693          	li	a3,0
   10d2c:	00000613          	li	a2,0
   10d30:	05d00513          	li	a0,93
   10d34:	00113423          	sd	ra,8(sp)
   10d38:	00000097          	auipc	ra,0x0
   10d3c:	a3c080e7          	jalr	-1476(ra) # 10774 <__internal_syscall>
   10d40:	0000006f          	j	10d40 <_exit+0x24>
   10d44:	0000                	unimp
	...

0000000000010d48 <__errno>:
   10d48:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10d4c:	00008067          	ret
   10d50:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010d54 <__EH_FRAME_BEGIN__>:
   10d54:	0000                	unimp
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

0000000000011770 <result>:
	...

0000000000011778 <heap_end.2609>:
	...

Disassembly of section .bss:

0000000000011780 <completed.5182>:
	...

0000000000011788 <object.5187>:
	...

00000000000117b8 <t0.2572>:
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
  10:	02b4                	addi	a3,sp,328
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
  10:	02b4                	addi	a3,sp,328
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	02d8                	addi	a4,sp,324
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
  9c:	b402                	fsd	ft0,40(sp)
  9e:	0102                	slli	sp,sp,0x0
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
