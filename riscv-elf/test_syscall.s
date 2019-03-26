
test_syscall.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	4a4000ef          	jal	ra,1056c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	38050513          	addi	a0,a0,896 # 1044c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	324080e7          	jalr	804(ra) # 103f8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	3e8080e7          	jalr	1000(ra) # 104c4 <__libc_init_array>
   100e4:	00012503          	lw	a0,0(sp)
   100e8:	00810593          	addi	a1,sp,8
   100ec:	00000613          	li	a2,0
   100f0:	00000097          	auipc	ra,0x0
   100f4:	10c080e7          	jalr	268(ra) # 101fc <main>
   100f8:	00000317          	auipc	t1,0x0
   100fc:	31830067          	jr	792(t1) # 10410 <exit>

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
   1019c:	f1450513          	addi	a0,a0,-236 # 10f14 <__EH_FRAME_BEGIN__>
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
   101e0:	f1450513          	addi	a0,a0,-236 # 10f14 <__EH_FRAME_BEGIN__>
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	ffff0097          	auipc	ra,0xffff0
   101ec:	e18080e7          	jalr	-488(ra) # 0 <_start-0x100b0>
   101f0:	00813083          	ld	ra,8(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	f39ff06f          	j	10130 <register_tm_clones>

00000000000101fc <main>:
   101fc:	fe010113          	addi	sp,sp,-32
   10200:	00113c23          	sd	ra,24(sp)
   10204:	00813823          	sd	s0,16(sp)
   10208:	02010413          	addi	s0,sp,32
   1020c:	000117b7          	lui	a5,0x11
   10210:	e9878513          	addi	a0,a5,-360 # 10e98 <__muldi3+0x28>
   10214:	00000097          	auipc	ra,0x0
   10218:	118080e7          	jalr	280(ra) # 1032c <print_s>
   1021c:	0001e7b7          	lui	a5,0x1e
   10220:	24078513          	addi	a0,a5,576 # 1e240 <__global_pointer$+0xc2e8>
   10224:	0dc000ef          	jal	ra,10300 <print_d>
   10228:	06100513          	li	a0,97
   1022c:	128000ef          	jal	ra,10354 <print_c>
   10230:	06200513          	li	a0,98
   10234:	120000ef          	jal	ra,10354 <print_c>
   10238:	06300513          	li	a0,99
   1023c:	118000ef          	jal	ra,10354 <print_c>
   10240:	00a00513          	li	a0,10
   10244:	110000ef          	jal	ra,10354 <print_c>
   10248:	000117b7          	lui	a5,0x11
   1024c:	eb878513          	addi	a0,a5,-328 # 10eb8 <__muldi3+0x48>
   10250:	00000097          	auipc	ra,0x0
   10254:	0dc080e7          	jalr	220(ra) # 1032c <print_s>
   10258:	00000097          	auipc	ra,0x0
   1025c:	174080e7          	jalr	372(ra) # 103cc <read_num>
   10260:	00050793          	mv	a5,a0
   10264:	fef42623          	sw	a5,-20(s0)
   10268:	000117b7          	lui	a5,0x11
   1026c:	ed078513          	addi	a0,a5,-304 # 10ed0 <__muldi3+0x60>
   10270:	00000097          	auipc	ra,0x0
   10274:	0bc080e7          	jalr	188(ra) # 1032c <print_s>
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	00078513          	mv	a0,a5
   10280:	080000ef          	jal	ra,10300 <print_d>
   10284:	000117b7          	lui	a5,0x11
   10288:	ee078513          	addi	a0,a5,-288 # 10ee0 <__muldi3+0x70>
   1028c:	00000097          	auipc	ra,0x0
   10290:	0a0080e7          	jalr	160(ra) # 1032c <print_s>
   10294:	000117b7          	lui	a5,0x11
   10298:	ee878513          	addi	a0,a5,-280 # 10ee8 <__muldi3+0x78>
   1029c:	00000097          	auipc	ra,0x0
   102a0:	090080e7          	jalr	144(ra) # 1032c <print_s>
   102a4:	100000ef          	jal	ra,103a4 <read_char>
   102a8:	00050793          	mv	a5,a0
   102ac:	fef405a3          	sb	a5,-21(s0)
   102b0:	000117b7          	lui	a5,0x11
   102b4:	f0078513          	addi	a0,a5,-256 # 10f00 <__muldi3+0x90>
   102b8:	00000097          	auipc	ra,0x0
   102bc:	074080e7          	jalr	116(ra) # 1032c <print_s>
   102c0:	feb44783          	lbu	a5,-21(s0)
   102c4:	00078513          	mv	a0,a5
   102c8:	08c000ef          	jal	ra,10354 <print_c>
   102cc:	000117b7          	lui	a5,0x11
   102d0:	ee078513          	addi	a0,a5,-288 # 10ee0 <__muldi3+0x70>
   102d4:	00000097          	auipc	ra,0x0
   102d8:	058080e7          	jalr	88(ra) # 1032c <print_s>
   102dc:	00000097          	auipc	ra,0x0
   102e0:	0a4080e7          	jalr	164(ra) # 10380 <exit_proc>
   102e4:	00000793          	li	a5,0
   102e8:	00078513          	mv	a0,a5
   102ec:	01813083          	ld	ra,24(sp)
   102f0:	01013403          	ld	s0,16(sp)
   102f4:	02010113          	addi	sp,sp,32
   102f8:	00008067          	ret
   102fc:	0000                	unimp
	...

0000000000010300 <print_d>:
   10300:	fe010113          	addi	sp,sp,-32
   10304:	00813c23          	sd	s0,24(sp)
   10308:	02010413          	addi	s0,sp,32
   1030c:	00050793          	mv	a5,a0
   10310:	fef42623          	sw	a5,-20(s0)
   10314:	00200893          	li	a7,2
   10318:	00000073          	ecall
   1031c:	00000013          	nop
   10320:	01813403          	ld	s0,24(sp)
   10324:	02010113          	addi	sp,sp,32
   10328:	00008067          	ret

000000000001032c <print_s>:
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	00813c23          	sd	s0,24(sp)
   10334:	02010413          	addi	s0,sp,32
   10338:	fea43423          	sd	a0,-24(s0)
   1033c:	00000893          	li	a7,0
   10340:	00000073          	ecall
   10344:	00000013          	nop
   10348:	01813403          	ld	s0,24(sp)
   1034c:	02010113          	addi	sp,sp,32
   10350:	00008067          	ret

0000000000010354 <print_c>:
   10354:	fe010113          	addi	sp,sp,-32
   10358:	00813c23          	sd	s0,24(sp)
   1035c:	02010413          	addi	s0,sp,32
   10360:	00050793          	mv	a5,a0
   10364:	fef407a3          	sb	a5,-17(s0)
   10368:	00100893          	li	a7,1
   1036c:	00000073          	ecall
   10370:	00000013          	nop
   10374:	01813403          	ld	s0,24(sp)
   10378:	02010113          	addi	sp,sp,32
   1037c:	00008067          	ret

0000000000010380 <exit_proc>:
   10380:	ff010113          	addi	sp,sp,-16
   10384:	00813423          	sd	s0,8(sp)
   10388:	01010413          	addi	s0,sp,16
   1038c:	00300893          	li	a7,3
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	00813403          	ld	s0,8(sp)
   1039c:	01010113          	addi	sp,sp,16
   103a0:	00008067          	ret

00000000000103a4 <read_char>:
   103a4:	ff010113          	addi	sp,sp,-16
   103a8:	00813423          	sd	s0,8(sp)
   103ac:	01010413          	addi	s0,sp,16
   103b0:	00400893          	li	a7,4
   103b4:	00000073          	ecall
   103b8:	00000013          	nop
   103bc:	00078513          	mv	a0,a5
   103c0:	00813403          	ld	s0,8(sp)
   103c4:	01010113          	addi	sp,sp,16
   103c8:	00008067          	ret

00000000000103cc <read_num>:
   103cc:	ff010113          	addi	sp,sp,-16
   103d0:	00813423          	sd	s0,8(sp)
   103d4:	01010413          	addi	s0,sp,16
   103d8:	00500893          	li	a7,5
   103dc:	00000073          	ecall
   103e0:	00000013          	nop
   103e4:	00078513          	mv	a0,a5
   103e8:	00813403          	ld	s0,8(sp)
   103ec:	01010113          	addi	sp,sp,16
   103f0:	00008067          	ret
   103f4:	0000                	unimp
	...

00000000000103f8 <atexit>:
   103f8:	00050593          	mv	a1,a0
   103fc:	00000693          	li	a3,0
   10400:	00000613          	li	a2,0
   10404:	00000513          	li	a0,0
   10408:	2400006f          	j	10648 <__register_exitproc>
   1040c:	0000                	unimp
	...

0000000000010410 <exit>:
   10410:	ff010113          	addi	sp,sp,-16
   10414:	00000593          	li	a1,0
   10418:	00813023          	sd	s0,0(sp)
   1041c:	00113423          	sd	ra,8(sp)
   10420:	00050413          	mv	s0,a0
   10424:	2b0000ef          	jal	ra,106d4 <__call_exitprocs>
   10428:	000117b7          	lui	a5,0x11
   1042c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10430:	05853783          	ld	a5,88(a0)
   10434:	00078463          	beqz	a5,1043c <exit+0x2c>
   10438:	000780e7          	jalr	a5
   1043c:	00040513          	mv	a0,s0
   10440:	00001097          	auipc	ra,0x1
   10444:	9f8080e7          	jalr	-1544(ra) # 10e38 <_exit>
   10448:	0000                	unimp
	...

000000000001044c <__libc_fini_array>:
   1044c:	fe010113          	addi	sp,sp,-32
   10450:	000117b7          	lui	a5,0x11
   10454:	00011737          	lui	a4,0x11
   10458:	00813823          	sd	s0,16(sp)
   1045c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10460:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10464:	40e40433          	sub	s0,s0,a4
   10468:	00913423          	sd	s1,8(sp)
   1046c:	01213023          	sd	s2,0(sp)
   10470:	00113c23          	sd	ra,24(sp)
   10474:	40345413          	srai	s0,s0,0x3
   10478:	00000493          	li	s1,0
   1047c:	01078913          	addi	s2,a5,16
   10480:	02941063          	bne	s0,s1,104a0 <__libc_fini_array+0x54>
   10484:	01013403          	ld	s0,16(sp)
   10488:	01813083          	ld	ra,24(sp)
   1048c:	00813483          	ld	s1,8(sp)
   10490:	00013903          	ld	s2,0(sp)
   10494:	02010113          	addi	sp,sp,32
   10498:	00000317          	auipc	t1,0x0
   1049c:	c6830067          	jr	-920(t1) # 10100 <_fini>
   104a0:	ff800593          	li	a1,-8
   104a4:	00048513          	mv	a0,s1
   104a8:	1c9000ef          	jal	ra,10e70 <__muldi3>
   104ac:	00a90533          	add	a0,s2,a0
   104b0:	ff853783          	ld	a5,-8(a0)
   104b4:	00148493          	addi	s1,s1,1
   104b8:	000780e7          	jalr	a5
   104bc:	fc5ff06f          	j	10480 <__libc_fini_array+0x34>
   104c0:	0000                	unimp
	...

00000000000104c4 <__libc_init_array>:
   104c4:	fe010113          	addi	sp,sp,-32
   104c8:	00813823          	sd	s0,16(sp)
   104cc:	00913423          	sd	s1,8(sp)
   104d0:	00011437          	lui	s0,0x11
   104d4:	000114b7          	lui	s1,0x11
   104d8:	00048793          	mv	a5,s1
   104dc:	00040413          	mv	s0,s0
   104e0:	40f40433          	sub	s0,s0,a5
   104e4:	01213023          	sd	s2,0(sp)
   104e8:	00113c23          	sd	ra,24(sp)
   104ec:	40345413          	srai	s0,s0,0x3
   104f0:	00048493          	mv	s1,s1
   104f4:	00000913          	li	s2,0
   104f8:	04891463          	bne	s2,s0,10540 <__libc_init_array+0x7c>
   104fc:	000114b7          	lui	s1,0x11
   10500:	00000097          	auipc	ra,0x0
   10504:	c00080e7          	jalr	-1024(ra) # 10100 <_fini>
   10508:	00011437          	lui	s0,0x11
   1050c:	00048793          	mv	a5,s1
   10510:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10514:	40f40433          	sub	s0,s0,a5
   10518:	40345413          	srai	s0,s0,0x3
   1051c:	00048493          	mv	s1,s1
   10520:	00000913          	li	s2,0
   10524:	02891863          	bne	s2,s0,10554 <__libc_init_array+0x90>
   10528:	01813083          	ld	ra,24(sp)
   1052c:	01013403          	ld	s0,16(sp)
   10530:	00813483          	ld	s1,8(sp)
   10534:	00013903          	ld	s2,0(sp)
   10538:	02010113          	addi	sp,sp,32
   1053c:	00008067          	ret
   10540:	0004b783          	ld	a5,0(s1) # 11000 <__frame_dummy_init_array_entry>
   10544:	00190913          	addi	s2,s2,1
   10548:	00848493          	addi	s1,s1,8
   1054c:	000780e7          	jalr	a5
   10550:	fa9ff06f          	j	104f8 <__libc_init_array+0x34>
   10554:	0004b783          	ld	a5,0(s1)
   10558:	00190913          	addi	s2,s2,1
   1055c:	00848493          	addi	s1,s1,8
   10560:	000780e7          	jalr	a5
   10564:	fc1ff06f          	j	10524 <__libc_init_array+0x60>
   10568:	0000                	unimp
	...

000000000001056c <memset>:
   1056c:	00f00813          	li	a6,15
   10570:	00050713          	mv	a4,a0
   10574:	02c87a63          	bleu	a2,a6,105a8 <memset+0x3c>
   10578:	00f77793          	andi	a5,a4,15
   1057c:	0a079063          	bnez	a5,1061c <memset+0xb0>
   10580:	06059e63          	bnez	a1,105fc <memset+0x90>
   10584:	ff067693          	andi	a3,a2,-16
   10588:	00f67613          	andi	a2,a2,15
   1058c:	00e686b3          	add	a3,a3,a4
   10590:	00b73023          	sd	a1,0(a4)
   10594:	00b73423          	sd	a1,8(a4)
   10598:	01070713          	addi	a4,a4,16
   1059c:	fed76ae3          	bltu	a4,a3,10590 <memset+0x24>
   105a0:	00061463          	bnez	a2,105a8 <memset+0x3c>
   105a4:	00008067          	ret
   105a8:	40c806b3          	sub	a3,a6,a2
   105ac:	00269693          	slli	a3,a3,0x2
   105b0:	00000297          	auipc	t0,0x0
   105b4:	005686b3          	add	a3,a3,t0
   105b8:	00c68067          	jr	12(a3)
   105bc:	00b70723          	sb	a1,14(a4)
   105c0:	00b706a3          	sb	a1,13(a4)
   105c4:	00b70623          	sb	a1,12(a4)
   105c8:	00b705a3          	sb	a1,11(a4)
   105cc:	00b70523          	sb	a1,10(a4)
   105d0:	00b704a3          	sb	a1,9(a4)
   105d4:	00b70423          	sb	a1,8(a4)
   105d8:	00b703a3          	sb	a1,7(a4)
   105dc:	00b70323          	sb	a1,6(a4)
   105e0:	00b702a3          	sb	a1,5(a4)
   105e4:	00b70223          	sb	a1,4(a4)
   105e8:	00b701a3          	sb	a1,3(a4)
   105ec:	00b70123          	sb	a1,2(a4)
   105f0:	00b700a3          	sb	a1,1(a4)
   105f4:	00b70023          	sb	a1,0(a4)
   105f8:	00008067          	ret
   105fc:	0ff5f593          	andi	a1,a1,255
   10600:	00859693          	slli	a3,a1,0x8
   10604:	00d5e5b3          	or	a1,a1,a3
   10608:	01059693          	slli	a3,a1,0x10
   1060c:	00d5e5b3          	or	a1,a1,a3
   10610:	02059693          	slli	a3,a1,0x20
   10614:	00d5e5b3          	or	a1,a1,a3
   10618:	f6dff06f          	j	10584 <memset+0x18>
   1061c:	00279693          	slli	a3,a5,0x2
   10620:	00000297          	auipc	t0,0x0
   10624:	005686b3          	add	a3,a3,t0
   10628:	00008293          	mv	t0,ra
   1062c:	f98680e7          	jalr	-104(a3)
   10630:	00028093          	mv	ra,t0
   10634:	ff078793          	addi	a5,a5,-16
   10638:	40f70733          	sub	a4,a4,a5
   1063c:	00f60633          	add	a2,a2,a5
   10640:	f6c874e3          	bleu	a2,a6,105a8 <memset+0x3c>
   10644:	f3dff06f          	j	10580 <memset+0x14>

0000000000010648 <__register_exitproc>:
   10648:	000117b7          	lui	a5,0x11
   1064c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10650:	00050313          	mv	t1,a0
   10654:	1f873783          	ld	a5,504(a4)
   10658:	00079663          	bnez	a5,10664 <__register_exitproc+0x1c>
   1065c:	20070793          	addi	a5,a4,512
   10660:	1ef73c23          	sd	a5,504(a4)
   10664:	0087a703          	lw	a4,8(a5)
   10668:	01f00813          	li	a6,31
   1066c:	fff00513          	li	a0,-1
   10670:	04e84e63          	blt	a6,a4,106cc <__register_exitproc+0x84>
   10674:	02030e63          	beqz	t1,106b0 <__register_exitproc+0x68>
   10678:	00371813          	slli	a6,a4,0x3
   1067c:	01078833          	add	a6,a5,a6
   10680:	10c83823          	sd	a2,272(a6)
   10684:	3107a883          	lw	a7,784(a5)
   10688:	00100613          	li	a2,1
   1068c:	00e6163b          	sllw	a2,a2,a4
   10690:	00c8e8b3          	or	a7,a7,a2
   10694:	3117a823          	sw	a7,784(a5)
   10698:	20d83823          	sd	a3,528(a6)
   1069c:	00200693          	li	a3,2
   106a0:	00d31863          	bne	t1,a3,106b0 <__register_exitproc+0x68>
   106a4:	3147a683          	lw	a3,788(a5)
   106a8:	00c6e633          	or	a2,a3,a2
   106ac:	30c7aa23          	sw	a2,788(a5)
   106b0:	0017069b          	addiw	a3,a4,1
   106b4:	00270713          	addi	a4,a4,2
   106b8:	00371713          	slli	a4,a4,0x3
   106bc:	00d7a423          	sw	a3,8(a5)
   106c0:	00e787b3          	add	a5,a5,a4
   106c4:	00b7b023          	sd	a1,0(a5)
   106c8:	00000513          	li	a0,0
   106cc:	00008067          	ret
   106d0:	0000                	unimp
	...

00000000000106d4 <__call_exitprocs>:
   106d4:	fb010113          	addi	sp,sp,-80
   106d8:	000117b7          	lui	a5,0x11
   106dc:	03313423          	sd	s3,40(sp)
   106e0:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   106e4:	03413023          	sd	s4,32(sp)
   106e8:	01513c23          	sd	s5,24(sp)
   106ec:	01613823          	sd	s6,16(sp)
   106f0:	04113423          	sd	ra,72(sp)
   106f4:	04813023          	sd	s0,64(sp)
   106f8:	02913c23          	sd	s1,56(sp)
   106fc:	03213823          	sd	s2,48(sp)
   10700:	01713423          	sd	s7,8(sp)
   10704:	00050a93          	mv	s5,a0
   10708:	00058a13          	mv	s4,a1
   1070c:	00100b13          	li	s6,1
   10710:	1f89b403          	ld	s0,504(s3)
   10714:	00040c63          	beqz	s0,1072c <__call_exitprocs+0x58>
   10718:	00842483          	lw	s1,8(s0)
   1071c:	fff4849b          	addiw	s1,s1,-1
   10720:	00349913          	slli	s2,s1,0x3
   10724:	01240933          	add	s2,s0,s2
   10728:	0204d863          	bgez	s1,10758 <__call_exitprocs+0x84>
   1072c:	04813083          	ld	ra,72(sp)
   10730:	04013403          	ld	s0,64(sp)
   10734:	03813483          	ld	s1,56(sp)
   10738:	03013903          	ld	s2,48(sp)
   1073c:	02813983          	ld	s3,40(sp)
   10740:	02013a03          	ld	s4,32(sp)
   10744:	01813a83          	ld	s5,24(sp)
   10748:	01013b03          	ld	s6,16(sp)
   1074c:	00813b83          	ld	s7,8(sp)
   10750:	05010113          	addi	sp,sp,80
   10754:	00008067          	ret
   10758:	000a0c63          	beqz	s4,10770 <__call_exitprocs+0x9c>
   1075c:	21093783          	ld	a5,528(s2)
   10760:	01478863          	beq	a5,s4,10770 <__call_exitprocs+0x9c>
   10764:	fff4849b          	addiw	s1,s1,-1
   10768:	ff890913          	addi	s2,s2,-8
   1076c:	fbdff06f          	j	10728 <__call_exitprocs+0x54>
   10770:	00842783          	lw	a5,8(s0)
   10774:	01093683          	ld	a3,16(s2)
   10778:	fff7879b          	addiw	a5,a5,-1
   1077c:	02979e63          	bne	a5,s1,107b8 <__call_exitprocs+0xe4>
   10780:	00942423          	sw	s1,8(s0)
   10784:	fe0680e3          	beqz	a3,10764 <__call_exitprocs+0x90>
   10788:	31042703          	lw	a4,784(s0)
   1078c:	009b163b          	sllw	a2,s6,s1
   10790:	00842b83          	lw	s7,8(s0)
   10794:	00c77733          	and	a4,a4,a2
   10798:	0007071b          	sext.w	a4,a4
   1079c:	02071263          	bnez	a4,107c0 <__call_exitprocs+0xec>
   107a0:	000680e7          	jalr	a3
   107a4:	00842703          	lw	a4,8(s0)
   107a8:	1f89b783          	ld	a5,504(s3)
   107ac:	f77712e3          	bne	a4,s7,10710 <__call_exitprocs+0x3c>
   107b0:	faf40ae3          	beq	s0,a5,10764 <__call_exitprocs+0x90>
   107b4:	f5dff06f          	j	10710 <__call_exitprocs+0x3c>
   107b8:	00093823          	sd	zero,16(s2)
   107bc:	fc9ff06f          	j	10784 <__call_exitprocs+0xb0>
   107c0:	31442783          	lw	a5,788(s0)
   107c4:	11093583          	ld	a1,272(s2)
   107c8:	00c7f7b3          	and	a5,a5,a2
   107cc:	0007879b          	sext.w	a5,a5
   107d0:	00079863          	bnez	a5,107e0 <__call_exitprocs+0x10c>
   107d4:	000a8513          	mv	a0,s5
   107d8:	000680e7          	jalr	a3
   107dc:	fc9ff06f          	j	107a4 <__call_exitprocs+0xd0>
   107e0:	00058513          	mv	a0,a1
   107e4:	000680e7          	jalr	a3
   107e8:	fbdff06f          	j	107a4 <__call_exitprocs+0xd0>
   107ec:	0000                	unimp
	...

00000000000107f0 <conv_stat>:
   107f0:	0005b783          	ld	a5,0(a1)
   107f4:	00f51023          	sh	a5,0(a0)
   107f8:	0085b783          	ld	a5,8(a1)
   107fc:	00f51123          	sh	a5,2(a0)
   10800:	0105a783          	lw	a5,16(a1)
   10804:	00f52223          	sw	a5,4(a0)
   10808:	0145a783          	lw	a5,20(a1)
   1080c:	00f51423          	sh	a5,8(a0)
   10810:	0185a783          	lw	a5,24(a1)
   10814:	00f51523          	sh	a5,10(a0)
   10818:	01c5a783          	lw	a5,28(a1)
   1081c:	00f51623          	sh	a5,12(a0)
   10820:	0205b783          	ld	a5,32(a1)
   10824:	00f51723          	sh	a5,14(a0)
   10828:	0305b783          	ld	a5,48(a1)
   1082c:	00f53823          	sd	a5,16(a0)
   10830:	0405b783          	ld	a5,64(a1)
   10834:	04f53823          	sd	a5,80(a0)
   10838:	0385a783          	lw	a5,56(a1)
   1083c:	04f53423          	sd	a5,72(a0)
   10840:	0485b783          	ld	a5,72(a1)
   10844:	00f53c23          	sd	a5,24(a0)
   10848:	0585b783          	ld	a5,88(a1)
   1084c:	02f53423          	sd	a5,40(a0)
   10850:	0685b783          	ld	a5,104(a1)
   10854:	02f53c23          	sd	a5,56(a0)
   10858:	00008067          	ret

000000000001085c <__syscall_error>:
   1085c:	ff010113          	addi	sp,sp,-16
   10860:	00813023          	sd	s0,0(sp)
   10864:	00113423          	sd	ra,8(sp)
   10868:	00050413          	mv	s0,a0
   1086c:	00000097          	auipc	ra,0x0
   10870:	5f8080e7          	jalr	1528(ra) # 10e64 <__errno>
   10874:	408007bb          	negw	a5,s0
   10878:	00813083          	ld	ra,8(sp)
   1087c:	00013403          	ld	s0,0(sp)
   10880:	00f52023          	sw	a5,0(a0)
   10884:	fff00513          	li	a0,-1
   10888:	01010113          	addi	sp,sp,16
   1088c:	00008067          	ret

0000000000010890 <__internal_syscall>:
   10890:	00050893          	mv	a7,a0
   10894:	00058513          	mv	a0,a1
   10898:	00060593          	mv	a1,a2
   1089c:	00068613          	mv	a2,a3
   108a0:	00070693          	mv	a3,a4
   108a4:	00000073          	ecall
   108a8:	00055663          	bgez	a0,108b4 <__internal_syscall+0x24>
   108ac:	00000317          	auipc	t1,0x0
   108b0:	fb030067          	jr	-80(t1) # 1085c <__syscall_error>
   108b4:	00008067          	ret

00000000000108b8 <open>:
   108b8:	ff010113          	addi	sp,sp,-16
   108bc:	00060693          	mv	a3,a2
   108c0:	00000713          	li	a4,0
   108c4:	00058613          	mv	a2,a1
   108c8:	00050593          	mv	a1,a0
   108cc:	40000513          	li	a0,1024
   108d0:	00113423          	sd	ra,8(sp)
   108d4:	00000097          	auipc	ra,0x0
   108d8:	fbc080e7          	jalr	-68(ra) # 10890 <__internal_syscall>
   108dc:	00813083          	ld	ra,8(sp)
   108e0:	0005051b          	sext.w	a0,a0
   108e4:	01010113          	addi	sp,sp,16
   108e8:	00008067          	ret

00000000000108ec <openat>:
   108ec:	ff010113          	addi	sp,sp,-16
   108f0:	00068713          	mv	a4,a3
   108f4:	00060693          	mv	a3,a2
   108f8:	00058613          	mv	a2,a1
   108fc:	00050593          	mv	a1,a0
   10900:	03800513          	li	a0,56
   10904:	00113423          	sd	ra,8(sp)
   10908:	f89ff0ef          	jal	ra,10890 <__internal_syscall>
   1090c:	00813083          	ld	ra,8(sp)
   10910:	0005051b          	sext.w	a0,a0
   10914:	01010113          	addi	sp,sp,16
   10918:	00008067          	ret

000000000001091c <lseek>:
   1091c:	00060693          	mv	a3,a2
   10920:	00000713          	li	a4,0
   10924:	00058613          	mv	a2,a1
   10928:	00050593          	mv	a1,a0
   1092c:	03e00513          	li	a0,62
   10930:	00000317          	auipc	t1,0x0
   10934:	f6030067          	jr	-160(t1) # 10890 <__internal_syscall>

0000000000010938 <read>:
   10938:	00060693          	mv	a3,a2
   1093c:	00000713          	li	a4,0
   10940:	00058613          	mv	a2,a1
   10944:	00050593          	mv	a1,a0
   10948:	03f00513          	li	a0,63
   1094c:	f45ff06f          	j	10890 <__internal_syscall>

0000000000010950 <write>:
   10950:	00060693          	mv	a3,a2
   10954:	00000713          	li	a4,0
   10958:	00058613          	mv	a2,a1
   1095c:	00050593          	mv	a1,a0
   10960:	04000513          	li	a0,64
   10964:	00000317          	auipc	t1,0x0
   10968:	f2c30067          	jr	-212(t1) # 10890 <__internal_syscall>

000000000001096c <fstat>:
   1096c:	f6010113          	addi	sp,sp,-160
   10970:	08913423          	sd	s1,136(sp)
   10974:	00010613          	mv	a2,sp
   10978:	00058493          	mv	s1,a1
   1097c:	00000713          	li	a4,0
   10980:	00050593          	mv	a1,a0
   10984:	00000693          	li	a3,0
   10988:	05000513          	li	a0,80
   1098c:	08113c23          	sd	ra,152(sp)
   10990:	08813823          	sd	s0,144(sp)
   10994:	efdff0ef          	jal	ra,10890 <__internal_syscall>
   10998:	00050413          	mv	s0,a0
   1099c:	00010593          	mv	a1,sp
   109a0:	00048513          	mv	a0,s1
   109a4:	e4dff0ef          	jal	ra,107f0 <conv_stat>
   109a8:	0004051b          	sext.w	a0,s0
   109ac:	09813083          	ld	ra,152(sp)
   109b0:	09013403          	ld	s0,144(sp)
   109b4:	08813483          	ld	s1,136(sp)
   109b8:	0a010113          	addi	sp,sp,160
   109bc:	00008067          	ret

00000000000109c0 <stat>:
   109c0:	f6010113          	addi	sp,sp,-160
   109c4:	08913423          	sd	s1,136(sp)
   109c8:	00010613          	mv	a2,sp
   109cc:	00058493          	mv	s1,a1
   109d0:	00000713          	li	a4,0
   109d4:	00050593          	mv	a1,a0
   109d8:	00000693          	li	a3,0
   109dc:	40e00513          	li	a0,1038
   109e0:	08113c23          	sd	ra,152(sp)
   109e4:	08813823          	sd	s0,144(sp)
   109e8:	00000097          	auipc	ra,0x0
   109ec:	ea8080e7          	jalr	-344(ra) # 10890 <__internal_syscall>
   109f0:	00050413          	mv	s0,a0
   109f4:	00010593          	mv	a1,sp
   109f8:	00048513          	mv	a0,s1
   109fc:	00000097          	auipc	ra,0x0
   10a00:	df4080e7          	jalr	-524(ra) # 107f0 <conv_stat>
   10a04:	0004051b          	sext.w	a0,s0
   10a08:	09813083          	ld	ra,152(sp)
   10a0c:	09013403          	ld	s0,144(sp)
   10a10:	08813483          	ld	s1,136(sp)
   10a14:	0a010113          	addi	sp,sp,160
   10a18:	00008067          	ret

0000000000010a1c <lstat>:
   10a1c:	f6010113          	addi	sp,sp,-160
   10a20:	08913423          	sd	s1,136(sp)
   10a24:	00010613          	mv	a2,sp
   10a28:	00058493          	mv	s1,a1
   10a2c:	00000713          	li	a4,0
   10a30:	00050593          	mv	a1,a0
   10a34:	00000693          	li	a3,0
   10a38:	40f00513          	li	a0,1039
   10a3c:	08113c23          	sd	ra,152(sp)
   10a40:	08813823          	sd	s0,144(sp)
   10a44:	e4dff0ef          	jal	ra,10890 <__internal_syscall>
   10a48:	00050413          	mv	s0,a0
   10a4c:	00010593          	mv	a1,sp
   10a50:	00048513          	mv	a0,s1
   10a54:	d9dff0ef          	jal	ra,107f0 <conv_stat>
   10a58:	0004051b          	sext.w	a0,s0
   10a5c:	09813083          	ld	ra,152(sp)
   10a60:	09013403          	ld	s0,144(sp)
   10a64:	08813483          	ld	s1,136(sp)
   10a68:	0a010113          	addi	sp,sp,160
   10a6c:	00008067          	ret

0000000000010a70 <fstatat>:
   10a70:	f6010113          	addi	sp,sp,-160
   10a74:	08913423          	sd	s1,136(sp)
   10a78:	00068713          	mv	a4,a3
   10a7c:	00060493          	mv	s1,a2
   10a80:	00010693          	mv	a3,sp
   10a84:	00058613          	mv	a2,a1
   10a88:	00050593          	mv	a1,a0
   10a8c:	04f00513          	li	a0,79
   10a90:	08113c23          	sd	ra,152(sp)
   10a94:	08813823          	sd	s0,144(sp)
   10a98:	00000097          	auipc	ra,0x0
   10a9c:	df8080e7          	jalr	-520(ra) # 10890 <__internal_syscall>
   10aa0:	00050413          	mv	s0,a0
   10aa4:	00010593          	mv	a1,sp
   10aa8:	00048513          	mv	a0,s1
   10aac:	00000097          	auipc	ra,0x0
   10ab0:	d44080e7          	jalr	-700(ra) # 107f0 <conv_stat>
   10ab4:	0004051b          	sext.w	a0,s0
   10ab8:	09813083          	ld	ra,152(sp)
   10abc:	09013403          	ld	s0,144(sp)
   10ac0:	08813483          	ld	s1,136(sp)
   10ac4:	0a010113          	addi	sp,sp,160
   10ac8:	00008067          	ret

0000000000010acc <access>:
   10acc:	ff010113          	addi	sp,sp,-16
   10ad0:	00058613          	mv	a2,a1
   10ad4:	00000713          	li	a4,0
   10ad8:	00050593          	mv	a1,a0
   10adc:	00000693          	li	a3,0
   10ae0:	40900513          	li	a0,1033
   10ae4:	00113423          	sd	ra,8(sp)
   10ae8:	da9ff0ef          	jal	ra,10890 <__internal_syscall>
   10aec:	00813083          	ld	ra,8(sp)
   10af0:	0005051b          	sext.w	a0,a0
   10af4:	01010113          	addi	sp,sp,16
   10af8:	00008067          	ret

0000000000010afc <faccessat>:
   10afc:	ff010113          	addi	sp,sp,-16
   10b00:	00068713          	mv	a4,a3
   10b04:	00060693          	mv	a3,a2
   10b08:	00058613          	mv	a2,a1
   10b0c:	00050593          	mv	a1,a0
   10b10:	03000513          	li	a0,48
   10b14:	00113423          	sd	ra,8(sp)
   10b18:	00000097          	auipc	ra,0x0
   10b1c:	d78080e7          	jalr	-648(ra) # 10890 <__internal_syscall>
   10b20:	00813083          	ld	ra,8(sp)
   10b24:	0005051b          	sext.w	a0,a0
   10b28:	01010113          	addi	sp,sp,16
   10b2c:	00008067          	ret

0000000000010b30 <close>:
   10b30:	ff010113          	addi	sp,sp,-16
   10b34:	00050593          	mv	a1,a0
   10b38:	00000713          	li	a4,0
   10b3c:	00000693          	li	a3,0
   10b40:	00000613          	li	a2,0
   10b44:	03900513          	li	a0,57
   10b48:	00113423          	sd	ra,8(sp)
   10b4c:	d45ff0ef          	jal	ra,10890 <__internal_syscall>
   10b50:	00813083          	ld	ra,8(sp)
   10b54:	0005051b          	sext.w	a0,a0
   10b58:	01010113          	addi	sp,sp,16
   10b5c:	00008067          	ret

0000000000010b60 <link>:
   10b60:	ff010113          	addi	sp,sp,-16
   10b64:	00058613          	mv	a2,a1
   10b68:	00000713          	li	a4,0
   10b6c:	00050593          	mv	a1,a0
   10b70:	00000693          	li	a3,0
   10b74:	40100513          	li	a0,1025
   10b78:	00113423          	sd	ra,8(sp)
   10b7c:	00000097          	auipc	ra,0x0
   10b80:	d14080e7          	jalr	-748(ra) # 10890 <__internal_syscall>
   10b84:	00813083          	ld	ra,8(sp)
   10b88:	0005051b          	sext.w	a0,a0
   10b8c:	01010113          	addi	sp,sp,16
   10b90:	00008067          	ret

0000000000010b94 <unlink>:
   10b94:	ff010113          	addi	sp,sp,-16
   10b98:	00050593          	mv	a1,a0
   10b9c:	00000713          	li	a4,0
   10ba0:	00000693          	li	a3,0
   10ba4:	00000613          	li	a2,0
   10ba8:	40200513          	li	a0,1026
   10bac:	00113423          	sd	ra,8(sp)
   10bb0:	ce1ff0ef          	jal	ra,10890 <__internal_syscall>
   10bb4:	00813083          	ld	ra,8(sp)
   10bb8:	0005051b          	sext.w	a0,a0
   10bbc:	01010113          	addi	sp,sp,16
   10bc0:	00008067          	ret

0000000000010bc4 <execve>:
   10bc4:	ff010113          	addi	sp,sp,-16
   10bc8:	00113423          	sd	ra,8(sp)
   10bcc:	00000097          	auipc	ra,0x0
   10bd0:	298080e7          	jalr	664(ra) # 10e64 <__errno>
   10bd4:	00813083          	ld	ra,8(sp)
   10bd8:	00c00793          	li	a5,12
   10bdc:	00f52023          	sw	a5,0(a0)
   10be0:	fff00513          	li	a0,-1
   10be4:	01010113          	addi	sp,sp,16
   10be8:	00008067          	ret

0000000000010bec <fork>:
   10bec:	ff010113          	addi	sp,sp,-16
   10bf0:	00113423          	sd	ra,8(sp)
   10bf4:	270000ef          	jal	ra,10e64 <__errno>
   10bf8:	00813083          	ld	ra,8(sp)
   10bfc:	00b00793          	li	a5,11
   10c00:	00f52023          	sw	a5,0(a0)
   10c04:	fff00513          	li	a0,-1
   10c08:	01010113          	addi	sp,sp,16
   10c0c:	00008067          	ret

0000000000010c10 <getpid>:
   10c10:	00100513          	li	a0,1
   10c14:	00008067          	ret

0000000000010c18 <kill>:
   10c18:	ff010113          	addi	sp,sp,-16
   10c1c:	00113423          	sd	ra,8(sp)
   10c20:	244000ef          	jal	ra,10e64 <__errno>
   10c24:	00813083          	ld	ra,8(sp)
   10c28:	01600793          	li	a5,22
   10c2c:	00f52023          	sw	a5,0(a0)
   10c30:	fff00513          	li	a0,-1
   10c34:	01010113          	addi	sp,sp,16
   10c38:	00008067          	ret

0000000000010c3c <wait>:
   10c3c:	ff010113          	addi	sp,sp,-16
   10c40:	00113423          	sd	ra,8(sp)
   10c44:	00000097          	auipc	ra,0x0
   10c48:	220080e7          	jalr	544(ra) # 10e64 <__errno>
   10c4c:	00813083          	ld	ra,8(sp)
   10c50:	00a00793          	li	a5,10
   10c54:	00f52023          	sw	a5,0(a0)
   10c58:	fff00513          	li	a0,-1
   10c5c:	01010113          	addi	sp,sp,16
   10c60:	00008067          	ret

0000000000010c64 <isatty>:
   10c64:	f8010113          	addi	sp,sp,-128
   10c68:	00810593          	addi	a1,sp,8
   10c6c:	06113c23          	sd	ra,120(sp)
   10c70:	cfdff0ef          	jal	ra,1096c <fstat>
   10c74:	fff00793          	li	a5,-1
   10c78:	00f50863          	beq	a0,a5,10c88 <isatty+0x24>
   10c7c:	00c12503          	lw	a0,12(sp)
   10c80:	40d5551b          	sraiw	a0,a0,0xd
   10c84:	00157513          	andi	a0,a0,1
   10c88:	07813083          	ld	ra,120(sp)
   10c8c:	08010113          	addi	sp,sp,128
   10c90:	00008067          	ret

0000000000010c94 <gettimeofday>:
   10c94:	ff010113          	addi	sp,sp,-16
   10c98:	00050593          	mv	a1,a0
   10c9c:	00000713          	li	a4,0
   10ca0:	00000693          	li	a3,0
   10ca4:	00000613          	li	a2,0
   10ca8:	0a900513          	li	a0,169
   10cac:	00113423          	sd	ra,8(sp)
   10cb0:	00000097          	auipc	ra,0x0
   10cb4:	be0080e7          	jalr	-1056(ra) # 10890 <__internal_syscall>
   10cb8:	00813083          	ld	ra,8(sp)
   10cbc:	0005051b          	sext.w	a0,a0
   10cc0:	01010113          	addi	sp,sp,16
   10cc4:	00008067          	ret

0000000000010cc8 <times>:
   10cc8:	fd010113          	addi	sp,sp,-48
   10ccc:	02813023          	sd	s0,32(sp)
   10cd0:	00050413          	mv	s0,a0
   10cd4:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2572>
   10cd8:	00913c23          	sd	s1,24(sp)
   10cdc:	02113423          	sd	ra,40(sp)
   10ce0:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2572>
   10ce4:	00079a63          	bnez	a5,10cf8 <times+0x30>
   10ce8:	00000593          	li	a1,0
   10cec:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2572>
   10cf0:	00000097          	auipc	ra,0x0
   10cf4:	fa4080e7          	jalr	-92(ra) # 10c94 <gettimeofday>
   10cf8:	00000593          	li	a1,0
   10cfc:	00010513          	mv	a0,sp
   10d00:	00000097          	auipc	ra,0x0
   10d04:	f94080e7          	jalr	-108(ra) # 10c94 <gettimeofday>
   10d08:	0004b783          	ld	a5,0(s1)
   10d0c:	00013503          	ld	a0,0(sp)
   10d10:	000f45b7          	lui	a1,0xf4
   10d14:	24058593          	addi	a1,a1,576 # f4240 <__global_pointer$+0xe22e8>
   10d18:	40f50533          	sub	a0,a0,a5
   10d1c:	154000ef          	jal	ra,10e70 <__muldi3>
   10d20:	0084b703          	ld	a4,8(s1)
   10d24:	00813783          	ld	a5,8(sp)
   10d28:	00043823          	sd	zero,16(s0)
   10d2c:	00043c23          	sd	zero,24(s0)
   10d30:	40e787b3          	sub	a5,a5,a4
   10d34:	00f50533          	add	a0,a0,a5
   10d38:	00a43023          	sd	a0,0(s0)
   10d3c:	00043423          	sd	zero,8(s0)
   10d40:	02813083          	ld	ra,40(sp)
   10d44:	02013403          	ld	s0,32(sp)
   10d48:	01813483          	ld	s1,24(sp)
   10d4c:	fff00513          	li	a0,-1
   10d50:	03010113          	addi	sp,sp,48
   10d54:	00008067          	ret

0000000000010d58 <ftime>:
   10d58:	00051423          	sh	zero,8(a0)
   10d5c:	00053023          	sd	zero,0(a0)
   10d60:	00000513          	li	a0,0
   10d64:	00008067          	ret

0000000000010d68 <utime>:
   10d68:	fff00513          	li	a0,-1
   10d6c:	00008067          	ret

0000000000010d70 <chown>:
   10d70:	fff00513          	li	a0,-1
   10d74:	00008067          	ret

0000000000010d78 <chmod>:
   10d78:	fff00513          	li	a0,-1
   10d7c:	00008067          	ret

0000000000010d80 <chdir>:
   10d80:	fff00513          	li	a0,-1
   10d84:	00008067          	ret

0000000000010d88 <getcwd>:
   10d88:	00000513          	li	a0,0
   10d8c:	00008067          	ret

0000000000010d90 <sysconf>:
   10d90:	00200793          	li	a5,2
   10d94:	00f50663          	beq	a0,a5,10da0 <sysconf+0x10>
   10d98:	fff00513          	li	a0,-1
   10d9c:	00008067          	ret
   10da0:	000f4537          	lui	a0,0xf4
   10da4:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10da8:	00008067          	ret

0000000000010dac <sbrk>:
   10dac:	fe010113          	addi	sp,sp,-32
   10db0:	00813823          	sd	s0,16(sp)
   10db4:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10db8:	00913423          	sd	s1,8(sp)
   10dbc:	00113c23          	sd	ra,24(sp)
   10dc0:	00050493          	mv	s1,a0
   10dc4:	04079063          	bnez	a5,10e04 <sbrk+0x58>
   10dc8:	00000713          	li	a4,0
   10dcc:	00000693          	li	a3,0
   10dd0:	00000613          	li	a2,0
   10dd4:	00000593          	li	a1,0
   10dd8:	0d600513          	li	a0,214
   10ddc:	ab5ff0ef          	jal	ra,10890 <__internal_syscall>
   10de0:	fff00793          	li	a5,-1
   10de4:	00f51e63          	bne	a0,a5,10e00 <sbrk+0x54>
   10de8:	fff00513          	li	a0,-1
   10dec:	01813083          	ld	ra,24(sp)
   10df0:	01013403          	ld	s0,16(sp)
   10df4:	00813483          	ld	s1,8(sp)
   10df8:	02010113          	addi	sp,sp,32
   10dfc:	00008067          	ret
   10e00:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e04:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10e08:	00000713          	li	a4,0
   10e0c:	00000693          	li	a3,0
   10e10:	00b485b3          	add	a1,s1,a1
   10e14:	00000613          	li	a2,0
   10e18:	0d600513          	li	a0,214
   10e1c:	a75ff0ef          	jal	ra,10890 <__internal_syscall>
   10e20:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10e24:	00f484b3          	add	s1,s1,a5
   10e28:	fc9510e3          	bne	a0,s1,10de8 <sbrk+0x3c>
   10e2c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10e30:	00078513          	mv	a0,a5
   10e34:	fb9ff06f          	j	10dec <sbrk+0x40>

0000000000010e38 <_exit>:
   10e38:	ff010113          	addi	sp,sp,-16
   10e3c:	00050593          	mv	a1,a0
   10e40:	00000713          	li	a4,0
   10e44:	00000693          	li	a3,0
   10e48:	00000613          	li	a2,0
   10e4c:	05d00513          	li	a0,93
   10e50:	00113423          	sd	ra,8(sp)
   10e54:	00000097          	auipc	ra,0x0
   10e58:	a3c080e7          	jalr	-1476(ra) # 10890 <__internal_syscall>
   10e5c:	0000006f          	j	10e5c <_exit+0x24>
   10e60:	0000                	unimp
	...

0000000000010e64 <__errno>:
   10e64:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10e68:	00008067          	ret
   10e6c:	0000                	unimp
	...

0000000000010e70 <__muldi3>:
   10e70:	00050613          	mv	a2,a0
   10e74:	00000513          	li	a0,0
   10e78:	0015f693          	andi	a3,a1,1
   10e7c:	00068463          	beqz	a3,10e84 <__muldi3+0x14>
   10e80:	00c50533          	add	a0,a0,a2
   10e84:	0015d593          	srli	a1,a1,0x1
   10e88:	00161613          	slli	a2,a2,0x1
   10e8c:	fe0596e3          	bnez	a1,10e78 <__muldi3+0x8>
   10e90:	00008067          	ret
   10e94:	0000                	unimp
	...

Disassembly of section .rodata:

0000000000010e98 <.rodata>:
   10e98:	6854                	ld	a3,144(s0)
   10e9a:	7369                	lui	t1,0xffffa
   10e9c:	6920                	ld	s0,80(a0)
   10e9e:	74732073          	csrs	0x747,t1
   10ea2:	6972                	ld	s2,280(sp)
   10ea4:	676e                	ld	a4,216(sp)
   10ea6:	6620                	ld	s0,72(a2)
   10ea8:	6f72                	ld	t5,280(sp)
   10eaa:	206d                	0x206d
   10eac:	7270                	ld	a2,224(a2)
   10eae:	6e69                	lui	t3,0x1a
   10eb0:	5f74                	lw	a3,124(a4)
   10eb2:	0a292873          	csrrs	a6,0xa2,s2
   10eb6:	0000                	unimp
   10eb8:	6e45                	lui	t3,0x11
   10eba:	6574                	ld	a3,200(a0)
   10ebc:	2072                	fld	ft0,280(sp)
   10ebe:	2061                	0x2061
   10ec0:	756e                	ld	a0,248(sp)
   10ec2:	626d                	lui	tp,0x1b
   10ec4:	7265                	lui	tp,0xffff9
   10ec6:	203a                	fld	ft0,392(sp)
	...
   10ed0:	6854                	ld	a3,144(s0)
   10ed2:	2065                	0x2065
   10ed4:	756e                	ld	a0,248(sp)
   10ed6:	626d                	lui	tp,0x1b
   10ed8:	7265                	lui	tp,0xffff9
   10eda:	6920                	ld	s0,80(a0)
   10edc:	00203a73          	csrrc	s4,frm,zero
   10ee0:	000a                	0xa
   10ee2:	0000                	unimp
   10ee4:	0000                	unimp
   10ee6:	0000                	unimp
   10ee8:	6e45                	lui	t3,0x11
   10eea:	6574                	ld	a3,200(a0)
   10eec:	2072                	fld	ft0,280(sp)
   10eee:	2061                	0x2061
   10ef0:	72616863          	bltu	sp,t1,11620 <__fini_array_end+0x610>
   10ef4:	6361                	lui	t1,0x18
   10ef6:	6574                	ld	a3,200(a0)
   10ef8:	3a72                	fld	fs4,312(sp)
   10efa:	0020                	addi	s0,sp,8
   10efc:	0000                	unimp
   10efe:	0000                	unimp
   10f00:	6854                	ld	a3,144(s0)
   10f02:	2065                	0x2065
   10f04:	72616863          	bltu	sp,t1,11634 <__fini_array_end+0x624>
   10f08:	6361                	lui	t1,0x18
   10f0a:	6574                	ld	a3,200(a0)
   10f0c:	2072                	fld	ft0,280(sp)
   10f0e:	7369                	lui	t1,0xffffa
   10f10:	203a                	fld	ft0,392(sp)
	...

Disassembly of section .eh_frame:

0000000000010f14 <__EH_FRAME_BEGIN__>:
   10f14:	0000                	unimp
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
  10:	0e70                	addi	a2,sp,796
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
  10:	0e70                	addi	a2,sp,796
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0e94                	addi	a3,sp,848
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
  9c:	7002                	0x7002
  9e:	010e                	slli	sp,sp,0x3
  a0:	0000                	unimp
  a2:	0000                	unimp
  a4:	0300                	addi	s0,sp,384
  a6:	01030123          	sb	a6,2(t1) # ffffffffffffa002 <__global_pointer$+0xfffffffffffe80aa>
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
