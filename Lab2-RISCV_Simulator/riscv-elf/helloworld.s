
helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	244000ef          	jal	ra,10308 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	18a50513          	addi	a0,a0,394 # 10252 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	14e080e7          	jalr	334(ra) # 1021e <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1c8080e7          	jalr	456(ra) # 102a0 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	13e30067          	jr	318(t1) # 1022c <exit>

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
   10166:	8e850513          	addi	a0,a0,-1816 # 108e8 <__EH_FRAME_BEGIN__>
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
   10196:	8e850513          	addi	a0,a0,-1816 # 108e8 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <main>:
   101ac:	1141                	addi	sp,sp,-16
   101ae:	e406                	sd	ra,8(sp)
   101b0:	e022                	sd	s0,0(sp)
   101b2:	0800                	addi	s0,sp,16
   101b4:	67c5                	lui	a5,0x11
   101b6:	8d878513          	addi	a0,a5,-1832 # 108d8 <__errno+0x8>
   101ba:	00000097          	auipc	ra,0x0
   101be:	030080e7          	jalr	48(ra) # 101ea <print_s>
   101c2:	4781                	li	a5,0
   101c4:	853e                	mv	a0,a5
   101c6:	60a2                	ld	ra,8(sp)
   101c8:	6402                	ld	s0,0(sp)
   101ca:	0141                	addi	sp,sp,16
   101cc:	8082                	ret
	...

00000000000101d0 <print_d>:
   101d0:	1101                	addi	sp,sp,-32
   101d2:	ec22                	sd	s0,24(sp)
   101d4:	1000                	addi	s0,sp,32
   101d6:	87aa                	mv	a5,a0
   101d8:	fef42623          	sw	a5,-20(s0)
   101dc:	4889                	li	a7,2
   101de:	00000073          	ecall
   101e2:	0001                	nop
   101e4:	6462                	ld	s0,24(sp)
   101e6:	6105                	addi	sp,sp,32
   101e8:	8082                	ret

00000000000101ea <print_s>:
   101ea:	1101                	addi	sp,sp,-32
   101ec:	ec22                	sd	s0,24(sp)
   101ee:	1000                	addi	s0,sp,32
   101f0:	fea43423          	sd	a0,-24(s0)
   101f4:	4881                	li	a7,0
   101f6:	00000073          	ecall
   101fa:	0001                	nop
   101fc:	6462                	ld	s0,24(sp)
   101fe:	6105                	addi	sp,sp,32
   10200:	8082                	ret

0000000000010202 <print_c>:
   10202:	1101                	addi	sp,sp,-32
   10204:	ec22                	sd	s0,24(sp)
   10206:	1000                	addi	s0,sp,32
   10208:	87aa                	mv	a5,a0
   1020a:	fef407a3          	sb	a5,-17(s0)
   1020e:	4885                	li	a7,1
   10210:	00000073          	ecall
   10214:	0001                	nop
   10216:	6462                	ld	s0,24(sp)
   10218:	6105                	addi	sp,sp,32
   1021a:	8082                	ret
	...

000000000001021e <atexit>:
   1021e:	85aa                	mv	a1,a0
   10220:	4681                	li	a3,0
   10222:	4601                	li	a2,0
   10224:	4501                	li	a0,0
   10226:	18c0006f          	j	103b2 <__register_exitproc>
	...

000000000001022c <exit>:
   1022c:	1141                	addi	sp,sp,-16
   1022e:	4581                	li	a1,0
   10230:	e022                	sd	s0,0(sp)
   10232:	e406                	sd	ra,8(sp)
   10234:	842a                	mv	s0,a0
   10236:	1e4000ef          	jal	ra,1041a <__call_exitprocs>
   1023a:	67c5                	lui	a5,0x11
   1023c:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10240:	6d3c                	ld	a5,88(a0)
   10242:	c391                	beqz	a5,10246 <exit+0x1a>
   10244:	9782                	jalr	a5
   10246:	8522                	mv	a0,s0
   10248:	00000097          	auipc	ra,0x0
   1024c:	66e080e7          	jalr	1646(ra) # 108b6 <_exit>
	...

0000000000010252 <__libc_fini_array>:
   10252:	7179                	addi	sp,sp,-48
   10254:	67c5                	lui	a5,0x11
   10256:	6745                	lui	a4,0x11
   10258:	f022                	sd	s0,32(sp)
   1025a:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1025e:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10262:	8c19                	sub	s0,s0,a4
   10264:	ec26                	sd	s1,24(sp)
   10266:	e84a                	sd	s2,16(sp)
   10268:	e44e                	sd	s3,8(sp)
   1026a:	f406                	sd	ra,40(sp)
   1026c:	840d                	srai	s0,s0,0x3
   1026e:	4481                	li	s1,0
   10270:	01078913          	addi	s2,a5,16
   10274:	59e1                	li	s3,-8
   10276:	00941c63          	bne	s0,s1,1028e <__libc_fini_array+0x3c>
   1027a:	7402                	ld	s0,32(sp)
   1027c:	70a2                	ld	ra,40(sp)
   1027e:	64e2                	ld	s1,24(sp)
   10280:	6942                	ld	s2,16(sp)
   10282:	69a2                	ld	s3,8(sp)
   10284:	6145                	addi	sp,sp,48
   10286:	00000317          	auipc	t1,0x0
   1028a:	e7030067          	jr	-400(t1) # 100f6 <_fini>
   1028e:	033487b3          	mul	a5,s1,s3
   10292:	0485                	addi	s1,s1,1
   10294:	97ca                	add	a5,a5,s2
   10296:	ff87b783          	ld	a5,-8(a5)
   1029a:	9782                	jalr	a5
   1029c:	bfe9                	j	10276 <__libc_fini_array+0x24>
	...

00000000000102a0 <__libc_init_array>:
   102a0:	1101                	addi	sp,sp,-32
   102a2:	e822                	sd	s0,16(sp)
   102a4:	e426                	sd	s1,8(sp)
   102a6:	6445                	lui	s0,0x11
   102a8:	64c5                	lui	s1,0x11
   102aa:	00048793          	mv	a5,s1
   102ae:	00040413          	mv	s0,s0
   102b2:	8c1d                	sub	s0,s0,a5
   102b4:	e04a                	sd	s2,0(sp)
   102b6:	ec06                	sd	ra,24(sp)
   102b8:	840d                	srai	s0,s0,0x3
   102ba:	00048493          	mv	s1,s1
   102be:	4901                	li	s2,0
   102c0:	02891963          	bne	s2,s0,102f2 <__libc_init_array+0x52>
   102c4:	64c5                	lui	s1,0x11
   102c6:	00000097          	auipc	ra,0x0
   102ca:	e30080e7          	jalr	-464(ra) # 100f6 <_fini>
   102ce:	6445                	lui	s0,0x11
   102d0:	00048793          	mv	a5,s1
   102d4:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102d8:	8c1d                	sub	s0,s0,a5
   102da:	840d                	srai	s0,s0,0x3
   102dc:	00048493          	mv	s1,s1
   102e0:	4901                	li	s2,0
   102e2:	00891d63          	bne	s2,s0,102fc <__libc_init_array+0x5c>
   102e6:	60e2                	ld	ra,24(sp)
   102e8:	6442                	ld	s0,16(sp)
   102ea:	64a2                	ld	s1,8(sp)
   102ec:	6902                	ld	s2,0(sp)
   102ee:	6105                	addi	sp,sp,32
   102f0:	8082                	ret
   102f2:	609c                	ld	a5,0(s1)
   102f4:	0905                	addi	s2,s2,1
   102f6:	04a1                	addi	s1,s1,8
   102f8:	9782                	jalr	a5
   102fa:	b7d9                	j	102c0 <__libc_init_array+0x20>
   102fc:	609c                	ld	a5,0(s1)
   102fe:	0905                	addi	s2,s2,1
   10300:	04a1                	addi	s1,s1,8
   10302:	9782                	jalr	a5
   10304:	bff9                	j	102e2 <__libc_init_array+0x42>
	...

0000000000010308 <memset>:
   10308:	483d                	li	a6,15
   1030a:	872a                	mv	a4,a0
   1030c:	02c87163          	bleu	a2,a6,1032e <memset+0x26>
   10310:	00f77793          	andi	a5,a4,15
   10314:	e3c1                	bnez	a5,10394 <memset+0x8c>
   10316:	e1bd                	bnez	a1,1037c <memset+0x74>
   10318:	ff067693          	andi	a3,a2,-16
   1031c:	8a3d                	andi	a2,a2,15
   1031e:	96ba                	add	a3,a3,a4
   10320:	e30c                	sd	a1,0(a4)
   10322:	e70c                	sd	a1,8(a4)
   10324:	0741                	addi	a4,a4,16
   10326:	fed76de3          	bltu	a4,a3,10320 <memset+0x18>
   1032a:	e211                	bnez	a2,1032e <memset+0x26>
   1032c:	8082                	ret
   1032e:	40c806b3          	sub	a3,a6,a2
   10332:	068a                	slli	a3,a3,0x2
   10334:	00000297          	auipc	t0,0x0
   10338:	9696                	add	a3,a3,t0
   1033a:	00a68067          	jr	10(a3)
   1033e:	00b70723          	sb	a1,14(a4)
   10342:	00b706a3          	sb	a1,13(a4)
   10346:	00b70623          	sb	a1,12(a4)
   1034a:	00b705a3          	sb	a1,11(a4)
   1034e:	00b70523          	sb	a1,10(a4)
   10352:	00b704a3          	sb	a1,9(a4)
   10356:	00b70423          	sb	a1,8(a4)
   1035a:	00b703a3          	sb	a1,7(a4)
   1035e:	00b70323          	sb	a1,6(a4)
   10362:	00b702a3          	sb	a1,5(a4)
   10366:	00b70223          	sb	a1,4(a4)
   1036a:	00b701a3          	sb	a1,3(a4)
   1036e:	00b70123          	sb	a1,2(a4)
   10372:	00b700a3          	sb	a1,1(a4)
   10376:	00b70023          	sb	a1,0(a4)
   1037a:	8082                	ret
   1037c:	0ff5f593          	andi	a1,a1,255
   10380:	00859693          	slli	a3,a1,0x8
   10384:	8dd5                	or	a1,a1,a3
   10386:	01059693          	slli	a3,a1,0x10
   1038a:	8dd5                	or	a1,a1,a3
   1038c:	02059693          	slli	a3,a1,0x20
   10390:	8dd5                	or	a1,a1,a3
   10392:	b759                	j	10318 <memset+0x10>
   10394:	00279693          	slli	a3,a5,0x2
   10398:	00000297          	auipc	t0,0x0
   1039c:	9696                	add	a3,a3,t0
   1039e:	8286                	mv	t0,ra
   103a0:	fa2680e7          	jalr	-94(a3)
   103a4:	8096                	mv	ra,t0
   103a6:	17c1                	addi	a5,a5,-16
   103a8:	8f1d                	sub	a4,a4,a5
   103aa:	963e                	add	a2,a2,a5
   103ac:	f8c871e3          	bleu	a2,a6,1032e <memset+0x26>
   103b0:	b79d                	j	10316 <memset+0xe>

00000000000103b2 <__register_exitproc>:
   103b2:	67c5                	lui	a5,0x11
   103b4:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   103b8:	832a                	mv	t1,a0
   103ba:	1f873783          	ld	a5,504(a4)
   103be:	e789                	bnez	a5,103c8 <__register_exitproc+0x16>
   103c0:	20070793          	addi	a5,a4,512
   103c4:	1ef73c23          	sd	a5,504(a4)
   103c8:	4798                	lw	a4,8(a5)
   103ca:	487d                	li	a6,31
   103cc:	557d                	li	a0,-1
   103ce:	04e84463          	blt	a6,a4,10416 <__register_exitproc+0x64>
   103d2:	02030a63          	beqz	t1,10406 <__register_exitproc+0x54>
   103d6:	00371813          	slli	a6,a4,0x3
   103da:	983e                	add	a6,a6,a5
   103dc:	10c83823          	sd	a2,272(a6)
   103e0:	3107a883          	lw	a7,784(a5)
   103e4:	4605                	li	a2,1
   103e6:	00e6163b          	sllw	a2,a2,a4
   103ea:	00c8e8b3          	or	a7,a7,a2
   103ee:	3117a823          	sw	a7,784(a5)
   103f2:	20d83823          	sd	a3,528(a6)
   103f6:	4689                	li	a3,2
   103f8:	00d31763          	bne	t1,a3,10406 <__register_exitproc+0x54>
   103fc:	3147a683          	lw	a3,788(a5)
   10400:	8e55                	or	a2,a2,a3
   10402:	30c7aa23          	sw	a2,788(a5)
   10406:	0017069b          	addiw	a3,a4,1
   1040a:	0709                	addi	a4,a4,2
   1040c:	070e                	slli	a4,a4,0x3
   1040e:	c794                	sw	a3,8(a5)
   10410:	97ba                	add	a5,a5,a4
   10412:	e38c                	sd	a1,0(a5)
   10414:	4501                	li	a0,0
   10416:	8082                	ret
	...

000000000001041a <__call_exitprocs>:
   1041a:	715d                	addi	sp,sp,-80
   1041c:	67c5                	lui	a5,0x11
   1041e:	f44e                	sd	s3,40(sp)
   10420:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   10424:	f052                	sd	s4,32(sp)
   10426:	ec56                	sd	s5,24(sp)
   10428:	e85a                	sd	s6,16(sp)
   1042a:	e486                	sd	ra,72(sp)
   1042c:	e0a2                	sd	s0,64(sp)
   1042e:	fc26                	sd	s1,56(sp)
   10430:	f84a                	sd	s2,48(sp)
   10432:	e45e                	sd	s7,8(sp)
   10434:	8aaa                	mv	s5,a0
   10436:	8a2e                	mv	s4,a1
   10438:	4b05                	li	s6,1
   1043a:	1f89b403          	ld	s0,504(s3)
   1043e:	c801                	beqz	s0,1044e <__call_exitprocs+0x34>
   10440:	4404                	lw	s1,8(s0)
   10442:	34fd                	addiw	s1,s1,-1
   10444:	00349913          	slli	s2,s1,0x3
   10448:	9922                	add	s2,s2,s0
   1044a:	0004dd63          	bgez	s1,10464 <__call_exitprocs+0x4a>
   1044e:	60a6                	ld	ra,72(sp)
   10450:	6406                	ld	s0,64(sp)
   10452:	74e2                	ld	s1,56(sp)
   10454:	7942                	ld	s2,48(sp)
   10456:	79a2                	ld	s3,40(sp)
   10458:	7a02                	ld	s4,32(sp)
   1045a:	6ae2                	ld	s5,24(sp)
   1045c:	6b42                	ld	s6,16(sp)
   1045e:	6ba2                	ld	s7,8(sp)
   10460:	6161                	addi	sp,sp,80
   10462:	8082                	ret
   10464:	000a0963          	beqz	s4,10476 <__call_exitprocs+0x5c>
   10468:	21093783          	ld	a5,528(s2)
   1046c:	01478563          	beq	a5,s4,10476 <__call_exitprocs+0x5c>
   10470:	34fd                	addiw	s1,s1,-1
   10472:	1961                	addi	s2,s2,-8
   10474:	bfd9                	j	1044a <__call_exitprocs+0x30>
   10476:	441c                	lw	a5,8(s0)
   10478:	01093683          	ld	a3,16(s2)
   1047c:	37fd                	addiw	a5,a5,-1
   1047e:	02979663          	bne	a5,s1,104aa <__call_exitprocs+0x90>
   10482:	c404                	sw	s1,8(s0)
   10484:	d6f5                	beqz	a3,10470 <__call_exitprocs+0x56>
   10486:	31042703          	lw	a4,784(s0)
   1048a:	009b163b          	sllw	a2,s6,s1
   1048e:	00842b83          	lw	s7,8(s0)
   10492:	8f71                	and	a4,a4,a2
   10494:	2701                	sext.w	a4,a4
   10496:	ef09                	bnez	a4,104b0 <__call_exitprocs+0x96>
   10498:	9682                	jalr	a3
   1049a:	4418                	lw	a4,8(s0)
   1049c:	1f89b783          	ld	a5,504(s3)
   104a0:	f9771de3          	bne	a4,s7,1043a <__call_exitprocs+0x20>
   104a4:	fcf406e3          	beq	s0,a5,10470 <__call_exitprocs+0x56>
   104a8:	bf49                	j	1043a <__call_exitprocs+0x20>
   104aa:	00093823          	sd	zero,16(s2)
   104ae:	bfd9                	j	10484 <__call_exitprocs+0x6a>
   104b0:	31442783          	lw	a5,788(s0)
   104b4:	11093583          	ld	a1,272(s2)
   104b8:	8ff1                	and	a5,a5,a2
   104ba:	2781                	sext.w	a5,a5
   104bc:	e781                	bnez	a5,104c4 <__call_exitprocs+0xaa>
   104be:	8556                	mv	a0,s5
   104c0:	9682                	jalr	a3
   104c2:	bfe1                	j	1049a <__call_exitprocs+0x80>
   104c4:	852e                	mv	a0,a1
   104c6:	9682                	jalr	a3
   104c8:	bfc9                	j	1049a <__call_exitprocs+0x80>
	...

00000000000104cc <conv_stat>:
   104cc:	619c                	ld	a5,0(a1)
   104ce:	00f51023          	sh	a5,0(a0)
   104d2:	659c                	ld	a5,8(a1)
   104d4:	00f51123          	sh	a5,2(a0)
   104d8:	499c                	lw	a5,16(a1)
   104da:	c15c                	sw	a5,4(a0)
   104dc:	49dc                	lw	a5,20(a1)
   104de:	00f51423          	sh	a5,8(a0)
   104e2:	4d9c                	lw	a5,24(a1)
   104e4:	00f51523          	sh	a5,10(a0)
   104e8:	4ddc                	lw	a5,28(a1)
   104ea:	00f51623          	sh	a5,12(a0)
   104ee:	719c                	ld	a5,32(a1)
   104f0:	00f51723          	sh	a5,14(a0)
   104f4:	799c                	ld	a5,48(a1)
   104f6:	e91c                	sd	a5,16(a0)
   104f8:	61bc                	ld	a5,64(a1)
   104fa:	e93c                	sd	a5,80(a0)
   104fc:	5d9c                	lw	a5,56(a1)
   104fe:	e53c                	sd	a5,72(a0)
   10500:	65bc                	ld	a5,72(a1)
   10502:	ed1c                	sd	a5,24(a0)
   10504:	6dbc                	ld	a5,88(a1)
   10506:	f51c                	sd	a5,40(a0)
   10508:	75bc                	ld	a5,104(a1)
   1050a:	fd1c                	sd	a5,56(a0)
   1050c:	8082                	ret

000000000001050e <__syscall_error>:
   1050e:	1141                	addi	sp,sp,-16
   10510:	e022                	sd	s0,0(sp)
   10512:	e406                	sd	ra,8(sp)
   10514:	842a                	mv	s0,a0
   10516:	00000097          	auipc	ra,0x0
   1051a:	3ba080e7          	jalr	954(ra) # 108d0 <__errno>
   1051e:	408007bb          	negw	a5,s0
   10522:	60a2                	ld	ra,8(sp)
   10524:	6402                	ld	s0,0(sp)
   10526:	c11c                	sw	a5,0(a0)
   10528:	557d                	li	a0,-1
   1052a:	0141                	addi	sp,sp,16
   1052c:	8082                	ret

000000000001052e <__internal_syscall>:
   1052e:	88aa                	mv	a7,a0
   10530:	852e                	mv	a0,a1
   10532:	85b2                	mv	a1,a2
   10534:	8636                	mv	a2,a3
   10536:	86ba                	mv	a3,a4
   10538:	00000073          	ecall
   1053c:	00055663          	bgez	a0,10548 <__internal_syscall+0x1a>
   10540:	00000317          	auipc	t1,0x0
   10544:	fce30067          	jr	-50(t1) # 1050e <__syscall_error>
   10548:	8082                	ret

000000000001054a <open>:
   1054a:	1141                	addi	sp,sp,-16
   1054c:	86b2                	mv	a3,a2
   1054e:	4701                	li	a4,0
   10550:	862e                	mv	a2,a1
   10552:	85aa                	mv	a1,a0
   10554:	40000513          	li	a0,1024
   10558:	e406                	sd	ra,8(sp)
   1055a:	00000097          	auipc	ra,0x0
   1055e:	fd4080e7          	jalr	-44(ra) # 1052e <__internal_syscall>
   10562:	60a2                	ld	ra,8(sp)
   10564:	2501                	sext.w	a0,a0
   10566:	0141                	addi	sp,sp,16
   10568:	8082                	ret

000000000001056a <openat>:
   1056a:	1141                	addi	sp,sp,-16
   1056c:	8736                	mv	a4,a3
   1056e:	86b2                	mv	a3,a2
   10570:	862e                	mv	a2,a1
   10572:	85aa                	mv	a1,a0
   10574:	03800513          	li	a0,56
   10578:	e406                	sd	ra,8(sp)
   1057a:	fb5ff0ef          	jal	ra,1052e <__internal_syscall>
   1057e:	60a2                	ld	ra,8(sp)
   10580:	2501                	sext.w	a0,a0
   10582:	0141                	addi	sp,sp,16
   10584:	8082                	ret

0000000000010586 <lseek>:
   10586:	86b2                	mv	a3,a2
   10588:	4701                	li	a4,0
   1058a:	862e                	mv	a2,a1
   1058c:	85aa                	mv	a1,a0
   1058e:	03e00513          	li	a0,62
   10592:	00000317          	auipc	t1,0x0
   10596:	f9c30067          	jr	-100(t1) # 1052e <__internal_syscall>

000000000001059a <read>:
   1059a:	86b2                	mv	a3,a2
   1059c:	4701                	li	a4,0
   1059e:	862e                	mv	a2,a1
   105a0:	85aa                	mv	a1,a0
   105a2:	03f00513          	li	a0,63
   105a6:	f89ff06f          	j	1052e <__internal_syscall>

00000000000105aa <write>:
   105aa:	86b2                	mv	a3,a2
   105ac:	4701                	li	a4,0
   105ae:	862e                	mv	a2,a1
   105b0:	85aa                	mv	a1,a0
   105b2:	04000513          	li	a0,64
   105b6:	00000317          	auipc	t1,0x0
   105ba:	f7830067          	jr	-136(t1) # 1052e <__internal_syscall>

00000000000105be <fstat>:
   105be:	7135                	addi	sp,sp,-160
   105c0:	e526                	sd	s1,136(sp)
   105c2:	860a                	mv	a2,sp
   105c4:	84ae                	mv	s1,a1
   105c6:	4701                	li	a4,0
   105c8:	85aa                	mv	a1,a0
   105ca:	4681                	li	a3,0
   105cc:	05000513          	li	a0,80
   105d0:	ed06                	sd	ra,152(sp)
   105d2:	e922                	sd	s0,144(sp)
   105d4:	f5bff0ef          	jal	ra,1052e <__internal_syscall>
   105d8:	842a                	mv	s0,a0
   105da:	858a                	mv	a1,sp
   105dc:	8526                	mv	a0,s1
   105de:	eefff0ef          	jal	ra,104cc <conv_stat>
   105e2:	0004051b          	sext.w	a0,s0
   105e6:	60ea                	ld	ra,152(sp)
   105e8:	644a                	ld	s0,144(sp)
   105ea:	64aa                	ld	s1,136(sp)
   105ec:	610d                	addi	sp,sp,160
   105ee:	8082                	ret

00000000000105f0 <stat>:
   105f0:	7135                	addi	sp,sp,-160
   105f2:	e526                	sd	s1,136(sp)
   105f4:	860a                	mv	a2,sp
   105f6:	84ae                	mv	s1,a1
   105f8:	4701                	li	a4,0
   105fa:	85aa                	mv	a1,a0
   105fc:	4681                	li	a3,0
   105fe:	40e00513          	li	a0,1038
   10602:	ed06                	sd	ra,152(sp)
   10604:	e922                	sd	s0,144(sp)
   10606:	00000097          	auipc	ra,0x0
   1060a:	f28080e7          	jalr	-216(ra) # 1052e <__internal_syscall>
   1060e:	842a                	mv	s0,a0
   10610:	858a                	mv	a1,sp
   10612:	8526                	mv	a0,s1
   10614:	00000097          	auipc	ra,0x0
   10618:	eb8080e7          	jalr	-328(ra) # 104cc <conv_stat>
   1061c:	0004051b          	sext.w	a0,s0
   10620:	60ea                	ld	ra,152(sp)
   10622:	644a                	ld	s0,144(sp)
   10624:	64aa                	ld	s1,136(sp)
   10626:	610d                	addi	sp,sp,160
   10628:	8082                	ret

000000000001062a <lstat>:
   1062a:	7135                	addi	sp,sp,-160
   1062c:	e526                	sd	s1,136(sp)
   1062e:	860a                	mv	a2,sp
   10630:	84ae                	mv	s1,a1
   10632:	4701                	li	a4,0
   10634:	85aa                	mv	a1,a0
   10636:	4681                	li	a3,0
   10638:	40f00513          	li	a0,1039
   1063c:	ed06                	sd	ra,152(sp)
   1063e:	e922                	sd	s0,144(sp)
   10640:	eefff0ef          	jal	ra,1052e <__internal_syscall>
   10644:	842a                	mv	s0,a0
   10646:	858a                	mv	a1,sp
   10648:	8526                	mv	a0,s1
   1064a:	e83ff0ef          	jal	ra,104cc <conv_stat>
   1064e:	0004051b          	sext.w	a0,s0
   10652:	60ea                	ld	ra,152(sp)
   10654:	644a                	ld	s0,144(sp)
   10656:	64aa                	ld	s1,136(sp)
   10658:	610d                	addi	sp,sp,160
   1065a:	8082                	ret

000000000001065c <fstatat>:
   1065c:	7135                	addi	sp,sp,-160
   1065e:	e526                	sd	s1,136(sp)
   10660:	8736                	mv	a4,a3
   10662:	84b2                	mv	s1,a2
   10664:	868a                	mv	a3,sp
   10666:	862e                	mv	a2,a1
   10668:	85aa                	mv	a1,a0
   1066a:	04f00513          	li	a0,79
   1066e:	ed06                	sd	ra,152(sp)
   10670:	e922                	sd	s0,144(sp)
   10672:	00000097          	auipc	ra,0x0
   10676:	ebc080e7          	jalr	-324(ra) # 1052e <__internal_syscall>
   1067a:	842a                	mv	s0,a0
   1067c:	858a                	mv	a1,sp
   1067e:	8526                	mv	a0,s1
   10680:	00000097          	auipc	ra,0x0
   10684:	e4c080e7          	jalr	-436(ra) # 104cc <conv_stat>
   10688:	0004051b          	sext.w	a0,s0
   1068c:	60ea                	ld	ra,152(sp)
   1068e:	644a                	ld	s0,144(sp)
   10690:	64aa                	ld	s1,136(sp)
   10692:	610d                	addi	sp,sp,160
   10694:	8082                	ret

0000000000010696 <access>:
   10696:	1141                	addi	sp,sp,-16
   10698:	862e                	mv	a2,a1
   1069a:	4701                	li	a4,0
   1069c:	85aa                	mv	a1,a0
   1069e:	4681                	li	a3,0
   106a0:	40900513          	li	a0,1033
   106a4:	e406                	sd	ra,8(sp)
   106a6:	e89ff0ef          	jal	ra,1052e <__internal_syscall>
   106aa:	60a2                	ld	ra,8(sp)
   106ac:	2501                	sext.w	a0,a0
   106ae:	0141                	addi	sp,sp,16
   106b0:	8082                	ret

00000000000106b2 <faccessat>:
   106b2:	1141                	addi	sp,sp,-16
   106b4:	8736                	mv	a4,a3
   106b6:	86b2                	mv	a3,a2
   106b8:	862e                	mv	a2,a1
   106ba:	85aa                	mv	a1,a0
   106bc:	03000513          	li	a0,48
   106c0:	e406                	sd	ra,8(sp)
   106c2:	00000097          	auipc	ra,0x0
   106c6:	e6c080e7          	jalr	-404(ra) # 1052e <__internal_syscall>
   106ca:	60a2                	ld	ra,8(sp)
   106cc:	2501                	sext.w	a0,a0
   106ce:	0141                	addi	sp,sp,16
   106d0:	8082                	ret

00000000000106d2 <close>:
   106d2:	1141                	addi	sp,sp,-16
   106d4:	85aa                	mv	a1,a0
   106d6:	4701                	li	a4,0
   106d8:	4681                	li	a3,0
   106da:	4601                	li	a2,0
   106dc:	03900513          	li	a0,57
   106e0:	e406                	sd	ra,8(sp)
   106e2:	e4dff0ef          	jal	ra,1052e <__internal_syscall>
   106e6:	60a2                	ld	ra,8(sp)
   106e8:	2501                	sext.w	a0,a0
   106ea:	0141                	addi	sp,sp,16
   106ec:	8082                	ret

00000000000106ee <link>:
   106ee:	1141                	addi	sp,sp,-16
   106f0:	862e                	mv	a2,a1
   106f2:	4701                	li	a4,0
   106f4:	85aa                	mv	a1,a0
   106f6:	4681                	li	a3,0
   106f8:	40100513          	li	a0,1025
   106fc:	e406                	sd	ra,8(sp)
   106fe:	00000097          	auipc	ra,0x0
   10702:	e30080e7          	jalr	-464(ra) # 1052e <__internal_syscall>
   10706:	60a2                	ld	ra,8(sp)
   10708:	2501                	sext.w	a0,a0
   1070a:	0141                	addi	sp,sp,16
   1070c:	8082                	ret

000000000001070e <unlink>:
   1070e:	1141                	addi	sp,sp,-16
   10710:	85aa                	mv	a1,a0
   10712:	4701                	li	a4,0
   10714:	4681                	li	a3,0
   10716:	4601                	li	a2,0
   10718:	40200513          	li	a0,1026
   1071c:	e406                	sd	ra,8(sp)
   1071e:	e11ff0ef          	jal	ra,1052e <__internal_syscall>
   10722:	60a2                	ld	ra,8(sp)
   10724:	2501                	sext.w	a0,a0
   10726:	0141                	addi	sp,sp,16
   10728:	8082                	ret

000000000001072a <execve>:
   1072a:	1141                	addi	sp,sp,-16
   1072c:	e406                	sd	ra,8(sp)
   1072e:	00000097          	auipc	ra,0x0
   10732:	1a2080e7          	jalr	418(ra) # 108d0 <__errno>
   10736:	60a2                	ld	ra,8(sp)
   10738:	47b1                	li	a5,12
   1073a:	c11c                	sw	a5,0(a0)
   1073c:	557d                	li	a0,-1
   1073e:	0141                	addi	sp,sp,16
   10740:	8082                	ret

0000000000010742 <fork>:
   10742:	1141                	addi	sp,sp,-16
   10744:	e406                	sd	ra,8(sp)
   10746:	18a000ef          	jal	ra,108d0 <__errno>
   1074a:	60a2                	ld	ra,8(sp)
   1074c:	47ad                	li	a5,11
   1074e:	c11c                	sw	a5,0(a0)
   10750:	557d                	li	a0,-1
   10752:	0141                	addi	sp,sp,16
   10754:	8082                	ret

0000000000010756 <getpid>:
   10756:	4505                	li	a0,1
   10758:	8082                	ret

000000000001075a <kill>:
   1075a:	1141                	addi	sp,sp,-16
   1075c:	e406                	sd	ra,8(sp)
   1075e:	172000ef          	jal	ra,108d0 <__errno>
   10762:	60a2                	ld	ra,8(sp)
   10764:	47d9                	li	a5,22
   10766:	c11c                	sw	a5,0(a0)
   10768:	557d                	li	a0,-1
   1076a:	0141                	addi	sp,sp,16
   1076c:	8082                	ret

000000000001076e <wait>:
   1076e:	1141                	addi	sp,sp,-16
   10770:	e406                	sd	ra,8(sp)
   10772:	00000097          	auipc	ra,0x0
   10776:	15e080e7          	jalr	350(ra) # 108d0 <__errno>
   1077a:	60a2                	ld	ra,8(sp)
   1077c:	47a9                	li	a5,10
   1077e:	c11c                	sw	a5,0(a0)
   10780:	557d                	li	a0,-1
   10782:	0141                	addi	sp,sp,16
   10784:	8082                	ret

0000000000010786 <isatty>:
   10786:	7119                	addi	sp,sp,-128
   10788:	002c                	addi	a1,sp,8
   1078a:	fc86                	sd	ra,120(sp)
   1078c:	e33ff0ef          	jal	ra,105be <fstat>
   10790:	57fd                	li	a5,-1
   10792:	00f50663          	beq	a0,a5,1079e <isatty+0x18>
   10796:	4532                	lw	a0,12(sp)
   10798:	40d5551b          	sraiw	a0,a0,0xd
   1079c:	8905                	andi	a0,a0,1
   1079e:	70e6                	ld	ra,120(sp)
   107a0:	6109                	addi	sp,sp,128
   107a2:	8082                	ret

00000000000107a4 <gettimeofday>:
   107a4:	1141                	addi	sp,sp,-16
   107a6:	85aa                	mv	a1,a0
   107a8:	4701                	li	a4,0
   107aa:	4681                	li	a3,0
   107ac:	4601                	li	a2,0
   107ae:	0a900513          	li	a0,169
   107b2:	e406                	sd	ra,8(sp)
   107b4:	00000097          	auipc	ra,0x0
   107b8:	d7a080e7          	jalr	-646(ra) # 1052e <__internal_syscall>
   107bc:	60a2                	ld	ra,8(sp)
   107be:	2501                	sext.w	a0,a0
   107c0:	0141                	addi	sp,sp,16
   107c2:	8082                	ret

00000000000107c4 <times>:
   107c4:	7179                	addi	sp,sp,-48
   107c6:	f022                	sd	s0,32(sp)
   107c8:	842a                	mv	s0,a0
   107ca:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   107ce:	ec26                	sd	s1,24(sp)
   107d0:	f406                	sd	ra,40(sp)
   107d2:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   107d6:	eb81                	bnez	a5,107e6 <times+0x22>
   107d8:	4581                	li	a1,0
   107da:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   107de:	00000097          	auipc	ra,0x0
   107e2:	fc6080e7          	jalr	-58(ra) # 107a4 <gettimeofday>
   107e6:	850a                	mv	a0,sp
   107e8:	4581                	li	a1,0
   107ea:	00000097          	auipc	ra,0x0
   107ee:	fba080e7          	jalr	-70(ra) # 107a4 <gettimeofday>
   107f2:	6098                	ld	a4,0(s1)
   107f4:	6782                	ld	a5,0(sp)
   107f6:	6494                	ld	a3,8(s1)
   107f8:	00043823          	sd	zero,16(s0)
   107fc:	8f99                	sub	a5,a5,a4
   107fe:	000f4737          	lui	a4,0xf4
   10802:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   10806:	02e787b3          	mul	a5,a5,a4
   1080a:	6722                	ld	a4,8(sp)
   1080c:	00043c23          	sd	zero,24(s0)
   10810:	00043423          	sd	zero,8(s0)
   10814:	8f15                	sub	a4,a4,a3
   10816:	70a2                	ld	ra,40(sp)
   10818:	64e2                	ld	s1,24(sp)
   1081a:	557d                	li	a0,-1
   1081c:	97ba                	add	a5,a5,a4
   1081e:	e01c                	sd	a5,0(s0)
   10820:	7402                	ld	s0,32(sp)
   10822:	6145                	addi	sp,sp,48
   10824:	8082                	ret

0000000000010826 <ftime>:
   10826:	00051423          	sh	zero,8(a0)
   1082a:	00053023          	sd	zero,0(a0)
   1082e:	4501                	li	a0,0
   10830:	8082                	ret

0000000000010832 <utime>:
   10832:	557d                	li	a0,-1
   10834:	8082                	ret

0000000000010836 <chown>:
   10836:	557d                	li	a0,-1
   10838:	8082                	ret

000000000001083a <chmod>:
   1083a:	557d                	li	a0,-1
   1083c:	8082                	ret

000000000001083e <chdir>:
   1083e:	557d                	li	a0,-1
   10840:	8082                	ret

0000000000010842 <getcwd>:
   10842:	4501                	li	a0,0
   10844:	8082                	ret

0000000000010846 <sysconf>:
   10846:	4789                	li	a5,2
   10848:	00f50463          	beq	a0,a5,10850 <sysconf+0xa>
   1084c:	557d                	li	a0,-1
   1084e:	8082                	ret
   10850:	000f4537          	lui	a0,0xf4
   10854:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10858:	8082                	ret

000000000001085a <sbrk>:
   1085a:	1101                	addi	sp,sp,-32
   1085c:	e822                	sd	s0,16(sp)
   1085e:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10862:	e426                	sd	s1,8(sp)
   10864:	ec06                	sd	ra,24(sp)
   10866:	84aa                	mv	s1,a0
   10868:	e785                	bnez	a5,10890 <sbrk+0x36>
   1086a:	4701                	li	a4,0
   1086c:	4681                	li	a3,0
   1086e:	4601                	li	a2,0
   10870:	4581                	li	a1,0
   10872:	0d600513          	li	a0,214
   10876:	cb9ff0ef          	jal	ra,1052e <__internal_syscall>
   1087a:	57fd                	li	a5,-1
   1087c:	00f51863          	bne	a0,a5,1088c <sbrk+0x32>
   10880:	557d                	li	a0,-1
   10882:	60e2                	ld	ra,24(sp)
   10884:	6442                	ld	s0,16(sp)
   10886:	64a2                	ld	s1,8(sp)
   10888:	6105                	addi	sp,sp,32
   1088a:	8082                	ret
   1088c:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10890:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10894:	4701                	li	a4,0
   10896:	4681                	li	a3,0
   10898:	95a6                	add	a1,a1,s1
   1089a:	4601                	li	a2,0
   1089c:	0d600513          	li	a0,214
   108a0:	c8fff0ef          	jal	ra,1052e <__internal_syscall>
   108a4:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   108a8:	94be                	add	s1,s1,a5
   108aa:	fc951be3          	bne	a0,s1,10880 <sbrk+0x26>
   108ae:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   108b2:	853e                	mv	a0,a5
   108b4:	b7f9                	j	10882 <sbrk+0x28>

00000000000108b6 <_exit>:
   108b6:	1141                	addi	sp,sp,-16
   108b8:	85aa                	mv	a1,a0
   108ba:	4701                	li	a4,0
   108bc:	4681                	li	a3,0
   108be:	4601                	li	a2,0
   108c0:	05d00513          	li	a0,93
   108c4:	e406                	sd	ra,8(sp)
   108c6:	00000097          	auipc	ra,0x0
   108ca:	c68080e7          	jalr	-920(ra) # 1052e <__internal_syscall>
   108ce:	a001                	j	108ce <_exit+0x18>

00000000000108d0 <__errno>:
   108d0:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   108d4:	8082                	ret
	...

Disassembly of section .rodata:

00000000000108d8 <.rodata>:
   108d8:	6548                	ld	a0,136(a0)
   108da:	6c6c                	ld	a1,216(s0)
   108dc:	57202c6f          	jal	s8,12e4e <__global_pointer$+0xef6>
   108e0:	646c726f          	jal	tp,d7f26 <__global_pointer$+0xc5fce>
   108e4:	0a21                	addi	s4,s4,8
	...

Disassembly of section .eh_frame:

00000000000108e8 <__EH_FRAME_BEGIN__>:
   108e8:	0000                	unimp
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
