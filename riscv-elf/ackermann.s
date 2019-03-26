
ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	574000ef          	jal	ra,1063c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	45050513          	addi	a0,a0,1104 # 1051c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	3f4080e7          	jalr	1012(ra) # 104c8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	4b8080e7          	jalr	1208(ra) # 10594 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	1d8000ef          	jal	ra,102c8 <main>
   100f4:	00000317          	auipc	t1,0x0
   100f8:	3ec30067          	jr	1004(t1) # 104e0 <exit>

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
   10198:	f8850513          	addi	a0,a0,-120 # 10f88 <__EH_FRAME_BEGIN__>
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
   101dc:	f8850513          	addi	a0,a0,-120 # 10f88 <__EH_FRAME_BEGIN__>
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
   1030c:	f6878513          	addi	a0,a5,-152 # 10f68 <__muldi3+0x28>
   10310:	0dc000ef          	jal	ra,103ec <print_s>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	00078513          	mv	a0,a5
   1031c:	00000097          	auipc	ra,0x0
   10320:	0a4080e7          	jalr	164(ra) # 103c0 <print_d>
   10324:	000117b7          	lui	a5,0x11
   10328:	f7878513          	addi	a0,a5,-136 # 10f78 <__muldi3+0x38>
   1032c:	0c0000ef          	jal	ra,103ec <print_s>
   10330:	fe842783          	lw	a5,-24(s0)
   10334:	00078513          	mv	a0,a5
   10338:	00000097          	auipc	ra,0x0
   1033c:	088080e7          	jalr	136(ra) # 103c0 <print_d>
   10340:	000117b7          	lui	a5,0x11
   10344:	f8078513          	addi	a0,a5,-128 # 10f80 <__muldi3+0x40>
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
   10464:	fe010113          	addi	sp,sp,-32
   10468:	00813c23          	sd	s0,24(sp)
   1046c:	02010413          	addi	s0,sp,32
   10470:	00400893          	li	a7,4
   10474:	00000073          	ecall
   10478:	00050793          	mv	a5,a0
   1047c:	fef407a3          	sb	a5,-17(s0)
   10480:	fef44783          	lbu	a5,-17(s0)
   10484:	00078513          	mv	a0,a5
   10488:	01813403          	ld	s0,24(sp)
   1048c:	02010113          	addi	sp,sp,32
   10490:	00008067          	ret

0000000000010494 <read_num>:
   10494:	fe010113          	addi	sp,sp,-32
   10498:	00813c23          	sd	s0,24(sp)
   1049c:	02010413          	addi	s0,sp,32
   104a0:	00500893          	li	a7,5
   104a4:	00000073          	ecall
   104a8:	00050793          	mv	a5,a0
   104ac:	fef43423          	sd	a5,-24(s0)
   104b0:	fe843783          	ld	a5,-24(s0)
   104b4:	00078513          	mv	a0,a5
   104b8:	01813403          	ld	s0,24(sp)
   104bc:	02010113          	addi	sp,sp,32
   104c0:	00008067          	ret
   104c4:	0000                	unimp
	...

00000000000104c8 <atexit>:
   104c8:	00050593          	mv	a1,a0
   104cc:	00000693          	li	a3,0
   104d0:	00000613          	li	a2,0
   104d4:	00000513          	li	a0,0
   104d8:	2400006f          	j	10718 <__register_exitproc>
   104dc:	0000                	unimp
	...

00000000000104e0 <exit>:
   104e0:	ff010113          	addi	sp,sp,-16
   104e4:	00000593          	li	a1,0
   104e8:	00813023          	sd	s0,0(sp)
   104ec:	00113423          	sd	ra,8(sp)
   104f0:	00050413          	mv	s0,a0
   104f4:	2b0000ef          	jal	ra,107a4 <__call_exitprocs>
   104f8:	000117b7          	lui	a5,0x11
   104fc:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10500:	05853783          	ld	a5,88(a0)
   10504:	00078463          	beqz	a5,1050c <exit+0x2c>
   10508:	000780e7          	jalr	a5
   1050c:	00040513          	mv	a0,s0
   10510:	00001097          	auipc	ra,0x1
   10514:	9f8080e7          	jalr	-1544(ra) # 10f08 <_exit>
   10518:	0000                	unimp
	...

000000000001051c <__libc_fini_array>:
   1051c:	fe010113          	addi	sp,sp,-32
   10520:	000117b7          	lui	a5,0x11
   10524:	00011737          	lui	a4,0x11
   10528:	00813823          	sd	s0,16(sp)
   1052c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10530:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10534:	40e40433          	sub	s0,s0,a4
   10538:	00913423          	sd	s1,8(sp)
   1053c:	01213023          	sd	s2,0(sp)
   10540:	00113c23          	sd	ra,24(sp)
   10544:	40345413          	srai	s0,s0,0x3
   10548:	00000493          	li	s1,0
   1054c:	01078913          	addi	s2,a5,16
   10550:	02941063          	bne	s0,s1,10570 <__libc_fini_array+0x54>
   10554:	01013403          	ld	s0,16(sp)
   10558:	01813083          	ld	ra,24(sp)
   1055c:	00813483          	ld	s1,8(sp)
   10560:	00013903          	ld	s2,0(sp)
   10564:	02010113          	addi	sp,sp,32
   10568:	00000317          	auipc	t1,0x0
   1056c:	b9430067          	jr	-1132(t1) # 100fc <_fini>
   10570:	ff800593          	li	a1,-8
   10574:	00048513          	mv	a0,s1
   10578:	1c9000ef          	jal	ra,10f40 <__muldi3>
   1057c:	00a90533          	add	a0,s2,a0
   10580:	ff853783          	ld	a5,-8(a0)
   10584:	00148493          	addi	s1,s1,1
   10588:	000780e7          	jalr	a5
   1058c:	fc5ff06f          	j	10550 <__libc_fini_array+0x34>
   10590:	0000                	unimp
	...

0000000000010594 <__libc_init_array>:
   10594:	fe010113          	addi	sp,sp,-32
   10598:	00813823          	sd	s0,16(sp)
   1059c:	00913423          	sd	s1,8(sp)
   105a0:	00011437          	lui	s0,0x11
   105a4:	000114b7          	lui	s1,0x11
   105a8:	00048793          	mv	a5,s1
   105ac:	00040413          	mv	s0,s0
   105b0:	40f40433          	sub	s0,s0,a5
   105b4:	01213023          	sd	s2,0(sp)
   105b8:	00113c23          	sd	ra,24(sp)
   105bc:	40345413          	srai	s0,s0,0x3
   105c0:	00048493          	mv	s1,s1
   105c4:	00000913          	li	s2,0
   105c8:	04891463          	bne	s2,s0,10610 <__libc_init_array+0x7c>
   105cc:	000114b7          	lui	s1,0x11
   105d0:	00000097          	auipc	ra,0x0
   105d4:	b2c080e7          	jalr	-1236(ra) # 100fc <_fini>
   105d8:	00011437          	lui	s0,0x11
   105dc:	00048793          	mv	a5,s1
   105e0:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   105e4:	40f40433          	sub	s0,s0,a5
   105e8:	40345413          	srai	s0,s0,0x3
   105ec:	00048493          	mv	s1,s1
   105f0:	00000913          	li	s2,0
   105f4:	02891863          	bne	s2,s0,10624 <__libc_init_array+0x90>
   105f8:	01813083          	ld	ra,24(sp)
   105fc:	01013403          	ld	s0,16(sp)
   10600:	00813483          	ld	s1,8(sp)
   10604:	00013903          	ld	s2,0(sp)
   10608:	02010113          	addi	sp,sp,32
   1060c:	00008067          	ret
   10610:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10614:	00190913          	addi	s2,s2,1
   10618:	00848493          	addi	s1,s1,8
   1061c:	000780e7          	jalr	a5
   10620:	fa9ff06f          	j	105c8 <__libc_init_array+0x34>
   10624:	0004b783          	ld	a5,0(s1)
   10628:	00190913          	addi	s2,s2,1
   1062c:	00848493          	addi	s1,s1,8
   10630:	000780e7          	jalr	a5
   10634:	fc1ff06f          	j	105f4 <__libc_init_array+0x60>
   10638:	0000                	unimp
	...

000000000001063c <memset>:
   1063c:	00f00813          	li	a6,15
   10640:	00050713          	mv	a4,a0
   10644:	02c87a63          	bleu	a2,a6,10678 <memset+0x3c>
   10648:	00f77793          	andi	a5,a4,15
   1064c:	0a079063          	bnez	a5,106ec <memset+0xb0>
   10650:	06059e63          	bnez	a1,106cc <memset+0x90>
   10654:	ff067693          	andi	a3,a2,-16
   10658:	00f67613          	andi	a2,a2,15
   1065c:	00e686b3          	add	a3,a3,a4
   10660:	00b73023          	sd	a1,0(a4)
   10664:	00b73423          	sd	a1,8(a4)
   10668:	01070713          	addi	a4,a4,16
   1066c:	fed76ae3          	bltu	a4,a3,10660 <memset+0x24>
   10670:	00061463          	bnez	a2,10678 <memset+0x3c>
   10674:	00008067          	ret
   10678:	40c806b3          	sub	a3,a6,a2
   1067c:	00269693          	slli	a3,a3,0x2
   10680:	00000297          	auipc	t0,0x0
   10684:	005686b3          	add	a3,a3,t0
   10688:	00c68067          	jr	12(a3)
   1068c:	00b70723          	sb	a1,14(a4)
   10690:	00b706a3          	sb	a1,13(a4)
   10694:	00b70623          	sb	a1,12(a4)
   10698:	00b705a3          	sb	a1,11(a4)
   1069c:	00b70523          	sb	a1,10(a4)
   106a0:	00b704a3          	sb	a1,9(a4)
   106a4:	00b70423          	sb	a1,8(a4)
   106a8:	00b703a3          	sb	a1,7(a4)
   106ac:	00b70323          	sb	a1,6(a4)
   106b0:	00b702a3          	sb	a1,5(a4)
   106b4:	00b70223          	sb	a1,4(a4)
   106b8:	00b701a3          	sb	a1,3(a4)
   106bc:	00b70123          	sb	a1,2(a4)
   106c0:	00b700a3          	sb	a1,1(a4)
   106c4:	00b70023          	sb	a1,0(a4)
   106c8:	00008067          	ret
   106cc:	0ff5f593          	andi	a1,a1,255
   106d0:	00859693          	slli	a3,a1,0x8
   106d4:	00d5e5b3          	or	a1,a1,a3
   106d8:	01059693          	slli	a3,a1,0x10
   106dc:	00d5e5b3          	or	a1,a1,a3
   106e0:	02059693          	slli	a3,a1,0x20
   106e4:	00d5e5b3          	or	a1,a1,a3
   106e8:	f6dff06f          	j	10654 <memset+0x18>
   106ec:	00279693          	slli	a3,a5,0x2
   106f0:	00000297          	auipc	t0,0x0
   106f4:	005686b3          	add	a3,a3,t0
   106f8:	00008293          	mv	t0,ra
   106fc:	f98680e7          	jalr	-104(a3)
   10700:	00028093          	mv	ra,t0
   10704:	ff078793          	addi	a5,a5,-16
   10708:	40f70733          	sub	a4,a4,a5
   1070c:	00f60633          	add	a2,a2,a5
   10710:	f6c874e3          	bleu	a2,a6,10678 <memset+0x3c>
   10714:	f3dff06f          	j	10650 <memset+0x14>

0000000000010718 <__register_exitproc>:
   10718:	000117b7          	lui	a5,0x11
   1071c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10720:	00050313          	mv	t1,a0
   10724:	1f873783          	ld	a5,504(a4)
   10728:	00079663          	bnez	a5,10734 <__register_exitproc+0x1c>
   1072c:	20070793          	addi	a5,a4,512
   10730:	1ef73c23          	sd	a5,504(a4)
   10734:	0087a703          	lw	a4,8(a5)
   10738:	01f00813          	li	a6,31
   1073c:	fff00513          	li	a0,-1
   10740:	04e84e63          	blt	a6,a4,1079c <__register_exitproc+0x84>
   10744:	02030e63          	beqz	t1,10780 <__register_exitproc+0x68>
   10748:	00371813          	slli	a6,a4,0x3
   1074c:	01078833          	add	a6,a5,a6
   10750:	10c83823          	sd	a2,272(a6)
   10754:	3107a883          	lw	a7,784(a5)
   10758:	00100613          	li	a2,1
   1075c:	00e6163b          	sllw	a2,a2,a4
   10760:	00c8e8b3          	or	a7,a7,a2
   10764:	3117a823          	sw	a7,784(a5)
   10768:	20d83823          	sd	a3,528(a6)
   1076c:	00200693          	li	a3,2
   10770:	00d31863          	bne	t1,a3,10780 <__register_exitproc+0x68>
   10774:	3147a683          	lw	a3,788(a5)
   10778:	00c6e633          	or	a2,a3,a2
   1077c:	30c7aa23          	sw	a2,788(a5)
   10780:	0017069b          	addiw	a3,a4,1
   10784:	00270713          	addi	a4,a4,2
   10788:	00371713          	slli	a4,a4,0x3
   1078c:	00d7a423          	sw	a3,8(a5)
   10790:	00e787b3          	add	a5,a5,a4
   10794:	00b7b023          	sd	a1,0(a5)
   10798:	00000513          	li	a0,0
   1079c:	00008067          	ret
   107a0:	0000                	unimp
	...

00000000000107a4 <__call_exitprocs>:
   107a4:	fb010113          	addi	sp,sp,-80
   107a8:	000117b7          	lui	a5,0x11
   107ac:	03313423          	sd	s3,40(sp)
   107b0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   107b4:	03413023          	sd	s4,32(sp)
   107b8:	01513c23          	sd	s5,24(sp)
   107bc:	01613823          	sd	s6,16(sp)
   107c0:	04113423          	sd	ra,72(sp)
   107c4:	04813023          	sd	s0,64(sp)
   107c8:	02913c23          	sd	s1,56(sp)
   107cc:	03213823          	sd	s2,48(sp)
   107d0:	01713423          	sd	s7,8(sp)
   107d4:	00050a93          	mv	s5,a0
   107d8:	00058a13          	mv	s4,a1
   107dc:	00100b13          	li	s6,1
   107e0:	1f89b403          	ld	s0,504(s3)
   107e4:	00040c63          	beqz	s0,107fc <__call_exitprocs+0x58>
   107e8:	00842483          	lw	s1,8(s0)
   107ec:	fff4849b          	addiw	s1,s1,-1
   107f0:	00349913          	slli	s2,s1,0x3
   107f4:	01240933          	add	s2,s0,s2
   107f8:	0204d863          	bgez	s1,10828 <__call_exitprocs+0x84>
   107fc:	04813083          	ld	ra,72(sp)
   10800:	04013403          	ld	s0,64(sp)
   10804:	03813483          	ld	s1,56(sp)
   10808:	03013903          	ld	s2,48(sp)
   1080c:	02813983          	ld	s3,40(sp)
   10810:	02013a03          	ld	s4,32(sp)
   10814:	01813a83          	ld	s5,24(sp)
   10818:	01013b03          	ld	s6,16(sp)
   1081c:	00813b83          	ld	s7,8(sp)
   10820:	05010113          	addi	sp,sp,80
   10824:	00008067          	ret
   10828:	000a0c63          	beqz	s4,10840 <__call_exitprocs+0x9c>
   1082c:	21093783          	ld	a5,528(s2)
   10830:	01478863          	beq	a5,s4,10840 <__call_exitprocs+0x9c>
   10834:	fff4849b          	addiw	s1,s1,-1
   10838:	ff890913          	addi	s2,s2,-8
   1083c:	fbdff06f          	j	107f8 <__call_exitprocs+0x54>
   10840:	00842783          	lw	a5,8(s0)
   10844:	01093683          	ld	a3,16(s2)
   10848:	fff7879b          	addiw	a5,a5,-1
   1084c:	02979e63          	bne	a5,s1,10888 <__call_exitprocs+0xe4>
   10850:	00942423          	sw	s1,8(s0)
   10854:	fe0680e3          	beqz	a3,10834 <__call_exitprocs+0x90>
   10858:	31042703          	lw	a4,784(s0)
   1085c:	009b163b          	sllw	a2,s6,s1
   10860:	00842b83          	lw	s7,8(s0)
   10864:	00c77733          	and	a4,a4,a2
   10868:	0007071b          	sext.w	a4,a4
   1086c:	02071263          	bnez	a4,10890 <__call_exitprocs+0xec>
   10870:	000680e7          	jalr	a3
   10874:	00842703          	lw	a4,8(s0)
   10878:	1f89b783          	ld	a5,504(s3)
   1087c:	f77712e3          	bne	a4,s7,107e0 <__call_exitprocs+0x3c>
   10880:	faf40ae3          	beq	s0,a5,10834 <__call_exitprocs+0x90>
   10884:	f5dff06f          	j	107e0 <__call_exitprocs+0x3c>
   10888:	00093823          	sd	zero,16(s2)
   1088c:	fc9ff06f          	j	10854 <__call_exitprocs+0xb0>
   10890:	31442783          	lw	a5,788(s0)
   10894:	11093583          	ld	a1,272(s2)
   10898:	00c7f7b3          	and	a5,a5,a2
   1089c:	0007879b          	sext.w	a5,a5
   108a0:	00079863          	bnez	a5,108b0 <__call_exitprocs+0x10c>
   108a4:	000a8513          	mv	a0,s5
   108a8:	000680e7          	jalr	a3
   108ac:	fc9ff06f          	j	10874 <__call_exitprocs+0xd0>
   108b0:	00058513          	mv	a0,a1
   108b4:	000680e7          	jalr	a3
   108b8:	fbdff06f          	j	10874 <__call_exitprocs+0xd0>
   108bc:	0000                	unimp
	...

00000000000108c0 <conv_stat>:
   108c0:	0005b783          	ld	a5,0(a1)
   108c4:	00f51023          	sh	a5,0(a0)
   108c8:	0085b783          	ld	a5,8(a1)
   108cc:	00f51123          	sh	a5,2(a0)
   108d0:	0105a783          	lw	a5,16(a1)
   108d4:	00f52223          	sw	a5,4(a0)
   108d8:	0145a783          	lw	a5,20(a1)
   108dc:	00f51423          	sh	a5,8(a0)
   108e0:	0185a783          	lw	a5,24(a1)
   108e4:	00f51523          	sh	a5,10(a0)
   108e8:	01c5a783          	lw	a5,28(a1)
   108ec:	00f51623          	sh	a5,12(a0)
   108f0:	0205b783          	ld	a5,32(a1)
   108f4:	00f51723          	sh	a5,14(a0)
   108f8:	0305b783          	ld	a5,48(a1)
   108fc:	00f53823          	sd	a5,16(a0)
   10900:	0405b783          	ld	a5,64(a1)
   10904:	04f53823          	sd	a5,80(a0)
   10908:	0385a783          	lw	a5,56(a1)
   1090c:	04f53423          	sd	a5,72(a0)
   10910:	0485b783          	ld	a5,72(a1)
   10914:	00f53c23          	sd	a5,24(a0)
   10918:	0585b783          	ld	a5,88(a1)
   1091c:	02f53423          	sd	a5,40(a0)
   10920:	0685b783          	ld	a5,104(a1)
   10924:	02f53c23          	sd	a5,56(a0)
   10928:	00008067          	ret

000000000001092c <__syscall_error>:
   1092c:	ff010113          	addi	sp,sp,-16
   10930:	00813023          	sd	s0,0(sp)
   10934:	00113423          	sd	ra,8(sp)
   10938:	00050413          	mv	s0,a0
   1093c:	00000097          	auipc	ra,0x0
   10940:	5f8080e7          	jalr	1528(ra) # 10f34 <__errno>
   10944:	408007bb          	negw	a5,s0
   10948:	00813083          	ld	ra,8(sp)
   1094c:	00013403          	ld	s0,0(sp)
   10950:	00f52023          	sw	a5,0(a0)
   10954:	fff00513          	li	a0,-1
   10958:	01010113          	addi	sp,sp,16
   1095c:	00008067          	ret

0000000000010960 <__internal_syscall>:
   10960:	00050893          	mv	a7,a0
   10964:	00058513          	mv	a0,a1
   10968:	00060593          	mv	a1,a2
   1096c:	00068613          	mv	a2,a3
   10970:	00070693          	mv	a3,a4
   10974:	00000073          	ecall
   10978:	00055663          	bgez	a0,10984 <__internal_syscall+0x24>
   1097c:	00000317          	auipc	t1,0x0
   10980:	fb030067          	jr	-80(t1) # 1092c <__syscall_error>
   10984:	00008067          	ret

0000000000010988 <open>:
   10988:	ff010113          	addi	sp,sp,-16
   1098c:	00060693          	mv	a3,a2
   10990:	00000713          	li	a4,0
   10994:	00058613          	mv	a2,a1
   10998:	00050593          	mv	a1,a0
   1099c:	40000513          	li	a0,1024
   109a0:	00113423          	sd	ra,8(sp)
   109a4:	00000097          	auipc	ra,0x0
   109a8:	fbc080e7          	jalr	-68(ra) # 10960 <__internal_syscall>
   109ac:	00813083          	ld	ra,8(sp)
   109b0:	0005051b          	sext.w	a0,a0
   109b4:	01010113          	addi	sp,sp,16
   109b8:	00008067          	ret

00000000000109bc <openat>:
   109bc:	ff010113          	addi	sp,sp,-16
   109c0:	00068713          	mv	a4,a3
   109c4:	00060693          	mv	a3,a2
   109c8:	00058613          	mv	a2,a1
   109cc:	00050593          	mv	a1,a0
   109d0:	03800513          	li	a0,56
   109d4:	00113423          	sd	ra,8(sp)
   109d8:	f89ff0ef          	jal	ra,10960 <__internal_syscall>
   109dc:	00813083          	ld	ra,8(sp)
   109e0:	0005051b          	sext.w	a0,a0
   109e4:	01010113          	addi	sp,sp,16
   109e8:	00008067          	ret

00000000000109ec <lseek>:
   109ec:	00060693          	mv	a3,a2
   109f0:	00000713          	li	a4,0
   109f4:	00058613          	mv	a2,a1
   109f8:	00050593          	mv	a1,a0
   109fc:	03e00513          	li	a0,62
   10a00:	00000317          	auipc	t1,0x0
   10a04:	f6030067          	jr	-160(t1) # 10960 <__internal_syscall>

0000000000010a08 <read>:
   10a08:	00060693          	mv	a3,a2
   10a0c:	00000713          	li	a4,0
   10a10:	00058613          	mv	a2,a1
   10a14:	00050593          	mv	a1,a0
   10a18:	03f00513          	li	a0,63
   10a1c:	f45ff06f          	j	10960 <__internal_syscall>

0000000000010a20 <write>:
   10a20:	00060693          	mv	a3,a2
   10a24:	00000713          	li	a4,0
   10a28:	00058613          	mv	a2,a1
   10a2c:	00050593          	mv	a1,a0
   10a30:	04000513          	li	a0,64
   10a34:	00000317          	auipc	t1,0x0
   10a38:	f2c30067          	jr	-212(t1) # 10960 <__internal_syscall>

0000000000010a3c <fstat>:
   10a3c:	f6010113          	addi	sp,sp,-160
   10a40:	08913423          	sd	s1,136(sp)
   10a44:	00010613          	mv	a2,sp
   10a48:	00058493          	mv	s1,a1
   10a4c:	00000713          	li	a4,0
   10a50:	00050593          	mv	a1,a0
   10a54:	00000693          	li	a3,0
   10a58:	05000513          	li	a0,80
   10a5c:	08113c23          	sd	ra,152(sp)
   10a60:	08813823          	sd	s0,144(sp)
   10a64:	efdff0ef          	jal	ra,10960 <__internal_syscall>
   10a68:	00050413          	mv	s0,a0
   10a6c:	00010593          	mv	a1,sp
   10a70:	00048513          	mv	a0,s1
   10a74:	e4dff0ef          	jal	ra,108c0 <conv_stat>
   10a78:	0004051b          	sext.w	a0,s0
   10a7c:	09813083          	ld	ra,152(sp)
   10a80:	09013403          	ld	s0,144(sp)
   10a84:	08813483          	ld	s1,136(sp)
   10a88:	0a010113          	addi	sp,sp,160
   10a8c:	00008067          	ret

0000000000010a90 <stat>:
   10a90:	f6010113          	addi	sp,sp,-160
   10a94:	08913423          	sd	s1,136(sp)
   10a98:	00010613          	mv	a2,sp
   10a9c:	00058493          	mv	s1,a1
   10aa0:	00000713          	li	a4,0
   10aa4:	00050593          	mv	a1,a0
   10aa8:	00000693          	li	a3,0
   10aac:	40e00513          	li	a0,1038
   10ab0:	08113c23          	sd	ra,152(sp)
   10ab4:	08813823          	sd	s0,144(sp)
   10ab8:	00000097          	auipc	ra,0x0
   10abc:	ea8080e7          	jalr	-344(ra) # 10960 <__internal_syscall>
   10ac0:	00050413          	mv	s0,a0
   10ac4:	00010593          	mv	a1,sp
   10ac8:	00048513          	mv	a0,s1
   10acc:	00000097          	auipc	ra,0x0
   10ad0:	df4080e7          	jalr	-524(ra) # 108c0 <conv_stat>
   10ad4:	0004051b          	sext.w	a0,s0
   10ad8:	09813083          	ld	ra,152(sp)
   10adc:	09013403          	ld	s0,144(sp)
   10ae0:	08813483          	ld	s1,136(sp)
   10ae4:	0a010113          	addi	sp,sp,160
   10ae8:	00008067          	ret

0000000000010aec <lstat>:
   10aec:	f6010113          	addi	sp,sp,-160
   10af0:	08913423          	sd	s1,136(sp)
   10af4:	00010613          	mv	a2,sp
   10af8:	00058493          	mv	s1,a1
   10afc:	00000713          	li	a4,0
   10b00:	00050593          	mv	a1,a0
   10b04:	00000693          	li	a3,0
   10b08:	40f00513          	li	a0,1039
   10b0c:	08113c23          	sd	ra,152(sp)
   10b10:	08813823          	sd	s0,144(sp)
   10b14:	e4dff0ef          	jal	ra,10960 <__internal_syscall>
   10b18:	00050413          	mv	s0,a0
   10b1c:	00010593          	mv	a1,sp
   10b20:	00048513          	mv	a0,s1
   10b24:	d9dff0ef          	jal	ra,108c0 <conv_stat>
   10b28:	0004051b          	sext.w	a0,s0
   10b2c:	09813083          	ld	ra,152(sp)
   10b30:	09013403          	ld	s0,144(sp)
   10b34:	08813483          	ld	s1,136(sp)
   10b38:	0a010113          	addi	sp,sp,160
   10b3c:	00008067          	ret

0000000000010b40 <fstatat>:
   10b40:	f6010113          	addi	sp,sp,-160
   10b44:	08913423          	sd	s1,136(sp)
   10b48:	00068713          	mv	a4,a3
   10b4c:	00060493          	mv	s1,a2
   10b50:	00010693          	mv	a3,sp
   10b54:	00058613          	mv	a2,a1
   10b58:	00050593          	mv	a1,a0
   10b5c:	04f00513          	li	a0,79
   10b60:	08113c23          	sd	ra,152(sp)
   10b64:	08813823          	sd	s0,144(sp)
   10b68:	00000097          	auipc	ra,0x0
   10b6c:	df8080e7          	jalr	-520(ra) # 10960 <__internal_syscall>
   10b70:	00050413          	mv	s0,a0
   10b74:	00010593          	mv	a1,sp
   10b78:	00048513          	mv	a0,s1
   10b7c:	00000097          	auipc	ra,0x0
   10b80:	d44080e7          	jalr	-700(ra) # 108c0 <conv_stat>
   10b84:	0004051b          	sext.w	a0,s0
   10b88:	09813083          	ld	ra,152(sp)
   10b8c:	09013403          	ld	s0,144(sp)
   10b90:	08813483          	ld	s1,136(sp)
   10b94:	0a010113          	addi	sp,sp,160
   10b98:	00008067          	ret

0000000000010b9c <access>:
   10b9c:	ff010113          	addi	sp,sp,-16
   10ba0:	00058613          	mv	a2,a1
   10ba4:	00000713          	li	a4,0
   10ba8:	00050593          	mv	a1,a0
   10bac:	00000693          	li	a3,0
   10bb0:	40900513          	li	a0,1033
   10bb4:	00113423          	sd	ra,8(sp)
   10bb8:	da9ff0ef          	jal	ra,10960 <__internal_syscall>
   10bbc:	00813083          	ld	ra,8(sp)
   10bc0:	0005051b          	sext.w	a0,a0
   10bc4:	01010113          	addi	sp,sp,16
   10bc8:	00008067          	ret

0000000000010bcc <faccessat>:
   10bcc:	ff010113          	addi	sp,sp,-16
   10bd0:	00068713          	mv	a4,a3
   10bd4:	00060693          	mv	a3,a2
   10bd8:	00058613          	mv	a2,a1
   10bdc:	00050593          	mv	a1,a0
   10be0:	03000513          	li	a0,48
   10be4:	00113423          	sd	ra,8(sp)
   10be8:	00000097          	auipc	ra,0x0
   10bec:	d78080e7          	jalr	-648(ra) # 10960 <__internal_syscall>
   10bf0:	00813083          	ld	ra,8(sp)
   10bf4:	0005051b          	sext.w	a0,a0
   10bf8:	01010113          	addi	sp,sp,16
   10bfc:	00008067          	ret

0000000000010c00 <close>:
   10c00:	ff010113          	addi	sp,sp,-16
   10c04:	00050593          	mv	a1,a0
   10c08:	00000713          	li	a4,0
   10c0c:	00000693          	li	a3,0
   10c10:	00000613          	li	a2,0
   10c14:	03900513          	li	a0,57
   10c18:	00113423          	sd	ra,8(sp)
   10c1c:	d45ff0ef          	jal	ra,10960 <__internal_syscall>
   10c20:	00813083          	ld	ra,8(sp)
   10c24:	0005051b          	sext.w	a0,a0
   10c28:	01010113          	addi	sp,sp,16
   10c2c:	00008067          	ret

0000000000010c30 <link>:
   10c30:	ff010113          	addi	sp,sp,-16
   10c34:	00058613          	mv	a2,a1
   10c38:	00000713          	li	a4,0
   10c3c:	00050593          	mv	a1,a0
   10c40:	00000693          	li	a3,0
   10c44:	40100513          	li	a0,1025
   10c48:	00113423          	sd	ra,8(sp)
   10c4c:	00000097          	auipc	ra,0x0
   10c50:	d14080e7          	jalr	-748(ra) # 10960 <__internal_syscall>
   10c54:	00813083          	ld	ra,8(sp)
   10c58:	0005051b          	sext.w	a0,a0
   10c5c:	01010113          	addi	sp,sp,16
   10c60:	00008067          	ret

0000000000010c64 <unlink>:
   10c64:	ff010113          	addi	sp,sp,-16
   10c68:	00050593          	mv	a1,a0
   10c6c:	00000713          	li	a4,0
   10c70:	00000693          	li	a3,0
   10c74:	00000613          	li	a2,0
   10c78:	40200513          	li	a0,1026
   10c7c:	00113423          	sd	ra,8(sp)
   10c80:	ce1ff0ef          	jal	ra,10960 <__internal_syscall>
   10c84:	00813083          	ld	ra,8(sp)
   10c88:	0005051b          	sext.w	a0,a0
   10c8c:	01010113          	addi	sp,sp,16
   10c90:	00008067          	ret

0000000000010c94 <execve>:
   10c94:	ff010113          	addi	sp,sp,-16
   10c98:	00113423          	sd	ra,8(sp)
   10c9c:	00000097          	auipc	ra,0x0
   10ca0:	298080e7          	jalr	664(ra) # 10f34 <__errno>
   10ca4:	00813083          	ld	ra,8(sp)
   10ca8:	00c00793          	li	a5,12
   10cac:	00f52023          	sw	a5,0(a0)
   10cb0:	fff00513          	li	a0,-1
   10cb4:	01010113          	addi	sp,sp,16
   10cb8:	00008067          	ret

0000000000010cbc <fork>:
   10cbc:	ff010113          	addi	sp,sp,-16
   10cc0:	00113423          	sd	ra,8(sp)
   10cc4:	270000ef          	jal	ra,10f34 <__errno>
   10cc8:	00813083          	ld	ra,8(sp)
   10ccc:	00b00793          	li	a5,11
   10cd0:	00f52023          	sw	a5,0(a0)
   10cd4:	fff00513          	li	a0,-1
   10cd8:	01010113          	addi	sp,sp,16
   10cdc:	00008067          	ret

0000000000010ce0 <getpid>:
   10ce0:	00100513          	li	a0,1
   10ce4:	00008067          	ret

0000000000010ce8 <kill>:
   10ce8:	ff010113          	addi	sp,sp,-16
   10cec:	00113423          	sd	ra,8(sp)
   10cf0:	244000ef          	jal	ra,10f34 <__errno>
   10cf4:	00813083          	ld	ra,8(sp)
   10cf8:	01600793          	li	a5,22
   10cfc:	00f52023          	sw	a5,0(a0)
   10d00:	fff00513          	li	a0,-1
   10d04:	01010113          	addi	sp,sp,16
   10d08:	00008067          	ret

0000000000010d0c <wait>:
   10d0c:	ff010113          	addi	sp,sp,-16
   10d10:	00113423          	sd	ra,8(sp)
   10d14:	00000097          	auipc	ra,0x0
   10d18:	220080e7          	jalr	544(ra) # 10f34 <__errno>
   10d1c:	00813083          	ld	ra,8(sp)
   10d20:	00a00793          	li	a5,10
   10d24:	00f52023          	sw	a5,0(a0)
   10d28:	fff00513          	li	a0,-1
   10d2c:	01010113          	addi	sp,sp,16
   10d30:	00008067          	ret

0000000000010d34 <isatty>:
   10d34:	f8010113          	addi	sp,sp,-128
   10d38:	00810593          	addi	a1,sp,8
   10d3c:	06113c23          	sd	ra,120(sp)
   10d40:	cfdff0ef          	jal	ra,10a3c <fstat>
   10d44:	fff00793          	li	a5,-1
   10d48:	00f50863          	beq	a0,a5,10d58 <isatty+0x24>
   10d4c:	00c12503          	lw	a0,12(sp)
   10d50:	40d5551b          	sraiw	a0,a0,0xd
   10d54:	00157513          	andi	a0,a0,1
   10d58:	07813083          	ld	ra,120(sp)
   10d5c:	08010113          	addi	sp,sp,128
   10d60:	00008067          	ret

0000000000010d64 <gettimeofday>:
   10d64:	ff010113          	addi	sp,sp,-16
   10d68:	00050593          	mv	a1,a0
   10d6c:	00000713          	li	a4,0
   10d70:	00000693          	li	a3,0
   10d74:	00000613          	li	a2,0
   10d78:	0a900513          	li	a0,169
   10d7c:	00113423          	sd	ra,8(sp)
   10d80:	00000097          	auipc	ra,0x0
   10d84:	be0080e7          	jalr	-1056(ra) # 10960 <__internal_syscall>
   10d88:	00813083          	ld	ra,8(sp)
   10d8c:	0005051b          	sext.w	a0,a0
   10d90:	01010113          	addi	sp,sp,16
   10d94:	00008067          	ret

0000000000010d98 <times>:
   10d98:	fd010113          	addi	sp,sp,-48
   10d9c:	02813023          	sd	s0,32(sp)
   10da0:	00050413          	mv	s0,a0
   10da4:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10da8:	00913c23          	sd	s1,24(sp)
   10dac:	02113423          	sd	ra,40(sp)
   10db0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10db4:	00079a63          	bnez	a5,10dc8 <times+0x30>
   10db8:	00000593          	li	a1,0
   10dbc:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10dc0:	00000097          	auipc	ra,0x0
   10dc4:	fa4080e7          	jalr	-92(ra) # 10d64 <gettimeofday>
   10dc8:	00000593          	li	a1,0
   10dcc:	00010513          	mv	a0,sp
   10dd0:	00000097          	auipc	ra,0x0
   10dd4:	f94080e7          	jalr	-108(ra) # 10d64 <gettimeofday>
   10dd8:	0004b783          	ld	a5,0(s1)
   10ddc:	00013503          	ld	a0,0(sp)
   10de0:	000f45b7          	lui	a1,0xf4
   10de4:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10de8:	40f50533          	sub	a0,a0,a5
   10dec:	154000ef          	jal	ra,10f40 <__muldi3>
   10df0:	0084b703          	ld	a4,8(s1)
   10df4:	00813783          	ld	a5,8(sp)
   10df8:	00043823          	sd	zero,16(s0)
   10dfc:	00043c23          	sd	zero,24(s0)
   10e00:	40e787b3          	sub	a5,a5,a4
   10e04:	00f50533          	add	a0,a0,a5
   10e08:	00a43023          	sd	a0,0(s0)
   10e0c:	00043423          	sd	zero,8(s0)
   10e10:	02813083          	ld	ra,40(sp)
   10e14:	02013403          	ld	s0,32(sp)
   10e18:	01813483          	ld	s1,24(sp)
   10e1c:	fff00513          	li	a0,-1
   10e20:	03010113          	addi	sp,sp,48
   10e24:	00008067          	ret

0000000000010e28 <ftime>:
   10e28:	00051423          	sh	zero,8(a0)
   10e2c:	00053023          	sd	zero,0(a0)
   10e30:	00000513          	li	a0,0
   10e34:	00008067          	ret

0000000000010e38 <utime>:
   10e38:	fff00513          	li	a0,-1
   10e3c:	00008067          	ret

0000000000010e40 <chown>:
   10e40:	fff00513          	li	a0,-1
   10e44:	00008067          	ret

0000000000010e48 <chmod>:
   10e48:	fff00513          	li	a0,-1
   10e4c:	00008067          	ret

0000000000010e50 <chdir>:
   10e50:	fff00513          	li	a0,-1
   10e54:	00008067          	ret

0000000000010e58 <getcwd>:
   10e58:	00000513          	li	a0,0
   10e5c:	00008067          	ret

0000000000010e60 <sysconf>:
   10e60:	00200793          	li	a5,2
   10e64:	00f50663          	beq	a0,a5,10e70 <sysconf+0x10>
   10e68:	fff00513          	li	a0,-1
   10e6c:	00008067          	ret
   10e70:	000f4537          	lui	a0,0xf4
   10e74:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10e78:	00008067          	ret

0000000000010e7c <sbrk>:
   10e7c:	fe010113          	addi	sp,sp,-32
   10e80:	00813823          	sd	s0,16(sp)
   10e84:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e88:	00913423          	sd	s1,8(sp)
   10e8c:	00113c23          	sd	ra,24(sp)
   10e90:	00050493          	mv	s1,a0
   10e94:	04079063          	bnez	a5,10ed4 <sbrk+0x58>
   10e98:	00000713          	li	a4,0
   10e9c:	00000693          	li	a3,0
   10ea0:	00000613          	li	a2,0
   10ea4:	00000593          	li	a1,0
   10ea8:	0d600513          	li	a0,214
   10eac:	ab5ff0ef          	jal	ra,10960 <__internal_syscall>
   10eb0:	fff00793          	li	a5,-1
   10eb4:	00f51e63          	bne	a0,a5,10ed0 <sbrk+0x54>
   10eb8:	fff00513          	li	a0,-1
   10ebc:	01813083          	ld	ra,24(sp)
   10ec0:	01013403          	ld	s0,16(sp)
   10ec4:	00813483          	ld	s1,8(sp)
   10ec8:	02010113          	addi	sp,sp,32
   10ecc:	00008067          	ret
   10ed0:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10ed4:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10ed8:	00000713          	li	a4,0
   10edc:	00000693          	li	a3,0
   10ee0:	00b485b3          	add	a1,s1,a1
   10ee4:	00000613          	li	a2,0
   10ee8:	0d600513          	li	a0,214
   10eec:	a75ff0ef          	jal	ra,10960 <__internal_syscall>
   10ef0:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10ef4:	00f484b3          	add	s1,s1,a5
   10ef8:	fc9510e3          	bne	a0,s1,10eb8 <sbrk+0x3c>
   10efc:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10f00:	00078513          	mv	a0,a5
   10f04:	fb9ff06f          	j	10ebc <sbrk+0x40>

0000000000010f08 <_exit>:
   10f08:	ff010113          	addi	sp,sp,-16
   10f0c:	00050593          	mv	a1,a0
   10f10:	00000713          	li	a4,0
   10f14:	00000693          	li	a3,0
   10f18:	00000613          	li	a2,0
   10f1c:	05d00513          	li	a0,93
   10f20:	00113423          	sd	ra,8(sp)
   10f24:	00000097          	auipc	ra,0x0
   10f28:	a3c080e7          	jalr	-1476(ra) # 10960 <__internal_syscall>
   10f2c:	0000006f          	j	10f2c <_exit+0x24>
   10f30:	0000                	unimp
	...

0000000000010f34 <__errno>:
   10f34:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10f38:	00008067          	ret
   10f3c:	0000                	unimp
	...

0000000000010f40 <__muldi3>:
   10f40:	00050613          	mv	a2,a0
   10f44:	00000513          	li	a0,0
   10f48:	0015f693          	andi	a3,a1,1
   10f4c:	00068463          	beqz	a3,10f54 <__muldi3+0x14>
   10f50:	00c50533          	add	a0,a0,a2
   10f54:	0015d593          	srli	a1,a1,0x1
   10f58:	00161613          	slli	a2,a2,0x1
   10f5c:	fe0596e3          	bnez	a1,10f48 <__muldi3+0x8>
   10f60:	00008067          	ret
   10f64:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010f68 <.rodata>:
   10f68:	6341                	lui	t1,0x10
   10f6a:	6d72656b          	0x6d72656b
   10f6e:	6e61                	lui	t3,0x18
   10f70:	286e                	fld	fa6,216(sp)
   10f72:	0000                	unimp
   10f74:	0000                	unimp
   10f76:	0000                	unimp
   10f78:	002c                	addi	a1,sp,8
   10f7a:	0000                	unimp
   10f7c:	0000                	unimp
   10f7e:	0000                	unimp
   10f80:	2029                	0x2029
   10f82:	203d                	0x203d
	...

Disassembly of section .eh_frame:

0000000000010f88 <__EH_FRAME_BEGIN__>:
   10f88:	0000                	unimp
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
  10:	0f40                	addi	s0,sp,916
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
  10:	0f40                	addi	s0,sp,916
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0f64                	addi	s1,sp,924
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
  9c:	4002                	0x4002
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
