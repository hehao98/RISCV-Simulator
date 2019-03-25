
ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	488000ef          	jal	ra,10550 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	36450513          	addi	a0,a0,868 # 10430 <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	308080e7          	jalr	776(ra) # 103dc <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	3cc080e7          	jalr	972(ra) # 104a8 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	1d8000ef          	jal	ra,102c8 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	30030067          	jr	768(t1) # 103f4 <exit>

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
   10198:	e9c50513          	addi	a0,a0,-356 # 10e9c <__EH_FRAME_BEGIN__>
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
   101dc:	e9c50513          	addi	a0,a0,-356 # 10e9c <__EH_FRAME_BEGIN__>
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
   102d8:	00100593          	li	a1,1
   102dc:	00400513          	li	a0,4
   102e0:	00000097          	auipc	ra,0x0
   102e4:	f18080e7          	jalr	-232(ra) # 101f8 <ackermann>
   102e8:	00050793          	mv	a5,a0
   102ec:	fef42623          	sw	a5,-20(s0)
   102f0:	000117b7          	lui	a5,0x11
   102f4:	e8078513          	addi	a0,a5,-384 # 10e80 <__muldi3+0x2c>
   102f8:	06c000ef          	jal	ra,10364 <print_s>
   102fc:	fec42783          	lw	a5,-20(s0)
   10300:	00078513          	mv	a0,a5
   10304:	00000097          	auipc	ra,0x0
   10308:	034080e7          	jalr	52(ra) # 10338 <print_d>
   1030c:	000117b7          	lui	a5,0x11
   10310:	e9878513          	addi	a0,a5,-360 # 10e98 <__muldi3+0x44>
   10314:	050000ef          	jal	ra,10364 <print_s>
   10318:	0a0000ef          	jal	ra,103b8 <exit_proc>
   1031c:	00000793          	li	a5,0
   10320:	00078513          	mv	a0,a5
   10324:	01813083          	ld	ra,24(sp)
   10328:	01013403          	ld	s0,16(sp)
   1032c:	02010113          	addi	sp,sp,32
   10330:	00008067          	ret
   10334:	0000                	unimp
	...

0000000000010338 <print_d>:
   10338:	fe010113          	addi	sp,sp,-32
   1033c:	00813c23          	sd	s0,24(sp)
   10340:	02010413          	addi	s0,sp,32
   10344:	00050793          	mv	a5,a0
   10348:	fef42623          	sw	a5,-20(s0)
   1034c:	00200893          	li	a7,2
   10350:	00000073          	ecall
   10354:	00000013          	nop
   10358:	01813403          	ld	s0,24(sp)
   1035c:	02010113          	addi	sp,sp,32
   10360:	00008067          	ret

0000000000010364 <print_s>:
   10364:	fe010113          	addi	sp,sp,-32
   10368:	00813c23          	sd	s0,24(sp)
   1036c:	02010413          	addi	s0,sp,32
   10370:	fea43423          	sd	a0,-24(s0)
   10374:	00000893          	li	a7,0
   10378:	00000073          	ecall
   1037c:	00000013          	nop
   10380:	01813403          	ld	s0,24(sp)
   10384:	02010113          	addi	sp,sp,32
   10388:	00008067          	ret

000000000001038c <print_c>:
   1038c:	fe010113          	addi	sp,sp,-32
   10390:	00813c23          	sd	s0,24(sp)
   10394:	02010413          	addi	s0,sp,32
   10398:	00050793          	mv	a5,a0
   1039c:	fef407a3          	sb	a5,-17(s0)
   103a0:	00100893          	li	a7,1
   103a4:	00000073          	ecall
   103a8:	00000013          	nop
   103ac:	01813403          	ld	s0,24(sp)
   103b0:	02010113          	addi	sp,sp,32
   103b4:	00008067          	ret

00000000000103b8 <exit_proc>:
   103b8:	ff010113          	addi	sp,sp,-16
   103bc:	00813423          	sd	s0,8(sp)
   103c0:	01010413          	addi	s0,sp,16
   103c4:	00300893          	li	a7,3
   103c8:	00000073          	ecall
   103cc:	00000013          	nop
   103d0:	00813403          	ld	s0,8(sp)
   103d4:	01010113          	addi	sp,sp,16
   103d8:	00008067          	ret

00000000000103dc <atexit>:
   103dc:	00050593          	mv	a1,a0
   103e0:	00000693          	li	a3,0
   103e4:	00000613          	li	a2,0
   103e8:	00000513          	li	a0,0
   103ec:	2400006f          	j	1062c <__register_exitproc>
   103f0:	0000                	unimp
	...

00000000000103f4 <exit>:
   103f4:	ff010113          	addi	sp,sp,-16
   103f8:	00000593          	li	a1,0
   103fc:	00813023          	sd	s0,0(sp)
   10400:	00113423          	sd	ra,8(sp)
   10404:	00050413          	mv	s0,a0
   10408:	2b0000ef          	jal	ra,106b8 <__call_exitprocs>
   1040c:	000117b7          	lui	a5,0x11
   10410:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10414:	05853783          	ld	a5,88(a0)
   10418:	00078463          	beqz	a5,10420 <exit+0x2c>
   1041c:	000780e7          	jalr	a5
   10420:	00040513          	mv	a0,s0
   10424:	00001097          	auipc	ra,0x1
   10428:	9f8080e7          	jalr	-1544(ra) # 10e1c <_exit>
   1042c:	0000                	unimp
	...

0000000000010430 <__libc_fini_array>:
   10430:	fe010113          	addi	sp,sp,-32
   10434:	000117b7          	lui	a5,0x11
   10438:	00011737          	lui	a4,0x11
   1043c:	00813823          	sd	s0,16(sp)
   10440:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10444:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10448:	40e40433          	sub	s0,s0,a4
   1044c:	00913423          	sd	s1,8(sp)
   10450:	01213023          	sd	s2,0(sp)
   10454:	00113c23          	sd	ra,24(sp)
   10458:	40345413          	srai	s0,s0,0x3
   1045c:	00000493          	li	s1,0
   10460:	01078913          	addi	s2,a5,16
   10464:	02941063          	bne	s0,s1,10484 <__libc_fini_array+0x54>
   10468:	01013403          	ld	s0,16(sp)
   1046c:	01813083          	ld	ra,24(sp)
   10470:	00813483          	ld	s1,8(sp)
   10474:	00013903          	ld	s2,0(sp)
   10478:	02010113          	addi	sp,sp,32
   1047c:	00000317          	auipc	t1,0x0
   10480:	c8030067          	jr	-896(t1) # 100fc <_fini>
   10484:	ff800593          	li	a1,-8
   10488:	00048513          	mv	a0,s1
   1048c:	1c9000ef          	jal	ra,10e54 <__muldi3>
   10490:	00a90533          	add	a0,s2,a0
   10494:	ff853783          	ld	a5,-8(a0)
   10498:	00148493          	addi	s1,s1,1
   1049c:	000780e7          	jalr	a5
   104a0:	fc5ff06f          	j	10464 <__libc_fini_array+0x34>
   104a4:	0000                	unimp
	...

00000000000104a8 <__libc_init_array>:
   104a8:	fe010113          	addi	sp,sp,-32
   104ac:	00813823          	sd	s0,16(sp)
   104b0:	00913423          	sd	s1,8(sp)
   104b4:	00011437          	lui	s0,0x11
   104b8:	000114b7          	lui	s1,0x11
   104bc:	00048793          	mv	a5,s1
   104c0:	00040413          	mv	s0,s0
   104c4:	40f40433          	sub	s0,s0,a5
   104c8:	01213023          	sd	s2,0(sp)
   104cc:	00113c23          	sd	ra,24(sp)
   104d0:	40345413          	srai	s0,s0,0x3
   104d4:	00048493          	mv	s1,s1
   104d8:	00000913          	li	s2,0
   104dc:	04891463          	bne	s2,s0,10524 <__libc_init_array+0x7c>
   104e0:	000114b7          	lui	s1,0x11
   104e4:	00000097          	auipc	ra,0x0
   104e8:	c18080e7          	jalr	-1000(ra) # 100fc <_fini>
   104ec:	00011437          	lui	s0,0x11
   104f0:	00048793          	mv	a5,s1
   104f4:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   104f8:	40f40433          	sub	s0,s0,a5
   104fc:	40345413          	srai	s0,s0,0x3
   10500:	00048493          	mv	s1,s1
   10504:	00000913          	li	s2,0
   10508:	02891863          	bne	s2,s0,10538 <__libc_init_array+0x90>
   1050c:	01813083          	ld	ra,24(sp)
   10510:	01013403          	ld	s0,16(sp)
   10514:	00813483          	ld	s1,8(sp)
   10518:	00013903          	ld	s2,0(sp)
   1051c:	02010113          	addi	sp,sp,32
   10520:	00008067          	ret
   10524:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10528:	00190913          	addi	s2,s2,1
   1052c:	00848493          	addi	s1,s1,8
   10530:	000780e7          	jalr	a5
   10534:	fa9ff06f          	j	104dc <__libc_init_array+0x34>
   10538:	0004b783          	ld	a5,0(s1)
   1053c:	00190913          	addi	s2,s2,1
   10540:	00848493          	addi	s1,s1,8
   10544:	000780e7          	jalr	a5
   10548:	fc1ff06f          	j	10508 <__libc_init_array+0x60>
   1054c:	0000                	unimp
	...

0000000000010550 <memset>:
   10550:	00f00813          	li	a6,15
   10554:	00050713          	mv	a4,a0
   10558:	02c87a63          	bleu	a2,a6,1058c <memset+0x3c>
   1055c:	00f77793          	andi	a5,a4,15
   10560:	0a079063          	bnez	a5,10600 <memset+0xb0>
   10564:	06059e63          	bnez	a1,105e0 <memset+0x90>
   10568:	ff067693          	andi	a3,a2,-16
   1056c:	00f67613          	andi	a2,a2,15
   10570:	00e686b3          	add	a3,a3,a4
   10574:	00b73023          	sd	a1,0(a4)
   10578:	00b73423          	sd	a1,8(a4)
   1057c:	01070713          	addi	a4,a4,16
   10580:	fed76ae3          	bltu	a4,a3,10574 <memset+0x24>
   10584:	00061463          	bnez	a2,1058c <memset+0x3c>
   10588:	00008067          	ret
   1058c:	40c806b3          	sub	a3,a6,a2
   10590:	00269693          	slli	a3,a3,0x2
   10594:	00000297          	auipc	t0,0x0
   10598:	005686b3          	add	a3,a3,t0
   1059c:	00c68067          	jr	12(a3)
   105a0:	00b70723          	sb	a1,14(a4)
   105a4:	00b706a3          	sb	a1,13(a4)
   105a8:	00b70623          	sb	a1,12(a4)
   105ac:	00b705a3          	sb	a1,11(a4)
   105b0:	00b70523          	sb	a1,10(a4)
   105b4:	00b704a3          	sb	a1,9(a4)
   105b8:	00b70423          	sb	a1,8(a4)
   105bc:	00b703a3          	sb	a1,7(a4)
   105c0:	00b70323          	sb	a1,6(a4)
   105c4:	00b702a3          	sb	a1,5(a4)
   105c8:	00b70223          	sb	a1,4(a4)
   105cc:	00b701a3          	sb	a1,3(a4)
   105d0:	00b70123          	sb	a1,2(a4)
   105d4:	00b700a3          	sb	a1,1(a4)
   105d8:	00b70023          	sb	a1,0(a4)
   105dc:	00008067          	ret
   105e0:	0ff5f593          	andi	a1,a1,255
   105e4:	00859693          	slli	a3,a1,0x8
   105e8:	00d5e5b3          	or	a1,a1,a3
   105ec:	01059693          	slli	a3,a1,0x10
   105f0:	00d5e5b3          	or	a1,a1,a3
   105f4:	02059693          	slli	a3,a1,0x20
   105f8:	00d5e5b3          	or	a1,a1,a3
   105fc:	f6dff06f          	j	10568 <memset+0x18>
   10600:	00279693          	slli	a3,a5,0x2
   10604:	00000297          	auipc	t0,0x0
   10608:	005686b3          	add	a3,a3,t0
   1060c:	00008293          	mv	t0,ra
   10610:	f98680e7          	jalr	-104(a3)
   10614:	00028093          	mv	ra,t0
   10618:	ff078793          	addi	a5,a5,-16
   1061c:	40f70733          	sub	a4,a4,a5
   10620:	00f60633          	add	a2,a2,a5
   10624:	f6c874e3          	bleu	a2,a6,1058c <memset+0x3c>
   10628:	f3dff06f          	j	10564 <memset+0x14>

000000000001062c <__register_exitproc>:
   1062c:	000117b7          	lui	a5,0x11
   10630:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10634:	00050313          	mv	t1,a0
   10638:	1f873783          	ld	a5,504(a4)
   1063c:	00079663          	bnez	a5,10648 <__register_exitproc+0x1c>
   10640:	20070793          	addi	a5,a4,512
   10644:	1ef73c23          	sd	a5,504(a4)
   10648:	0087a703          	lw	a4,8(a5)
   1064c:	01f00813          	li	a6,31
   10650:	fff00513          	li	a0,-1
   10654:	04e84e63          	blt	a6,a4,106b0 <__register_exitproc+0x84>
   10658:	02030e63          	beqz	t1,10694 <__register_exitproc+0x68>
   1065c:	00371813          	slli	a6,a4,0x3
   10660:	01078833          	add	a6,a5,a6
   10664:	10c83823          	sd	a2,272(a6)
   10668:	3107a883          	lw	a7,784(a5)
   1066c:	00100613          	li	a2,1
   10670:	00e6163b          	sllw	a2,a2,a4
   10674:	00c8e8b3          	or	a7,a7,a2
   10678:	3117a823          	sw	a7,784(a5)
   1067c:	20d83823          	sd	a3,528(a6)
   10680:	00200693          	li	a3,2
   10684:	00d31863          	bne	t1,a3,10694 <__register_exitproc+0x68>
   10688:	3147a683          	lw	a3,788(a5)
   1068c:	00c6e633          	or	a2,a3,a2
   10690:	30c7aa23          	sw	a2,788(a5)
   10694:	0017069b          	addiw	a3,a4,1
   10698:	00270713          	addi	a4,a4,2
   1069c:	00371713          	slli	a4,a4,0x3
   106a0:	00d7a423          	sw	a3,8(a5)
   106a4:	00e787b3          	add	a5,a5,a4
   106a8:	00b7b023          	sd	a1,0(a5)
   106ac:	00000513          	li	a0,0
   106b0:	00008067          	ret
   106b4:	0000                	unimp
	...

00000000000106b8 <__call_exitprocs>:
   106b8:	fb010113          	addi	sp,sp,-80
   106bc:	000117b7          	lui	a5,0x11
   106c0:	03313423          	sd	s3,40(sp)
   106c4:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   106c8:	03413023          	sd	s4,32(sp)
   106cc:	01513c23          	sd	s5,24(sp)
   106d0:	01613823          	sd	s6,16(sp)
   106d4:	04113423          	sd	ra,72(sp)
   106d8:	04813023          	sd	s0,64(sp)
   106dc:	02913c23          	sd	s1,56(sp)
   106e0:	03213823          	sd	s2,48(sp)
   106e4:	01713423          	sd	s7,8(sp)
   106e8:	00050a93          	mv	s5,a0
   106ec:	00058a13          	mv	s4,a1
   106f0:	00100b13          	li	s6,1
   106f4:	1f89b403          	ld	s0,504(s3)
   106f8:	00040c63          	beqz	s0,10710 <__call_exitprocs+0x58>
   106fc:	00842483          	lw	s1,8(s0)
   10700:	fff4849b          	addiw	s1,s1,-1
   10704:	00349913          	slli	s2,s1,0x3
   10708:	01240933          	add	s2,s0,s2
   1070c:	0204d863          	bgez	s1,1073c <__call_exitprocs+0x84>
   10710:	04813083          	ld	ra,72(sp)
   10714:	04013403          	ld	s0,64(sp)
   10718:	03813483          	ld	s1,56(sp)
   1071c:	03013903          	ld	s2,48(sp)
   10720:	02813983          	ld	s3,40(sp)
   10724:	02013a03          	ld	s4,32(sp)
   10728:	01813a83          	ld	s5,24(sp)
   1072c:	01013b03          	ld	s6,16(sp)
   10730:	00813b83          	ld	s7,8(sp)
   10734:	05010113          	addi	sp,sp,80
   10738:	00008067          	ret
   1073c:	000a0c63          	beqz	s4,10754 <__call_exitprocs+0x9c>
   10740:	21093783          	ld	a5,528(s2)
   10744:	01478863          	beq	a5,s4,10754 <__call_exitprocs+0x9c>
   10748:	fff4849b          	addiw	s1,s1,-1
   1074c:	ff890913          	addi	s2,s2,-8
   10750:	fbdff06f          	j	1070c <__call_exitprocs+0x54>
   10754:	00842783          	lw	a5,8(s0)
   10758:	01093683          	ld	a3,16(s2)
   1075c:	fff7879b          	addiw	a5,a5,-1
   10760:	02979e63          	bne	a5,s1,1079c <__call_exitprocs+0xe4>
   10764:	00942423          	sw	s1,8(s0)
   10768:	fe0680e3          	beqz	a3,10748 <__call_exitprocs+0x90>
   1076c:	31042703          	lw	a4,784(s0)
   10770:	009b163b          	sllw	a2,s6,s1
   10774:	00842b83          	lw	s7,8(s0)
   10778:	00c77733          	and	a4,a4,a2
   1077c:	0007071b          	sext.w	a4,a4
   10780:	02071263          	bnez	a4,107a4 <__call_exitprocs+0xec>
   10784:	000680e7          	jalr	a3
   10788:	00842703          	lw	a4,8(s0)
   1078c:	1f89b783          	ld	a5,504(s3)
   10790:	f77712e3          	bne	a4,s7,106f4 <__call_exitprocs+0x3c>
   10794:	faf40ae3          	beq	s0,a5,10748 <__call_exitprocs+0x90>
   10798:	f5dff06f          	j	106f4 <__call_exitprocs+0x3c>
   1079c:	00093823          	sd	zero,16(s2)
   107a0:	fc9ff06f          	j	10768 <__call_exitprocs+0xb0>
   107a4:	31442783          	lw	a5,788(s0)
   107a8:	11093583          	ld	a1,272(s2)
   107ac:	00c7f7b3          	and	a5,a5,a2
   107b0:	0007879b          	sext.w	a5,a5
   107b4:	00079863          	bnez	a5,107c4 <__call_exitprocs+0x10c>
   107b8:	000a8513          	mv	a0,s5
   107bc:	000680e7          	jalr	a3
   107c0:	fc9ff06f          	j	10788 <__call_exitprocs+0xd0>
   107c4:	00058513          	mv	a0,a1
   107c8:	000680e7          	jalr	a3
   107cc:	fbdff06f          	j	10788 <__call_exitprocs+0xd0>
   107d0:	0000                	unimp
	...

00000000000107d4 <conv_stat>:
   107d4:	0005b783          	ld	a5,0(a1)
   107d8:	00f51023          	sh	a5,0(a0)
   107dc:	0085b783          	ld	a5,8(a1)
   107e0:	00f51123          	sh	a5,2(a0)
   107e4:	0105a783          	lw	a5,16(a1)
   107e8:	00f52223          	sw	a5,4(a0)
   107ec:	0145a783          	lw	a5,20(a1)
   107f0:	00f51423          	sh	a5,8(a0)
   107f4:	0185a783          	lw	a5,24(a1)
   107f8:	00f51523          	sh	a5,10(a0)
   107fc:	01c5a783          	lw	a5,28(a1)
   10800:	00f51623          	sh	a5,12(a0)
   10804:	0205b783          	ld	a5,32(a1)
   10808:	00f51723          	sh	a5,14(a0)
   1080c:	0305b783          	ld	a5,48(a1)
   10810:	00f53823          	sd	a5,16(a0)
   10814:	0405b783          	ld	a5,64(a1)
   10818:	04f53823          	sd	a5,80(a0)
   1081c:	0385a783          	lw	a5,56(a1)
   10820:	04f53423          	sd	a5,72(a0)
   10824:	0485b783          	ld	a5,72(a1)
   10828:	00f53c23          	sd	a5,24(a0)
   1082c:	0585b783          	ld	a5,88(a1)
   10830:	02f53423          	sd	a5,40(a0)
   10834:	0685b783          	ld	a5,104(a1)
   10838:	02f53c23          	sd	a5,56(a0)
   1083c:	00008067          	ret

0000000000010840 <__syscall_error>:
   10840:	ff010113          	addi	sp,sp,-16
   10844:	00813023          	sd	s0,0(sp)
   10848:	00113423          	sd	ra,8(sp)
   1084c:	00050413          	mv	s0,a0
   10850:	00000097          	auipc	ra,0x0
   10854:	5f8080e7          	jalr	1528(ra) # 10e48 <__errno>
   10858:	408007bb          	negw	a5,s0
   1085c:	00813083          	ld	ra,8(sp)
   10860:	00013403          	ld	s0,0(sp)
   10864:	00f52023          	sw	a5,0(a0)
   10868:	fff00513          	li	a0,-1
   1086c:	01010113          	addi	sp,sp,16
   10870:	00008067          	ret

0000000000010874 <__internal_syscall>:
   10874:	00050893          	mv	a7,a0
   10878:	00058513          	mv	a0,a1
   1087c:	00060593          	mv	a1,a2
   10880:	00068613          	mv	a2,a3
   10884:	00070693          	mv	a3,a4
   10888:	00000073          	ecall
   1088c:	00055663          	bgez	a0,10898 <__internal_syscall+0x24>
   10890:	00000317          	auipc	t1,0x0
   10894:	fb030067          	jr	-80(t1) # 10840 <__syscall_error>
   10898:	00008067          	ret

000000000001089c <open>:
   1089c:	ff010113          	addi	sp,sp,-16
   108a0:	00060693          	mv	a3,a2
   108a4:	00000713          	li	a4,0
   108a8:	00058613          	mv	a2,a1
   108ac:	00050593          	mv	a1,a0
   108b0:	40000513          	li	a0,1024
   108b4:	00113423          	sd	ra,8(sp)
   108b8:	00000097          	auipc	ra,0x0
   108bc:	fbc080e7          	jalr	-68(ra) # 10874 <__internal_syscall>
   108c0:	00813083          	ld	ra,8(sp)
   108c4:	0005051b          	sext.w	a0,a0
   108c8:	01010113          	addi	sp,sp,16
   108cc:	00008067          	ret

00000000000108d0 <openat>:
   108d0:	ff010113          	addi	sp,sp,-16
   108d4:	00068713          	mv	a4,a3
   108d8:	00060693          	mv	a3,a2
   108dc:	00058613          	mv	a2,a1
   108e0:	00050593          	mv	a1,a0
   108e4:	03800513          	li	a0,56
   108e8:	00113423          	sd	ra,8(sp)
   108ec:	f89ff0ef          	jal	ra,10874 <__internal_syscall>
   108f0:	00813083          	ld	ra,8(sp)
   108f4:	0005051b          	sext.w	a0,a0
   108f8:	01010113          	addi	sp,sp,16
   108fc:	00008067          	ret

0000000000010900 <lseek>:
   10900:	00060693          	mv	a3,a2
   10904:	00000713          	li	a4,0
   10908:	00058613          	mv	a2,a1
   1090c:	00050593          	mv	a1,a0
   10910:	03e00513          	li	a0,62
   10914:	00000317          	auipc	t1,0x0
   10918:	f6030067          	jr	-160(t1) # 10874 <__internal_syscall>

000000000001091c <read>:
   1091c:	00060693          	mv	a3,a2
   10920:	00000713          	li	a4,0
   10924:	00058613          	mv	a2,a1
   10928:	00050593          	mv	a1,a0
   1092c:	03f00513          	li	a0,63
   10930:	f45ff06f          	j	10874 <__internal_syscall>

0000000000010934 <write>:
   10934:	00060693          	mv	a3,a2
   10938:	00000713          	li	a4,0
   1093c:	00058613          	mv	a2,a1
   10940:	00050593          	mv	a1,a0
   10944:	04000513          	li	a0,64
   10948:	00000317          	auipc	t1,0x0
   1094c:	f2c30067          	jr	-212(t1) # 10874 <__internal_syscall>

0000000000010950 <fstat>:
   10950:	f6010113          	addi	sp,sp,-160
   10954:	08913423          	sd	s1,136(sp)
   10958:	00010613          	mv	a2,sp
   1095c:	00058493          	mv	s1,a1
   10960:	00000713          	li	a4,0
   10964:	00050593          	mv	a1,a0
   10968:	00000693          	li	a3,0
   1096c:	05000513          	li	a0,80
   10970:	08113c23          	sd	ra,152(sp)
   10974:	08813823          	sd	s0,144(sp)
   10978:	efdff0ef          	jal	ra,10874 <__internal_syscall>
   1097c:	00050413          	mv	s0,a0
   10980:	00010593          	mv	a1,sp
   10984:	00048513          	mv	a0,s1
   10988:	e4dff0ef          	jal	ra,107d4 <conv_stat>
   1098c:	0004051b          	sext.w	a0,s0
   10990:	09813083          	ld	ra,152(sp)
   10994:	09013403          	ld	s0,144(sp)
   10998:	08813483          	ld	s1,136(sp)
   1099c:	0a010113          	addi	sp,sp,160
   109a0:	00008067          	ret

00000000000109a4 <stat>:
   109a4:	f6010113          	addi	sp,sp,-160
   109a8:	08913423          	sd	s1,136(sp)
   109ac:	00010613          	mv	a2,sp
   109b0:	00058493          	mv	s1,a1
   109b4:	00000713          	li	a4,0
   109b8:	00050593          	mv	a1,a0
   109bc:	00000693          	li	a3,0
   109c0:	40e00513          	li	a0,1038
   109c4:	08113c23          	sd	ra,152(sp)
   109c8:	08813823          	sd	s0,144(sp)
   109cc:	00000097          	auipc	ra,0x0
   109d0:	ea8080e7          	jalr	-344(ra) # 10874 <__internal_syscall>
   109d4:	00050413          	mv	s0,a0
   109d8:	00010593          	mv	a1,sp
   109dc:	00048513          	mv	a0,s1
   109e0:	00000097          	auipc	ra,0x0
   109e4:	df4080e7          	jalr	-524(ra) # 107d4 <conv_stat>
   109e8:	0004051b          	sext.w	a0,s0
   109ec:	09813083          	ld	ra,152(sp)
   109f0:	09013403          	ld	s0,144(sp)
   109f4:	08813483          	ld	s1,136(sp)
   109f8:	0a010113          	addi	sp,sp,160
   109fc:	00008067          	ret

0000000000010a00 <lstat>:
   10a00:	f6010113          	addi	sp,sp,-160
   10a04:	08913423          	sd	s1,136(sp)
   10a08:	00010613          	mv	a2,sp
   10a0c:	00058493          	mv	s1,a1
   10a10:	00000713          	li	a4,0
   10a14:	00050593          	mv	a1,a0
   10a18:	00000693          	li	a3,0
   10a1c:	40f00513          	li	a0,1039
   10a20:	08113c23          	sd	ra,152(sp)
   10a24:	08813823          	sd	s0,144(sp)
   10a28:	e4dff0ef          	jal	ra,10874 <__internal_syscall>
   10a2c:	00050413          	mv	s0,a0
   10a30:	00010593          	mv	a1,sp
   10a34:	00048513          	mv	a0,s1
   10a38:	d9dff0ef          	jal	ra,107d4 <conv_stat>
   10a3c:	0004051b          	sext.w	a0,s0
   10a40:	09813083          	ld	ra,152(sp)
   10a44:	09013403          	ld	s0,144(sp)
   10a48:	08813483          	ld	s1,136(sp)
   10a4c:	0a010113          	addi	sp,sp,160
   10a50:	00008067          	ret

0000000000010a54 <fstatat>:
   10a54:	f6010113          	addi	sp,sp,-160
   10a58:	08913423          	sd	s1,136(sp)
   10a5c:	00068713          	mv	a4,a3
   10a60:	00060493          	mv	s1,a2
   10a64:	00010693          	mv	a3,sp
   10a68:	00058613          	mv	a2,a1
   10a6c:	00050593          	mv	a1,a0
   10a70:	04f00513          	li	a0,79
   10a74:	08113c23          	sd	ra,152(sp)
   10a78:	08813823          	sd	s0,144(sp)
   10a7c:	00000097          	auipc	ra,0x0
   10a80:	df8080e7          	jalr	-520(ra) # 10874 <__internal_syscall>
   10a84:	00050413          	mv	s0,a0
   10a88:	00010593          	mv	a1,sp
   10a8c:	00048513          	mv	a0,s1
   10a90:	00000097          	auipc	ra,0x0
   10a94:	d44080e7          	jalr	-700(ra) # 107d4 <conv_stat>
   10a98:	0004051b          	sext.w	a0,s0
   10a9c:	09813083          	ld	ra,152(sp)
   10aa0:	09013403          	ld	s0,144(sp)
   10aa4:	08813483          	ld	s1,136(sp)
   10aa8:	0a010113          	addi	sp,sp,160
   10aac:	00008067          	ret

0000000000010ab0 <access>:
   10ab0:	ff010113          	addi	sp,sp,-16
   10ab4:	00058613          	mv	a2,a1
   10ab8:	00000713          	li	a4,0
   10abc:	00050593          	mv	a1,a0
   10ac0:	00000693          	li	a3,0
   10ac4:	40900513          	li	a0,1033
   10ac8:	00113423          	sd	ra,8(sp)
   10acc:	da9ff0ef          	jal	ra,10874 <__internal_syscall>
   10ad0:	00813083          	ld	ra,8(sp)
   10ad4:	0005051b          	sext.w	a0,a0
   10ad8:	01010113          	addi	sp,sp,16
   10adc:	00008067          	ret

0000000000010ae0 <faccessat>:
   10ae0:	ff010113          	addi	sp,sp,-16
   10ae4:	00068713          	mv	a4,a3
   10ae8:	00060693          	mv	a3,a2
   10aec:	00058613          	mv	a2,a1
   10af0:	00050593          	mv	a1,a0
   10af4:	03000513          	li	a0,48
   10af8:	00113423          	sd	ra,8(sp)
   10afc:	00000097          	auipc	ra,0x0
   10b00:	d78080e7          	jalr	-648(ra) # 10874 <__internal_syscall>
   10b04:	00813083          	ld	ra,8(sp)
   10b08:	0005051b          	sext.w	a0,a0
   10b0c:	01010113          	addi	sp,sp,16
   10b10:	00008067          	ret

0000000000010b14 <close>:
   10b14:	ff010113          	addi	sp,sp,-16
   10b18:	00050593          	mv	a1,a0
   10b1c:	00000713          	li	a4,0
   10b20:	00000693          	li	a3,0
   10b24:	00000613          	li	a2,0
   10b28:	03900513          	li	a0,57
   10b2c:	00113423          	sd	ra,8(sp)
   10b30:	d45ff0ef          	jal	ra,10874 <__internal_syscall>
   10b34:	00813083          	ld	ra,8(sp)
   10b38:	0005051b          	sext.w	a0,a0
   10b3c:	01010113          	addi	sp,sp,16
   10b40:	00008067          	ret

0000000000010b44 <link>:
   10b44:	ff010113          	addi	sp,sp,-16
   10b48:	00058613          	mv	a2,a1
   10b4c:	00000713          	li	a4,0
   10b50:	00050593          	mv	a1,a0
   10b54:	00000693          	li	a3,0
   10b58:	40100513          	li	a0,1025
   10b5c:	00113423          	sd	ra,8(sp)
   10b60:	00000097          	auipc	ra,0x0
   10b64:	d14080e7          	jalr	-748(ra) # 10874 <__internal_syscall>
   10b68:	00813083          	ld	ra,8(sp)
   10b6c:	0005051b          	sext.w	a0,a0
   10b70:	01010113          	addi	sp,sp,16
   10b74:	00008067          	ret

0000000000010b78 <unlink>:
   10b78:	ff010113          	addi	sp,sp,-16
   10b7c:	00050593          	mv	a1,a0
   10b80:	00000713          	li	a4,0
   10b84:	00000693          	li	a3,0
   10b88:	00000613          	li	a2,0
   10b8c:	40200513          	li	a0,1026
   10b90:	00113423          	sd	ra,8(sp)
   10b94:	ce1ff0ef          	jal	ra,10874 <__internal_syscall>
   10b98:	00813083          	ld	ra,8(sp)
   10b9c:	0005051b          	sext.w	a0,a0
   10ba0:	01010113          	addi	sp,sp,16
   10ba4:	00008067          	ret

0000000000010ba8 <execve>:
   10ba8:	ff010113          	addi	sp,sp,-16
   10bac:	00113423          	sd	ra,8(sp)
   10bb0:	00000097          	auipc	ra,0x0
   10bb4:	298080e7          	jalr	664(ra) # 10e48 <__errno>
   10bb8:	00813083          	ld	ra,8(sp)
   10bbc:	00c00793          	li	a5,12
   10bc0:	00f52023          	sw	a5,0(a0)
   10bc4:	fff00513          	li	a0,-1
   10bc8:	01010113          	addi	sp,sp,16
   10bcc:	00008067          	ret

0000000000010bd0 <fork>:
   10bd0:	ff010113          	addi	sp,sp,-16
   10bd4:	00113423          	sd	ra,8(sp)
   10bd8:	270000ef          	jal	ra,10e48 <__errno>
   10bdc:	00813083          	ld	ra,8(sp)
   10be0:	00b00793          	li	a5,11
   10be4:	00f52023          	sw	a5,0(a0)
   10be8:	fff00513          	li	a0,-1
   10bec:	01010113          	addi	sp,sp,16
   10bf0:	00008067          	ret

0000000000010bf4 <getpid>:
   10bf4:	00100513          	li	a0,1
   10bf8:	00008067          	ret

0000000000010bfc <kill>:
   10bfc:	ff010113          	addi	sp,sp,-16
   10c00:	00113423          	sd	ra,8(sp)
   10c04:	244000ef          	jal	ra,10e48 <__errno>
   10c08:	00813083          	ld	ra,8(sp)
   10c0c:	01600793          	li	a5,22
   10c10:	00f52023          	sw	a5,0(a0)
   10c14:	fff00513          	li	a0,-1
   10c18:	01010113          	addi	sp,sp,16
   10c1c:	00008067          	ret

0000000000010c20 <wait>:
   10c20:	ff010113          	addi	sp,sp,-16
   10c24:	00113423          	sd	ra,8(sp)
   10c28:	00000097          	auipc	ra,0x0
   10c2c:	220080e7          	jalr	544(ra) # 10e48 <__errno>
   10c30:	00813083          	ld	ra,8(sp)
   10c34:	00a00793          	li	a5,10
   10c38:	00f52023          	sw	a5,0(a0)
   10c3c:	fff00513          	li	a0,-1
   10c40:	01010113          	addi	sp,sp,16
   10c44:	00008067          	ret

0000000000010c48 <isatty>:
   10c48:	f8010113          	addi	sp,sp,-128
   10c4c:	00810593          	addi	a1,sp,8
   10c50:	06113c23          	sd	ra,120(sp)
   10c54:	cfdff0ef          	jal	ra,10950 <fstat>
   10c58:	fff00793          	li	a5,-1
   10c5c:	00f50863          	beq	a0,a5,10c6c <isatty+0x24>
   10c60:	00c12503          	lw	a0,12(sp)
   10c64:	40d5551b          	sraiw	a0,a0,0xd
   10c68:	00157513          	andi	a0,a0,1
   10c6c:	07813083          	ld	ra,120(sp)
   10c70:	08010113          	addi	sp,sp,128
   10c74:	00008067          	ret

0000000000010c78 <gettimeofday>:
   10c78:	ff010113          	addi	sp,sp,-16
   10c7c:	00050593          	mv	a1,a0
   10c80:	00000713          	li	a4,0
   10c84:	00000693          	li	a3,0
   10c88:	00000613          	li	a2,0
   10c8c:	0a900513          	li	a0,169
   10c90:	00113423          	sd	ra,8(sp)
   10c94:	00000097          	auipc	ra,0x0
   10c98:	be0080e7          	jalr	-1056(ra) # 10874 <__internal_syscall>
   10c9c:	00813083          	ld	ra,8(sp)
   10ca0:	0005051b          	sext.w	a0,a0
   10ca4:	01010113          	addi	sp,sp,16
   10ca8:	00008067          	ret

0000000000010cac <times>:
   10cac:	fd010113          	addi	sp,sp,-48
   10cb0:	02813023          	sd	s0,32(sp)
   10cb4:	00050413          	mv	s0,a0
   10cb8:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10cbc:	00913c23          	sd	s1,24(sp)
   10cc0:	02113423          	sd	ra,40(sp)
   10cc4:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10cc8:	00079a63          	bnez	a5,10cdc <times+0x30>
   10ccc:	00000593          	li	a1,0
   10cd0:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10cd4:	00000097          	auipc	ra,0x0
   10cd8:	fa4080e7          	jalr	-92(ra) # 10c78 <gettimeofday>
   10cdc:	00000593          	li	a1,0
   10ce0:	00010513          	mv	a0,sp
   10ce4:	00000097          	auipc	ra,0x0
   10ce8:	f94080e7          	jalr	-108(ra) # 10c78 <gettimeofday>
   10cec:	0004b783          	ld	a5,0(s1)
   10cf0:	00013503          	ld	a0,0(sp)
   10cf4:	000f45b7          	lui	a1,0xf4
   10cf8:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10cfc:	40f50533          	sub	a0,a0,a5
   10d00:	154000ef          	jal	ra,10e54 <__muldi3>
   10d04:	0084b703          	ld	a4,8(s1)
   10d08:	00813783          	ld	a5,8(sp)
   10d0c:	00043823          	sd	zero,16(s0)
   10d10:	00043c23          	sd	zero,24(s0)
   10d14:	40e787b3          	sub	a5,a5,a4
   10d18:	00f50533          	add	a0,a0,a5
   10d1c:	00a43023          	sd	a0,0(s0)
   10d20:	00043423          	sd	zero,8(s0)
   10d24:	02813083          	ld	ra,40(sp)
   10d28:	02013403          	ld	s0,32(sp)
   10d2c:	01813483          	ld	s1,24(sp)
   10d30:	fff00513          	li	a0,-1
   10d34:	03010113          	addi	sp,sp,48
   10d38:	00008067          	ret

0000000000010d3c <ftime>:
   10d3c:	00051423          	sh	zero,8(a0)
   10d40:	00053023          	sd	zero,0(a0)
   10d44:	00000513          	li	a0,0
   10d48:	00008067          	ret

0000000000010d4c <utime>:
   10d4c:	fff00513          	li	a0,-1
   10d50:	00008067          	ret

0000000000010d54 <chown>:
   10d54:	fff00513          	li	a0,-1
   10d58:	00008067          	ret

0000000000010d5c <chmod>:
   10d5c:	fff00513          	li	a0,-1
   10d60:	00008067          	ret

0000000000010d64 <chdir>:
   10d64:	fff00513          	li	a0,-1
   10d68:	00008067          	ret

0000000000010d6c <getcwd>:
   10d6c:	00000513          	li	a0,0
   10d70:	00008067          	ret

0000000000010d74 <sysconf>:
   10d74:	00200793          	li	a5,2
   10d78:	00f50663          	beq	a0,a5,10d84 <sysconf+0x10>
   10d7c:	fff00513          	li	a0,-1
   10d80:	00008067          	ret
   10d84:	000f4537          	lui	a0,0xf4
   10d88:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10d8c:	00008067          	ret

0000000000010d90 <sbrk>:
   10d90:	fe010113          	addi	sp,sp,-32
   10d94:	00813823          	sd	s0,16(sp)
   10d98:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10d9c:	00913423          	sd	s1,8(sp)
   10da0:	00113c23          	sd	ra,24(sp)
   10da4:	00050493          	mv	s1,a0
   10da8:	04079063          	bnez	a5,10de8 <sbrk+0x58>
   10dac:	00000713          	li	a4,0
   10db0:	00000693          	li	a3,0
   10db4:	00000613          	li	a2,0
   10db8:	00000593          	li	a1,0
   10dbc:	0d600513          	li	a0,214
   10dc0:	ab5ff0ef          	jal	ra,10874 <__internal_syscall>
   10dc4:	fff00793          	li	a5,-1
   10dc8:	00f51e63          	bne	a0,a5,10de4 <sbrk+0x54>
   10dcc:	fff00513          	li	a0,-1
   10dd0:	01813083          	ld	ra,24(sp)
   10dd4:	01013403          	ld	s0,16(sp)
   10dd8:	00813483          	ld	s1,8(sp)
   10ddc:	02010113          	addi	sp,sp,32
   10de0:	00008067          	ret
   10de4:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10de8:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10dec:	00000713          	li	a4,0
   10df0:	00000693          	li	a3,0
   10df4:	00b485b3          	add	a1,s1,a1
   10df8:	00000613          	li	a2,0
   10dfc:	0d600513          	li	a0,214
   10e00:	a75ff0ef          	jal	ra,10874 <__internal_syscall>
   10e04:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e08:	00f484b3          	add	s1,s1,a5
   10e0c:	fc9510e3          	bne	a0,s1,10dcc <sbrk+0x3c>
   10e10:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e14:	00078513          	mv	a0,a5
   10e18:	fb9ff06f          	j	10dd0 <sbrk+0x40>

0000000000010e1c <_exit>:
   10e1c:	ff010113          	addi	sp,sp,-16
   10e20:	00050593          	mv	a1,a0
   10e24:	00000713          	li	a4,0
   10e28:	00000693          	li	a3,0
   10e2c:	00000613          	li	a2,0
   10e30:	05d00513          	li	a0,93
   10e34:	00113423          	sd	ra,8(sp)
   10e38:	00000097          	auipc	ra,0x0
   10e3c:	a3c080e7          	jalr	-1476(ra) # 10874 <__internal_syscall>
   10e40:	0000006f          	j	10e40 <_exit+0x24>
   10e44:	0000                	unimp
	...

0000000000010e48 <__errno>:
   10e48:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10e4c:	00008067          	ret
   10e50:	0000                	unimp
	...

0000000000010e54 <__muldi3>:
   10e54:	00050613          	mv	a2,a0
   10e58:	00000513          	li	a0,0
   10e5c:	0015f693          	andi	a3,a1,1
   10e60:	00068463          	beqz	a3,10e68 <__muldi3+0x14>
   10e64:	00c50533          	add	a0,a0,a2
   10e68:	0015d593          	srli	a1,a1,0x1
   10e6c:	00161613          	slli	a2,a2,0x1
   10e70:	fe0596e3          	bnez	a1,10e5c <__muldi3+0x8>
   10e74:	00008067          	ret
   10e78:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010e80 <.rodata>:
   10e80:	6b41                	lui	s6,0x10
   10e82:	7265                	lui	tp,0xffff9
   10e84:	616d                	addi	sp,sp,240
   10e86:	6e6e                	ld	t3,216(sp)
   10e88:	3428                	fld	fa0,104(s0)
   10e8a:	202c                	fld	fa1,64(s0)
   10e8c:	2931                	addiw	s2,s2,12
   10e8e:	3d20                	fld	fs0,120(a0)
   10e90:	0020                	addi	s0,sp,8
   10e92:	0000                	unimp
   10e94:	0000                	unimp
   10e96:	0000                	unimp
   10e98:	000a                	0xa

Disassembly of section .eh_frame:

0000000000010e9c <__EH_FRAME_BEGIN__>:
   10e9c:	0000                	unimp
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
  10:	0e54                	addi	a3,sp,788
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
  10:	0e54                	addi	a3,sp,788
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0e78                	addi	a4,sp,796
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
  9c:	5402                	lw	s0,32(sp)
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
