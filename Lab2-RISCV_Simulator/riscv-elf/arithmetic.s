
arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	25a000ef          	jal	ra,1031e <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1a050513          	addi	a0,a0,416 # 10268 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	164080e7          	jalr	356(ra) # 10234 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1de080e7          	jalr	478(ra) # 102b6 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	15430067          	jr	340(t1) # 10242 <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6545                	lui	a0,0x11
   100fa:	67c5                	lui	a5,0x11
   100fc:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   10100:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	75850513          	addi	a0,a0,1880
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67c5                	lui	a5,0x11
   1011e:	6545                	lui	a0,0x11
   10120:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   10124:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	75850513          	addi	a0,a0,1880
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5184>
   1014c:	eb15                	bnez	a4,10180 <__do_global_dtors_aux+0x38>
   1014e:	1141                	addi	sp,sp,-16
   10150:	e022                	sd	s0,0(sp)
   10152:	e406                	sd	ra,8(sp)
   10154:	843e                	mv	s0,a5
   10156:	fa3ff0ef          	jal	ra,100f8 <deregister_tm_clones>
   1015a:	000007b7          	lui	a5,0x0
   1015e:	00078793          	mv	a5,a5
   10162:	cb81                	beqz	a5,10172 <__do_global_dtors_aux+0x2a>
   10164:	6545                	lui	a0,0x11
   10166:	8f050513          	addi	a0,a0,-1808 # 108f0 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf99                	beqz	a5,101a8 <frame_dummy+0x26>
   1018c:	65c5                	lui	a1,0x11
   1018e:	6545                	lui	a0,0x11
   10190:	1141                	addi	sp,sp,-16
   10192:	78058593          	addi	a1,a1,1920 # 11780 <object.5189>
   10196:	8f050513          	addi	a0,a0,-1808 # 108f0 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <main>:
   101ac:	1101                	addi	sp,sp,-32
   101ae:	ec06                	sd	ra,24(sp)
   101b0:	e822                	sd	s0,16(sp)
   101b2:	1000                	addi	s0,sp,32
   101b4:	47a9                	li	a5,10
   101b6:	fef42623          	sw	a5,-20(s0)
   101ba:	47d1                	li	a5,20
   101bc:	fef42423          	sw	a5,-24(s0)
   101c0:	fec42703          	lw	a4,-20(s0)
   101c4:	fe842783          	lw	a5,-24(s0)
   101c8:	9fb9                	addw	a5,a5,a4
   101ca:	fef42223          	sw	a5,-28(s0)
   101ce:	fe442783          	lw	a5,-28(s0)
   101d2:	853e                	mv	a0,a5
   101d4:	012000ef          	jal	ra,101e6 <print_d>
   101d8:	4781                	li	a5,0
   101da:	853e                	mv	a0,a5
   101dc:	60e2                	ld	ra,24(sp)
   101de:	6442                	ld	s0,16(sp)
   101e0:	6105                	addi	sp,sp,32
   101e2:	8082                	ret
	...

00000000000101e6 <print_d>:
   101e6:	1101                	addi	sp,sp,-32
   101e8:	ec22                	sd	s0,24(sp)
   101ea:	1000                	addi	s0,sp,32
   101ec:	87aa                	mv	a5,a0
   101ee:	fef42623          	sw	a5,-20(s0)
   101f2:	4889                	li	a7,2
   101f4:	00000073          	ecall
   101f8:	0001                	nop
   101fa:	6462                	ld	s0,24(sp)
   101fc:	6105                	addi	sp,sp,32
   101fe:	8082                	ret

0000000000010200 <print_s>:
   10200:	1101                	addi	sp,sp,-32
   10202:	ec22                	sd	s0,24(sp)
   10204:	1000                	addi	s0,sp,32
   10206:	fea43423          	sd	a0,-24(s0)
   1020a:	4881                	li	a7,0
   1020c:	00000073          	ecall
   10210:	0001                	nop
   10212:	6462                	ld	s0,24(sp)
   10214:	6105                	addi	sp,sp,32
   10216:	8082                	ret

0000000000010218 <print_c>:
   10218:	1101                	addi	sp,sp,-32
   1021a:	ec22                	sd	s0,24(sp)
   1021c:	1000                	addi	s0,sp,32
   1021e:	87aa                	mv	a5,a0
   10220:	fef407a3          	sb	a5,-17(s0)
   10224:	4885                	li	a7,1
   10226:	00000073          	ecall
   1022a:	0001                	nop
   1022c:	6462                	ld	s0,24(sp)
   1022e:	6105                	addi	sp,sp,32
   10230:	8082                	ret
	...

0000000000010234 <atexit>:
   10234:	85aa                	mv	a1,a0
   10236:	4681                	li	a3,0
   10238:	4601                	li	a2,0
   1023a:	4501                	li	a0,0
   1023c:	18c0006f          	j	103c8 <__register_exitproc>
	...

0000000000010242 <exit>:
   10242:	1141                	addi	sp,sp,-16
   10244:	4581                	li	a1,0
   10246:	e022                	sd	s0,0(sp)
   10248:	e406                	sd	ra,8(sp)
   1024a:	842a                	mv	s0,a0
   1024c:	1e4000ef          	jal	ra,10430 <__call_exitprocs>
   10250:	67c5                	lui	a5,0x11
   10252:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10256:	6d3c                	ld	a5,88(a0)
   10258:	c391                	beqz	a5,1025c <exit+0x1a>
   1025a:	9782                	jalr	a5
   1025c:	8522                	mv	a0,s0
   1025e:	00000097          	auipc	ra,0x0
   10262:	66e080e7          	jalr	1646(ra) # 108cc <_exit>
	...

0000000000010268 <__libc_fini_array>:
   10268:	7179                	addi	sp,sp,-48
   1026a:	67c5                	lui	a5,0x11
   1026c:	6745                	lui	a4,0x11
   1026e:	f022                	sd	s0,32(sp)
   10270:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10274:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10278:	8c19                	sub	s0,s0,a4
   1027a:	ec26                	sd	s1,24(sp)
   1027c:	e84a                	sd	s2,16(sp)
   1027e:	e44e                	sd	s3,8(sp)
   10280:	f406                	sd	ra,40(sp)
   10282:	840d                	srai	s0,s0,0x3
   10284:	4481                	li	s1,0
   10286:	01078913          	addi	s2,a5,16
   1028a:	59e1                	li	s3,-8
   1028c:	00941c63          	bne	s0,s1,102a4 <__libc_fini_array+0x3c>
   10290:	7402                	ld	s0,32(sp)
   10292:	70a2                	ld	ra,40(sp)
   10294:	64e2                	ld	s1,24(sp)
   10296:	6942                	ld	s2,16(sp)
   10298:	69a2                	ld	s3,8(sp)
   1029a:	6145                	addi	sp,sp,48
   1029c:	00000317          	auipc	t1,0x0
   102a0:	e5a30067          	jr	-422(t1) # 100f6 <_fini>
   102a4:	033487b3          	mul	a5,s1,s3
   102a8:	0485                	addi	s1,s1,1
   102aa:	97ca                	add	a5,a5,s2
   102ac:	ff87b783          	ld	a5,-8(a5)
   102b0:	9782                	jalr	a5
   102b2:	bfe9                	j	1028c <__libc_fini_array+0x24>
	...

00000000000102b6 <__libc_init_array>:
   102b6:	1101                	addi	sp,sp,-32
   102b8:	e822                	sd	s0,16(sp)
   102ba:	e426                	sd	s1,8(sp)
   102bc:	6445                	lui	s0,0x11
   102be:	64c5                	lui	s1,0x11
   102c0:	00048793          	mv	a5,s1
   102c4:	00040413          	mv	s0,s0
   102c8:	8c1d                	sub	s0,s0,a5
   102ca:	e04a                	sd	s2,0(sp)
   102cc:	ec06                	sd	ra,24(sp)
   102ce:	840d                	srai	s0,s0,0x3
   102d0:	00048493          	mv	s1,s1
   102d4:	4901                	li	s2,0
   102d6:	02891963          	bne	s2,s0,10308 <__libc_init_array+0x52>
   102da:	64c5                	lui	s1,0x11
   102dc:	00000097          	auipc	ra,0x0
   102e0:	e1a080e7          	jalr	-486(ra) # 100f6 <_fini>
   102e4:	6445                	lui	s0,0x11
   102e6:	00048793          	mv	a5,s1
   102ea:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102ee:	8c1d                	sub	s0,s0,a5
   102f0:	840d                	srai	s0,s0,0x3
   102f2:	00048493          	mv	s1,s1
   102f6:	4901                	li	s2,0
   102f8:	00891d63          	bne	s2,s0,10312 <__libc_init_array+0x5c>
   102fc:	60e2                	ld	ra,24(sp)
   102fe:	6442                	ld	s0,16(sp)
   10300:	64a2                	ld	s1,8(sp)
   10302:	6902                	ld	s2,0(sp)
   10304:	6105                	addi	sp,sp,32
   10306:	8082                	ret
   10308:	609c                	ld	a5,0(s1)
   1030a:	0905                	addi	s2,s2,1
   1030c:	04a1                	addi	s1,s1,8
   1030e:	9782                	jalr	a5
   10310:	b7d9                	j	102d6 <__libc_init_array+0x20>
   10312:	609c                	ld	a5,0(s1)
   10314:	0905                	addi	s2,s2,1
   10316:	04a1                	addi	s1,s1,8
   10318:	9782                	jalr	a5
   1031a:	bff9                	j	102f8 <__libc_init_array+0x42>
	...

000000000001031e <memset>:
   1031e:	483d                	li	a6,15
   10320:	872a                	mv	a4,a0
   10322:	02c87163          	bleu	a2,a6,10344 <memset+0x26>
   10326:	00f77793          	andi	a5,a4,15
   1032a:	e3c1                	bnez	a5,103aa <memset+0x8c>
   1032c:	e1bd                	bnez	a1,10392 <memset+0x74>
   1032e:	ff067693          	andi	a3,a2,-16
   10332:	8a3d                	andi	a2,a2,15
   10334:	96ba                	add	a3,a3,a4
   10336:	e30c                	sd	a1,0(a4)
   10338:	e70c                	sd	a1,8(a4)
   1033a:	0741                	addi	a4,a4,16
   1033c:	fed76de3          	bltu	a4,a3,10336 <memset+0x18>
   10340:	e211                	bnez	a2,10344 <memset+0x26>
   10342:	8082                	ret
   10344:	40c806b3          	sub	a3,a6,a2
   10348:	068a                	slli	a3,a3,0x2
   1034a:	00000297          	auipc	t0,0x0
   1034e:	9696                	add	a3,a3,t0
   10350:	00a68067          	jr	10(a3)
   10354:	00b70723          	sb	a1,14(a4)
   10358:	00b706a3          	sb	a1,13(a4)
   1035c:	00b70623          	sb	a1,12(a4)
   10360:	00b705a3          	sb	a1,11(a4)
   10364:	00b70523          	sb	a1,10(a4)
   10368:	00b704a3          	sb	a1,9(a4)
   1036c:	00b70423          	sb	a1,8(a4)
   10370:	00b703a3          	sb	a1,7(a4)
   10374:	00b70323          	sb	a1,6(a4)
   10378:	00b702a3          	sb	a1,5(a4)
   1037c:	00b70223          	sb	a1,4(a4)
   10380:	00b701a3          	sb	a1,3(a4)
   10384:	00b70123          	sb	a1,2(a4)
   10388:	00b700a3          	sb	a1,1(a4)
   1038c:	00b70023          	sb	a1,0(a4)
   10390:	8082                	ret
   10392:	0ff5f593          	andi	a1,a1,255
   10396:	00859693          	slli	a3,a1,0x8
   1039a:	8dd5                	or	a1,a1,a3
   1039c:	01059693          	slli	a3,a1,0x10
   103a0:	8dd5                	or	a1,a1,a3
   103a2:	02059693          	slli	a3,a1,0x20
   103a6:	8dd5                	or	a1,a1,a3
   103a8:	b759                	j	1032e <memset+0x10>
   103aa:	00279693          	slli	a3,a5,0x2
   103ae:	00000297          	auipc	t0,0x0
   103b2:	9696                	add	a3,a3,t0
   103b4:	8286                	mv	t0,ra
   103b6:	fa2680e7          	jalr	-94(a3)
   103ba:	8096                	mv	ra,t0
   103bc:	17c1                	addi	a5,a5,-16
   103be:	8f1d                	sub	a4,a4,a5
   103c0:	963e                	add	a2,a2,a5
   103c2:	f8c871e3          	bleu	a2,a6,10344 <memset+0x26>
   103c6:	b79d                	j	1032c <memset+0xe>

00000000000103c8 <__register_exitproc>:
   103c8:	67c5                	lui	a5,0x11
   103ca:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   103ce:	832a                	mv	t1,a0
   103d0:	1f873783          	ld	a5,504(a4)
   103d4:	e789                	bnez	a5,103de <__register_exitproc+0x16>
   103d6:	20070793          	addi	a5,a4,512
   103da:	1ef73c23          	sd	a5,504(a4)
   103de:	4798                	lw	a4,8(a5)
   103e0:	487d                	li	a6,31
   103e2:	557d                	li	a0,-1
   103e4:	04e84463          	blt	a6,a4,1042c <__register_exitproc+0x64>
   103e8:	02030a63          	beqz	t1,1041c <__register_exitproc+0x54>
   103ec:	00371813          	slli	a6,a4,0x3
   103f0:	983e                	add	a6,a6,a5
   103f2:	10c83823          	sd	a2,272(a6)
   103f6:	3107a883          	lw	a7,784(a5)
   103fa:	4605                	li	a2,1
   103fc:	00e6163b          	sllw	a2,a2,a4
   10400:	00c8e8b3          	or	a7,a7,a2
   10404:	3117a823          	sw	a7,784(a5)
   10408:	20d83823          	sd	a3,528(a6)
   1040c:	4689                	li	a3,2
   1040e:	00d31763          	bne	t1,a3,1041c <__register_exitproc+0x54>
   10412:	3147a683          	lw	a3,788(a5)
   10416:	8e55                	or	a2,a2,a3
   10418:	30c7aa23          	sw	a2,788(a5)
   1041c:	0017069b          	addiw	a3,a4,1
   10420:	0709                	addi	a4,a4,2
   10422:	070e                	slli	a4,a4,0x3
   10424:	c794                	sw	a3,8(a5)
   10426:	97ba                	add	a5,a5,a4
   10428:	e38c                	sd	a1,0(a5)
   1042a:	4501                	li	a0,0
   1042c:	8082                	ret
	...

0000000000010430 <__call_exitprocs>:
   10430:	715d                	addi	sp,sp,-80
   10432:	67c5                	lui	a5,0x11
   10434:	f44e                	sd	s3,40(sp)
   10436:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   1043a:	f052                	sd	s4,32(sp)
   1043c:	ec56                	sd	s5,24(sp)
   1043e:	e85a                	sd	s6,16(sp)
   10440:	e486                	sd	ra,72(sp)
   10442:	e0a2                	sd	s0,64(sp)
   10444:	fc26                	sd	s1,56(sp)
   10446:	f84a                	sd	s2,48(sp)
   10448:	e45e                	sd	s7,8(sp)
   1044a:	8aaa                	mv	s5,a0
   1044c:	8a2e                	mv	s4,a1
   1044e:	4b05                	li	s6,1
   10450:	1f89b403          	ld	s0,504(s3)
   10454:	c801                	beqz	s0,10464 <__call_exitprocs+0x34>
   10456:	4404                	lw	s1,8(s0)
   10458:	34fd                	addiw	s1,s1,-1
   1045a:	00349913          	slli	s2,s1,0x3
   1045e:	9922                	add	s2,s2,s0
   10460:	0004dd63          	bgez	s1,1047a <__call_exitprocs+0x4a>
   10464:	60a6                	ld	ra,72(sp)
   10466:	6406                	ld	s0,64(sp)
   10468:	74e2                	ld	s1,56(sp)
   1046a:	7942                	ld	s2,48(sp)
   1046c:	79a2                	ld	s3,40(sp)
   1046e:	7a02                	ld	s4,32(sp)
   10470:	6ae2                	ld	s5,24(sp)
   10472:	6b42                	ld	s6,16(sp)
   10474:	6ba2                	ld	s7,8(sp)
   10476:	6161                	addi	sp,sp,80
   10478:	8082                	ret
   1047a:	000a0963          	beqz	s4,1048c <__call_exitprocs+0x5c>
   1047e:	21093783          	ld	a5,528(s2)
   10482:	01478563          	beq	a5,s4,1048c <__call_exitprocs+0x5c>
   10486:	34fd                	addiw	s1,s1,-1
   10488:	1961                	addi	s2,s2,-8
   1048a:	bfd9                	j	10460 <__call_exitprocs+0x30>
   1048c:	441c                	lw	a5,8(s0)
   1048e:	01093683          	ld	a3,16(s2)
   10492:	37fd                	addiw	a5,a5,-1
   10494:	02979663          	bne	a5,s1,104c0 <__call_exitprocs+0x90>
   10498:	c404                	sw	s1,8(s0)
   1049a:	d6f5                	beqz	a3,10486 <__call_exitprocs+0x56>
   1049c:	31042703          	lw	a4,784(s0)
   104a0:	009b163b          	sllw	a2,s6,s1
   104a4:	00842b83          	lw	s7,8(s0)
   104a8:	8f71                	and	a4,a4,a2
   104aa:	2701                	sext.w	a4,a4
   104ac:	ef09                	bnez	a4,104c6 <__call_exitprocs+0x96>
   104ae:	9682                	jalr	a3
   104b0:	4418                	lw	a4,8(s0)
   104b2:	1f89b783          	ld	a5,504(s3)
   104b6:	f9771de3          	bne	a4,s7,10450 <__call_exitprocs+0x20>
   104ba:	fcf406e3          	beq	s0,a5,10486 <__call_exitprocs+0x56>
   104be:	bf49                	j	10450 <__call_exitprocs+0x20>
   104c0:	00093823          	sd	zero,16(s2)
   104c4:	bfd9                	j	1049a <__call_exitprocs+0x6a>
   104c6:	31442783          	lw	a5,788(s0)
   104ca:	11093583          	ld	a1,272(s2)
   104ce:	8ff1                	and	a5,a5,a2
   104d0:	2781                	sext.w	a5,a5
   104d2:	e781                	bnez	a5,104da <__call_exitprocs+0xaa>
   104d4:	8556                	mv	a0,s5
   104d6:	9682                	jalr	a3
   104d8:	bfe1                	j	104b0 <__call_exitprocs+0x80>
   104da:	852e                	mv	a0,a1
   104dc:	9682                	jalr	a3
   104de:	bfc9                	j	104b0 <__call_exitprocs+0x80>
	...

00000000000104e2 <conv_stat>:
   104e2:	619c                	ld	a5,0(a1)
   104e4:	00f51023          	sh	a5,0(a0)
   104e8:	659c                	ld	a5,8(a1)
   104ea:	00f51123          	sh	a5,2(a0)
   104ee:	499c                	lw	a5,16(a1)
   104f0:	c15c                	sw	a5,4(a0)
   104f2:	49dc                	lw	a5,20(a1)
   104f4:	00f51423          	sh	a5,8(a0)
   104f8:	4d9c                	lw	a5,24(a1)
   104fa:	00f51523          	sh	a5,10(a0)
   104fe:	4ddc                	lw	a5,28(a1)
   10500:	00f51623          	sh	a5,12(a0)
   10504:	719c                	ld	a5,32(a1)
   10506:	00f51723          	sh	a5,14(a0)
   1050a:	799c                	ld	a5,48(a1)
   1050c:	e91c                	sd	a5,16(a0)
   1050e:	61bc                	ld	a5,64(a1)
   10510:	e93c                	sd	a5,80(a0)
   10512:	5d9c                	lw	a5,56(a1)
   10514:	e53c                	sd	a5,72(a0)
   10516:	65bc                	ld	a5,72(a1)
   10518:	ed1c                	sd	a5,24(a0)
   1051a:	6dbc                	ld	a5,88(a1)
   1051c:	f51c                	sd	a5,40(a0)
   1051e:	75bc                	ld	a5,104(a1)
   10520:	fd1c                	sd	a5,56(a0)
   10522:	8082                	ret

0000000000010524 <__syscall_error>:
   10524:	1141                	addi	sp,sp,-16
   10526:	e022                	sd	s0,0(sp)
   10528:	e406                	sd	ra,8(sp)
   1052a:	842a                	mv	s0,a0
   1052c:	00000097          	auipc	ra,0x0
   10530:	3ba080e7          	jalr	954(ra) # 108e6 <__errno>
   10534:	408007bb          	negw	a5,s0
   10538:	60a2                	ld	ra,8(sp)
   1053a:	6402                	ld	s0,0(sp)
   1053c:	c11c                	sw	a5,0(a0)
   1053e:	557d                	li	a0,-1
   10540:	0141                	addi	sp,sp,16
   10542:	8082                	ret

0000000000010544 <__internal_syscall>:
   10544:	88aa                	mv	a7,a0
   10546:	852e                	mv	a0,a1
   10548:	85b2                	mv	a1,a2
   1054a:	8636                	mv	a2,a3
   1054c:	86ba                	mv	a3,a4
   1054e:	00000073          	ecall
   10552:	00055663          	bgez	a0,1055e <__internal_syscall+0x1a>
   10556:	00000317          	auipc	t1,0x0
   1055a:	fce30067          	jr	-50(t1) # 10524 <__syscall_error>
   1055e:	8082                	ret

0000000000010560 <open>:
   10560:	1141                	addi	sp,sp,-16
   10562:	86b2                	mv	a3,a2
   10564:	4701                	li	a4,0
   10566:	862e                	mv	a2,a1
   10568:	85aa                	mv	a1,a0
   1056a:	40000513          	li	a0,1024
   1056e:	e406                	sd	ra,8(sp)
   10570:	00000097          	auipc	ra,0x0
   10574:	fd4080e7          	jalr	-44(ra) # 10544 <__internal_syscall>
   10578:	60a2                	ld	ra,8(sp)
   1057a:	2501                	sext.w	a0,a0
   1057c:	0141                	addi	sp,sp,16
   1057e:	8082                	ret

0000000000010580 <openat>:
   10580:	1141                	addi	sp,sp,-16
   10582:	8736                	mv	a4,a3
   10584:	86b2                	mv	a3,a2
   10586:	862e                	mv	a2,a1
   10588:	85aa                	mv	a1,a0
   1058a:	03800513          	li	a0,56
   1058e:	e406                	sd	ra,8(sp)
   10590:	fb5ff0ef          	jal	ra,10544 <__internal_syscall>
   10594:	60a2                	ld	ra,8(sp)
   10596:	2501                	sext.w	a0,a0
   10598:	0141                	addi	sp,sp,16
   1059a:	8082                	ret

000000000001059c <lseek>:
   1059c:	86b2                	mv	a3,a2
   1059e:	4701                	li	a4,0
   105a0:	862e                	mv	a2,a1
   105a2:	85aa                	mv	a1,a0
   105a4:	03e00513          	li	a0,62
   105a8:	00000317          	auipc	t1,0x0
   105ac:	f9c30067          	jr	-100(t1) # 10544 <__internal_syscall>

00000000000105b0 <read>:
   105b0:	86b2                	mv	a3,a2
   105b2:	4701                	li	a4,0
   105b4:	862e                	mv	a2,a1
   105b6:	85aa                	mv	a1,a0
   105b8:	03f00513          	li	a0,63
   105bc:	f89ff06f          	j	10544 <__internal_syscall>

00000000000105c0 <write>:
   105c0:	86b2                	mv	a3,a2
   105c2:	4701                	li	a4,0
   105c4:	862e                	mv	a2,a1
   105c6:	85aa                	mv	a1,a0
   105c8:	04000513          	li	a0,64
   105cc:	00000317          	auipc	t1,0x0
   105d0:	f7830067          	jr	-136(t1) # 10544 <__internal_syscall>

00000000000105d4 <fstat>:
   105d4:	7135                	addi	sp,sp,-160
   105d6:	e526                	sd	s1,136(sp)
   105d8:	860a                	mv	a2,sp
   105da:	84ae                	mv	s1,a1
   105dc:	4701                	li	a4,0
   105de:	85aa                	mv	a1,a0
   105e0:	4681                	li	a3,0
   105e2:	05000513          	li	a0,80
   105e6:	ed06                	sd	ra,152(sp)
   105e8:	e922                	sd	s0,144(sp)
   105ea:	f5bff0ef          	jal	ra,10544 <__internal_syscall>
   105ee:	842a                	mv	s0,a0
   105f0:	858a                	mv	a1,sp
   105f2:	8526                	mv	a0,s1
   105f4:	eefff0ef          	jal	ra,104e2 <conv_stat>
   105f8:	0004051b          	sext.w	a0,s0
   105fc:	60ea                	ld	ra,152(sp)
   105fe:	644a                	ld	s0,144(sp)
   10600:	64aa                	ld	s1,136(sp)
   10602:	610d                	addi	sp,sp,160
   10604:	8082                	ret

0000000000010606 <stat>:
   10606:	7135                	addi	sp,sp,-160
   10608:	e526                	sd	s1,136(sp)
   1060a:	860a                	mv	a2,sp
   1060c:	84ae                	mv	s1,a1
   1060e:	4701                	li	a4,0
   10610:	85aa                	mv	a1,a0
   10612:	4681                	li	a3,0
   10614:	40e00513          	li	a0,1038
   10618:	ed06                	sd	ra,152(sp)
   1061a:	e922                	sd	s0,144(sp)
   1061c:	00000097          	auipc	ra,0x0
   10620:	f28080e7          	jalr	-216(ra) # 10544 <__internal_syscall>
   10624:	842a                	mv	s0,a0
   10626:	858a                	mv	a1,sp
   10628:	8526                	mv	a0,s1
   1062a:	00000097          	auipc	ra,0x0
   1062e:	eb8080e7          	jalr	-328(ra) # 104e2 <conv_stat>
   10632:	0004051b          	sext.w	a0,s0
   10636:	60ea                	ld	ra,152(sp)
   10638:	644a                	ld	s0,144(sp)
   1063a:	64aa                	ld	s1,136(sp)
   1063c:	610d                	addi	sp,sp,160
   1063e:	8082                	ret

0000000000010640 <lstat>:
   10640:	7135                	addi	sp,sp,-160
   10642:	e526                	sd	s1,136(sp)
   10644:	860a                	mv	a2,sp
   10646:	84ae                	mv	s1,a1
   10648:	4701                	li	a4,0
   1064a:	85aa                	mv	a1,a0
   1064c:	4681                	li	a3,0
   1064e:	40f00513          	li	a0,1039
   10652:	ed06                	sd	ra,152(sp)
   10654:	e922                	sd	s0,144(sp)
   10656:	eefff0ef          	jal	ra,10544 <__internal_syscall>
   1065a:	842a                	mv	s0,a0
   1065c:	858a                	mv	a1,sp
   1065e:	8526                	mv	a0,s1
   10660:	e83ff0ef          	jal	ra,104e2 <conv_stat>
   10664:	0004051b          	sext.w	a0,s0
   10668:	60ea                	ld	ra,152(sp)
   1066a:	644a                	ld	s0,144(sp)
   1066c:	64aa                	ld	s1,136(sp)
   1066e:	610d                	addi	sp,sp,160
   10670:	8082                	ret

0000000000010672 <fstatat>:
   10672:	7135                	addi	sp,sp,-160
   10674:	e526                	sd	s1,136(sp)
   10676:	8736                	mv	a4,a3
   10678:	84b2                	mv	s1,a2
   1067a:	868a                	mv	a3,sp
   1067c:	862e                	mv	a2,a1
   1067e:	85aa                	mv	a1,a0
   10680:	04f00513          	li	a0,79
   10684:	ed06                	sd	ra,152(sp)
   10686:	e922                	sd	s0,144(sp)
   10688:	00000097          	auipc	ra,0x0
   1068c:	ebc080e7          	jalr	-324(ra) # 10544 <__internal_syscall>
   10690:	842a                	mv	s0,a0
   10692:	858a                	mv	a1,sp
   10694:	8526                	mv	a0,s1
   10696:	00000097          	auipc	ra,0x0
   1069a:	e4c080e7          	jalr	-436(ra) # 104e2 <conv_stat>
   1069e:	0004051b          	sext.w	a0,s0
   106a2:	60ea                	ld	ra,152(sp)
   106a4:	644a                	ld	s0,144(sp)
   106a6:	64aa                	ld	s1,136(sp)
   106a8:	610d                	addi	sp,sp,160
   106aa:	8082                	ret

00000000000106ac <access>:
   106ac:	1141                	addi	sp,sp,-16
   106ae:	862e                	mv	a2,a1
   106b0:	4701                	li	a4,0
   106b2:	85aa                	mv	a1,a0
   106b4:	4681                	li	a3,0
   106b6:	40900513          	li	a0,1033
   106ba:	e406                	sd	ra,8(sp)
   106bc:	e89ff0ef          	jal	ra,10544 <__internal_syscall>
   106c0:	60a2                	ld	ra,8(sp)
   106c2:	2501                	sext.w	a0,a0
   106c4:	0141                	addi	sp,sp,16
   106c6:	8082                	ret

00000000000106c8 <faccessat>:
   106c8:	1141                	addi	sp,sp,-16
   106ca:	8736                	mv	a4,a3
   106cc:	86b2                	mv	a3,a2
   106ce:	862e                	mv	a2,a1
   106d0:	85aa                	mv	a1,a0
   106d2:	03000513          	li	a0,48
   106d6:	e406                	sd	ra,8(sp)
   106d8:	00000097          	auipc	ra,0x0
   106dc:	e6c080e7          	jalr	-404(ra) # 10544 <__internal_syscall>
   106e0:	60a2                	ld	ra,8(sp)
   106e2:	2501                	sext.w	a0,a0
   106e4:	0141                	addi	sp,sp,16
   106e6:	8082                	ret

00000000000106e8 <close>:
   106e8:	1141                	addi	sp,sp,-16
   106ea:	85aa                	mv	a1,a0
   106ec:	4701                	li	a4,0
   106ee:	4681                	li	a3,0
   106f0:	4601                	li	a2,0
   106f2:	03900513          	li	a0,57
   106f6:	e406                	sd	ra,8(sp)
   106f8:	e4dff0ef          	jal	ra,10544 <__internal_syscall>
   106fc:	60a2                	ld	ra,8(sp)
   106fe:	2501                	sext.w	a0,a0
   10700:	0141                	addi	sp,sp,16
   10702:	8082                	ret

0000000000010704 <link>:
   10704:	1141                	addi	sp,sp,-16
   10706:	862e                	mv	a2,a1
   10708:	4701                	li	a4,0
   1070a:	85aa                	mv	a1,a0
   1070c:	4681                	li	a3,0
   1070e:	40100513          	li	a0,1025
   10712:	e406                	sd	ra,8(sp)
   10714:	00000097          	auipc	ra,0x0
   10718:	e30080e7          	jalr	-464(ra) # 10544 <__internal_syscall>
   1071c:	60a2                	ld	ra,8(sp)
   1071e:	2501                	sext.w	a0,a0
   10720:	0141                	addi	sp,sp,16
   10722:	8082                	ret

0000000000010724 <unlink>:
   10724:	1141                	addi	sp,sp,-16
   10726:	85aa                	mv	a1,a0
   10728:	4701                	li	a4,0
   1072a:	4681                	li	a3,0
   1072c:	4601                	li	a2,0
   1072e:	40200513          	li	a0,1026
   10732:	e406                	sd	ra,8(sp)
   10734:	e11ff0ef          	jal	ra,10544 <__internal_syscall>
   10738:	60a2                	ld	ra,8(sp)
   1073a:	2501                	sext.w	a0,a0
   1073c:	0141                	addi	sp,sp,16
   1073e:	8082                	ret

0000000000010740 <execve>:
   10740:	1141                	addi	sp,sp,-16
   10742:	e406                	sd	ra,8(sp)
   10744:	00000097          	auipc	ra,0x0
   10748:	1a2080e7          	jalr	418(ra) # 108e6 <__errno>
   1074c:	60a2                	ld	ra,8(sp)
   1074e:	47b1                	li	a5,12
   10750:	c11c                	sw	a5,0(a0)
   10752:	557d                	li	a0,-1
   10754:	0141                	addi	sp,sp,16
   10756:	8082                	ret

0000000000010758 <fork>:
   10758:	1141                	addi	sp,sp,-16
   1075a:	e406                	sd	ra,8(sp)
   1075c:	18a000ef          	jal	ra,108e6 <__errno>
   10760:	60a2                	ld	ra,8(sp)
   10762:	47ad                	li	a5,11
   10764:	c11c                	sw	a5,0(a0)
   10766:	557d                	li	a0,-1
   10768:	0141                	addi	sp,sp,16
   1076a:	8082                	ret

000000000001076c <getpid>:
   1076c:	4505                	li	a0,1
   1076e:	8082                	ret

0000000000010770 <kill>:
   10770:	1141                	addi	sp,sp,-16
   10772:	e406                	sd	ra,8(sp)
   10774:	172000ef          	jal	ra,108e6 <__errno>
   10778:	60a2                	ld	ra,8(sp)
   1077a:	47d9                	li	a5,22
   1077c:	c11c                	sw	a5,0(a0)
   1077e:	557d                	li	a0,-1
   10780:	0141                	addi	sp,sp,16
   10782:	8082                	ret

0000000000010784 <wait>:
   10784:	1141                	addi	sp,sp,-16
   10786:	e406                	sd	ra,8(sp)
   10788:	00000097          	auipc	ra,0x0
   1078c:	15e080e7          	jalr	350(ra) # 108e6 <__errno>
   10790:	60a2                	ld	ra,8(sp)
   10792:	47a9                	li	a5,10
   10794:	c11c                	sw	a5,0(a0)
   10796:	557d                	li	a0,-1
   10798:	0141                	addi	sp,sp,16
   1079a:	8082                	ret

000000000001079c <isatty>:
   1079c:	7119                	addi	sp,sp,-128
   1079e:	002c                	addi	a1,sp,8
   107a0:	fc86                	sd	ra,120(sp)
   107a2:	e33ff0ef          	jal	ra,105d4 <fstat>
   107a6:	57fd                	li	a5,-1
   107a8:	00f50663          	beq	a0,a5,107b4 <isatty+0x18>
   107ac:	4532                	lw	a0,12(sp)
   107ae:	40d5551b          	sraiw	a0,a0,0xd
   107b2:	8905                	andi	a0,a0,1
   107b4:	70e6                	ld	ra,120(sp)
   107b6:	6109                	addi	sp,sp,128
   107b8:	8082                	ret

00000000000107ba <gettimeofday>:
   107ba:	1141                	addi	sp,sp,-16
   107bc:	85aa                	mv	a1,a0
   107be:	4701                	li	a4,0
   107c0:	4681                	li	a3,0
   107c2:	4601                	li	a2,0
   107c4:	0a900513          	li	a0,169
   107c8:	e406                	sd	ra,8(sp)
   107ca:	00000097          	auipc	ra,0x0
   107ce:	d7a080e7          	jalr	-646(ra) # 10544 <__internal_syscall>
   107d2:	60a2                	ld	ra,8(sp)
   107d4:	2501                	sext.w	a0,a0
   107d6:	0141                	addi	sp,sp,16
   107d8:	8082                	ret

00000000000107da <times>:
   107da:	7179                	addi	sp,sp,-48
   107dc:	f022                	sd	s0,32(sp)
   107de:	842a                	mv	s0,a0
   107e0:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   107e4:	ec26                	sd	s1,24(sp)
   107e6:	f406                	sd	ra,40(sp)
   107e8:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   107ec:	eb81                	bnez	a5,107fc <times+0x22>
   107ee:	4581                	li	a1,0
   107f0:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   107f4:	00000097          	auipc	ra,0x0
   107f8:	fc6080e7          	jalr	-58(ra) # 107ba <gettimeofday>
   107fc:	850a                	mv	a0,sp
   107fe:	4581                	li	a1,0
   10800:	00000097          	auipc	ra,0x0
   10804:	fba080e7          	jalr	-70(ra) # 107ba <gettimeofday>
   10808:	6098                	ld	a4,0(s1)
   1080a:	6782                	ld	a5,0(sp)
   1080c:	6494                	ld	a3,8(s1)
   1080e:	00043823          	sd	zero,16(s0)
   10812:	8f99                	sub	a5,a5,a4
   10814:	000f4737          	lui	a4,0xf4
   10818:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   1081c:	02e787b3          	mul	a5,a5,a4
   10820:	6722                	ld	a4,8(sp)
   10822:	00043c23          	sd	zero,24(s0)
   10826:	00043423          	sd	zero,8(s0)
   1082a:	8f15                	sub	a4,a4,a3
   1082c:	70a2                	ld	ra,40(sp)
   1082e:	64e2                	ld	s1,24(sp)
   10830:	557d                	li	a0,-1
   10832:	97ba                	add	a5,a5,a4
   10834:	e01c                	sd	a5,0(s0)
   10836:	7402                	ld	s0,32(sp)
   10838:	6145                	addi	sp,sp,48
   1083a:	8082                	ret

000000000001083c <ftime>:
   1083c:	00051423          	sh	zero,8(a0)
   10840:	00053023          	sd	zero,0(a0)
   10844:	4501                	li	a0,0
   10846:	8082                	ret

0000000000010848 <utime>:
   10848:	557d                	li	a0,-1
   1084a:	8082                	ret

000000000001084c <chown>:
   1084c:	557d                	li	a0,-1
   1084e:	8082                	ret

0000000000010850 <chmod>:
   10850:	557d                	li	a0,-1
   10852:	8082                	ret

0000000000010854 <chdir>:
   10854:	557d                	li	a0,-1
   10856:	8082                	ret

0000000000010858 <getcwd>:
   10858:	4501                	li	a0,0
   1085a:	8082                	ret

000000000001085c <sysconf>:
   1085c:	4789                	li	a5,2
   1085e:	00f50463          	beq	a0,a5,10866 <sysconf+0xa>
   10862:	557d                	li	a0,-1
   10864:	8082                	ret
   10866:	000f4537          	lui	a0,0xf4
   1086a:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   1086e:	8082                	ret

0000000000010870 <sbrk>:
   10870:	1101                	addi	sp,sp,-32
   10872:	e822                	sd	s0,16(sp)
   10874:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10878:	e426                	sd	s1,8(sp)
   1087a:	ec06                	sd	ra,24(sp)
   1087c:	84aa                	mv	s1,a0
   1087e:	e785                	bnez	a5,108a6 <sbrk+0x36>
   10880:	4701                	li	a4,0
   10882:	4681                	li	a3,0
   10884:	4601                	li	a2,0
   10886:	4581                	li	a1,0
   10888:	0d600513          	li	a0,214
   1088c:	cb9ff0ef          	jal	ra,10544 <__internal_syscall>
   10890:	57fd                	li	a5,-1
   10892:	00f51863          	bne	a0,a5,108a2 <sbrk+0x32>
   10896:	557d                	li	a0,-1
   10898:	60e2                	ld	ra,24(sp)
   1089a:	6442                	ld	s0,16(sp)
   1089c:	64a2                	ld	s1,8(sp)
   1089e:	6105                	addi	sp,sp,32
   108a0:	8082                	ret
   108a2:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   108a6:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   108aa:	4701                	li	a4,0
   108ac:	4681                	li	a3,0
   108ae:	95a6                	add	a1,a1,s1
   108b0:	4601                	li	a2,0
   108b2:	0d600513          	li	a0,214
   108b6:	c8fff0ef          	jal	ra,10544 <__internal_syscall>
   108ba:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   108be:	94be                	add	s1,s1,a5
   108c0:	fc951be3          	bne	a0,s1,10896 <sbrk+0x26>
   108c4:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   108c8:	853e                	mv	a0,a5
   108ca:	b7f9                	j	10898 <sbrk+0x28>

00000000000108cc <_exit>:
   108cc:	1141                	addi	sp,sp,-16
   108ce:	85aa                	mv	a1,a0
   108d0:	4701                	li	a4,0
   108d2:	4681                	li	a3,0
   108d4:	4601                	li	a2,0
   108d6:	05d00513          	li	a0,93
   108da:	e406                	sd	ra,8(sp)
   108dc:	00000097          	auipc	ra,0x0
   108e0:	c68080e7          	jalr	-920(ra) # 10544 <__internal_syscall>
   108e4:	a001                	j	108e4 <_exit+0x18>

00000000000108e6 <__errno>:
   108e6:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   108ea:	8082                	ret
	...

Disassembly of section .eh_frame:

00000000000108f0 <__EH_FRAME_BEGIN__>:
   108f0:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	0182                	slli	gp,gp,0x0
   11002:	0001                	nop
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	0148                	addi	a0,sp,132
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

0000000000011778 <completed.5184>:
	...

0000000000011780 <object.5189>:
	...

00000000000117b0 <t0.2574>:
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
