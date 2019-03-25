
ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	510000ef          	jal	ra,105d8 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	3ec50513          	addi	a0,a0,1004 # 104b8 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	390080e7          	jalr	912(ra) # 10464 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	454080e7          	jalr	1108(ra) # 10530 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	1d8000ef          	jal	ra,102c8 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	38830067          	jr	904(t1) # 1047c <exit>

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
   10198:	f2850513          	addi	a0,a0,-216 # 10f28 <__EH_FRAME_BEGIN__>
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
   101dc:	f2850513          	addi	a0,a0,-216 # 10f28 <__EH_FRAME_BEGIN__>
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	ffff0097          	auipc	ra,0xffff0
   101e8:	e1c080e7          	jalr	-484(ra) # 0 <_start-0x100b0>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	01010113          	addi	sp,sp,16
   101f4:	f39ff06f          	j	1012c <register_tm_clones>

00000000000101f8 <ackermann>:
   101f8:	fd010113          	addi	sp,sp,-48
   101fc:	02113423          	sd	ra,40(sp)
   10200:	02813023          	sd	s0,32(sp)
   10204:	00913c23          	sd	s1,24(sp)
   10208:	03010413          	addi	s0,sp,48
   1020c:	00050793          	mv	a5,a0
   10210:	00058713          	mv	a4,a1
   10214:	fcf42e23          	sw	a5,-36(s0)
   10218:	00070793          	mv	a5,a4
   1021c:	fcf42c23          	sw	a5,-40(s0)
   10220:	fdc42783          	lw	a5,-36(s0)
   10224:	0007879b          	sext.w	a5,a5
   10228:	00079a63          	bnez	a5,1023c <ackermann+0x44>
   1022c:	fd842783          	lw	a5,-40(s0)
   10230:	0017879b          	addiw	a5,a5,1
   10234:	0007879b          	sext.w	a5,a5
   10238:	0780006f          	j	102b0 <ackermann+0xb8>
   1023c:	fdc42783          	lw	a5,-36(s0)
   10240:	0007879b          	sext.w	a5,a5
   10244:	02f05863          	blez	a5,10274 <ackermann+0x7c>
   10248:	fd842783          	lw	a5,-40(s0)
   1024c:	0007879b          	sext.w	a5,a5
   10250:	02079263          	bnez	a5,10274 <ackermann+0x7c>
   10254:	fdc42783          	lw	a5,-36(s0)
   10258:	fff7879b          	addiw	a5,a5,-1
   1025c:	0007879b          	sext.w	a5,a5
   10260:	00100593          	li	a1,1
   10264:	00078513          	mv	a0,a5
   10268:	f91ff0ef          	jal	ra,101f8 <ackermann>
   1026c:	00050793          	mv	a5,a0
   10270:	0400006f          	j	102b0 <ackermann+0xb8>
   10274:	fdc42783          	lw	a5,-36(s0)
   10278:	fff7879b          	addiw	a5,a5,-1
   1027c:	0007849b          	sext.w	s1,a5
   10280:	fd842783          	lw	a5,-40(s0)
   10284:	fff7879b          	addiw	a5,a5,-1
   10288:	0007871b          	sext.w	a4,a5
   1028c:	fdc42783          	lw	a5,-36(s0)
   10290:	00070593          	mv	a1,a4
   10294:	00078513          	mv	a0,a5
   10298:	f61ff0ef          	jal	ra,101f8 <ackermann>
   1029c:	00050793          	mv	a5,a0
   102a0:	00078593          	mv	a1,a5
   102a4:	00048513          	mv	a0,s1
   102a8:	f51ff0ef          	jal	ra,101f8 <ackermann>
   102ac:	00050793          	mv	a5,a0
   102b0:	00078513          	mv	a0,a5
   102b4:	02813083          	ld	ra,40(sp)
   102b8:	02013403          	ld	s0,32(sp)
   102bc:	01813483          	ld	s1,24(sp)
   102c0:	03010113          	addi	sp,sp,48
   102c4:	00008067          	ret

00000000000102c8 <main>:
   102c8:	fe010113          	addi	sp,sp,-32
   102cc:	00113c23          	sd	ra,24(sp)
   102d0:	00813823          	sd	s0,16(sp)
   102d4:	02010413          	addi	s0,sp,32
   102d8:	fe042623          	sw	zero,-20(s0)
   102dc:	0b40006f          	j	10390 <main+0xc8>
   102e0:	fe042423          	sw	zero,-24(s0)
   102e4:	0900006f          	j	10374 <main+0xac>
   102e8:	fe842703          	lw	a4,-24(s0)
   102ec:	fec42783          	lw	a5,-20(s0)
   102f0:	00070593          	mv	a1,a4
   102f4:	00078513          	mv	a0,a5
   102f8:	00000097          	auipc	ra,0x0
   102fc:	f00080e7          	jalr	-256(ra) # 101f8 <ackermann>
   10300:	00050793          	mv	a5,a0
   10304:	fef42223          	sw	a5,-28(s0)
   10308:	000117b7          	lui	a5,0x11
   1030c:	f0878513          	addi	a0,a5,-248 # 10f08 <__muldi3+0x2c>
   10310:	0dc000ef          	jal	ra,103ec <print_s>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	00078513          	mv	a0,a5
   1031c:	00000097          	auipc	ra,0x0
   10320:	0a4080e7          	jalr	164(ra) # 103c0 <print_d>
   10324:	000117b7          	lui	a5,0x11
   10328:	f1878513          	addi	a0,a5,-232 # 10f18 <__muldi3+0x3c>
   1032c:	0c0000ef          	jal	ra,103ec <print_s>
   10330:	fe842783          	lw	a5,-24(s0)
   10334:	00078513          	mv	a0,a5
   10338:	00000097          	auipc	ra,0x0
   1033c:	088080e7          	jalr	136(ra) # 103c0 <print_d>
   10340:	000117b7          	lui	a5,0x11
   10344:	f2078513          	addi	a0,a5,-224 # 10f20 <__muldi3+0x44>
   10348:	0a4000ef          	jal	ra,103ec <print_s>
   1034c:	fe442783          	lw	a5,-28(s0)
   10350:	00078513          	mv	a0,a5
   10354:	00000097          	auipc	ra,0x0
   10358:	06c080e7          	jalr	108(ra) # 103c0 <print_d>
   1035c:	00a00513          	li	a0,10
   10360:	00000097          	auipc	ra,0x0
   10364:	0b4080e7          	jalr	180(ra) # 10414 <print_c>
   10368:	fe842783          	lw	a5,-24(s0)
   1036c:	0017879b          	addiw	a5,a5,1
   10370:	fef42423          	sw	a5,-24(s0)
   10374:	fe842783          	lw	a5,-24(s0)
   10378:	0007871b          	sext.w	a4,a5
   1037c:	00100793          	li	a5,1
   10380:	f6e7d4e3          	ble	a4,a5,102e8 <main+0x20>
   10384:	fec42783          	lw	a5,-20(s0)
   10388:	0017879b          	addiw	a5,a5,1
   1038c:	fef42623          	sw	a5,-20(s0)
   10390:	fec42783          	lw	a5,-20(s0)
   10394:	0007871b          	sext.w	a4,a5
   10398:	00300793          	li	a5,3
   1039c:	f4e7d2e3          	ble	a4,a5,102e0 <main+0x18>
   103a0:	0a0000ef          	jal	ra,10440 <exit_proc>
   103a4:	00000793          	li	a5,0
   103a8:	00078513          	mv	a0,a5
   103ac:	01813083          	ld	ra,24(sp)
   103b0:	01013403          	ld	s0,16(sp)
   103b4:	02010113          	addi	sp,sp,32
   103b8:	00008067          	ret
   103bc:	0000                	unimp
	...

00000000000103c0 <print_d>:
   103c0:	fe010113          	addi	sp,sp,-32
   103c4:	00813c23          	sd	s0,24(sp)
   103c8:	02010413          	addi	s0,sp,32
   103cc:	00050793          	mv	a5,a0
   103d0:	fef42623          	sw	a5,-20(s0)
   103d4:	00200893          	li	a7,2
   103d8:	00000073          	ecall
   103dc:	00000013          	nop
   103e0:	01813403          	ld	s0,24(sp)
   103e4:	02010113          	addi	sp,sp,32
   103e8:	00008067          	ret

00000000000103ec <print_s>:
   103ec:	fe010113          	addi	sp,sp,-32
   103f0:	00813c23          	sd	s0,24(sp)
   103f4:	02010413          	addi	s0,sp,32
   103f8:	fea43423          	sd	a0,-24(s0)
   103fc:	00000893          	li	a7,0
   10400:	00000073          	ecall
   10404:	00000013          	nop
   10408:	01813403          	ld	s0,24(sp)
   1040c:	02010113          	addi	sp,sp,32
   10410:	00008067          	ret

0000000000010414 <print_c>:
   10414:	fe010113          	addi	sp,sp,-32
   10418:	00813c23          	sd	s0,24(sp)
   1041c:	02010413          	addi	s0,sp,32
   10420:	00050793          	mv	a5,a0
   10424:	fef407a3          	sb	a5,-17(s0)
   10428:	00100893          	li	a7,1
   1042c:	00000073          	ecall
   10430:	00000013          	nop
   10434:	01813403          	ld	s0,24(sp)
   10438:	02010113          	addi	sp,sp,32
   1043c:	00008067          	ret

0000000000010440 <exit_proc>:
   10440:	ff010113          	addi	sp,sp,-16
   10444:	00813423          	sd	s0,8(sp)
   10448:	01010413          	addi	s0,sp,16
   1044c:	00300893          	li	a7,3
   10450:	00000073          	ecall
   10454:	00000013          	nop
   10458:	00813403          	ld	s0,8(sp)
   1045c:	01010113          	addi	sp,sp,16
   10460:	00008067          	ret

0000000000010464 <atexit>:
   10464:	00050593          	mv	a1,a0
   10468:	00000693          	li	a3,0
   1046c:	00000613          	li	a2,0
   10470:	00000513          	li	a0,0
   10474:	2400006f          	j	106b4 <__register_exitproc>
   10478:	0000                	unimp
	...

000000000001047c <exit>:
   1047c:	ff010113          	addi	sp,sp,-16
   10480:	00000593          	li	a1,0
   10484:	00813023          	sd	s0,0(sp)
   10488:	00113423          	sd	ra,8(sp)
   1048c:	00050413          	mv	s0,a0
   10490:	2b0000ef          	jal	ra,10740 <__call_exitprocs>
   10494:	000117b7          	lui	a5,0x11
   10498:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   1049c:	05853783          	ld	a5,88(a0)
   104a0:	00078463          	beqz	a5,104a8 <exit+0x2c>
   104a4:	000780e7          	jalr	a5
   104a8:	00040513          	mv	a0,s0
   104ac:	00001097          	auipc	ra,0x1
   104b0:	9f8080e7          	jalr	-1544(ra) # 10ea4 <_exit>
   104b4:	0000                	unimp
	...

00000000000104b8 <__libc_fini_array>:
   104b8:	fe010113          	addi	sp,sp,-32
   104bc:	000117b7          	lui	a5,0x11
   104c0:	00011737          	lui	a4,0x11
   104c4:	00813823          	sd	s0,16(sp)
   104c8:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   104cc:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   104d0:	40e40433          	sub	s0,s0,a4
   104d4:	00913423          	sd	s1,8(sp)
   104d8:	01213023          	sd	s2,0(sp)
   104dc:	00113c23          	sd	ra,24(sp)
   104e0:	40345413          	srai	s0,s0,0x3
   104e4:	00000493          	li	s1,0
   104e8:	01078913          	addi	s2,a5,16
   104ec:	02941063          	bne	s0,s1,1050c <__libc_fini_array+0x54>
   104f0:	01013403          	ld	s0,16(sp)
   104f4:	01813083          	ld	ra,24(sp)
   104f8:	00813483          	ld	s1,8(sp)
   104fc:	00013903          	ld	s2,0(sp)
   10500:	02010113          	addi	sp,sp,32
   10504:	00000317          	auipc	t1,0x0
   10508:	bf830067          	jr	-1032(t1) # 100fc <_fini>
   1050c:	ff800593          	li	a1,-8
   10510:	00048513          	mv	a0,s1
   10514:	1c9000ef          	jal	ra,10edc <__muldi3>
   10518:	00a90533          	add	a0,s2,a0
   1051c:	ff853783          	ld	a5,-8(a0)
   10520:	00148493          	addi	s1,s1,1
   10524:	000780e7          	jalr	a5
   10528:	fc5ff06f          	j	104ec <__libc_fini_array+0x34>
   1052c:	0000                	unimp
	...

0000000000010530 <__libc_init_array>:
   10530:	fe010113          	addi	sp,sp,-32
   10534:	00813823          	sd	s0,16(sp)
   10538:	00913423          	sd	s1,8(sp)
   1053c:	00011437          	lui	s0,0x11
   10540:	000114b7          	lui	s1,0x11
   10544:	00048793          	mv	a5,s1
   10548:	00040413          	mv	s0,s0
   1054c:	40f40433          	sub	s0,s0,a5
   10550:	01213023          	sd	s2,0(sp)
   10554:	00113c23          	sd	ra,24(sp)
   10558:	40345413          	srai	s0,s0,0x3
   1055c:	00048493          	mv	s1,s1
   10560:	00000913          	li	s2,0
   10564:	04891463          	bne	s2,s0,105ac <__libc_init_array+0x7c>
   10568:	000114b7          	lui	s1,0x11
   1056c:	00000097          	auipc	ra,0x0
   10570:	b90080e7          	jalr	-1136(ra) # 100fc <_fini>
   10574:	00011437          	lui	s0,0x11
   10578:	00048793          	mv	a5,s1
   1057c:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10580:	40f40433          	sub	s0,s0,a5
   10584:	40345413          	srai	s0,s0,0x3
   10588:	00048493          	mv	s1,s1
   1058c:	00000913          	li	s2,0
   10590:	02891863          	bne	s2,s0,105c0 <__libc_init_array+0x90>
   10594:	01813083          	ld	ra,24(sp)
   10598:	01013403          	ld	s0,16(sp)
   1059c:	00813483          	ld	s1,8(sp)
   105a0:	00013903          	ld	s2,0(sp)
   105a4:	02010113          	addi	sp,sp,32
   105a8:	00008067          	ret
   105ac:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   105b0:	00190913          	addi	s2,s2,1
   105b4:	00848493          	addi	s1,s1,8
   105b8:	000780e7          	jalr	a5
   105bc:	fa9ff06f          	j	10564 <__libc_init_array+0x34>
   105c0:	0004b783          	ld	a5,0(s1)
   105c4:	00190913          	addi	s2,s2,1
   105c8:	00848493          	addi	s1,s1,8
   105cc:	000780e7          	jalr	a5
   105d0:	fc1ff06f          	j	10590 <__libc_init_array+0x60>
   105d4:	0000                	unimp
	...

00000000000105d8 <memset>:
   105d8:	00f00813          	li	a6,15
   105dc:	00050713          	mv	a4,a0
   105e0:	02c87a63          	bleu	a2,a6,10614 <memset+0x3c>
   105e4:	00f77793          	andi	a5,a4,15
   105e8:	0a079063          	bnez	a5,10688 <memset+0xb0>
   105ec:	06059e63          	bnez	a1,10668 <memset+0x90>
   105f0:	ff067693          	andi	a3,a2,-16
   105f4:	00f67613          	andi	a2,a2,15
   105f8:	00e686b3          	add	a3,a3,a4
   105fc:	00b73023          	sd	a1,0(a4)
   10600:	00b73423          	sd	a1,8(a4)
   10604:	01070713          	addi	a4,a4,16
   10608:	fed76ae3          	bltu	a4,a3,105fc <memset+0x24>
   1060c:	00061463          	bnez	a2,10614 <memset+0x3c>
   10610:	00008067          	ret
   10614:	40c806b3          	sub	a3,a6,a2
   10618:	00269693          	slli	a3,a3,0x2
   1061c:	00000297          	auipc	t0,0x0
   10620:	005686b3          	add	a3,a3,t0
   10624:	00c68067          	jr	12(a3)
   10628:	00b70723          	sb	a1,14(a4)
   1062c:	00b706a3          	sb	a1,13(a4)
   10630:	00b70623          	sb	a1,12(a4)
   10634:	00b705a3          	sb	a1,11(a4)
   10638:	00b70523          	sb	a1,10(a4)
   1063c:	00b704a3          	sb	a1,9(a4)
   10640:	00b70423          	sb	a1,8(a4)
   10644:	00b703a3          	sb	a1,7(a4)
   10648:	00b70323          	sb	a1,6(a4)
   1064c:	00b702a3          	sb	a1,5(a4)
   10650:	00b70223          	sb	a1,4(a4)
   10654:	00b701a3          	sb	a1,3(a4)
   10658:	00b70123          	sb	a1,2(a4)
   1065c:	00b700a3          	sb	a1,1(a4)
   10660:	00b70023          	sb	a1,0(a4)
   10664:	00008067          	ret
   10668:	0ff5f593          	andi	a1,a1,255
   1066c:	00859693          	slli	a3,a1,0x8
   10670:	00d5e5b3          	or	a1,a1,a3
   10674:	01059693          	slli	a3,a1,0x10
   10678:	00d5e5b3          	or	a1,a1,a3
   1067c:	02059693          	slli	a3,a1,0x20
   10680:	00d5e5b3          	or	a1,a1,a3
   10684:	f6dff06f          	j	105f0 <memset+0x18>
   10688:	00279693          	slli	a3,a5,0x2
   1068c:	00000297          	auipc	t0,0x0
   10690:	005686b3          	add	a3,a3,t0
   10694:	00008293          	mv	t0,ra
   10698:	f98680e7          	jalr	-104(a3)
   1069c:	00028093          	mv	ra,t0
   106a0:	ff078793          	addi	a5,a5,-16
   106a4:	40f70733          	sub	a4,a4,a5
   106a8:	00f60633          	add	a2,a2,a5
   106ac:	f6c874e3          	bleu	a2,a6,10614 <memset+0x3c>
   106b0:	f3dff06f          	j	105ec <memset+0x14>

00000000000106b4 <__register_exitproc>:
   106b4:	000117b7          	lui	a5,0x11
   106b8:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   106bc:	00050313          	mv	t1,a0
   106c0:	1f873783          	ld	a5,504(a4)
   106c4:	00079663          	bnez	a5,106d0 <__register_exitproc+0x1c>
   106c8:	20070793          	addi	a5,a4,512
   106cc:	1ef73c23          	sd	a5,504(a4)
   106d0:	0087a703          	lw	a4,8(a5)
   106d4:	01f00813          	li	a6,31
   106d8:	fff00513          	li	a0,-1
   106dc:	04e84e63          	blt	a6,a4,10738 <__register_exitproc+0x84>
   106e0:	02030e63          	beqz	t1,1071c <__register_exitproc+0x68>
   106e4:	00371813          	slli	a6,a4,0x3
   106e8:	01078833          	add	a6,a5,a6
   106ec:	10c83823          	sd	a2,272(a6)
   106f0:	3107a883          	lw	a7,784(a5)
   106f4:	00100613          	li	a2,1
   106f8:	00e6163b          	sllw	a2,a2,a4
   106fc:	00c8e8b3          	or	a7,a7,a2
   10700:	3117a823          	sw	a7,784(a5)
   10704:	20d83823          	sd	a3,528(a6)
   10708:	00200693          	li	a3,2
   1070c:	00d31863          	bne	t1,a3,1071c <__register_exitproc+0x68>
   10710:	3147a683          	lw	a3,788(a5)
   10714:	00c6e633          	or	a2,a3,a2
   10718:	30c7aa23          	sw	a2,788(a5)
   1071c:	0017069b          	addiw	a3,a4,1
   10720:	00270713          	addi	a4,a4,2
   10724:	00371713          	slli	a4,a4,0x3
   10728:	00d7a423          	sw	a3,8(a5)
   1072c:	00e787b3          	add	a5,a5,a4
   10730:	00b7b023          	sd	a1,0(a5)
   10734:	00000513          	li	a0,0
   10738:	00008067          	ret
   1073c:	0000                	unimp
	...

0000000000010740 <__call_exitprocs>:
   10740:	fb010113          	addi	sp,sp,-80
   10744:	000117b7          	lui	a5,0x11
   10748:	03313423          	sd	s3,40(sp)
   1074c:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10750:	03413023          	sd	s4,32(sp)
   10754:	01513c23          	sd	s5,24(sp)
   10758:	01613823          	sd	s6,16(sp)
   1075c:	04113423          	sd	ra,72(sp)
   10760:	04813023          	sd	s0,64(sp)
   10764:	02913c23          	sd	s1,56(sp)
   10768:	03213823          	sd	s2,48(sp)
   1076c:	01713423          	sd	s7,8(sp)
   10770:	00050a93          	mv	s5,a0
   10774:	00058a13          	mv	s4,a1
   10778:	00100b13          	li	s6,1
   1077c:	1f89b403          	ld	s0,504(s3)
   10780:	00040c63          	beqz	s0,10798 <__call_exitprocs+0x58>
   10784:	00842483          	lw	s1,8(s0)
   10788:	fff4849b          	addiw	s1,s1,-1
   1078c:	00349913          	slli	s2,s1,0x3
   10790:	01240933          	add	s2,s0,s2
   10794:	0204d863          	bgez	s1,107c4 <__call_exitprocs+0x84>
   10798:	04813083          	ld	ra,72(sp)
   1079c:	04013403          	ld	s0,64(sp)
   107a0:	03813483          	ld	s1,56(sp)
   107a4:	03013903          	ld	s2,48(sp)
   107a8:	02813983          	ld	s3,40(sp)
   107ac:	02013a03          	ld	s4,32(sp)
   107b0:	01813a83          	ld	s5,24(sp)
   107b4:	01013b03          	ld	s6,16(sp)
   107b8:	00813b83          	ld	s7,8(sp)
   107bc:	05010113          	addi	sp,sp,80
   107c0:	00008067          	ret
   107c4:	000a0c63          	beqz	s4,107dc <__call_exitprocs+0x9c>
   107c8:	21093783          	ld	a5,528(s2)
   107cc:	01478863          	beq	a5,s4,107dc <__call_exitprocs+0x9c>
   107d0:	fff4849b          	addiw	s1,s1,-1
   107d4:	ff890913          	addi	s2,s2,-8
   107d8:	fbdff06f          	j	10794 <__call_exitprocs+0x54>
   107dc:	00842783          	lw	a5,8(s0)
   107e0:	01093683          	ld	a3,16(s2)
   107e4:	fff7879b          	addiw	a5,a5,-1
   107e8:	02979e63          	bne	a5,s1,10824 <__call_exitprocs+0xe4>
   107ec:	00942423          	sw	s1,8(s0)
   107f0:	fe0680e3          	beqz	a3,107d0 <__call_exitprocs+0x90>
   107f4:	31042703          	lw	a4,784(s0)
   107f8:	009b163b          	sllw	a2,s6,s1
   107fc:	00842b83          	lw	s7,8(s0)
   10800:	00c77733          	and	a4,a4,a2
   10804:	0007071b          	sext.w	a4,a4
   10808:	02071263          	bnez	a4,1082c <__call_exitprocs+0xec>
   1080c:	000680e7          	jalr	a3
   10810:	00842703          	lw	a4,8(s0)
   10814:	1f89b783          	ld	a5,504(s3)
   10818:	f77712e3          	bne	a4,s7,1077c <__call_exitprocs+0x3c>
   1081c:	faf40ae3          	beq	s0,a5,107d0 <__call_exitprocs+0x90>
   10820:	f5dff06f          	j	1077c <__call_exitprocs+0x3c>
   10824:	00093823          	sd	zero,16(s2)
   10828:	fc9ff06f          	j	107f0 <__call_exitprocs+0xb0>
   1082c:	31442783          	lw	a5,788(s0)
   10830:	11093583          	ld	a1,272(s2)
   10834:	00c7f7b3          	and	a5,a5,a2
   10838:	0007879b          	sext.w	a5,a5
   1083c:	00079863          	bnez	a5,1084c <__call_exitprocs+0x10c>
   10840:	000a8513          	mv	a0,s5
   10844:	000680e7          	jalr	a3
   10848:	fc9ff06f          	j	10810 <__call_exitprocs+0xd0>
   1084c:	00058513          	mv	a0,a1
   10850:	000680e7          	jalr	a3
   10854:	fbdff06f          	j	10810 <__call_exitprocs+0xd0>
   10858:	0000                	unimp
	...

000000000001085c <conv_stat>:
   1085c:	0005b783          	ld	a5,0(a1)
   10860:	00f51023          	sh	a5,0(a0)
   10864:	0085b783          	ld	a5,8(a1)
   10868:	00f51123          	sh	a5,2(a0)
   1086c:	0105a783          	lw	a5,16(a1)
   10870:	00f52223          	sw	a5,4(a0)
   10874:	0145a783          	lw	a5,20(a1)
   10878:	00f51423          	sh	a5,8(a0)
   1087c:	0185a783          	lw	a5,24(a1)
   10880:	00f51523          	sh	a5,10(a0)
   10884:	01c5a783          	lw	a5,28(a1)
   10888:	00f51623          	sh	a5,12(a0)
   1088c:	0205b783          	ld	a5,32(a1)
   10890:	00f51723          	sh	a5,14(a0)
   10894:	0305b783          	ld	a5,48(a1)
   10898:	00f53823          	sd	a5,16(a0)
   1089c:	0405b783          	ld	a5,64(a1)
   108a0:	04f53823          	sd	a5,80(a0)
   108a4:	0385a783          	lw	a5,56(a1)
   108a8:	04f53423          	sd	a5,72(a0)
   108ac:	0485b783          	ld	a5,72(a1)
   108b0:	00f53c23          	sd	a5,24(a0)
   108b4:	0585b783          	ld	a5,88(a1)
   108b8:	02f53423          	sd	a5,40(a0)
   108bc:	0685b783          	ld	a5,104(a1)
   108c0:	02f53c23          	sd	a5,56(a0)
   108c4:	00008067          	ret

00000000000108c8 <__syscall_error>:
   108c8:	ff010113          	addi	sp,sp,-16
   108cc:	00813023          	sd	s0,0(sp)
   108d0:	00113423          	sd	ra,8(sp)
   108d4:	00050413          	mv	s0,a0
   108d8:	00000097          	auipc	ra,0x0
   108dc:	5f8080e7          	jalr	1528(ra) # 10ed0 <__errno>
   108e0:	408007bb          	negw	a5,s0
   108e4:	00813083          	ld	ra,8(sp)
   108e8:	00013403          	ld	s0,0(sp)
   108ec:	00f52023          	sw	a5,0(a0)
   108f0:	fff00513          	li	a0,-1
   108f4:	01010113          	addi	sp,sp,16
   108f8:	00008067          	ret

00000000000108fc <__internal_syscall>:
   108fc:	00050893          	mv	a7,a0
   10900:	00058513          	mv	a0,a1
   10904:	00060593          	mv	a1,a2
   10908:	00068613          	mv	a2,a3
   1090c:	00070693          	mv	a3,a4
   10910:	00000073          	ecall
   10914:	00055663          	bgez	a0,10920 <__internal_syscall+0x24>
   10918:	00000317          	auipc	t1,0x0
   1091c:	fb030067          	jr	-80(t1) # 108c8 <__syscall_error>
   10920:	00008067          	ret

0000000000010924 <open>:
   10924:	ff010113          	addi	sp,sp,-16
   10928:	00060693          	mv	a3,a2
   1092c:	00000713          	li	a4,0
   10930:	00058613          	mv	a2,a1
   10934:	00050593          	mv	a1,a0
   10938:	40000513          	li	a0,1024
   1093c:	00113423          	sd	ra,8(sp)
   10940:	00000097          	auipc	ra,0x0
   10944:	fbc080e7          	jalr	-68(ra) # 108fc <__internal_syscall>
   10948:	00813083          	ld	ra,8(sp)
   1094c:	0005051b          	sext.w	a0,a0
   10950:	01010113          	addi	sp,sp,16
   10954:	00008067          	ret

0000000000010958 <openat>:
   10958:	ff010113          	addi	sp,sp,-16
   1095c:	00068713          	mv	a4,a3
   10960:	00060693          	mv	a3,a2
   10964:	00058613          	mv	a2,a1
   10968:	00050593          	mv	a1,a0
   1096c:	03800513          	li	a0,56
   10970:	00113423          	sd	ra,8(sp)
   10974:	f89ff0ef          	jal	ra,108fc <__internal_syscall>
   10978:	00813083          	ld	ra,8(sp)
   1097c:	0005051b          	sext.w	a0,a0
   10980:	01010113          	addi	sp,sp,16
   10984:	00008067          	ret

0000000000010988 <lseek>:
   10988:	00060693          	mv	a3,a2
   1098c:	00000713          	li	a4,0
   10990:	00058613          	mv	a2,a1
   10994:	00050593          	mv	a1,a0
   10998:	03e00513          	li	a0,62
   1099c:	00000317          	auipc	t1,0x0
   109a0:	f6030067          	jr	-160(t1) # 108fc <__internal_syscall>

00000000000109a4 <read>:
   109a4:	00060693          	mv	a3,a2
   109a8:	00000713          	li	a4,0
   109ac:	00058613          	mv	a2,a1
   109b0:	00050593          	mv	a1,a0
   109b4:	03f00513          	li	a0,63
   109b8:	f45ff06f          	j	108fc <__internal_syscall>

00000000000109bc <write>:
   109bc:	00060693          	mv	a3,a2
   109c0:	00000713          	li	a4,0
   109c4:	00058613          	mv	a2,a1
   109c8:	00050593          	mv	a1,a0
   109cc:	04000513          	li	a0,64
   109d0:	00000317          	auipc	t1,0x0
   109d4:	f2c30067          	jr	-212(t1) # 108fc <__internal_syscall>

00000000000109d8 <fstat>:
   109d8:	f6010113          	addi	sp,sp,-160
   109dc:	08913423          	sd	s1,136(sp)
   109e0:	00010613          	mv	a2,sp
   109e4:	00058493          	mv	s1,a1
   109e8:	00000713          	li	a4,0
   109ec:	00050593          	mv	a1,a0
   109f0:	00000693          	li	a3,0
   109f4:	05000513          	li	a0,80
   109f8:	08113c23          	sd	ra,152(sp)
   109fc:	08813823          	sd	s0,144(sp)
   10a00:	efdff0ef          	jal	ra,108fc <__internal_syscall>
   10a04:	00050413          	mv	s0,a0
   10a08:	00010593          	mv	a1,sp
   10a0c:	00048513          	mv	a0,s1
   10a10:	e4dff0ef          	jal	ra,1085c <conv_stat>
   10a14:	0004051b          	sext.w	a0,s0
   10a18:	09813083          	ld	ra,152(sp)
   10a1c:	09013403          	ld	s0,144(sp)
   10a20:	08813483          	ld	s1,136(sp)
   10a24:	0a010113          	addi	sp,sp,160
   10a28:	00008067          	ret

0000000000010a2c <stat>:
   10a2c:	f6010113          	addi	sp,sp,-160
   10a30:	08913423          	sd	s1,136(sp)
   10a34:	00010613          	mv	a2,sp
   10a38:	00058493          	mv	s1,a1
   10a3c:	00000713          	li	a4,0
   10a40:	00050593          	mv	a1,a0
   10a44:	00000693          	li	a3,0
   10a48:	40e00513          	li	a0,1038
   10a4c:	08113c23          	sd	ra,152(sp)
   10a50:	08813823          	sd	s0,144(sp)
   10a54:	00000097          	auipc	ra,0x0
   10a58:	ea8080e7          	jalr	-344(ra) # 108fc <__internal_syscall>
   10a5c:	00050413          	mv	s0,a0
   10a60:	00010593          	mv	a1,sp
   10a64:	00048513          	mv	a0,s1
   10a68:	00000097          	auipc	ra,0x0
   10a6c:	df4080e7          	jalr	-524(ra) # 1085c <conv_stat>
   10a70:	0004051b          	sext.w	a0,s0
   10a74:	09813083          	ld	ra,152(sp)
   10a78:	09013403          	ld	s0,144(sp)
   10a7c:	08813483          	ld	s1,136(sp)
   10a80:	0a010113          	addi	sp,sp,160
   10a84:	00008067          	ret

0000000000010a88 <lstat>:
   10a88:	f6010113          	addi	sp,sp,-160
   10a8c:	08913423          	sd	s1,136(sp)
   10a90:	00010613          	mv	a2,sp
   10a94:	00058493          	mv	s1,a1
   10a98:	00000713          	li	a4,0
   10a9c:	00050593          	mv	a1,a0
   10aa0:	00000693          	li	a3,0
   10aa4:	40f00513          	li	a0,1039
   10aa8:	08113c23          	sd	ra,152(sp)
   10aac:	08813823          	sd	s0,144(sp)
   10ab0:	e4dff0ef          	jal	ra,108fc <__internal_syscall>
   10ab4:	00050413          	mv	s0,a0
   10ab8:	00010593          	mv	a1,sp
   10abc:	00048513          	mv	a0,s1
   10ac0:	d9dff0ef          	jal	ra,1085c <conv_stat>
   10ac4:	0004051b          	sext.w	a0,s0
   10ac8:	09813083          	ld	ra,152(sp)
   10acc:	09013403          	ld	s0,144(sp)
   10ad0:	08813483          	ld	s1,136(sp)
   10ad4:	0a010113          	addi	sp,sp,160
   10ad8:	00008067          	ret

0000000000010adc <fstatat>:
   10adc:	f6010113          	addi	sp,sp,-160
   10ae0:	08913423          	sd	s1,136(sp)
   10ae4:	00068713          	mv	a4,a3
   10ae8:	00060493          	mv	s1,a2
   10aec:	00010693          	mv	a3,sp
   10af0:	00058613          	mv	a2,a1
   10af4:	00050593          	mv	a1,a0
   10af8:	04f00513          	li	a0,79
   10afc:	08113c23          	sd	ra,152(sp)
   10b00:	08813823          	sd	s0,144(sp)
   10b04:	00000097          	auipc	ra,0x0
   10b08:	df8080e7          	jalr	-520(ra) # 108fc <__internal_syscall>
   10b0c:	00050413          	mv	s0,a0
   10b10:	00010593          	mv	a1,sp
   10b14:	00048513          	mv	a0,s1
   10b18:	00000097          	auipc	ra,0x0
   10b1c:	d44080e7          	jalr	-700(ra) # 1085c <conv_stat>
   10b20:	0004051b          	sext.w	a0,s0
   10b24:	09813083          	ld	ra,152(sp)
   10b28:	09013403          	ld	s0,144(sp)
   10b2c:	08813483          	ld	s1,136(sp)
   10b30:	0a010113          	addi	sp,sp,160
   10b34:	00008067          	ret

0000000000010b38 <access>:
   10b38:	ff010113          	addi	sp,sp,-16
   10b3c:	00058613          	mv	a2,a1
   10b40:	00000713          	li	a4,0
   10b44:	00050593          	mv	a1,a0
   10b48:	00000693          	li	a3,0
   10b4c:	40900513          	li	a0,1033
   10b50:	00113423          	sd	ra,8(sp)
   10b54:	da9ff0ef          	jal	ra,108fc <__internal_syscall>
   10b58:	00813083          	ld	ra,8(sp)
   10b5c:	0005051b          	sext.w	a0,a0
   10b60:	01010113          	addi	sp,sp,16
   10b64:	00008067          	ret

0000000000010b68 <faccessat>:
   10b68:	ff010113          	addi	sp,sp,-16
   10b6c:	00068713          	mv	a4,a3
   10b70:	00060693          	mv	a3,a2
   10b74:	00058613          	mv	a2,a1
   10b78:	00050593          	mv	a1,a0
   10b7c:	03000513          	li	a0,48
   10b80:	00113423          	sd	ra,8(sp)
   10b84:	00000097          	auipc	ra,0x0
   10b88:	d78080e7          	jalr	-648(ra) # 108fc <__internal_syscall>
   10b8c:	00813083          	ld	ra,8(sp)
   10b90:	0005051b          	sext.w	a0,a0
   10b94:	01010113          	addi	sp,sp,16
   10b98:	00008067          	ret

0000000000010b9c <close>:
   10b9c:	ff010113          	addi	sp,sp,-16
   10ba0:	00050593          	mv	a1,a0
   10ba4:	00000713          	li	a4,0
   10ba8:	00000693          	li	a3,0
   10bac:	00000613          	li	a2,0
   10bb0:	03900513          	li	a0,57
   10bb4:	00113423          	sd	ra,8(sp)
   10bb8:	d45ff0ef          	jal	ra,108fc <__internal_syscall>
   10bbc:	00813083          	ld	ra,8(sp)
   10bc0:	0005051b          	sext.w	a0,a0
   10bc4:	01010113          	addi	sp,sp,16
   10bc8:	00008067          	ret

0000000000010bcc <link>:
   10bcc:	ff010113          	addi	sp,sp,-16
   10bd0:	00058613          	mv	a2,a1
   10bd4:	00000713          	li	a4,0
   10bd8:	00050593          	mv	a1,a0
   10bdc:	00000693          	li	a3,0
   10be0:	40100513          	li	a0,1025
   10be4:	00113423          	sd	ra,8(sp)
   10be8:	00000097          	auipc	ra,0x0
   10bec:	d14080e7          	jalr	-748(ra) # 108fc <__internal_syscall>
   10bf0:	00813083          	ld	ra,8(sp)
   10bf4:	0005051b          	sext.w	a0,a0
   10bf8:	01010113          	addi	sp,sp,16
   10bfc:	00008067          	ret

0000000000010c00 <unlink>:
   10c00:	ff010113          	addi	sp,sp,-16
   10c04:	00050593          	mv	a1,a0
   10c08:	00000713          	li	a4,0
   10c0c:	00000693          	li	a3,0
   10c10:	00000613          	li	a2,0
   10c14:	40200513          	li	a0,1026
   10c18:	00113423          	sd	ra,8(sp)
   10c1c:	ce1ff0ef          	jal	ra,108fc <__internal_syscall>
   10c20:	00813083          	ld	ra,8(sp)
   10c24:	0005051b          	sext.w	a0,a0
   10c28:	01010113          	addi	sp,sp,16
   10c2c:	00008067          	ret

0000000000010c30 <execve>:
   10c30:	ff010113          	addi	sp,sp,-16
   10c34:	00113423          	sd	ra,8(sp)
   10c38:	00000097          	auipc	ra,0x0
   10c3c:	298080e7          	jalr	664(ra) # 10ed0 <__errno>
   10c40:	00813083          	ld	ra,8(sp)
   10c44:	00c00793          	li	a5,12
   10c48:	00f52023          	sw	a5,0(a0)
   10c4c:	fff00513          	li	a0,-1
   10c50:	01010113          	addi	sp,sp,16
   10c54:	00008067          	ret

0000000000010c58 <fork>:
   10c58:	ff010113          	addi	sp,sp,-16
   10c5c:	00113423          	sd	ra,8(sp)
   10c60:	270000ef          	jal	ra,10ed0 <__errno>
   10c64:	00813083          	ld	ra,8(sp)
   10c68:	00b00793          	li	a5,11
   10c6c:	00f52023          	sw	a5,0(a0)
   10c70:	fff00513          	li	a0,-1
   10c74:	01010113          	addi	sp,sp,16
   10c78:	00008067          	ret

0000000000010c7c <getpid>:
   10c7c:	00100513          	li	a0,1
   10c80:	00008067          	ret

0000000000010c84 <kill>:
   10c84:	ff010113          	addi	sp,sp,-16
   10c88:	00113423          	sd	ra,8(sp)
   10c8c:	244000ef          	jal	ra,10ed0 <__errno>
   10c90:	00813083          	ld	ra,8(sp)
   10c94:	01600793          	li	a5,22
   10c98:	00f52023          	sw	a5,0(a0)
   10c9c:	fff00513          	li	a0,-1
   10ca0:	01010113          	addi	sp,sp,16
   10ca4:	00008067          	ret

0000000000010ca8 <wait>:
   10ca8:	ff010113          	addi	sp,sp,-16
   10cac:	00113423          	sd	ra,8(sp)
   10cb0:	00000097          	auipc	ra,0x0
   10cb4:	220080e7          	jalr	544(ra) # 10ed0 <__errno>
   10cb8:	00813083          	ld	ra,8(sp)
   10cbc:	00a00793          	li	a5,10
   10cc0:	00f52023          	sw	a5,0(a0)
   10cc4:	fff00513          	li	a0,-1
   10cc8:	01010113          	addi	sp,sp,16
   10ccc:	00008067          	ret

0000000000010cd0 <isatty>:
   10cd0:	f8010113          	addi	sp,sp,-128
   10cd4:	00810593          	addi	a1,sp,8
   10cd8:	06113c23          	sd	ra,120(sp)
   10cdc:	cfdff0ef          	jal	ra,109d8 <fstat>
   10ce0:	fff00793          	li	a5,-1
   10ce4:	00f50863          	beq	a0,a5,10cf4 <isatty+0x24>
   10ce8:	00c12503          	lw	a0,12(sp)
   10cec:	40d5551b          	sraiw	a0,a0,0xd
   10cf0:	00157513          	andi	a0,a0,1
   10cf4:	07813083          	ld	ra,120(sp)
   10cf8:	08010113          	addi	sp,sp,128
   10cfc:	00008067          	ret

0000000000010d00 <gettimeofday>:
   10d00:	ff010113          	addi	sp,sp,-16
   10d04:	00050593          	mv	a1,a0
   10d08:	00000713          	li	a4,0
   10d0c:	00000693          	li	a3,0
   10d10:	00000613          	li	a2,0
   10d14:	0a900513          	li	a0,169
   10d18:	00113423          	sd	ra,8(sp)
   10d1c:	00000097          	auipc	ra,0x0
   10d20:	be0080e7          	jalr	-1056(ra) # 108fc <__internal_syscall>
   10d24:	00813083          	ld	ra,8(sp)
   10d28:	0005051b          	sext.w	a0,a0
   10d2c:	01010113          	addi	sp,sp,16
   10d30:	00008067          	ret

0000000000010d34 <times>:
   10d34:	fd010113          	addi	sp,sp,-48
   10d38:	02813023          	sd	s0,32(sp)
   10d3c:	00050413          	mv	s0,a0
   10d40:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10d44:	00913c23          	sd	s1,24(sp)
   10d48:	02113423          	sd	ra,40(sp)
   10d4c:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10d50:	00079a63          	bnez	a5,10d64 <times+0x30>
   10d54:	00000593          	li	a1,0
   10d58:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10d5c:	00000097          	auipc	ra,0x0
   10d60:	fa4080e7          	jalr	-92(ra) # 10d00 <gettimeofday>
   10d64:	00000593          	li	a1,0
   10d68:	00010513          	mv	a0,sp
   10d6c:	00000097          	auipc	ra,0x0
   10d70:	f94080e7          	jalr	-108(ra) # 10d00 <gettimeofday>
   10d74:	0004b783          	ld	a5,0(s1)
   10d78:	00013503          	ld	a0,0(sp)
   10d7c:	000f45b7          	lui	a1,0xf4
   10d80:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10d84:	40f50533          	sub	a0,a0,a5
   10d88:	154000ef          	jal	ra,10edc <__muldi3>
   10d8c:	0084b703          	ld	a4,8(s1)
   10d90:	00813783          	ld	a5,8(sp)
   10d94:	00043823          	sd	zero,16(s0)
   10d98:	00043c23          	sd	zero,24(s0)
   10d9c:	40e787b3          	sub	a5,a5,a4
   10da0:	00f50533          	add	a0,a0,a5
   10da4:	00a43023          	sd	a0,0(s0)
   10da8:	00043423          	sd	zero,8(s0)
   10dac:	02813083          	ld	ra,40(sp)
   10db0:	02013403          	ld	s0,32(sp)
   10db4:	01813483          	ld	s1,24(sp)
   10db8:	fff00513          	li	a0,-1
   10dbc:	03010113          	addi	sp,sp,48
   10dc0:	00008067          	ret

0000000000010dc4 <ftime>:
   10dc4:	00051423          	sh	zero,8(a0)
   10dc8:	00053023          	sd	zero,0(a0)
   10dcc:	00000513          	li	a0,0
   10dd0:	00008067          	ret

0000000000010dd4 <utime>:
   10dd4:	fff00513          	li	a0,-1
   10dd8:	00008067          	ret

0000000000010ddc <chown>:
   10ddc:	fff00513          	li	a0,-1
   10de0:	00008067          	ret

0000000000010de4 <chmod>:
   10de4:	fff00513          	li	a0,-1
   10de8:	00008067          	ret

0000000000010dec <chdir>:
   10dec:	fff00513          	li	a0,-1
   10df0:	00008067          	ret

0000000000010df4 <getcwd>:
   10df4:	00000513          	li	a0,0
   10df8:	00008067          	ret

0000000000010dfc <sysconf>:
   10dfc:	00200793          	li	a5,2
   10e00:	00f50663          	beq	a0,a5,10e0c <sysconf+0x10>
   10e04:	fff00513          	li	a0,-1
   10e08:	00008067          	ret
   10e0c:	000f4537          	lui	a0,0xf4
   10e10:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10e14:	00008067          	ret

0000000000010e18 <sbrk>:
   10e18:	fe010113          	addi	sp,sp,-32
   10e1c:	00813823          	sd	s0,16(sp)
   10e20:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e24:	00913423          	sd	s1,8(sp)
   10e28:	00113c23          	sd	ra,24(sp)
   10e2c:	00050493          	mv	s1,a0
   10e30:	04079063          	bnez	a5,10e70 <sbrk+0x58>
   10e34:	00000713          	li	a4,0
   10e38:	00000693          	li	a3,0
   10e3c:	00000613          	li	a2,0
   10e40:	00000593          	li	a1,0
   10e44:	0d600513          	li	a0,214
   10e48:	ab5ff0ef          	jal	ra,108fc <__internal_syscall>
   10e4c:	fff00793          	li	a5,-1
   10e50:	00f51e63          	bne	a0,a5,10e6c <sbrk+0x54>
   10e54:	fff00513          	li	a0,-1
   10e58:	01813083          	ld	ra,24(sp)
   10e5c:	01013403          	ld	s0,16(sp)
   10e60:	00813483          	ld	s1,8(sp)
   10e64:	02010113          	addi	sp,sp,32
   10e68:	00008067          	ret
   10e6c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e70:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10e74:	00000713          	li	a4,0
   10e78:	00000693          	li	a3,0
   10e7c:	00b485b3          	add	a1,s1,a1
   10e80:	00000613          	li	a2,0
   10e84:	0d600513          	li	a0,214
   10e88:	a75ff0ef          	jal	ra,108fc <__internal_syscall>
   10e8c:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e90:	00f484b3          	add	s1,s1,a5
   10e94:	fc9510e3          	bne	a0,s1,10e54 <sbrk+0x3c>
   10e98:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e9c:	00078513          	mv	a0,a5
   10ea0:	fb9ff06f          	j	10e58 <sbrk+0x40>

0000000000010ea4 <_exit>:
   10ea4:	ff010113          	addi	sp,sp,-16
   10ea8:	00050593          	mv	a1,a0
   10eac:	00000713          	li	a4,0
   10eb0:	00000693          	li	a3,0
   10eb4:	00000613          	li	a2,0
   10eb8:	05d00513          	li	a0,93
   10ebc:	00113423          	sd	ra,8(sp)
   10ec0:	00000097          	auipc	ra,0x0
   10ec4:	a3c080e7          	jalr	-1476(ra) # 108fc <__internal_syscall>
   10ec8:	0000006f          	j	10ec8 <_exit+0x24>
   10ecc:	0000                	unimp
	...

0000000000010ed0 <__errno>:
   10ed0:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10ed4:	00008067          	ret
   10ed8:	0000                	unimp
	...

0000000000010edc <__muldi3>:
   10edc:	00050613          	mv	a2,a0
   10ee0:	00000513          	li	a0,0
   10ee4:	0015f693          	andi	a3,a1,1
   10ee8:	00068463          	beqz	a3,10ef0 <__muldi3+0x14>
   10eec:	00c50533          	add	a0,a0,a2
   10ef0:	0015d593          	srli	a1,a1,0x1
   10ef4:	00161613          	slli	a2,a2,0x1
   10ef8:	fe0596e3          	bnez	a1,10ee4 <__muldi3+0x8>
   10efc:	00008067          	ret
   10f00:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010f08 <.rodata>:
   10f08:	6341                	lui	t1,0x10
   10f0a:	6d72656b          	0x6d72656b
   10f0e:	6e61                	lui	t3,0x18
   10f10:	286e                	fld	fa6,216(sp)
   10f12:	0000                	unimp
   10f14:	0000                	unimp
   10f16:	0000                	unimp
   10f18:	002c                	addi	a1,sp,8
   10f1a:	0000                	unimp
   10f1c:	0000                	unimp
   10f1e:	0000                	unimp
   10f20:	2029                	0x2029
   10f22:	203d                	0x203d
	...

Disassembly of section .eh_frame:

0000000000010f28 <__EH_FRAME_BEGIN__>:
   10f28:	0000                	unimp
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
  10:	0edc                	addi	a5,sp,852
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
  10:	0edc                	addi	a5,sp,852
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0f00                	addi	s0,sp,912
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
  9c:	dc02                	sw	zero,56(sp)
  9e:	010e                	slli	sp,sp,0x3
  a0:	0000                	unimp
  a2:	0000                	unimp
  a4:	0300                	addi	s0,sp,384
  a6:	01030123          	sb	a6,2(t1) # 10002 <_start-0xae>
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
