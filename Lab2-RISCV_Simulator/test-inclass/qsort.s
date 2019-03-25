
qsort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	91018613          	addi	a2,gp,-1776 # 11868 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	4f4000ef          	jal	ra,105bc <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	3d050513          	addi	a0,a0,976 # 1049c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	374080e7          	jalr	884(ra) # 10448 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	438080e7          	jalr	1080(ra) # 10514 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	2dc000ef          	jal	ra,103cc <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	36c30067          	jr	876(t1) # 10460 <exit>

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
   1016c:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5182>
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
   10198:	ee850513          	addi	a0,a0,-280 # 10ee8 <__EH_FRAME_BEGIN__>
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	00100793          	li	a5,1
   101a8:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5182>
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
   101d8:	78058593          	addi	a1,a1,1920 # 11780 <object.5187>
   101dc:	ee850513          	addi	a0,a0,-280 # 10ee8 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <qsort>:
   101f8:	fd010113          	addi	sp,sp,-48
   101fc:	02113423          	sd	ra,40(sp)
   10200:	02813023          	sd	s0,32(sp)
   10204:	03010413          	addi	s0,sp,48
   10208:	00050793          	mv	a5,a0
   1020c:	00058713          	mv	a4,a1
   10210:	fcf42e23          	sw	a5,-36(s0)
   10214:	00070793          	mv	a5,a4
   10218:	fcf42c23          	sw	a5,-40(s0)
   1021c:	000117b7          	lui	a5,0x11
   10220:	fdc42703          	lw	a4,-36(s0)
   10224:	00271713          	slli	a4,a4,0x2
   10228:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   1022c:	00f707b3          	add	a5,a4,a5
   10230:	0007a783          	lw	a5,0(a5)
   10234:	fef42223          	sw	a5,-28(s0)
   10238:	fdc42783          	lw	a5,-36(s0)
   1023c:	fef42623          	sw	a5,-20(s0)
   10240:	fd842783          	lw	a5,-40(s0)
   10244:	fef42423          	sw	a5,-24(s0)
   10248:	fdc42703          	lw	a4,-36(s0)
   1024c:	fd842783          	lw	a5,-40(s0)
   10250:	0007071b          	sext.w	a4,a4
   10254:	0007879b          	sext.w	a5,a5
   10258:	16f75063          	ble	a5,a4,103b8 <qsort+0x1c0>
   1025c:	0f00006f          	j	1034c <qsort+0x154>
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	fff7879b          	addiw	a5,a5,-1
   10268:	fef42423          	sw	a5,-24(s0)
   1026c:	fec42703          	lw	a4,-20(s0)
   10270:	fe842783          	lw	a5,-24(s0)
   10274:	0007071b          	sext.w	a4,a4
   10278:	0007879b          	sext.w	a5,a5
   1027c:	02f75463          	ble	a5,a4,102a4 <qsort+0xac>
   10280:	000117b7          	lui	a5,0x11
   10284:	fe842703          	lw	a4,-24(s0)
   10288:	00271713          	slli	a4,a4,0x2
   1028c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10290:	00f707b3          	add	a5,a4,a5
   10294:	0007a703          	lw	a4,0(a5)
   10298:	fe442783          	lw	a5,-28(s0)
   1029c:	0007879b          	sext.w	a5,a5
   102a0:	fcf750e3          	ble	a5,a4,10260 <qsort+0x68>
   102a4:	000117b7          	lui	a5,0x11
   102a8:	fe842703          	lw	a4,-24(s0)
   102ac:	00271713          	slli	a4,a4,0x2
   102b0:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102b4:	00f707b3          	add	a5,a4,a5
   102b8:	0007a703          	lw	a4,0(a5)
   102bc:	000117b7          	lui	a5,0x11
   102c0:	fec42683          	lw	a3,-20(s0)
   102c4:	00269693          	slli	a3,a3,0x2
   102c8:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102cc:	00f687b3          	add	a5,a3,a5
   102d0:	00e7a023          	sw	a4,0(a5)
   102d4:	0100006f          	j	102e4 <qsort+0xec>
   102d8:	fec42783          	lw	a5,-20(s0)
   102dc:	0017879b          	addiw	a5,a5,1
   102e0:	fef42623          	sw	a5,-20(s0)
   102e4:	fec42703          	lw	a4,-20(s0)
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	0007071b          	sext.w	a4,a4
   102f0:	0007879b          	sext.w	a5,a5
   102f4:	02f75463          	ble	a5,a4,1031c <qsort+0x124>
   102f8:	000117b7          	lui	a5,0x11
   102fc:	fec42703          	lw	a4,-20(s0)
   10300:	00271713          	slli	a4,a4,0x2
   10304:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10308:	00f707b3          	add	a5,a4,a5
   1030c:	0007a703          	lw	a4,0(a5)
   10310:	fe442783          	lw	a5,-28(s0)
   10314:	0007879b          	sext.w	a5,a5
   10318:	fce7d0e3          	ble	a4,a5,102d8 <qsort+0xe0>
   1031c:	000117b7          	lui	a5,0x11
   10320:	fec42703          	lw	a4,-20(s0)
   10324:	00271713          	slli	a4,a4,0x2
   10328:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   1032c:	00f707b3          	add	a5,a4,a5
   10330:	0007a703          	lw	a4,0(a5)
   10334:	000117b7          	lui	a5,0x11
   10338:	fe842683          	lw	a3,-24(s0)
   1033c:	00269693          	slli	a3,a3,0x2
   10340:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10344:	00f687b3          	add	a5,a3,a5
   10348:	00e7a023          	sw	a4,0(a5)
   1034c:	fec42703          	lw	a4,-20(s0)
   10350:	fe842783          	lw	a5,-24(s0)
   10354:	0007071b          	sext.w	a4,a4
   10358:	0007879b          	sext.w	a5,a5
   1035c:	f0f748e3          	blt	a4,a5,1026c <qsort+0x74>
   10360:	000117b7          	lui	a5,0x11
   10364:	fec42703          	lw	a4,-20(s0)
   10368:	00271713          	slli	a4,a4,0x2
   1036c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10370:	00f707b3          	add	a5,a4,a5
   10374:	fe442703          	lw	a4,-28(s0)
   10378:	00e7a023          	sw	a4,0(a5)
   1037c:	fec42783          	lw	a5,-20(s0)
   10380:	fff7879b          	addiw	a5,a5,-1
   10384:	0007871b          	sext.w	a4,a5
   10388:	fdc42783          	lw	a5,-36(s0)
   1038c:	00070593          	mv	a1,a4
   10390:	00078513          	mv	a0,a5
   10394:	e65ff0ef          	jal	ra,101f8 <qsort>
   10398:	fec42783          	lw	a5,-20(s0)
   1039c:	0017879b          	addiw	a5,a5,1
   103a0:	0007879b          	sext.w	a5,a5
   103a4:	fd842703          	lw	a4,-40(s0)
   103a8:	00070593          	mv	a1,a4
   103ac:	00078513          	mv	a0,a5
   103b0:	e49ff0ef          	jal	ra,101f8 <qsort>
   103b4:	0080006f          	j	103bc <qsort+0x1c4>
   103b8:	00000013          	nop
   103bc:	02813083          	ld	ra,40(sp)
   103c0:	02013403          	ld	s0,32(sp)
   103c4:	03010113          	addi	sp,sp,48
   103c8:	00008067          	ret

00000000000103cc <main>:
   103cc:	fe010113          	addi	sp,sp,-32
   103d0:	00113c23          	sd	ra,24(sp)
   103d4:	00813823          	sd	s0,16(sp)
   103d8:	02010413          	addi	s0,sp,32
   103dc:	02800793          	li	a5,40
   103e0:	fef42623          	sw	a5,-20(s0)
   103e4:	02c0006f          	j	10410 <main+0x44>
   103e8:	000117b7          	lui	a5,0x11
   103ec:	fec42703          	lw	a4,-20(s0)
   103f0:	00271713          	slli	a4,a4,0x2
   103f4:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   103f8:	00f707b3          	add	a5,a4,a5
   103fc:	fec42703          	lw	a4,-20(s0)
   10400:	00e7a023          	sw	a4,0(a5)
   10404:	fec42783          	lw	a5,-20(s0)
   10408:	fff7879b          	addiw	a5,a5,-1
   1040c:	fef42623          	sw	a5,-20(s0)
   10410:	fec42783          	lw	a5,-20(s0)
   10414:	0007879b          	sext.w	a5,a5
   10418:	fcf048e3          	bgtz	a5,103e8 <main+0x1c>
   1041c:	02700593          	li	a1,39
   10420:	00000513          	li	a0,0
   10424:	00000097          	auipc	ra,0x0
   10428:	dd4080e7          	jalr	-556(ra) # 101f8 <qsort>
   1042c:	00000793          	li	a5,0
   10430:	00078513          	mv	a0,a5
   10434:	01813083          	ld	ra,24(sp)
   10438:	01013403          	ld	s0,16(sp)
   1043c:	02010113          	addi	sp,sp,32
   10440:	00008067          	ret
   10444:	0000                	unimp
	...

0000000000010448 <atexit>:
   10448:	00050593          	mv	a1,a0
   1044c:	00000693          	li	a3,0
   10450:	00000613          	li	a2,0
   10454:	00000513          	li	a0,0
   10458:	2400006f          	j	10698 <__register_exitproc>
   1045c:	0000                	unimp
	...

0000000000010460 <exit>:
   10460:	ff010113          	addi	sp,sp,-16
   10464:	00000593          	li	a1,0
   10468:	00813023          	sd	s0,0(sp)
   1046c:	00113423          	sd	ra,8(sp)
   10470:	00050413          	mv	s0,a0
   10474:	2b0000ef          	jal	ra,10724 <__call_exitprocs>
   10478:	000117b7          	lui	a5,0x11
   1047c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10480:	05853783          	ld	a5,88(a0)
   10484:	00078463          	beqz	a5,1048c <exit+0x2c>
   10488:	000780e7          	jalr	a5
   1048c:	00040513          	mv	a0,s0
   10490:	00001097          	auipc	ra,0x1
   10494:	9f8080e7          	jalr	-1544(ra) # 10e88 <_exit>
   10498:	0000                	unimp
	...

000000000001049c <__libc_fini_array>:
   1049c:	fe010113          	addi	sp,sp,-32
   104a0:	000117b7          	lui	a5,0x11
   104a4:	00011737          	lui	a4,0x11
   104a8:	00813823          	sd	s0,16(sp)
   104ac:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   104b0:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   104b4:	40e40433          	sub	s0,s0,a4
   104b8:	00913423          	sd	s1,8(sp)
   104bc:	01213023          	sd	s2,0(sp)
   104c0:	00113c23          	sd	ra,24(sp)
   104c4:	40345413          	srai	s0,s0,0x3
   104c8:	00000493          	li	s1,0
   104cc:	01078913          	addi	s2,a5,16
   104d0:	02941063          	bne	s0,s1,104f0 <__libc_fini_array+0x54>
   104d4:	01013403          	ld	s0,16(sp)
   104d8:	01813083          	ld	ra,24(sp)
   104dc:	00813483          	ld	s1,8(sp)
   104e0:	00013903          	ld	s2,0(sp)
   104e4:	02010113          	addi	sp,sp,32
   104e8:	00000317          	auipc	t1,0x0
   104ec:	c1430067          	jr	-1004(t1) # 100fc <_fini>
   104f0:	ff800593          	li	a1,-8
   104f4:	00048513          	mv	a0,s1
   104f8:	1c9000ef          	jal	ra,10ec0 <__muldi3>
   104fc:	00a90533          	add	a0,s2,a0
   10500:	ff853783          	ld	a5,-8(a0)
   10504:	00148493          	addi	s1,s1,1
   10508:	000780e7          	jalr	a5
   1050c:	fc5ff06f          	j	104d0 <__libc_fini_array+0x34>
   10510:	0000                	unimp
	...

0000000000010514 <__libc_init_array>:
   10514:	fe010113          	addi	sp,sp,-32
   10518:	00813823          	sd	s0,16(sp)
   1051c:	00913423          	sd	s1,8(sp)
   10520:	00011437          	lui	s0,0x11
   10524:	000114b7          	lui	s1,0x11
   10528:	00048793          	mv	a5,s1
   1052c:	00040413          	mv	s0,s0
   10530:	40f40433          	sub	s0,s0,a5
   10534:	01213023          	sd	s2,0(sp)
   10538:	00113c23          	sd	ra,24(sp)
   1053c:	40345413          	srai	s0,s0,0x3
   10540:	00048493          	mv	s1,s1
   10544:	00000913          	li	s2,0
   10548:	04891463          	bne	s2,s0,10590 <__libc_init_array+0x7c>
   1054c:	000114b7          	lui	s1,0x11
   10550:	00000097          	auipc	ra,0x0
   10554:	bac080e7          	jalr	-1108(ra) # 100fc <_fini>
   10558:	00011437          	lui	s0,0x11
   1055c:	00048793          	mv	a5,s1
   10560:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10564:	40f40433          	sub	s0,s0,a5
   10568:	40345413          	srai	s0,s0,0x3
   1056c:	00048493          	mv	s1,s1
   10570:	00000913          	li	s2,0
   10574:	02891863          	bne	s2,s0,105a4 <__libc_init_array+0x90>
   10578:	01813083          	ld	ra,24(sp)
   1057c:	01013403          	ld	s0,16(sp)
   10580:	00813483          	ld	s1,8(sp)
   10584:	00013903          	ld	s2,0(sp)
   10588:	02010113          	addi	sp,sp,32
   1058c:	00008067          	ret
   10590:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10594:	00190913          	addi	s2,s2,1
   10598:	00848493          	addi	s1,s1,8
   1059c:	000780e7          	jalr	a5
   105a0:	fa9ff06f          	j	10548 <__libc_init_array+0x34>
   105a4:	0004b783          	ld	a5,0(s1)
   105a8:	00190913          	addi	s2,s2,1
   105ac:	00848493          	addi	s1,s1,8
   105b0:	000780e7          	jalr	a5
   105b4:	fc1ff06f          	j	10574 <__libc_init_array+0x60>
   105b8:	0000                	unimp
	...

00000000000105bc <memset>:
   105bc:	00f00813          	li	a6,15
   105c0:	00050713          	mv	a4,a0
   105c4:	02c87a63          	bleu	a2,a6,105f8 <memset+0x3c>
   105c8:	00f77793          	andi	a5,a4,15
   105cc:	0a079063          	bnez	a5,1066c <memset+0xb0>
   105d0:	06059e63          	bnez	a1,1064c <memset+0x90>
   105d4:	ff067693          	andi	a3,a2,-16
   105d8:	00f67613          	andi	a2,a2,15
   105dc:	00e686b3          	add	a3,a3,a4
   105e0:	00b73023          	sd	a1,0(a4)
   105e4:	00b73423          	sd	a1,8(a4)
   105e8:	01070713          	addi	a4,a4,16
   105ec:	fed76ae3          	bltu	a4,a3,105e0 <memset+0x24>
   105f0:	00061463          	bnez	a2,105f8 <memset+0x3c>
   105f4:	00008067          	ret
   105f8:	40c806b3          	sub	a3,a6,a2
   105fc:	00269693          	slli	a3,a3,0x2
   10600:	00000297          	auipc	t0,0x0
   10604:	005686b3          	add	a3,a3,t0
   10608:	00c68067          	jr	12(a3)
   1060c:	00b70723          	sb	a1,14(a4)
   10610:	00b706a3          	sb	a1,13(a4)
   10614:	00b70623          	sb	a1,12(a4)
   10618:	00b705a3          	sb	a1,11(a4)
   1061c:	00b70523          	sb	a1,10(a4)
   10620:	00b704a3          	sb	a1,9(a4)
   10624:	00b70423          	sb	a1,8(a4)
   10628:	00b703a3          	sb	a1,7(a4)
   1062c:	00b70323          	sb	a1,6(a4)
   10630:	00b702a3          	sb	a1,5(a4)
   10634:	00b70223          	sb	a1,4(a4)
   10638:	00b701a3          	sb	a1,3(a4)
   1063c:	00b70123          	sb	a1,2(a4)
   10640:	00b700a3          	sb	a1,1(a4)
   10644:	00b70023          	sb	a1,0(a4)
   10648:	00008067          	ret
   1064c:	0ff5f593          	andi	a1,a1,255
   10650:	00859693          	slli	a3,a1,0x8
   10654:	00d5e5b3          	or	a1,a1,a3
   10658:	01059693          	slli	a3,a1,0x10
   1065c:	00d5e5b3          	or	a1,a1,a3
   10660:	02059693          	slli	a3,a1,0x20
   10664:	00d5e5b3          	or	a1,a1,a3
   10668:	f6dff06f          	j	105d4 <memset+0x18>
   1066c:	00279693          	slli	a3,a5,0x2
   10670:	00000297          	auipc	t0,0x0
   10674:	005686b3          	add	a3,a3,t0
   10678:	00008293          	mv	t0,ra
   1067c:	f98680e7          	jalr	-104(a3)
   10680:	00028093          	mv	ra,t0
   10684:	ff078793          	addi	a5,a5,-16
   10688:	40f70733          	sub	a4,a4,a5
   1068c:	00f60633          	add	a2,a2,a5
   10690:	f6c874e3          	bleu	a2,a6,105f8 <memset+0x3c>
   10694:	f3dff06f          	j	105d0 <memset+0x14>

0000000000010698 <__register_exitproc>:
   10698:	000117b7          	lui	a5,0x11
   1069c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   106a0:	00050313          	mv	t1,a0
   106a4:	1f873783          	ld	a5,504(a4)
   106a8:	00079663          	bnez	a5,106b4 <__register_exitproc+0x1c>
   106ac:	20070793          	addi	a5,a4,512
   106b0:	1ef73c23          	sd	a5,504(a4)
   106b4:	0087a703          	lw	a4,8(a5)
   106b8:	01f00813          	li	a6,31
   106bc:	fff00513          	li	a0,-1
   106c0:	04e84e63          	blt	a6,a4,1071c <__register_exitproc+0x84>
   106c4:	02030e63          	beqz	t1,10700 <__register_exitproc+0x68>
   106c8:	00371813          	slli	a6,a4,0x3
   106cc:	01078833          	add	a6,a5,a6
   106d0:	10c83823          	sd	a2,272(a6)
   106d4:	3107a883          	lw	a7,784(a5)
   106d8:	00100613          	li	a2,1
   106dc:	00e6163b          	sllw	a2,a2,a4
   106e0:	00c8e8b3          	or	a7,a7,a2
   106e4:	3117a823          	sw	a7,784(a5)
   106e8:	20d83823          	sd	a3,528(a6)
   106ec:	00200693          	li	a3,2
   106f0:	00d31863          	bne	t1,a3,10700 <__register_exitproc+0x68>
   106f4:	3147a683          	lw	a3,788(a5)
   106f8:	00c6e633          	or	a2,a3,a2
   106fc:	30c7aa23          	sw	a2,788(a5)
   10700:	0017069b          	addiw	a3,a4,1
   10704:	00270713          	addi	a4,a4,2
   10708:	00371713          	slli	a4,a4,0x3
   1070c:	00d7a423          	sw	a3,8(a5)
   10710:	00e787b3          	add	a5,a5,a4
   10714:	00b7b023          	sd	a1,0(a5)
   10718:	00000513          	li	a0,0
   1071c:	00008067          	ret
   10720:	0000                	unimp
	...

0000000000010724 <__call_exitprocs>:
   10724:	fb010113          	addi	sp,sp,-80
   10728:	000117b7          	lui	a5,0x11
   1072c:	03313423          	sd	s3,40(sp)
   10730:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10734:	03413023          	sd	s4,32(sp)
   10738:	01513c23          	sd	s5,24(sp)
   1073c:	01613823          	sd	s6,16(sp)
   10740:	04113423          	sd	ra,72(sp)
   10744:	04813023          	sd	s0,64(sp)
   10748:	02913c23          	sd	s1,56(sp)
   1074c:	03213823          	sd	s2,48(sp)
   10750:	01713423          	sd	s7,8(sp)
   10754:	00050a93          	mv	s5,a0
   10758:	00058a13          	mv	s4,a1
   1075c:	00100b13          	li	s6,1
   10760:	1f89b403          	ld	s0,504(s3)
   10764:	00040c63          	beqz	s0,1077c <__call_exitprocs+0x58>
   10768:	00842483          	lw	s1,8(s0)
   1076c:	fff4849b          	addiw	s1,s1,-1
   10770:	00349913          	slli	s2,s1,0x3
   10774:	01240933          	add	s2,s0,s2
   10778:	0204d863          	bgez	s1,107a8 <__call_exitprocs+0x84>
   1077c:	04813083          	ld	ra,72(sp)
   10780:	04013403          	ld	s0,64(sp)
   10784:	03813483          	ld	s1,56(sp)
   10788:	03013903          	ld	s2,48(sp)
   1078c:	02813983          	ld	s3,40(sp)
   10790:	02013a03          	ld	s4,32(sp)
   10794:	01813a83          	ld	s5,24(sp)
   10798:	01013b03          	ld	s6,16(sp)
   1079c:	00813b83          	ld	s7,8(sp)
   107a0:	05010113          	addi	sp,sp,80
   107a4:	00008067          	ret
   107a8:	000a0c63          	beqz	s4,107c0 <__call_exitprocs+0x9c>
   107ac:	21093783          	ld	a5,528(s2)
   107b0:	01478863          	beq	a5,s4,107c0 <__call_exitprocs+0x9c>
   107b4:	fff4849b          	addiw	s1,s1,-1
   107b8:	ff890913          	addi	s2,s2,-8
   107bc:	fbdff06f          	j	10778 <__call_exitprocs+0x54>
   107c0:	00842783          	lw	a5,8(s0)
   107c4:	01093683          	ld	a3,16(s2)
   107c8:	fff7879b          	addiw	a5,a5,-1
   107cc:	02979e63          	bne	a5,s1,10808 <__call_exitprocs+0xe4>
   107d0:	00942423          	sw	s1,8(s0)
   107d4:	fe0680e3          	beqz	a3,107b4 <__call_exitprocs+0x90>
   107d8:	31042703          	lw	a4,784(s0)
   107dc:	009b163b          	sllw	a2,s6,s1
   107e0:	00842b83          	lw	s7,8(s0)
   107e4:	00c77733          	and	a4,a4,a2
   107e8:	0007071b          	sext.w	a4,a4
   107ec:	02071263          	bnez	a4,10810 <__call_exitprocs+0xec>
   107f0:	000680e7          	jalr	a3
   107f4:	00842703          	lw	a4,8(s0)
   107f8:	1f89b783          	ld	a5,504(s3)
   107fc:	f77712e3          	bne	a4,s7,10760 <__call_exitprocs+0x3c>
   10800:	faf40ae3          	beq	s0,a5,107b4 <__call_exitprocs+0x90>
   10804:	f5dff06f          	j	10760 <__call_exitprocs+0x3c>
   10808:	00093823          	sd	zero,16(s2)
   1080c:	fc9ff06f          	j	107d4 <__call_exitprocs+0xb0>
   10810:	31442783          	lw	a5,788(s0)
   10814:	11093583          	ld	a1,272(s2)
   10818:	00c7f7b3          	and	a5,a5,a2
   1081c:	0007879b          	sext.w	a5,a5
   10820:	00079863          	bnez	a5,10830 <__call_exitprocs+0x10c>
   10824:	000a8513          	mv	a0,s5
   10828:	000680e7          	jalr	a3
   1082c:	fc9ff06f          	j	107f4 <__call_exitprocs+0xd0>
   10830:	00058513          	mv	a0,a1
   10834:	000680e7          	jalr	a3
   10838:	fbdff06f          	j	107f4 <__call_exitprocs+0xd0>
   1083c:	0000                	unimp
	...

0000000000010840 <conv_stat>:
   10840:	0005b783          	ld	a5,0(a1)
   10844:	00f51023          	sh	a5,0(a0)
   10848:	0085b783          	ld	a5,8(a1)
   1084c:	00f51123          	sh	a5,2(a0)
   10850:	0105a783          	lw	a5,16(a1)
   10854:	00f52223          	sw	a5,4(a0)
   10858:	0145a783          	lw	a5,20(a1)
   1085c:	00f51423          	sh	a5,8(a0)
   10860:	0185a783          	lw	a5,24(a1)
   10864:	00f51523          	sh	a5,10(a0)
   10868:	01c5a783          	lw	a5,28(a1)
   1086c:	00f51623          	sh	a5,12(a0)
   10870:	0205b783          	ld	a5,32(a1)
   10874:	00f51723          	sh	a5,14(a0)
   10878:	0305b783          	ld	a5,48(a1)
   1087c:	00f53823          	sd	a5,16(a0)
   10880:	0405b783          	ld	a5,64(a1)
   10884:	04f53823          	sd	a5,80(a0)
   10888:	0385a783          	lw	a5,56(a1)
   1088c:	04f53423          	sd	a5,72(a0)
   10890:	0485b783          	ld	a5,72(a1)
   10894:	00f53c23          	sd	a5,24(a0)
   10898:	0585b783          	ld	a5,88(a1)
   1089c:	02f53423          	sd	a5,40(a0)
   108a0:	0685b783          	ld	a5,104(a1)
   108a4:	02f53c23          	sd	a5,56(a0)
   108a8:	00008067          	ret

00000000000108ac <__syscall_error>:
   108ac:	ff010113          	addi	sp,sp,-16
   108b0:	00813023          	sd	s0,0(sp)
   108b4:	00113423          	sd	ra,8(sp)
   108b8:	00050413          	mv	s0,a0
   108bc:	00000097          	auipc	ra,0x0
   108c0:	5f8080e7          	jalr	1528(ra) # 10eb4 <__errno>
   108c4:	408007bb          	negw	a5,s0
   108c8:	00813083          	ld	ra,8(sp)
   108cc:	00013403          	ld	s0,0(sp)
   108d0:	00f52023          	sw	a5,0(a0)
   108d4:	fff00513          	li	a0,-1
   108d8:	01010113          	addi	sp,sp,16
   108dc:	00008067          	ret

00000000000108e0 <__internal_syscall>:
   108e0:	00050893          	mv	a7,a0
   108e4:	00058513          	mv	a0,a1
   108e8:	00060593          	mv	a1,a2
   108ec:	00068613          	mv	a2,a3
   108f0:	00070693          	mv	a3,a4
   108f4:	00000073          	ecall
   108f8:	00055663          	bgez	a0,10904 <__internal_syscall+0x24>
   108fc:	00000317          	auipc	t1,0x0
   10900:	fb030067          	jr	-80(t1) # 108ac <__syscall_error>
   10904:	00008067          	ret

0000000000010908 <open>:
   10908:	ff010113          	addi	sp,sp,-16
   1090c:	00060693          	mv	a3,a2
   10910:	00000713          	li	a4,0
   10914:	00058613          	mv	a2,a1
   10918:	00050593          	mv	a1,a0
   1091c:	40000513          	li	a0,1024
   10920:	00113423          	sd	ra,8(sp)
   10924:	00000097          	auipc	ra,0x0
   10928:	fbc080e7          	jalr	-68(ra) # 108e0 <__internal_syscall>
   1092c:	00813083          	ld	ra,8(sp)
   10930:	0005051b          	sext.w	a0,a0
   10934:	01010113          	addi	sp,sp,16
   10938:	00008067          	ret

000000000001093c <openat>:
   1093c:	ff010113          	addi	sp,sp,-16
   10940:	00068713          	mv	a4,a3
   10944:	00060693          	mv	a3,a2
   10948:	00058613          	mv	a2,a1
   1094c:	00050593          	mv	a1,a0
   10950:	03800513          	li	a0,56
   10954:	00113423          	sd	ra,8(sp)
   10958:	f89ff0ef          	jal	ra,108e0 <__internal_syscall>
   1095c:	00813083          	ld	ra,8(sp)
   10960:	0005051b          	sext.w	a0,a0
   10964:	01010113          	addi	sp,sp,16
   10968:	00008067          	ret

000000000001096c <lseek>:
   1096c:	00060693          	mv	a3,a2
   10970:	00000713          	li	a4,0
   10974:	00058613          	mv	a2,a1
   10978:	00050593          	mv	a1,a0
   1097c:	03e00513          	li	a0,62
   10980:	00000317          	auipc	t1,0x0
   10984:	f6030067          	jr	-160(t1) # 108e0 <__internal_syscall>

0000000000010988 <read>:
   10988:	00060693          	mv	a3,a2
   1098c:	00000713          	li	a4,0
   10990:	00058613          	mv	a2,a1
   10994:	00050593          	mv	a1,a0
   10998:	03f00513          	li	a0,63
   1099c:	f45ff06f          	j	108e0 <__internal_syscall>

00000000000109a0 <write>:
   109a0:	00060693          	mv	a3,a2
   109a4:	00000713          	li	a4,0
   109a8:	00058613          	mv	a2,a1
   109ac:	00050593          	mv	a1,a0
   109b0:	04000513          	li	a0,64
   109b4:	00000317          	auipc	t1,0x0
   109b8:	f2c30067          	jr	-212(t1) # 108e0 <__internal_syscall>

00000000000109bc <fstat>:
   109bc:	f6010113          	addi	sp,sp,-160
   109c0:	08913423          	sd	s1,136(sp)
   109c4:	00010613          	mv	a2,sp
   109c8:	00058493          	mv	s1,a1
   109cc:	00000713          	li	a4,0
   109d0:	00050593          	mv	a1,a0
   109d4:	00000693          	li	a3,0
   109d8:	05000513          	li	a0,80
   109dc:	08113c23          	sd	ra,152(sp)
   109e0:	08813823          	sd	s0,144(sp)
   109e4:	efdff0ef          	jal	ra,108e0 <__internal_syscall>
   109e8:	00050413          	mv	s0,a0
   109ec:	00010593          	mv	a1,sp
   109f0:	00048513          	mv	a0,s1
   109f4:	e4dff0ef          	jal	ra,10840 <conv_stat>
   109f8:	0004051b          	sext.w	a0,s0
   109fc:	09813083          	ld	ra,152(sp)
   10a00:	09013403          	ld	s0,144(sp)
   10a04:	08813483          	ld	s1,136(sp)
   10a08:	0a010113          	addi	sp,sp,160
   10a0c:	00008067          	ret

0000000000010a10 <stat>:
   10a10:	f6010113          	addi	sp,sp,-160
   10a14:	08913423          	sd	s1,136(sp)
   10a18:	00010613          	mv	a2,sp
   10a1c:	00058493          	mv	s1,a1
   10a20:	00000713          	li	a4,0
   10a24:	00050593          	mv	a1,a0
   10a28:	00000693          	li	a3,0
   10a2c:	40e00513          	li	a0,1038
   10a30:	08113c23          	sd	ra,152(sp)
   10a34:	08813823          	sd	s0,144(sp)
   10a38:	00000097          	auipc	ra,0x0
   10a3c:	ea8080e7          	jalr	-344(ra) # 108e0 <__internal_syscall>
   10a40:	00050413          	mv	s0,a0
   10a44:	00010593          	mv	a1,sp
   10a48:	00048513          	mv	a0,s1
   10a4c:	00000097          	auipc	ra,0x0
   10a50:	df4080e7          	jalr	-524(ra) # 10840 <conv_stat>
   10a54:	0004051b          	sext.w	a0,s0
   10a58:	09813083          	ld	ra,152(sp)
   10a5c:	09013403          	ld	s0,144(sp)
   10a60:	08813483          	ld	s1,136(sp)
   10a64:	0a010113          	addi	sp,sp,160
   10a68:	00008067          	ret

0000000000010a6c <lstat>:
   10a6c:	f6010113          	addi	sp,sp,-160
   10a70:	08913423          	sd	s1,136(sp)
   10a74:	00010613          	mv	a2,sp
   10a78:	00058493          	mv	s1,a1
   10a7c:	00000713          	li	a4,0
   10a80:	00050593          	mv	a1,a0
   10a84:	00000693          	li	a3,0
   10a88:	40f00513          	li	a0,1039
   10a8c:	08113c23          	sd	ra,152(sp)
   10a90:	08813823          	sd	s0,144(sp)
   10a94:	e4dff0ef          	jal	ra,108e0 <__internal_syscall>
   10a98:	00050413          	mv	s0,a0
   10a9c:	00010593          	mv	a1,sp
   10aa0:	00048513          	mv	a0,s1
   10aa4:	d9dff0ef          	jal	ra,10840 <conv_stat>
   10aa8:	0004051b          	sext.w	a0,s0
   10aac:	09813083          	ld	ra,152(sp)
   10ab0:	09013403          	ld	s0,144(sp)
   10ab4:	08813483          	ld	s1,136(sp)
   10ab8:	0a010113          	addi	sp,sp,160
   10abc:	00008067          	ret

0000000000010ac0 <fstatat>:
   10ac0:	f6010113          	addi	sp,sp,-160
   10ac4:	08913423          	sd	s1,136(sp)
   10ac8:	00068713          	mv	a4,a3
   10acc:	00060493          	mv	s1,a2
   10ad0:	00010693          	mv	a3,sp
   10ad4:	00058613          	mv	a2,a1
   10ad8:	00050593          	mv	a1,a0
   10adc:	04f00513          	li	a0,79
   10ae0:	08113c23          	sd	ra,152(sp)
   10ae4:	08813823          	sd	s0,144(sp)
   10ae8:	00000097          	auipc	ra,0x0
   10aec:	df8080e7          	jalr	-520(ra) # 108e0 <__internal_syscall>
   10af0:	00050413          	mv	s0,a0
   10af4:	00010593          	mv	a1,sp
   10af8:	00048513          	mv	a0,s1
   10afc:	00000097          	auipc	ra,0x0
   10b00:	d44080e7          	jalr	-700(ra) # 10840 <conv_stat>
   10b04:	0004051b          	sext.w	a0,s0
   10b08:	09813083          	ld	ra,152(sp)
   10b0c:	09013403          	ld	s0,144(sp)
   10b10:	08813483          	ld	s1,136(sp)
   10b14:	0a010113          	addi	sp,sp,160
   10b18:	00008067          	ret

0000000000010b1c <access>:
   10b1c:	ff010113          	addi	sp,sp,-16
   10b20:	00058613          	mv	a2,a1
   10b24:	00000713          	li	a4,0
   10b28:	00050593          	mv	a1,a0
   10b2c:	00000693          	li	a3,0
   10b30:	40900513          	li	a0,1033
   10b34:	00113423          	sd	ra,8(sp)
   10b38:	da9ff0ef          	jal	ra,108e0 <__internal_syscall>
   10b3c:	00813083          	ld	ra,8(sp)
   10b40:	0005051b          	sext.w	a0,a0
   10b44:	01010113          	addi	sp,sp,16
   10b48:	00008067          	ret

0000000000010b4c <faccessat>:
   10b4c:	ff010113          	addi	sp,sp,-16
   10b50:	00068713          	mv	a4,a3
   10b54:	00060693          	mv	a3,a2
   10b58:	00058613          	mv	a2,a1
   10b5c:	00050593          	mv	a1,a0
   10b60:	03000513          	li	a0,48
   10b64:	00113423          	sd	ra,8(sp)
   10b68:	00000097          	auipc	ra,0x0
   10b6c:	d78080e7          	jalr	-648(ra) # 108e0 <__internal_syscall>
   10b70:	00813083          	ld	ra,8(sp)
   10b74:	0005051b          	sext.w	a0,a0
   10b78:	01010113          	addi	sp,sp,16
   10b7c:	00008067          	ret

0000000000010b80 <close>:
   10b80:	ff010113          	addi	sp,sp,-16
   10b84:	00050593          	mv	a1,a0
   10b88:	00000713          	li	a4,0
   10b8c:	00000693          	li	a3,0
   10b90:	00000613          	li	a2,0
   10b94:	03900513          	li	a0,57
   10b98:	00113423          	sd	ra,8(sp)
   10b9c:	d45ff0ef          	jal	ra,108e0 <__internal_syscall>
   10ba0:	00813083          	ld	ra,8(sp)
   10ba4:	0005051b          	sext.w	a0,a0
   10ba8:	01010113          	addi	sp,sp,16
   10bac:	00008067          	ret

0000000000010bb0 <link>:
   10bb0:	ff010113          	addi	sp,sp,-16
   10bb4:	00058613          	mv	a2,a1
   10bb8:	00000713          	li	a4,0
   10bbc:	00050593          	mv	a1,a0
   10bc0:	00000693          	li	a3,0
   10bc4:	40100513          	li	a0,1025
   10bc8:	00113423          	sd	ra,8(sp)
   10bcc:	00000097          	auipc	ra,0x0
   10bd0:	d14080e7          	jalr	-748(ra) # 108e0 <__internal_syscall>
   10bd4:	00813083          	ld	ra,8(sp)
   10bd8:	0005051b          	sext.w	a0,a0
   10bdc:	01010113          	addi	sp,sp,16
   10be0:	00008067          	ret

0000000000010be4 <unlink>:
   10be4:	ff010113          	addi	sp,sp,-16
   10be8:	00050593          	mv	a1,a0
   10bec:	00000713          	li	a4,0
   10bf0:	00000693          	li	a3,0
   10bf4:	00000613          	li	a2,0
   10bf8:	40200513          	li	a0,1026
   10bfc:	00113423          	sd	ra,8(sp)
   10c00:	ce1ff0ef          	jal	ra,108e0 <__internal_syscall>
   10c04:	00813083          	ld	ra,8(sp)
   10c08:	0005051b          	sext.w	a0,a0
   10c0c:	01010113          	addi	sp,sp,16
   10c10:	00008067          	ret

0000000000010c14 <execve>:
   10c14:	ff010113          	addi	sp,sp,-16
   10c18:	00113423          	sd	ra,8(sp)
   10c1c:	00000097          	auipc	ra,0x0
   10c20:	298080e7          	jalr	664(ra) # 10eb4 <__errno>
   10c24:	00813083          	ld	ra,8(sp)
   10c28:	00c00793          	li	a5,12
   10c2c:	00f52023          	sw	a5,0(a0)
   10c30:	fff00513          	li	a0,-1
   10c34:	01010113          	addi	sp,sp,16
   10c38:	00008067          	ret

0000000000010c3c <fork>:
   10c3c:	ff010113          	addi	sp,sp,-16
   10c40:	00113423          	sd	ra,8(sp)
   10c44:	270000ef          	jal	ra,10eb4 <__errno>
   10c48:	00813083          	ld	ra,8(sp)
   10c4c:	00b00793          	li	a5,11
   10c50:	00f52023          	sw	a5,0(a0)
   10c54:	fff00513          	li	a0,-1
   10c58:	01010113          	addi	sp,sp,16
   10c5c:	00008067          	ret

0000000000010c60 <getpid>:
   10c60:	00100513          	li	a0,1
   10c64:	00008067          	ret

0000000000010c68 <kill>:
   10c68:	ff010113          	addi	sp,sp,-16
   10c6c:	00113423          	sd	ra,8(sp)
   10c70:	244000ef          	jal	ra,10eb4 <__errno>
   10c74:	00813083          	ld	ra,8(sp)
   10c78:	01600793          	li	a5,22
   10c7c:	00f52023          	sw	a5,0(a0)
   10c80:	fff00513          	li	a0,-1
   10c84:	01010113          	addi	sp,sp,16
   10c88:	00008067          	ret

0000000000010c8c <wait>:
   10c8c:	ff010113          	addi	sp,sp,-16
   10c90:	00113423          	sd	ra,8(sp)
   10c94:	00000097          	auipc	ra,0x0
   10c98:	220080e7          	jalr	544(ra) # 10eb4 <__errno>
   10c9c:	00813083          	ld	ra,8(sp)
   10ca0:	00a00793          	li	a5,10
   10ca4:	00f52023          	sw	a5,0(a0)
   10ca8:	fff00513          	li	a0,-1
   10cac:	01010113          	addi	sp,sp,16
   10cb0:	00008067          	ret

0000000000010cb4 <isatty>:
   10cb4:	f8010113          	addi	sp,sp,-128
   10cb8:	00810593          	addi	a1,sp,8
   10cbc:	06113c23          	sd	ra,120(sp)
   10cc0:	cfdff0ef          	jal	ra,109bc <fstat>
   10cc4:	fff00793          	li	a5,-1
   10cc8:	00f50863          	beq	a0,a5,10cd8 <isatty+0x24>
   10ccc:	00c12503          	lw	a0,12(sp)
   10cd0:	40d5551b          	sraiw	a0,a0,0xd
   10cd4:	00157513          	andi	a0,a0,1
   10cd8:	07813083          	ld	ra,120(sp)
   10cdc:	08010113          	addi	sp,sp,128
   10ce0:	00008067          	ret

0000000000010ce4 <gettimeofday>:
   10ce4:	ff010113          	addi	sp,sp,-16
   10ce8:	00050593          	mv	a1,a0
   10cec:	00000713          	li	a4,0
   10cf0:	00000693          	li	a3,0
   10cf4:	00000613          	li	a2,0
   10cf8:	0a900513          	li	a0,169
   10cfc:	00113423          	sd	ra,8(sp)
   10d00:	00000097          	auipc	ra,0x0
   10d04:	be0080e7          	jalr	-1056(ra) # 108e0 <__internal_syscall>
   10d08:	00813083          	ld	ra,8(sp)
   10d0c:	0005051b          	sext.w	a0,a0
   10d10:	01010113          	addi	sp,sp,16
   10d14:	00008067          	ret

0000000000010d18 <times>:
   10d18:	fd010113          	addi	sp,sp,-48
   10d1c:	02813023          	sd	s0,32(sp)
   10d20:	00050413          	mv	s0,a0
   10d24:	9001b783          	ld	a5,-1792(gp) # 11858 <t0.2572>
   10d28:	00913c23          	sd	s1,24(sp)
   10d2c:	02113423          	sd	ra,40(sp)
   10d30:	90018493          	addi	s1,gp,-1792 # 11858 <t0.2572>
   10d34:	00079a63          	bnez	a5,10d48 <times+0x30>
   10d38:	00000593          	li	a1,0
   10d3c:	90018513          	addi	a0,gp,-1792 # 11858 <t0.2572>
   10d40:	00000097          	auipc	ra,0x0
   10d44:	fa4080e7          	jalr	-92(ra) # 10ce4 <gettimeofday>
   10d48:	00000593          	li	a1,0
   10d4c:	00010513          	mv	a0,sp
   10d50:	00000097          	auipc	ra,0x0
   10d54:	f94080e7          	jalr	-108(ra) # 10ce4 <gettimeofday>
   10d58:	0004b783          	ld	a5,0(s1)
   10d5c:	00013503          	ld	a0,0(sp)
   10d60:	000f45b7          	lui	a1,0xf4
   10d64:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10d68:	40f50533          	sub	a0,a0,a5
   10d6c:	154000ef          	jal	ra,10ec0 <__muldi3>
   10d70:	0084b703          	ld	a4,8(s1)
   10d74:	00813783          	ld	a5,8(sp)
   10d78:	00043823          	sd	zero,16(s0)
   10d7c:	00043c23          	sd	zero,24(s0)
   10d80:	40e787b3          	sub	a5,a5,a4
   10d84:	00f50533          	add	a0,a0,a5
   10d88:	00a43023          	sd	a0,0(s0)
   10d8c:	00043423          	sd	zero,8(s0)
   10d90:	02813083          	ld	ra,40(sp)
   10d94:	02013403          	ld	s0,32(sp)
   10d98:	01813483          	ld	s1,24(sp)
   10d9c:	fff00513          	li	a0,-1
   10da0:	03010113          	addi	sp,sp,48
   10da4:	00008067          	ret

0000000000010da8 <ftime>:
   10da8:	00051423          	sh	zero,8(a0)
   10dac:	00053023          	sd	zero,0(a0)
   10db0:	00000513          	li	a0,0
   10db4:	00008067          	ret

0000000000010db8 <utime>:
   10db8:	fff00513          	li	a0,-1
   10dbc:	00008067          	ret

0000000000010dc0 <chown>:
   10dc0:	fff00513          	li	a0,-1
   10dc4:	00008067          	ret

0000000000010dc8 <chmod>:
   10dc8:	fff00513          	li	a0,-1
   10dcc:	00008067          	ret

0000000000010dd0 <chdir>:
   10dd0:	fff00513          	li	a0,-1
   10dd4:	00008067          	ret

0000000000010dd8 <getcwd>:
   10dd8:	00000513          	li	a0,0
   10ddc:	00008067          	ret

0000000000010de0 <sysconf>:
   10de0:	00200793          	li	a5,2
   10de4:	00f50663          	beq	a0,a5,10df0 <sysconf+0x10>
   10de8:	fff00513          	li	a0,-1
   10dec:	00008067          	ret
   10df0:	000f4537          	lui	a0,0xf4
   10df4:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10df8:	00008067          	ret

0000000000010dfc <sbrk>:
   10dfc:	fe010113          	addi	sp,sp,-32
   10e00:	00813823          	sd	s0,16(sp)
   10e04:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e08:	00913423          	sd	s1,8(sp)
   10e0c:	00113c23          	sd	ra,24(sp)
   10e10:	00050493          	mv	s1,a0
   10e14:	04079063          	bnez	a5,10e54 <sbrk+0x58>
   10e18:	00000713          	li	a4,0
   10e1c:	00000693          	li	a3,0
   10e20:	00000613          	li	a2,0
   10e24:	00000593          	li	a1,0
   10e28:	0d600513          	li	a0,214
   10e2c:	ab5ff0ef          	jal	ra,108e0 <__internal_syscall>
   10e30:	fff00793          	li	a5,-1
   10e34:	00f51e63          	bne	a0,a5,10e50 <sbrk+0x54>
   10e38:	fff00513          	li	a0,-1
   10e3c:	01813083          	ld	ra,24(sp)
   10e40:	01013403          	ld	s0,16(sp)
   10e44:	00813483          	ld	s1,8(sp)
   10e48:	02010113          	addi	sp,sp,32
   10e4c:	00008067          	ret
   10e50:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e54:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10e58:	00000713          	li	a4,0
   10e5c:	00000693          	li	a3,0
   10e60:	00b485b3          	add	a1,s1,a1
   10e64:	00000613          	li	a2,0
   10e68:	0d600513          	li	a0,214
   10e6c:	a75ff0ef          	jal	ra,108e0 <__internal_syscall>
   10e70:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e74:	00f484b3          	add	s1,s1,a5
   10e78:	fc9510e3          	bne	a0,s1,10e38 <sbrk+0x3c>
   10e7c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e80:	00078513          	mv	a0,a5
   10e84:	fb9ff06f          	j	10e3c <sbrk+0x40>

0000000000010e88 <_exit>:
   10e88:	ff010113          	addi	sp,sp,-16
   10e8c:	00050593          	mv	a1,a0
   10e90:	00000713          	li	a4,0
   10e94:	00000693          	li	a3,0
   10e98:	00000613          	li	a2,0
   10e9c:	05d00513          	li	a0,93
   10ea0:	00113423          	sd	ra,8(sp)
   10ea4:	00000097          	auipc	ra,0x0
   10ea8:	a3c080e7          	jalr	-1476(ra) # 108e0 <__internal_syscall>
   10eac:	0000006f          	j	10eac <_exit+0x24>
   10eb0:	0000                	unimp
	...

0000000000010eb4 <__errno>:
   10eb4:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10eb8:	00008067          	ret
   10ebc:	0000                	unimp
	...

0000000000010ec0 <__muldi3>:
   10ec0:	00050613          	mv	a2,a0
   10ec4:	00000513          	li	a0,0
   10ec8:	0015f693          	andi	a3,a1,1
   10ecc:	00068463          	beqz	a3,10ed4 <__muldi3+0x14>
   10ed0:	00c50533          	add	a0,a0,a2
   10ed4:	0015d593          	srli	a1,a1,0x1
   10ed8:	00161613          	slli	a2,a2,0x1
   10edc:	fe0596e3          	bnez	a1,10ec8 <__muldi3+0x8>
   10ee0:	00008067          	ret
   10ee4:	0000                	unimp
	...

Disassembly of section .eh_frame:

0000000000010ee8 <__EH_FRAME_BEGIN__>:
   10ee8:	0000                	unimp
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

0000000000011770 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011778 <completed.5182>:
	...

0000000000011780 <object.5187>:
	...

00000000000117b0 <result>:
	...

0000000000011858 <t0.2572>:
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
  10:	0ec0                	addi	s0,sp,852
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
  10:	0ec0                	addi	s0,sp,852
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0ee4                	addi	s1,sp,860
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
  9e:	010e                	slli	sp,sp,0x3
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
