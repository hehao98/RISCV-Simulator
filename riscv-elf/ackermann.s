
ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	564000ef          	jal	ra,1062c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	44050513          	addi	a0,a0,1088 # 1050c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	3e4080e7          	jalr	996(ra) # 104b8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	4a8080e7          	jalr	1192(ra) # 10584 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	1d8000ef          	jal	ra,102c8 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	3dc30067          	jr	988(t1) # 104d0 <exit>

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
   10198:	f7850513          	addi	a0,a0,-136 # 10f78 <__EH_FRAME_BEGIN__>
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
   101dc:	f7850513          	addi	a0,a0,-136 # 10f78 <__EH_FRAME_BEGIN__>
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
   1030c:	f5878513          	addi	a0,a5,-168 # 10f58 <__muldi3+0x28>
   10310:	0dc000ef          	jal	ra,103ec <print_s>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	00078513          	mv	a0,a5
   1031c:	00000097          	auipc	ra,0x0
   10320:	0a4080e7          	jalr	164(ra) # 103c0 <print_d>
   10324:	000117b7          	lui	a5,0x11
   10328:	f6878513          	addi	a0,a5,-152 # 10f68 <__muldi3+0x38>
   1032c:	0c0000ef          	jal	ra,103ec <print_s>
   10330:	fe842783          	lw	a5,-24(s0)
   10334:	00078513          	mv	a0,a5
   10338:	00000097          	auipc	ra,0x0
   1033c:	088080e7          	jalr	136(ra) # 103c0 <print_d>
   10340:	000117b7          	lui	a5,0x11
   10344:	f7078513          	addi	a0,a5,-144 # 10f70 <__muldi3+0x40>
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
   1037c:	00400793          	li	a5,4
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

0000000000010464 <read_char>:
   10464:	ff010113          	addi	sp,sp,-16
   10468:	00813423          	sd	s0,8(sp)
   1046c:	01010413          	addi	s0,sp,16
   10470:	00400893          	li	a7,4
   10474:	00000073          	ecall
   10478:	00000013          	nop
   1047c:	00078513          	mv	a0,a5
   10480:	00813403          	ld	s0,8(sp)
   10484:	01010113          	addi	sp,sp,16
   10488:	00008067          	ret

000000000001048c <read_num>:
   1048c:	ff010113          	addi	sp,sp,-16
   10490:	00813423          	sd	s0,8(sp)
   10494:	01010413          	addi	s0,sp,16
   10498:	00500893          	li	a7,5
   1049c:	00000073          	ecall
   104a0:	00000013          	nop
   104a4:	00078513          	mv	a0,a5
   104a8:	00813403          	ld	s0,8(sp)
   104ac:	01010113          	addi	sp,sp,16
   104b0:	00008067          	ret
   104b4:	0000                	unimp
	...

00000000000104b8 <atexit>:
   104b8:	00050593          	mv	a1,a0
   104bc:	00000693          	li	a3,0
   104c0:	00000613          	li	a2,0
   104c4:	00000513          	li	a0,0
   104c8:	2400006f          	j	10708 <__register_exitproc>
   104cc:	0000                	unimp
	...

00000000000104d0 <exit>:
   104d0:	ff010113          	addi	sp,sp,-16
   104d4:	00000593          	li	a1,0
   104d8:	00813023          	sd	s0,0(sp)
   104dc:	00113423          	sd	ra,8(sp)
   104e0:	00050413          	mv	s0,a0
   104e4:	2b0000ef          	jal	ra,10794 <__call_exitprocs>
   104e8:	000117b7          	lui	a5,0x11
   104ec:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   104f0:	05853783          	ld	a5,88(a0)
   104f4:	00078463          	beqz	a5,104fc <exit+0x2c>
   104f8:	000780e7          	jalr	a5
   104fc:	00040513          	mv	a0,s0
   10500:	00001097          	auipc	ra,0x1
   10504:	9f8080e7          	jalr	-1544(ra) # 10ef8 <_exit>
   10508:	0000                	unimp
	...

000000000001050c <__libc_fini_array>:
   1050c:	fe010113          	addi	sp,sp,-32
   10510:	000117b7          	lui	a5,0x11
   10514:	00011737          	lui	a4,0x11
   10518:	00813823          	sd	s0,16(sp)
   1051c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10520:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10524:	40e40433          	sub	s0,s0,a4
   10528:	00913423          	sd	s1,8(sp)
   1052c:	01213023          	sd	s2,0(sp)
   10530:	00113c23          	sd	ra,24(sp)
   10534:	40345413          	srai	s0,s0,0x3
   10538:	00000493          	li	s1,0
   1053c:	01078913          	addi	s2,a5,16
   10540:	02941063          	bne	s0,s1,10560 <__libc_fini_array+0x54>
   10544:	01013403          	ld	s0,16(sp)
   10548:	01813083          	ld	ra,24(sp)
   1054c:	00813483          	ld	s1,8(sp)
   10550:	00013903          	ld	s2,0(sp)
   10554:	02010113          	addi	sp,sp,32
   10558:	00000317          	auipc	t1,0x0
   1055c:	ba430067          	jr	-1116(t1) # 100fc <_fini>
   10560:	ff800593          	li	a1,-8
   10564:	00048513          	mv	a0,s1
   10568:	1c9000ef          	jal	ra,10f30 <__muldi3>
   1056c:	00a90533          	add	a0,s2,a0
   10570:	ff853783          	ld	a5,-8(a0)
   10574:	00148493          	addi	s1,s1,1
   10578:	000780e7          	jalr	a5
   1057c:	fc5ff06f          	j	10540 <__libc_fini_array+0x34>
   10580:	0000                	unimp
	...

0000000000010584 <__libc_init_array>:
   10584:	fe010113          	addi	sp,sp,-32
   10588:	00813823          	sd	s0,16(sp)
   1058c:	00913423          	sd	s1,8(sp)
   10590:	00011437          	lui	s0,0x11
   10594:	000114b7          	lui	s1,0x11
   10598:	00048793          	mv	a5,s1
   1059c:	00040413          	mv	s0,s0
   105a0:	40f40433          	sub	s0,s0,a5
   105a4:	01213023          	sd	s2,0(sp)
   105a8:	00113c23          	sd	ra,24(sp)
   105ac:	40345413          	srai	s0,s0,0x3
   105b0:	00048493          	mv	s1,s1
   105b4:	00000913          	li	s2,0
   105b8:	04891463          	bne	s2,s0,10600 <__libc_init_array+0x7c>
   105bc:	000114b7          	lui	s1,0x11
   105c0:	00000097          	auipc	ra,0x0
   105c4:	b3c080e7          	jalr	-1220(ra) # 100fc <_fini>
   105c8:	00011437          	lui	s0,0x11
   105cc:	00048793          	mv	a5,s1
   105d0:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   105d4:	40f40433          	sub	s0,s0,a5
   105d8:	40345413          	srai	s0,s0,0x3
   105dc:	00048493          	mv	s1,s1
   105e0:	00000913          	li	s2,0
   105e4:	02891863          	bne	s2,s0,10614 <__libc_init_array+0x90>
   105e8:	01813083          	ld	ra,24(sp)
   105ec:	01013403          	ld	s0,16(sp)
   105f0:	00813483          	ld	s1,8(sp)
   105f4:	00013903          	ld	s2,0(sp)
   105f8:	02010113          	addi	sp,sp,32
   105fc:	00008067          	ret
   10600:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10604:	00190913          	addi	s2,s2,1
   10608:	00848493          	addi	s1,s1,8
   1060c:	000780e7          	jalr	a5
   10610:	fa9ff06f          	j	105b8 <__libc_init_array+0x34>
   10614:	0004b783          	ld	a5,0(s1)
   10618:	00190913          	addi	s2,s2,1
   1061c:	00848493          	addi	s1,s1,8
   10620:	000780e7          	jalr	a5
   10624:	fc1ff06f          	j	105e4 <__libc_init_array+0x60>
   10628:	0000                	unimp
	...

000000000001062c <memset>:
   1062c:	00f00813          	li	a6,15
   10630:	00050713          	mv	a4,a0
   10634:	02c87a63          	bleu	a2,a6,10668 <memset+0x3c>
   10638:	00f77793          	andi	a5,a4,15
   1063c:	0a079063          	bnez	a5,106dc <memset+0xb0>
   10640:	06059e63          	bnez	a1,106bc <memset+0x90>
   10644:	ff067693          	andi	a3,a2,-16
   10648:	00f67613          	andi	a2,a2,15
   1064c:	00e686b3          	add	a3,a3,a4
   10650:	00b73023          	sd	a1,0(a4)
   10654:	00b73423          	sd	a1,8(a4)
   10658:	01070713          	addi	a4,a4,16
   1065c:	fed76ae3          	bltu	a4,a3,10650 <memset+0x24>
   10660:	00061463          	bnez	a2,10668 <memset+0x3c>
   10664:	00008067          	ret
   10668:	40c806b3          	sub	a3,a6,a2
   1066c:	00269693          	slli	a3,a3,0x2
   10670:	00000297          	auipc	t0,0x0
   10674:	005686b3          	add	a3,a3,t0
   10678:	00c68067          	jr	12(a3)
   1067c:	00b70723          	sb	a1,14(a4)
   10680:	00b706a3          	sb	a1,13(a4)
   10684:	00b70623          	sb	a1,12(a4)
   10688:	00b705a3          	sb	a1,11(a4)
   1068c:	00b70523          	sb	a1,10(a4)
   10690:	00b704a3          	sb	a1,9(a4)
   10694:	00b70423          	sb	a1,8(a4)
   10698:	00b703a3          	sb	a1,7(a4)
   1069c:	00b70323          	sb	a1,6(a4)
   106a0:	00b702a3          	sb	a1,5(a4)
   106a4:	00b70223          	sb	a1,4(a4)
   106a8:	00b701a3          	sb	a1,3(a4)
   106ac:	00b70123          	sb	a1,2(a4)
   106b0:	00b700a3          	sb	a1,1(a4)
   106b4:	00b70023          	sb	a1,0(a4)
   106b8:	00008067          	ret
   106bc:	0ff5f593          	andi	a1,a1,255
   106c0:	00859693          	slli	a3,a1,0x8
   106c4:	00d5e5b3          	or	a1,a1,a3
   106c8:	01059693          	slli	a3,a1,0x10
   106cc:	00d5e5b3          	or	a1,a1,a3
   106d0:	02059693          	slli	a3,a1,0x20
   106d4:	00d5e5b3          	or	a1,a1,a3
   106d8:	f6dff06f          	j	10644 <memset+0x18>
   106dc:	00279693          	slli	a3,a5,0x2
   106e0:	00000297          	auipc	t0,0x0
   106e4:	005686b3          	add	a3,a3,t0
   106e8:	00008293          	mv	t0,ra
   106ec:	f98680e7          	jalr	-104(a3)
   106f0:	00028093          	mv	ra,t0
   106f4:	ff078793          	addi	a5,a5,-16
   106f8:	40f70733          	sub	a4,a4,a5
   106fc:	00f60633          	add	a2,a2,a5
   10700:	f6c874e3          	bleu	a2,a6,10668 <memset+0x3c>
   10704:	f3dff06f          	j	10640 <memset+0x14>

0000000000010708 <__register_exitproc>:
   10708:	000117b7          	lui	a5,0x11
   1070c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10710:	00050313          	mv	t1,a0
   10714:	1f873783          	ld	a5,504(a4)
   10718:	00079663          	bnez	a5,10724 <__register_exitproc+0x1c>
   1071c:	20070793          	addi	a5,a4,512
   10720:	1ef73c23          	sd	a5,504(a4)
   10724:	0087a703          	lw	a4,8(a5)
   10728:	01f00813          	li	a6,31
   1072c:	fff00513          	li	a0,-1
   10730:	04e84e63          	blt	a6,a4,1078c <__register_exitproc+0x84>
   10734:	02030e63          	beqz	t1,10770 <__register_exitproc+0x68>
   10738:	00371813          	slli	a6,a4,0x3
   1073c:	01078833          	add	a6,a5,a6
   10740:	10c83823          	sd	a2,272(a6)
   10744:	3107a883          	lw	a7,784(a5)
   10748:	00100613          	li	a2,1
   1074c:	00e6163b          	sllw	a2,a2,a4
   10750:	00c8e8b3          	or	a7,a7,a2
   10754:	3117a823          	sw	a7,784(a5)
   10758:	20d83823          	sd	a3,528(a6)
   1075c:	00200693          	li	a3,2
   10760:	00d31863          	bne	t1,a3,10770 <__register_exitproc+0x68>
   10764:	3147a683          	lw	a3,788(a5)
   10768:	00c6e633          	or	a2,a3,a2
   1076c:	30c7aa23          	sw	a2,788(a5)
   10770:	0017069b          	addiw	a3,a4,1
   10774:	00270713          	addi	a4,a4,2
   10778:	00371713          	slli	a4,a4,0x3
   1077c:	00d7a423          	sw	a3,8(a5)
   10780:	00e787b3          	add	a5,a5,a4
   10784:	00b7b023          	sd	a1,0(a5)
   10788:	00000513          	li	a0,0
   1078c:	00008067          	ret
   10790:	0000                	unimp
	...

0000000000010794 <__call_exitprocs>:
   10794:	fb010113          	addi	sp,sp,-80
   10798:	000117b7          	lui	a5,0x11
   1079c:	03313423          	sd	s3,40(sp)
   107a0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   107a4:	03413023          	sd	s4,32(sp)
   107a8:	01513c23          	sd	s5,24(sp)
   107ac:	01613823          	sd	s6,16(sp)
   107b0:	04113423          	sd	ra,72(sp)
   107b4:	04813023          	sd	s0,64(sp)
   107b8:	02913c23          	sd	s1,56(sp)
   107bc:	03213823          	sd	s2,48(sp)
   107c0:	01713423          	sd	s7,8(sp)
   107c4:	00050a93          	mv	s5,a0
   107c8:	00058a13          	mv	s4,a1
   107cc:	00100b13          	li	s6,1
   107d0:	1f89b403          	ld	s0,504(s3)
   107d4:	00040c63          	beqz	s0,107ec <__call_exitprocs+0x58>
   107d8:	00842483          	lw	s1,8(s0)
   107dc:	fff4849b          	addiw	s1,s1,-1
   107e0:	00349913          	slli	s2,s1,0x3
   107e4:	01240933          	add	s2,s0,s2
   107e8:	0204d863          	bgez	s1,10818 <__call_exitprocs+0x84>
   107ec:	04813083          	ld	ra,72(sp)
   107f0:	04013403          	ld	s0,64(sp)
   107f4:	03813483          	ld	s1,56(sp)
   107f8:	03013903          	ld	s2,48(sp)
   107fc:	02813983          	ld	s3,40(sp)
   10800:	02013a03          	ld	s4,32(sp)
   10804:	01813a83          	ld	s5,24(sp)
   10808:	01013b03          	ld	s6,16(sp)
   1080c:	00813b83          	ld	s7,8(sp)
   10810:	05010113          	addi	sp,sp,80
   10814:	00008067          	ret
   10818:	000a0c63          	beqz	s4,10830 <__call_exitprocs+0x9c>
   1081c:	21093783          	ld	a5,528(s2)
   10820:	01478863          	beq	a5,s4,10830 <__call_exitprocs+0x9c>
   10824:	fff4849b          	addiw	s1,s1,-1
   10828:	ff890913          	addi	s2,s2,-8
   1082c:	fbdff06f          	j	107e8 <__call_exitprocs+0x54>
   10830:	00842783          	lw	a5,8(s0)
   10834:	01093683          	ld	a3,16(s2)
   10838:	fff7879b          	addiw	a5,a5,-1
   1083c:	02979e63          	bne	a5,s1,10878 <__call_exitprocs+0xe4>
   10840:	00942423          	sw	s1,8(s0)
   10844:	fe0680e3          	beqz	a3,10824 <__call_exitprocs+0x90>
   10848:	31042703          	lw	a4,784(s0)
   1084c:	009b163b          	sllw	a2,s6,s1
   10850:	00842b83          	lw	s7,8(s0)
   10854:	00c77733          	and	a4,a4,a2
   10858:	0007071b          	sext.w	a4,a4
   1085c:	02071263          	bnez	a4,10880 <__call_exitprocs+0xec>
   10860:	000680e7          	jalr	a3
   10864:	00842703          	lw	a4,8(s0)
   10868:	1f89b783          	ld	a5,504(s3)
   1086c:	f77712e3          	bne	a4,s7,107d0 <__call_exitprocs+0x3c>
   10870:	faf40ae3          	beq	s0,a5,10824 <__call_exitprocs+0x90>
   10874:	f5dff06f          	j	107d0 <__call_exitprocs+0x3c>
   10878:	00093823          	sd	zero,16(s2)
   1087c:	fc9ff06f          	j	10844 <__call_exitprocs+0xb0>
   10880:	31442783          	lw	a5,788(s0)
   10884:	11093583          	ld	a1,272(s2)
   10888:	00c7f7b3          	and	a5,a5,a2
   1088c:	0007879b          	sext.w	a5,a5
   10890:	00079863          	bnez	a5,108a0 <__call_exitprocs+0x10c>
   10894:	000a8513          	mv	a0,s5
   10898:	000680e7          	jalr	a3
   1089c:	fc9ff06f          	j	10864 <__call_exitprocs+0xd0>
   108a0:	00058513          	mv	a0,a1
   108a4:	000680e7          	jalr	a3
   108a8:	fbdff06f          	j	10864 <__call_exitprocs+0xd0>
   108ac:	0000                	unimp
	...

00000000000108b0 <conv_stat>:
   108b0:	0005b783          	ld	a5,0(a1)
   108b4:	00f51023          	sh	a5,0(a0)
   108b8:	0085b783          	ld	a5,8(a1)
   108bc:	00f51123          	sh	a5,2(a0)
   108c0:	0105a783          	lw	a5,16(a1)
   108c4:	00f52223          	sw	a5,4(a0)
   108c8:	0145a783          	lw	a5,20(a1)
   108cc:	00f51423          	sh	a5,8(a0)
   108d0:	0185a783          	lw	a5,24(a1)
   108d4:	00f51523          	sh	a5,10(a0)
   108d8:	01c5a783          	lw	a5,28(a1)
   108dc:	00f51623          	sh	a5,12(a0)
   108e0:	0205b783          	ld	a5,32(a1)
   108e4:	00f51723          	sh	a5,14(a0)
   108e8:	0305b783          	ld	a5,48(a1)
   108ec:	00f53823          	sd	a5,16(a0)
   108f0:	0405b783          	ld	a5,64(a1)
   108f4:	04f53823          	sd	a5,80(a0)
   108f8:	0385a783          	lw	a5,56(a1)
   108fc:	04f53423          	sd	a5,72(a0)
   10900:	0485b783          	ld	a5,72(a1)
   10904:	00f53c23          	sd	a5,24(a0)
   10908:	0585b783          	ld	a5,88(a1)
   1090c:	02f53423          	sd	a5,40(a0)
   10910:	0685b783          	ld	a5,104(a1)
   10914:	02f53c23          	sd	a5,56(a0)
   10918:	00008067          	ret

000000000001091c <__syscall_error>:
   1091c:	ff010113          	addi	sp,sp,-16
   10920:	00813023          	sd	s0,0(sp)
   10924:	00113423          	sd	ra,8(sp)
   10928:	00050413          	mv	s0,a0
   1092c:	00000097          	auipc	ra,0x0
   10930:	5f8080e7          	jalr	1528(ra) # 10f24 <__errno>
   10934:	408007bb          	negw	a5,s0
   10938:	00813083          	ld	ra,8(sp)
   1093c:	00013403          	ld	s0,0(sp)
   10940:	00f52023          	sw	a5,0(a0)
   10944:	fff00513          	li	a0,-1
   10948:	01010113          	addi	sp,sp,16
   1094c:	00008067          	ret

0000000000010950 <__internal_syscall>:
   10950:	00050893          	mv	a7,a0
   10954:	00058513          	mv	a0,a1
   10958:	00060593          	mv	a1,a2
   1095c:	00068613          	mv	a2,a3
   10960:	00070693          	mv	a3,a4
   10964:	00000073          	ecall
   10968:	00055663          	bgez	a0,10974 <__internal_syscall+0x24>
   1096c:	00000317          	auipc	t1,0x0
   10970:	fb030067          	jr	-80(t1) # 1091c <__syscall_error>
   10974:	00008067          	ret

0000000000010978 <open>:
   10978:	ff010113          	addi	sp,sp,-16
   1097c:	00060693          	mv	a3,a2
   10980:	00000713          	li	a4,0
   10984:	00058613          	mv	a2,a1
   10988:	00050593          	mv	a1,a0
   1098c:	40000513          	li	a0,1024
   10990:	00113423          	sd	ra,8(sp)
   10994:	00000097          	auipc	ra,0x0
   10998:	fbc080e7          	jalr	-68(ra) # 10950 <__internal_syscall>
   1099c:	00813083          	ld	ra,8(sp)
   109a0:	0005051b          	sext.w	a0,a0
   109a4:	01010113          	addi	sp,sp,16
   109a8:	00008067          	ret

00000000000109ac <openat>:
   109ac:	ff010113          	addi	sp,sp,-16
   109b0:	00068713          	mv	a4,a3
   109b4:	00060693          	mv	a3,a2
   109b8:	00058613          	mv	a2,a1
   109bc:	00050593          	mv	a1,a0
   109c0:	03800513          	li	a0,56
   109c4:	00113423          	sd	ra,8(sp)
   109c8:	f89ff0ef          	jal	ra,10950 <__internal_syscall>
   109cc:	00813083          	ld	ra,8(sp)
   109d0:	0005051b          	sext.w	a0,a0
   109d4:	01010113          	addi	sp,sp,16
   109d8:	00008067          	ret

00000000000109dc <lseek>:
   109dc:	00060693          	mv	a3,a2
   109e0:	00000713          	li	a4,0
   109e4:	00058613          	mv	a2,a1
   109e8:	00050593          	mv	a1,a0
   109ec:	03e00513          	li	a0,62
   109f0:	00000317          	auipc	t1,0x0
   109f4:	f6030067          	jr	-160(t1) # 10950 <__internal_syscall>

00000000000109f8 <read>:
   109f8:	00060693          	mv	a3,a2
   109fc:	00000713          	li	a4,0
   10a00:	00058613          	mv	a2,a1
   10a04:	00050593          	mv	a1,a0
   10a08:	03f00513          	li	a0,63
   10a0c:	f45ff06f          	j	10950 <__internal_syscall>

0000000000010a10 <write>:
   10a10:	00060693          	mv	a3,a2
   10a14:	00000713          	li	a4,0
   10a18:	00058613          	mv	a2,a1
   10a1c:	00050593          	mv	a1,a0
   10a20:	04000513          	li	a0,64
   10a24:	00000317          	auipc	t1,0x0
   10a28:	f2c30067          	jr	-212(t1) # 10950 <__internal_syscall>

0000000000010a2c <fstat>:
   10a2c:	f6010113          	addi	sp,sp,-160
   10a30:	08913423          	sd	s1,136(sp)
   10a34:	00010613          	mv	a2,sp
   10a38:	00058493          	mv	s1,a1
   10a3c:	00000713          	li	a4,0
   10a40:	00050593          	mv	a1,a0
   10a44:	00000693          	li	a3,0
   10a48:	05000513          	li	a0,80
   10a4c:	08113c23          	sd	ra,152(sp)
   10a50:	08813823          	sd	s0,144(sp)
   10a54:	efdff0ef          	jal	ra,10950 <__internal_syscall>
   10a58:	00050413          	mv	s0,a0
   10a5c:	00010593          	mv	a1,sp
   10a60:	00048513          	mv	a0,s1
   10a64:	e4dff0ef          	jal	ra,108b0 <conv_stat>
   10a68:	0004051b          	sext.w	a0,s0
   10a6c:	09813083          	ld	ra,152(sp)
   10a70:	09013403          	ld	s0,144(sp)
   10a74:	08813483          	ld	s1,136(sp)
   10a78:	0a010113          	addi	sp,sp,160
   10a7c:	00008067          	ret

0000000000010a80 <stat>:
   10a80:	f6010113          	addi	sp,sp,-160
   10a84:	08913423          	sd	s1,136(sp)
   10a88:	00010613          	mv	a2,sp
   10a8c:	00058493          	mv	s1,a1
   10a90:	00000713          	li	a4,0
   10a94:	00050593          	mv	a1,a0
   10a98:	00000693          	li	a3,0
   10a9c:	40e00513          	li	a0,1038
   10aa0:	08113c23          	sd	ra,152(sp)
   10aa4:	08813823          	sd	s0,144(sp)
   10aa8:	00000097          	auipc	ra,0x0
   10aac:	ea8080e7          	jalr	-344(ra) # 10950 <__internal_syscall>
   10ab0:	00050413          	mv	s0,a0
   10ab4:	00010593          	mv	a1,sp
   10ab8:	00048513          	mv	a0,s1
   10abc:	00000097          	auipc	ra,0x0
   10ac0:	df4080e7          	jalr	-524(ra) # 108b0 <conv_stat>
   10ac4:	0004051b          	sext.w	a0,s0
   10ac8:	09813083          	ld	ra,152(sp)
   10acc:	09013403          	ld	s0,144(sp)
   10ad0:	08813483          	ld	s1,136(sp)
   10ad4:	0a010113          	addi	sp,sp,160
   10ad8:	00008067          	ret

0000000000010adc <lstat>:
   10adc:	f6010113          	addi	sp,sp,-160
   10ae0:	08913423          	sd	s1,136(sp)
   10ae4:	00010613          	mv	a2,sp
   10ae8:	00058493          	mv	s1,a1
   10aec:	00000713          	li	a4,0
   10af0:	00050593          	mv	a1,a0
   10af4:	00000693          	li	a3,0
   10af8:	40f00513          	li	a0,1039
   10afc:	08113c23          	sd	ra,152(sp)
   10b00:	08813823          	sd	s0,144(sp)
   10b04:	e4dff0ef          	jal	ra,10950 <__internal_syscall>
   10b08:	00050413          	mv	s0,a0
   10b0c:	00010593          	mv	a1,sp
   10b10:	00048513          	mv	a0,s1
   10b14:	d9dff0ef          	jal	ra,108b0 <conv_stat>
   10b18:	0004051b          	sext.w	a0,s0
   10b1c:	09813083          	ld	ra,152(sp)
   10b20:	09013403          	ld	s0,144(sp)
   10b24:	08813483          	ld	s1,136(sp)
   10b28:	0a010113          	addi	sp,sp,160
   10b2c:	00008067          	ret

0000000000010b30 <fstatat>:
   10b30:	f6010113          	addi	sp,sp,-160
   10b34:	08913423          	sd	s1,136(sp)
   10b38:	00068713          	mv	a4,a3
   10b3c:	00060493          	mv	s1,a2
   10b40:	00010693          	mv	a3,sp
   10b44:	00058613          	mv	a2,a1
   10b48:	00050593          	mv	a1,a0
   10b4c:	04f00513          	li	a0,79
   10b50:	08113c23          	sd	ra,152(sp)
   10b54:	08813823          	sd	s0,144(sp)
   10b58:	00000097          	auipc	ra,0x0
   10b5c:	df8080e7          	jalr	-520(ra) # 10950 <__internal_syscall>
   10b60:	00050413          	mv	s0,a0
   10b64:	00010593          	mv	a1,sp
   10b68:	00048513          	mv	a0,s1
   10b6c:	00000097          	auipc	ra,0x0
   10b70:	d44080e7          	jalr	-700(ra) # 108b0 <conv_stat>
   10b74:	0004051b          	sext.w	a0,s0
   10b78:	09813083          	ld	ra,152(sp)
   10b7c:	09013403          	ld	s0,144(sp)
   10b80:	08813483          	ld	s1,136(sp)
   10b84:	0a010113          	addi	sp,sp,160
   10b88:	00008067          	ret

0000000000010b8c <access>:
   10b8c:	ff010113          	addi	sp,sp,-16
   10b90:	00058613          	mv	a2,a1
   10b94:	00000713          	li	a4,0
   10b98:	00050593          	mv	a1,a0
   10b9c:	00000693          	li	a3,0
   10ba0:	40900513          	li	a0,1033
   10ba4:	00113423          	sd	ra,8(sp)
   10ba8:	da9ff0ef          	jal	ra,10950 <__internal_syscall>
   10bac:	00813083          	ld	ra,8(sp)
   10bb0:	0005051b          	sext.w	a0,a0
   10bb4:	01010113          	addi	sp,sp,16
   10bb8:	00008067          	ret

0000000000010bbc <faccessat>:
   10bbc:	ff010113          	addi	sp,sp,-16
   10bc0:	00068713          	mv	a4,a3
   10bc4:	00060693          	mv	a3,a2
   10bc8:	00058613          	mv	a2,a1
   10bcc:	00050593          	mv	a1,a0
   10bd0:	03000513          	li	a0,48
   10bd4:	00113423          	sd	ra,8(sp)
   10bd8:	00000097          	auipc	ra,0x0
   10bdc:	d78080e7          	jalr	-648(ra) # 10950 <__internal_syscall>
   10be0:	00813083          	ld	ra,8(sp)
   10be4:	0005051b          	sext.w	a0,a0
   10be8:	01010113          	addi	sp,sp,16
   10bec:	00008067          	ret

0000000000010bf0 <close>:
   10bf0:	ff010113          	addi	sp,sp,-16
   10bf4:	00050593          	mv	a1,a0
   10bf8:	00000713          	li	a4,0
   10bfc:	00000693          	li	a3,0
   10c00:	00000613          	li	a2,0
   10c04:	03900513          	li	a0,57
   10c08:	00113423          	sd	ra,8(sp)
   10c0c:	d45ff0ef          	jal	ra,10950 <__internal_syscall>
   10c10:	00813083          	ld	ra,8(sp)
   10c14:	0005051b          	sext.w	a0,a0
   10c18:	01010113          	addi	sp,sp,16
   10c1c:	00008067          	ret

0000000000010c20 <link>:
   10c20:	ff010113          	addi	sp,sp,-16
   10c24:	00058613          	mv	a2,a1
   10c28:	00000713          	li	a4,0
   10c2c:	00050593          	mv	a1,a0
   10c30:	00000693          	li	a3,0
   10c34:	40100513          	li	a0,1025
   10c38:	00113423          	sd	ra,8(sp)
   10c3c:	00000097          	auipc	ra,0x0
   10c40:	d14080e7          	jalr	-748(ra) # 10950 <__internal_syscall>
   10c44:	00813083          	ld	ra,8(sp)
   10c48:	0005051b          	sext.w	a0,a0
   10c4c:	01010113          	addi	sp,sp,16
   10c50:	00008067          	ret

0000000000010c54 <unlink>:
   10c54:	ff010113          	addi	sp,sp,-16
   10c58:	00050593          	mv	a1,a0
   10c5c:	00000713          	li	a4,0
   10c60:	00000693          	li	a3,0
   10c64:	00000613          	li	a2,0
   10c68:	40200513          	li	a0,1026
   10c6c:	00113423          	sd	ra,8(sp)
   10c70:	ce1ff0ef          	jal	ra,10950 <__internal_syscall>
   10c74:	00813083          	ld	ra,8(sp)
   10c78:	0005051b          	sext.w	a0,a0
   10c7c:	01010113          	addi	sp,sp,16
   10c80:	00008067          	ret

0000000000010c84 <execve>:
   10c84:	ff010113          	addi	sp,sp,-16
   10c88:	00113423          	sd	ra,8(sp)
   10c8c:	00000097          	auipc	ra,0x0
   10c90:	298080e7          	jalr	664(ra) # 10f24 <__errno>
   10c94:	00813083          	ld	ra,8(sp)
   10c98:	00c00793          	li	a5,12
   10c9c:	00f52023          	sw	a5,0(a0)
   10ca0:	fff00513          	li	a0,-1
   10ca4:	01010113          	addi	sp,sp,16
   10ca8:	00008067          	ret

0000000000010cac <fork>:
   10cac:	ff010113          	addi	sp,sp,-16
   10cb0:	00113423          	sd	ra,8(sp)
   10cb4:	270000ef          	jal	ra,10f24 <__errno>
   10cb8:	00813083          	ld	ra,8(sp)
   10cbc:	00b00793          	li	a5,11
   10cc0:	00f52023          	sw	a5,0(a0)
   10cc4:	fff00513          	li	a0,-1
   10cc8:	01010113          	addi	sp,sp,16
   10ccc:	00008067          	ret

0000000000010cd0 <getpid>:
   10cd0:	00100513          	li	a0,1
   10cd4:	00008067          	ret

0000000000010cd8 <kill>:
   10cd8:	ff010113          	addi	sp,sp,-16
   10cdc:	00113423          	sd	ra,8(sp)
   10ce0:	244000ef          	jal	ra,10f24 <__errno>
   10ce4:	00813083          	ld	ra,8(sp)
   10ce8:	01600793          	li	a5,22
   10cec:	00f52023          	sw	a5,0(a0)
   10cf0:	fff00513          	li	a0,-1
   10cf4:	01010113          	addi	sp,sp,16
   10cf8:	00008067          	ret

0000000000010cfc <wait>:
   10cfc:	ff010113          	addi	sp,sp,-16
   10d00:	00113423          	sd	ra,8(sp)
   10d04:	00000097          	auipc	ra,0x0
   10d08:	220080e7          	jalr	544(ra) # 10f24 <__errno>
   10d0c:	00813083          	ld	ra,8(sp)
   10d10:	00a00793          	li	a5,10
   10d14:	00f52023          	sw	a5,0(a0)
   10d18:	fff00513          	li	a0,-1
   10d1c:	01010113          	addi	sp,sp,16
   10d20:	00008067          	ret

0000000000010d24 <isatty>:
   10d24:	f8010113          	addi	sp,sp,-128
   10d28:	00810593          	addi	a1,sp,8
   10d2c:	06113c23          	sd	ra,120(sp)
   10d30:	cfdff0ef          	jal	ra,10a2c <fstat>
   10d34:	fff00793          	li	a5,-1
   10d38:	00f50863          	beq	a0,a5,10d48 <isatty+0x24>
   10d3c:	00c12503          	lw	a0,12(sp)
   10d40:	40d5551b          	sraiw	a0,a0,0xd
   10d44:	00157513          	andi	a0,a0,1
   10d48:	07813083          	ld	ra,120(sp)
   10d4c:	08010113          	addi	sp,sp,128
   10d50:	00008067          	ret

0000000000010d54 <gettimeofday>:
   10d54:	ff010113          	addi	sp,sp,-16
   10d58:	00050593          	mv	a1,a0
   10d5c:	00000713          	li	a4,0
   10d60:	00000693          	li	a3,0
   10d64:	00000613          	li	a2,0
   10d68:	0a900513          	li	a0,169
   10d6c:	00113423          	sd	ra,8(sp)
   10d70:	00000097          	auipc	ra,0x0
   10d74:	be0080e7          	jalr	-1056(ra) # 10950 <__internal_syscall>
   10d78:	00813083          	ld	ra,8(sp)
   10d7c:	0005051b          	sext.w	a0,a0
   10d80:	01010113          	addi	sp,sp,16
   10d84:	00008067          	ret

0000000000010d88 <times>:
   10d88:	fd010113          	addi	sp,sp,-48
   10d8c:	02813023          	sd	s0,32(sp)
   10d90:	00050413          	mv	s0,a0
   10d94:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10d98:	00913c23          	sd	s1,24(sp)
   10d9c:	02113423          	sd	ra,40(sp)
   10da0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10da4:	00079a63          	bnez	a5,10db8 <times+0x30>
   10da8:	00000593          	li	a1,0
   10dac:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10db0:	00000097          	auipc	ra,0x0
   10db4:	fa4080e7          	jalr	-92(ra) # 10d54 <gettimeofday>
   10db8:	00000593          	li	a1,0
   10dbc:	00010513          	mv	a0,sp
   10dc0:	00000097          	auipc	ra,0x0
   10dc4:	f94080e7          	jalr	-108(ra) # 10d54 <gettimeofday>
   10dc8:	0004b783          	ld	a5,0(s1)
   10dcc:	00013503          	ld	a0,0(sp)
   10dd0:	000f45b7          	lui	a1,0xf4
   10dd4:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10dd8:	40f50533          	sub	a0,a0,a5
   10ddc:	154000ef          	jal	ra,10f30 <__muldi3>
   10de0:	0084b703          	ld	a4,8(s1)
   10de4:	00813783          	ld	a5,8(sp)
   10de8:	00043823          	sd	zero,16(s0)
   10dec:	00043c23          	sd	zero,24(s0)
   10df0:	40e787b3          	sub	a5,a5,a4
   10df4:	00f50533          	add	a0,a0,a5
   10df8:	00a43023          	sd	a0,0(s0)
   10dfc:	00043423          	sd	zero,8(s0)
   10e00:	02813083          	ld	ra,40(sp)
   10e04:	02013403          	ld	s0,32(sp)
   10e08:	01813483          	ld	s1,24(sp)
   10e0c:	fff00513          	li	a0,-1
   10e10:	03010113          	addi	sp,sp,48
   10e14:	00008067          	ret

0000000000010e18 <ftime>:
   10e18:	00051423          	sh	zero,8(a0)
   10e1c:	00053023          	sd	zero,0(a0)
   10e20:	00000513          	li	a0,0
   10e24:	00008067          	ret

0000000000010e28 <utime>:
   10e28:	fff00513          	li	a0,-1
   10e2c:	00008067          	ret

0000000000010e30 <chown>:
   10e30:	fff00513          	li	a0,-1
   10e34:	00008067          	ret

0000000000010e38 <chmod>:
   10e38:	fff00513          	li	a0,-1
   10e3c:	00008067          	ret

0000000000010e40 <chdir>:
   10e40:	fff00513          	li	a0,-1
   10e44:	00008067          	ret

0000000000010e48 <getcwd>:
   10e48:	00000513          	li	a0,0
   10e4c:	00008067          	ret

0000000000010e50 <sysconf>:
   10e50:	00200793          	li	a5,2
   10e54:	00f50663          	beq	a0,a5,10e60 <sysconf+0x10>
   10e58:	fff00513          	li	a0,-1
   10e5c:	00008067          	ret
   10e60:	000f4537          	lui	a0,0xf4
   10e64:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10e68:	00008067          	ret

0000000000010e6c <sbrk>:
   10e6c:	fe010113          	addi	sp,sp,-32
   10e70:	00813823          	sd	s0,16(sp)
   10e74:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e78:	00913423          	sd	s1,8(sp)
   10e7c:	00113c23          	sd	ra,24(sp)
   10e80:	00050493          	mv	s1,a0
   10e84:	04079063          	bnez	a5,10ec4 <sbrk+0x58>
   10e88:	00000713          	li	a4,0
   10e8c:	00000693          	li	a3,0
   10e90:	00000613          	li	a2,0
   10e94:	00000593          	li	a1,0
   10e98:	0d600513          	li	a0,214
   10e9c:	ab5ff0ef          	jal	ra,10950 <__internal_syscall>
   10ea0:	fff00793          	li	a5,-1
   10ea4:	00f51e63          	bne	a0,a5,10ec0 <sbrk+0x54>
   10ea8:	fff00513          	li	a0,-1
   10eac:	01813083          	ld	ra,24(sp)
   10eb0:	01013403          	ld	s0,16(sp)
   10eb4:	00813483          	ld	s1,8(sp)
   10eb8:	02010113          	addi	sp,sp,32
   10ebc:	00008067          	ret
   10ec0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ec4:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ec8:	00000713          	li	a4,0
   10ecc:	00000693          	li	a3,0
   10ed0:	00b485b3          	add	a1,s1,a1
   10ed4:	00000613          	li	a2,0
   10ed8:	0d600513          	li	a0,214
   10edc:	a75ff0ef          	jal	ra,10950 <__internal_syscall>
   10ee0:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10ee4:	00f484b3          	add	s1,s1,a5
   10ee8:	fc9510e3          	bne	a0,s1,10ea8 <sbrk+0x3c>
   10eec:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ef0:	00078513          	mv	a0,a5
   10ef4:	fb9ff06f          	j	10eac <sbrk+0x40>

0000000000010ef8 <_exit>:
   10ef8:	ff010113          	addi	sp,sp,-16
   10efc:	00050593          	mv	a1,a0
   10f00:	00000713          	li	a4,0
   10f04:	00000693          	li	a3,0
   10f08:	00000613          	li	a2,0
   10f0c:	05d00513          	li	a0,93
   10f10:	00113423          	sd	ra,8(sp)
   10f14:	00000097          	auipc	ra,0x0
   10f18:	a3c080e7          	jalr	-1476(ra) # 10950 <__internal_syscall>
   10f1c:	0000006f          	j	10f1c <_exit+0x24>
   10f20:	0000                	unimp
	...

0000000000010f24 <__errno>:
   10f24:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10f28:	00008067          	ret
   10f2c:	0000                	unimp
	...

0000000000010f30 <__muldi3>:
   10f30:	00050613          	mv	a2,a0
   10f34:	00000513          	li	a0,0
   10f38:	0015f693          	andi	a3,a1,1
   10f3c:	00068463          	beqz	a3,10f44 <__muldi3+0x14>
   10f40:	00c50533          	add	a0,a0,a2
   10f44:	0015d593          	srli	a1,a1,0x1
   10f48:	00161613          	slli	a2,a2,0x1
   10f4c:	fe0596e3          	bnez	a1,10f38 <__muldi3+0x8>
   10f50:	00008067          	ret
   10f54:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010f58 <.rodata>:
   10f58:	6341                	lui	t1,0x10
   10f5a:	6d72656b          	0x6d72656b
   10f5e:	6e61                	lui	t3,0x18
   10f60:	286e                	fld	fa6,216(sp)
   10f62:	0000                	unimp
   10f64:	0000                	unimp
   10f66:	0000                	unimp
   10f68:	002c                	addi	a1,sp,8
   10f6a:	0000                	unimp
   10f6c:	0000                	unimp
   10f6e:	0000                	unimp
   10f70:	2029                	0x2029
   10f72:	203d                	0x203d
	...

Disassembly of section .eh_frame:

0000000000010f78 <__EH_FRAME_BEGIN__>:
   10f78:	0000                	unimp
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
  10:	0f30                	addi	a2,sp,920
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
  10:	0f30                	addi	a2,sp,920
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0f54                	addi	a3,sp,916
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
  9c:	3002                	fld	ft0,32(sp)
  9e:	0000010f          	0x10f
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
