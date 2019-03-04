
whetstone:     file format elf64-x86-64


Disassembly of section .init:

00000000004008e0 <_init>:
  4008e0:	48 83 ec 08          	sub    $0x8,%rsp
  4008e4:	48 8d 05 75 01 00 00 	lea    0x175(%rip),%rax        # 400a60 <__gmon_start__>
  4008eb:	48 85 c0             	test   %rax,%rax
  4008ee:	74 05                	je     4008f5 <_init+0x15>
  4008f0:	e8 6b 01 00 00       	callq  400a60 <__gmon_start__>
  4008f5:	48 83 c4 08          	add    $0x8,%rsp
  4008f9:	c3                   	retq   

Disassembly of section .plt:

0000000000400900 <putchar@plt-0x10>:
  400900:	ff 35 02 17 20 00    	pushq  0x201702(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400906:	ff 25 04 17 20 00    	jmpq   *0x201704(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400910 <putchar@plt>:
  400910:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400916:	68 00 00 00 00       	pushq  $0x0
  40091b:	e9 e0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400920 <strncmp@plt>:
  400920:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400926:	68 01 00 00 00       	pushq  $0x1
  40092b:	e9 d0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400930 <puts@plt>:
  400930:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400936:	68 02 00 00 00       	pushq  $0x2
  40093b:	e9 c0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400940 <exp@plt>:
  400940:	ff 25 ea 16 20 00    	jmpq   *0x2016ea(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400946:	68 03 00 00 00       	pushq  $0x3
  40094b:	e9 b0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400950 <atan@plt>:
  400950:	ff 25 e2 16 20 00    	jmpq   *0x2016e2(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400956:	68 04 00 00 00       	pushq  $0x4
  40095b:	e9 a0 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400960 <__stack_chk_fail@plt>:
  400960:	ff 25 da 16 20 00    	jmpq   *0x2016da(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400966:	68 05 00 00 00       	pushq  $0x5
  40096b:	e9 90 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400970 <printf@plt>:
  400970:	ff 25 d2 16 20 00    	jmpq   *0x2016d2(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400976:	68 06 00 00 00       	pushq  $0x6
  40097b:	e9 80 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400980 <log@plt>:
  400980:	ff 25 ca 16 20 00    	jmpq   *0x2016ca(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400986:	68 07 00 00 00       	pushq  $0x7
  40098b:	e9 70 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400990 <cos@plt>:
  400990:	ff 25 c2 16 20 00    	jmpq   *0x2016c2(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400996:	68 08 00 00 00       	pushq  $0x8
  40099b:	e9 60 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009a0 <__libc_start_main@plt>:
  4009a0:	ff 25 ba 16 20 00    	jmpq   *0x2016ba(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4009a6:	68 09 00 00 00       	pushq  $0x9
  4009ab:	e9 50 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009b0 <__monstartup@plt>:
  4009b0:	ff 25 b2 16 20 00    	jmpq   *0x2016b2(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4009b6:	68 0a 00 00 00       	pushq  $0xa
  4009bb:	e9 40 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009c0 <time@plt>:
  4009c0:	ff 25 aa 16 20 00    	jmpq   *0x2016aa(%rip)        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  4009c6:	68 0b 00 00 00       	pushq  $0xb
  4009cb:	e9 30 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009d0 <mcount@plt>:
  4009d0:	ff 25 a2 16 20 00    	jmpq   *0x2016a2(%rip)        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  4009d6:	68 0c 00 00 00       	pushq  $0xc
  4009db:	e9 20 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009e0 <atol@plt>:
  4009e0:	ff 25 9a 16 20 00    	jmpq   *0x20169a(%rip)        # 602080 <_GLOBAL_OFFSET_TABLE_+0x80>
  4009e6:	68 0d 00 00 00       	pushq  $0xd
  4009eb:	e9 10 ff ff ff       	jmpq   400900 <_init+0x20>

00000000004009f0 <sin@plt>:
  4009f0:	ff 25 92 16 20 00    	jmpq   *0x201692(%rip)        # 602088 <_GLOBAL_OFFSET_TABLE_+0x88>
  4009f6:	68 0e 00 00 00       	pushq  $0xe
  4009fb:	e9 00 ff ff ff       	jmpq   400900 <_init+0x20>

0000000000400a00 <__cxa_atexit@plt>:
  400a00:	ff 25 8a 16 20 00    	jmpq   *0x20168a(%rip)        # 602090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400a06:	68 0f 00 00 00       	pushq  $0xf
  400a0b:	e9 f0 fe ff ff       	jmpq   400900 <_init+0x20>

0000000000400a10 <fwrite@plt>:
  400a10:	ff 25 82 16 20 00    	jmpq   *0x201682(%rip)        # 602098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400a16:	68 10 00 00 00       	pushq  $0x10
  400a1b:	e9 e0 fe ff ff       	jmpq   400900 <_init+0x20>

0000000000400a20 <sqrt@plt>:
  400a20:	ff 25 7a 16 20 00    	jmpq   *0x20167a(%rip)        # 6020a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400a26:	68 11 00 00 00       	pushq  $0x11
  400a2b:	e9 d0 fe ff ff       	jmpq   400900 <_init+0x20>

Disassembly of section .text:

0000000000400a30 <_start>:
  400a30:	31 ed                	xor    %ebp,%ebp
  400a32:	49 89 d1             	mov    %rdx,%r9
  400a35:	5e                   	pop    %rsi
  400a36:	48 89 e2             	mov    %rsp,%rdx
  400a39:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400a3d:	50                   	push   %rax
  400a3e:	54                   	push   %rsp
  400a3f:	4c 8d 05 fa 0f 00 00 	lea    0xffa(%rip),%r8        # 401a40 <__libc_csu_fini>
  400a46:	48 8d 0d 83 0f 00 00 	lea    0xf83(%rip),%rcx        # 4019d0 <__libc_csu_init>
  400a4d:	48 8d 3d 22 01 00 00 	lea    0x122(%rip),%rdi        # 400b76 <main>
  400a54:	e8 47 ff ff ff       	callq  4009a0 <__libc_start_main@plt>
  400a59:	f4                   	hlt    
  400a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400a60 <__gmon_start__>:
  400a60:	8b 05 62 16 20 00    	mov    0x201662(%rip),%eax        # 6020c8 <called.4507>
  400a66:	85 c0                	test   %eax,%eax
  400a68:	74 06                	je     400a70 <__gmon_start__+0x10>
  400a6a:	f3 c3                	repz retq 
  400a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a70:	48 83 ec 08          	sub    $0x8,%rsp
  400a74:	48 8d 3d b5 ff ff ff 	lea    -0x4b(%rip),%rdi        # 400a30 <_start>
  400a7b:	48 8b 35 76 15 20 00 	mov    0x201576(%rip),%rsi        # 601ff8 <_DYNAMIC+0x1e8>
  400a82:	c7 05 3c 16 20 00 01 	movl   $0x1,0x20163c(%rip)        # 6020c8 <called.4507>
  400a89:	00 00 00 
  400a8c:	e8 1f ff ff ff       	callq  4009b0 <__monstartup@plt>
  400a91:	48 8b 3d 58 15 20 00 	mov    0x201558(%rip),%rdi        # 601ff0 <_DYNAMIC+0x1e0>
  400a98:	48 83 c4 08          	add    $0x8,%rsp
  400a9c:	e9 af 0f 00 00       	jmpq   401a50 <atexit>
  400aa1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aa8:	00 00 00 
  400aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400ab0 <deregister_tm_clones>:
  400ab0:	b8 bf 20 60 00       	mov    $0x6020bf,%eax
  400ab5:	55                   	push   %rbp
  400ab6:	48 2d b8 20 60 00    	sub    $0x6020b8,%rax
  400abc:	48 83 f8 0e          	cmp    $0xe,%rax
  400ac0:	48 89 e5             	mov    %rsp,%rbp
  400ac3:	76 1b                	jbe    400ae0 <deregister_tm_clones+0x30>
  400ac5:	b8 00 00 00 00       	mov    $0x0,%eax
  400aca:	48 85 c0             	test   %rax,%rax
  400acd:	74 11                	je     400ae0 <deregister_tm_clones+0x30>
  400acf:	5d                   	pop    %rbp
  400ad0:	bf b8 20 60 00       	mov    $0x6020b8,%edi
  400ad5:	ff e0                	jmpq   *%rax
  400ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400ade:	00 00 
  400ae0:	5d                   	pop    %rbp
  400ae1:	c3                   	retq   
  400ae2:	0f 1f 40 00          	nopl   0x0(%rax)
  400ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aed:	00 00 00 

0000000000400af0 <register_tm_clones>:
  400af0:	be b8 20 60 00       	mov    $0x6020b8,%esi
  400af5:	55                   	push   %rbp
  400af6:	48 81 ee b8 20 60 00 	sub    $0x6020b8,%rsi
  400afd:	48 c1 fe 03          	sar    $0x3,%rsi
  400b01:	48 89 e5             	mov    %rsp,%rbp
  400b04:	48 89 f0             	mov    %rsi,%rax
  400b07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400b0b:	48 01 c6             	add    %rax,%rsi
  400b0e:	48 d1 fe             	sar    %rsi
  400b11:	74 15                	je     400b28 <register_tm_clones+0x38>
  400b13:	b8 00 00 00 00       	mov    $0x0,%eax
  400b18:	48 85 c0             	test   %rax,%rax
  400b1b:	74 0b                	je     400b28 <register_tm_clones+0x38>
  400b1d:	5d                   	pop    %rbp
  400b1e:	bf b8 20 60 00       	mov    $0x6020b8,%edi
  400b23:	ff e0                	jmpq   *%rax
  400b25:	0f 1f 00             	nopl   (%rax)
  400b28:	5d                   	pop    %rbp
  400b29:	c3                   	retq   
  400b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b30 <__do_global_dtors_aux>:
  400b30:	80 3d 95 15 20 00 00 	cmpb   $0x0,0x201595(%rip)        # 6020cc <completed.7594>
  400b37:	75 11                	jne    400b4a <__do_global_dtors_aux+0x1a>
  400b39:	55                   	push   %rbp
  400b3a:	48 89 e5             	mov    %rsp,%rbp
  400b3d:	e8 6e ff ff ff       	callq  400ab0 <deregister_tm_clones>
  400b42:	5d                   	pop    %rbp
  400b43:	c6 05 82 15 20 00 01 	movb   $0x1,0x201582(%rip)        # 6020cc <completed.7594>
  400b4a:	f3 c3                	repz retq 
  400b4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b50 <frame_dummy>:
  400b50:	bf 08 1e 60 00       	mov    $0x601e08,%edi
  400b55:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400b59:	75 05                	jne    400b60 <frame_dummy+0x10>
  400b5b:	eb 93                	jmp    400af0 <register_tm_clones>
  400b5d:	0f 1f 00             	nopl   (%rax)
  400b60:	b8 00 00 00 00       	mov    $0x0,%eax
  400b65:	48 85 c0             	test   %rax,%rax
  400b68:	74 f1                	je     400b5b <frame_dummy+0xb>
  400b6a:	55                   	push   %rbp
  400b6b:	48 89 e5             	mov    %rsp,%rbp
  400b6e:	ff d0                	callq  *%rax
  400b70:	5d                   	pop    %rbp
  400b71:	e9 7a ff ff ff       	jmpq   400af0 <register_tm_clones>

0000000000400b76 <main>:
  400b76:	55                   	push   %rbp
  400b77:	48 89 e5             	mov    %rsp,%rbp
  400b7a:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  400b81:	e8 4a fe ff ff       	callq  4009d0 <mcount@plt>
  400b86:	89 bd 2c ff ff ff    	mov    %edi,-0xd4(%rbp)
  400b8c:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
  400b93:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400b9a:	00 00 
  400b9c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400ba0:	31 c0                	xor    %eax,%eax
  400ba2:	48 c7 45 88 e8 03 00 	movq   $0x3e8,-0x78(%rbp)
  400ba9:	00 
  400baa:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%rbp)
  400bb1:	00 00 00 
  400bb4:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%rbp)
  400bbb:	00 00 00 
  400bbe:	e9 e7 00 00 00       	jmpq   400caa <main+0x134>
  400bc3:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  400bc9:	48 98                	cltq   
  400bcb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400bd2:	00 
  400bd3:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  400bda:	48 01 d0             	add    %rdx,%rax
  400bdd:	48 8b 00             	mov    (%rax),%rax
  400be0:	ba 02 00 00 00       	mov    $0x2,%edx
  400be5:	be 90 1a 40 00       	mov    $0x401a90,%esi
  400bea:	48 89 c7             	mov    %rax,%rdi
  400bed:	e8 2e fd ff ff       	callq  400920 <strncmp@plt>
  400bf2:	85 c0                	test   %eax,%eax
  400bf4:	74 24                	je     400c1a <main+0xa4>
  400bf6:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  400bfc:	48 98                	cltq   
  400bfe:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400c05:	00 
  400c06:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  400c0d:	48 01 d0             	add    %rdx,%rax
  400c10:	48 8b 00             	mov    (%rax),%rax
  400c13:	0f b6 00             	movzbl (%rax),%eax
  400c16:	3c 63                	cmp    $0x63,%al
  400c18:	75 0c                	jne    400c26 <main+0xb0>
  400c1a:	c7 85 40 ff ff ff 01 	movl   $0x1,-0xc0(%rbp)
  400c21:	00 00 00 
  400c24:	eb 7d                	jmp    400ca3 <main+0x12d>
  400c26:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  400c2c:	48 98                	cltq   
  400c2e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400c35:	00 
  400c36:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  400c3d:	48 01 d0             	add    %rdx,%rax
  400c40:	48 8b 00             	mov    (%rax),%rax
  400c43:	48 89 c7             	mov    %rax,%rdi
  400c46:	e8 95 fd ff ff       	callq  4009e0 <atol@plt>
  400c4b:	48 85 c0             	test   %rax,%rax
  400c4e:	7e 2b                	jle    400c7b <main+0x105>
  400c50:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  400c56:	48 98                	cltq   
  400c58:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400c5f:	00 
  400c60:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
  400c67:	48 01 d0             	add    %rdx,%rax
  400c6a:	48 8b 00             	mov    (%rax),%rax
  400c6d:	48 89 c7             	mov    %rax,%rdi
  400c70:	e8 6b fd ff ff       	callq  4009e0 <atol@plt>
  400c75:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  400c79:	eb 28                	jmp    400ca3 <main+0x12d>
  400c7b:	48 8b 05 3e 14 20 00 	mov    0x20143e(%rip),%rax        # 6020c0 <stderr@@GLIBC_2.2.5>
  400c82:	48 89 c1             	mov    %rax,%rcx
  400c85:	ba 1b 00 00 00       	mov    $0x1b,%edx
  400c8a:	be 01 00 00 00       	mov    $0x1,%esi
  400c8f:	bf 93 1a 40 00       	mov    $0x401a93,%edi
  400c94:	e8 77 fd ff ff       	callq  400a10 <fwrite@plt>
  400c99:	b8 01 00 00 00       	mov    $0x1,%eax
  400c9e:	e9 81 0a 00 00       	jmpq   401724 <main+0xbae>
  400ca3:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%rbp)
  400caa:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
  400cb0:	3b 85 2c ff ff ff    	cmp    -0xd4(%rbp),%eax
  400cb6:	0f 8c 07 ff ff ff    	jl     400bc3 <main+0x4d>
  400cbc:	bf 00 00 00 00       	mov    $0x0,%edi
  400cc1:	e8 fa fc ff ff       	callq  4009c0 <time@plt>
  400cc6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  400cca:	f2 0f 10 05 ae 0e 00 	movsd  0xeae(%rip),%xmm0        # 401b80 <_IO_stdin_used+0xf8>
  400cd1:	00 
  400cd2:	f2 0f 11 05 0e 14 20 	movsd  %xmm0,0x20140e(%rip)        # 6020e8 <T>
  400cd9:	00 
  400cda:	f2 0f 10 05 a6 0e 00 	movsd  0xea6(%rip),%xmm0        # 401b88 <_IO_stdin_used+0x100>
  400ce1:	00 
  400ce2:	f2 0f 11 05 06 14 20 	movsd  %xmm0,0x201406(%rip)        # 6020f0 <T1>
  400ce9:	00 
  400cea:	f2 0f 10 05 9e 0e 00 	movsd  0xe9e(%rip),%xmm0        # 401b90 <_IO_stdin_used+0x108>
  400cf1:	00 
  400cf2:	f2 0f 11 05 06 14 20 	movsd  %xmm0,0x201406(%rip)        # 602100 <T2>
  400cf9:	00 
  400cfa:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400cfe:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  400d02:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%rbp)
  400d09:	00 00 00 
  400d0c:	c7 85 3c ff ff ff 01 	movl   $0x1,-0xc4(%rbp)
  400d13:	00 00 00 
  400d16:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  400d1d:	00 
  400d1e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  400d22:	48 89 d0             	mov    %rdx,%rax
  400d25:	48 01 c0             	add    %rax,%rax
  400d28:	48 01 d0             	add    %rdx,%rax
  400d2b:	48 c1 e0 02          	shl    $0x2,%rax
  400d2f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  400d33:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d37:	48 01 c0             	add    %rax,%rax
  400d3a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  400d41:	00 
  400d42:	48 29 c2             	sub    %rax,%rdx
  400d45:	48 89 d0             	mov    %rdx,%rax
  400d48:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  400d4c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d50:	48 69 c0 59 01 00 00 	imul   $0x159,%rax,%rax
  400d57:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  400d5b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d5f:	48 69 c0 d2 00 00 00 	imul   $0xd2,%rax,%rax
  400d66:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  400d6a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d6e:	48 c1 e0 05          	shl    $0x5,%rax
  400d72:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400d76:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d7a:	48 69 c0 83 03 00 00 	imul   $0x383,%rax,%rax
  400d81:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400d85:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  400d89:	48 69 c0 68 02 00 00 	imul   $0x268,%rax,%rax
  400d90:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400d94:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  400d9b:	00 
  400d9c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  400da0:	48 89 d0             	mov    %rdx,%rax
  400da3:	48 01 c0             	add    %rax,%rax
  400da6:	48 01 d0             	add    %rdx,%rax
  400da9:	48 89 c2             	mov    %rax,%rdx
  400dac:	48 c1 e2 05          	shl    $0x5,%rdx
  400db0:	48 29 c2             	sub    %rax,%rdx
  400db3:	48 89 d0             	mov    %rdx,%rax
  400db6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400dba:	f2 0f 10 05 d6 0d 00 	movsd  0xdd6(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  400dc1:	00 
  400dc2:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
  400dc9:	ff 
  400dca:	f2 0f 10 05 ce 0d 00 	movsd  0xdce(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400dd1:	00 
  400dd2:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
  400dd9:	ff 
  400dda:	f2 0f 10 05 be 0d 00 	movsd  0xdbe(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400de1:	00 
  400de2:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
  400de9:	ff 
  400dea:	f2 0f 10 05 ae 0d 00 	movsd  0xdae(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400df1:	00 
  400df2:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
  400df9:	ff 
  400dfa:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  400e01:	01 00 00 00 
  400e05:	e9 d8 00 00 00       	jmpq   400ee2 <main+0x36c>
  400e0a:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
  400e11:	ff 
  400e12:	f2 0f 58 85 60 ff ff 	addsd  -0xa0(%rbp),%xmm0
  400e19:	ff 
  400e1a:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
  400e21:	ff 
  400e22:	f2 0f 5c 85 70 ff ff 	subsd  -0x90(%rbp),%xmm0
  400e29:	ff 
  400e2a:	f2 0f 10 0d b6 12 20 	movsd  0x2012b6(%rip),%xmm1        # 6020e8 <T>
  400e31:	00 
  400e32:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400e36:	f2 0f 11 85 58 ff ff 	movsd  %xmm0,-0xa8(%rbp)
  400e3d:	ff 
  400e3e:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
  400e45:	ff 
  400e46:	f2 0f 58 85 60 ff ff 	addsd  -0xa0(%rbp),%xmm0
  400e4d:	ff 
  400e4e:	f2 0f 5c 85 68 ff ff 	subsd  -0x98(%rbp),%xmm0
  400e55:	ff 
  400e56:	f2 0f 58 85 70 ff ff 	addsd  -0x90(%rbp),%xmm0
  400e5d:	ff 
  400e5e:	f2 0f 10 0d 82 12 20 	movsd  0x201282(%rip),%xmm1        # 6020e8 <T>
  400e65:	00 
  400e66:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400e6a:	f2 0f 11 85 60 ff ff 	movsd  %xmm0,-0xa0(%rbp)
  400e71:	ff 
  400e72:	f2 0f 10 85 58 ff ff 	movsd  -0xa8(%rbp),%xmm0
  400e79:	ff 
  400e7a:	f2 0f 5c 85 60 ff ff 	subsd  -0xa0(%rbp),%xmm0
  400e81:	ff 
  400e82:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
  400e89:	ff 
  400e8a:	f2 0f 58 85 70 ff ff 	addsd  -0x90(%rbp),%xmm0
  400e91:	ff 
  400e92:	f2 0f 10 0d 4e 12 20 	movsd  0x20124e(%rip),%xmm1        # 6020e8 <T>
  400e99:	00 
  400e9a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400e9e:	f2 0f 11 85 68 ff ff 	movsd  %xmm0,-0x98(%rbp)
  400ea5:	ff 
  400ea6:	f2 0f 10 85 60 ff ff 	movsd  -0xa0(%rbp),%xmm0
  400ead:	ff 
  400eae:	f2 0f 5c 85 58 ff ff 	subsd  -0xa8(%rbp),%xmm0
  400eb5:	ff 
  400eb6:	f2 0f 58 85 68 ff ff 	addsd  -0x98(%rbp),%xmm0
  400ebd:	ff 
  400ebe:	f2 0f 58 85 70 ff ff 	addsd  -0x90(%rbp),%xmm0
  400ec5:	ff 
  400ec6:	f2 0f 10 0d 1a 12 20 	movsd  0x20121a(%rip),%xmm1        # 6020e8 <T>
  400ecd:	00 
  400ece:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400ed2:	f2 0f 11 85 70 ff ff 	movsd  %xmm0,-0x90(%rbp)
  400ed9:	ff 
  400eda:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  400ee1:	01 
  400ee2:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  400ee9:	48 3b 45 a0          	cmp    -0x60(%rbp),%rax
  400eed:	0f 8e 17 ff ff ff    	jle    400e0a <main+0x294>
  400ef3:	f2 0f 10 05 9d 0c 00 	movsd  0xc9d(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  400efa:	00 
  400efb:	f2 0f 11 05 25 12 20 	movsd  %xmm0,0x201225(%rip)        # 602128 <E1+0x8>
  400f02:	00 
  400f03:	f2 0f 10 05 95 0c 00 	movsd  0xc95(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400f0a:	00 
  400f0b:	f2 0f 11 05 1d 12 20 	movsd  %xmm0,0x20121d(%rip)        # 602130 <E1+0x10>
  400f12:	00 
  400f13:	f2 0f 10 05 85 0c 00 	movsd  0xc85(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400f1a:	00 
  400f1b:	f2 0f 11 05 15 12 20 	movsd  %xmm0,0x201215(%rip)        # 602138 <E1+0x18>
  400f22:	00 
  400f23:	f2 0f 10 05 75 0c 00 	movsd  0xc75(%rip),%xmm0        # 401ba0 <_IO_stdin_used+0x118>
  400f2a:	00 
  400f2b:	f2 0f 11 05 0d 12 20 	movsd  %xmm0,0x20120d(%rip)        # 602140 <E1+0x20>
  400f32:	00 
  400f33:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  400f3a:	01 00 00 00 
  400f3e:	e9 08 01 00 00       	jmpq   40104b <main+0x4d5>
  400f43:	f2 0f 10 0d dd 11 20 	movsd  0x2011dd(%rip),%xmm1        # 602128 <E1+0x8>
  400f4a:	00 
  400f4b:	f2 0f 10 05 dd 11 20 	movsd  0x2011dd(%rip),%xmm0        # 602130 <E1+0x10>
  400f52:	00 
  400f53:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400f57:	f2 0f 10 0d d9 11 20 	movsd  0x2011d9(%rip),%xmm1        # 602138 <E1+0x18>
  400f5e:	00 
  400f5f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400f63:	f2 0f 10 0d d5 11 20 	movsd  0x2011d5(%rip),%xmm1        # 602140 <E1+0x20>
  400f6a:	00 
  400f6b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  400f6f:	f2 0f 10 0d 71 11 20 	movsd  0x201171(%rip),%xmm1        # 6020e8 <T>
  400f76:	00 
  400f77:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400f7b:	f2 0f 11 05 a5 11 20 	movsd  %xmm0,0x2011a5(%rip)        # 602128 <E1+0x8>
  400f82:	00 
  400f83:	f2 0f 10 0d 9d 11 20 	movsd  0x20119d(%rip),%xmm1        # 602128 <E1+0x8>
  400f8a:	00 
  400f8b:	f2 0f 10 05 9d 11 20 	movsd  0x20119d(%rip),%xmm0        # 602130 <E1+0x10>
  400f92:	00 
  400f93:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400f97:	f2 0f 10 0d 99 11 20 	movsd  0x201199(%rip),%xmm1        # 602138 <E1+0x18>
  400f9e:	00 
  400f9f:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  400fa3:	f2 0f 10 0d 95 11 20 	movsd  0x201195(%rip),%xmm1        # 602140 <E1+0x20>
  400faa:	00 
  400fab:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400faf:	f2 0f 10 0d 31 11 20 	movsd  0x201131(%rip),%xmm1        # 6020e8 <T>
  400fb6:	00 
  400fb7:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400fbb:	f2 0f 11 05 6d 11 20 	movsd  %xmm0,0x20116d(%rip)        # 602130 <E1+0x10>
  400fc2:	00 
  400fc3:	f2 0f 10 05 5d 11 20 	movsd  0x20115d(%rip),%xmm0        # 602128 <E1+0x8>
  400fca:	00 
  400fcb:	f2 0f 10 0d 5d 11 20 	movsd  0x20115d(%rip),%xmm1        # 602130 <E1+0x10>
  400fd2:	00 
  400fd3:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  400fd7:	f2 0f 10 0d 59 11 20 	movsd  0x201159(%rip),%xmm1        # 602138 <E1+0x18>
  400fde:	00 
  400fdf:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400fe3:	f2 0f 10 0d 55 11 20 	movsd  0x201155(%rip),%xmm1        # 602140 <E1+0x20>
  400fea:	00 
  400feb:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400fef:	f2 0f 10 0d f1 10 20 	movsd  0x2010f1(%rip),%xmm1        # 6020e8 <T>
  400ff6:	00 
  400ff7:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  400ffb:	f2 0f 11 05 35 11 20 	movsd  %xmm0,0x201135(%rip)        # 602138 <E1+0x18>
  401002:	00 
  401003:	f2 0f 10 05 25 11 20 	movsd  0x201125(%rip),%xmm0        # 602130 <E1+0x10>
  40100a:	00 
  40100b:	f2 0f 10 0d 15 11 20 	movsd  0x201115(%rip),%xmm1        # 602128 <E1+0x8>
  401012:	00 
  401013:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  401017:	f2 0f 10 0d 19 11 20 	movsd  0x201119(%rip),%xmm1        # 602138 <E1+0x18>
  40101e:	00 
  40101f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401023:	f2 0f 10 0d 15 11 20 	movsd  0x201115(%rip),%xmm1        # 602140 <E1+0x20>
  40102a:	00 
  40102b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  40102f:	f2 0f 10 0d b1 10 20 	movsd  0x2010b1(%rip),%xmm1        # 6020e8 <T>
  401036:	00 
  401037:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40103b:	f2 0f 11 05 fd 10 20 	movsd  %xmm0,0x2010fd(%rip)        # 602140 <E1+0x20>
  401042:	00 
  401043:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  40104a:	01 
  40104b:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  401052:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
  401056:	0f 8e e7 fe ff ff    	jle    400f43 <main+0x3cd>
  40105c:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  401063:	01 00 00 00 
  401067:	eb 12                	jmp    40107b <main+0x505>
  401069:	bf 20 21 60 00       	mov    $0x602120,%edi
  40106e:	e8 c7 06 00 00       	callq  40173a <PA>
  401073:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  40107a:	01 
  40107b:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  401082:	48 3b 45 b0          	cmp    -0x50(%rbp),%rax
  401086:	7e e1                	jle    401069 <main+0x4f3>
  401088:	c7 05 4e 10 20 00 01 	movl   $0x1,0x20104e(%rip)        # 6020e0 <J>
  40108f:	00 00 00 
  401092:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  401099:	01 00 00 00 
  40109d:	eb 6a                	jmp    401109 <main+0x593>
  40109f:	8b 05 3b 10 20 00    	mov    0x20103b(%rip),%eax        # 6020e0 <J>
  4010a5:	83 f8 01             	cmp    $0x1,%eax
  4010a8:	75 0c                	jne    4010b6 <main+0x540>
  4010aa:	c7 05 2c 10 20 00 02 	movl   $0x2,0x20102c(%rip)        # 6020e0 <J>
  4010b1:	00 00 00 
  4010b4:	eb 0a                	jmp    4010c0 <main+0x54a>
  4010b6:	c7 05 20 10 20 00 03 	movl   $0x3,0x201020(%rip)        # 6020e0 <J>
  4010bd:	00 00 00 
  4010c0:	8b 05 1a 10 20 00    	mov    0x20101a(%rip),%eax        # 6020e0 <J>
  4010c6:	83 f8 02             	cmp    $0x2,%eax
  4010c9:	7e 0c                	jle    4010d7 <main+0x561>
  4010cb:	c7 05 0b 10 20 00 00 	movl   $0x0,0x20100b(%rip)        # 6020e0 <J>
  4010d2:	00 00 00 
  4010d5:	eb 0a                	jmp    4010e1 <main+0x56b>
  4010d7:	c7 05 ff 0f 20 00 01 	movl   $0x1,0x200fff(%rip)        # 6020e0 <J>
  4010de:	00 00 00 
  4010e1:	8b 05 f9 0f 20 00    	mov    0x200ff9(%rip),%eax        # 6020e0 <J>
  4010e7:	85 c0                	test   %eax,%eax
  4010e9:	7f 0c                	jg     4010f7 <main+0x581>
  4010eb:	c7 05 eb 0f 20 00 01 	movl   $0x1,0x200feb(%rip)        # 6020e0 <J>
  4010f2:	00 00 00 
  4010f5:	eb 0a                	jmp    401101 <main+0x58b>
  4010f7:	c7 05 df 0f 20 00 00 	movl   $0x0,0x200fdf(%rip)        # 6020e0 <J>
  4010fe:	00 00 00 
  401101:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  401108:	01 
  401109:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  401110:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  401114:	7e 89                	jle    40109f <main+0x529>
  401116:	c7 05 c0 0f 20 00 01 	movl   $0x1,0x200fc0(%rip)        # 6020e0 <J>
  40111d:	00 00 00 
  401120:	c7 05 d2 0f 20 00 02 	movl   $0x2,0x200fd2(%rip)        # 6020fc <K>
  401127:	00 00 00 
  40112a:	c7 05 c4 0f 20 00 03 	movl   $0x3,0x200fc4(%rip)        # 6020f8 <L>
  401131:	00 00 00 
  401134:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  40113b:	01 00 00 00 
  40113f:	e9 dc 00 00 00       	jmpq   401220 <main+0x6aa>
  401144:	8b 15 b2 0f 20 00    	mov    0x200fb2(%rip),%edx        # 6020fc <K>
  40114a:	8b 05 90 0f 20 00    	mov    0x200f90(%rip),%eax        # 6020e0 <J>
  401150:	29 c2                	sub    %eax,%edx
  401152:	8b 05 88 0f 20 00    	mov    0x200f88(%rip),%eax        # 6020e0 <J>
  401158:	0f af c2             	imul   %edx,%eax
  40115b:	8b 0d 97 0f 20 00    	mov    0x200f97(%rip),%ecx        # 6020f8 <L>
  401161:	8b 15 95 0f 20 00    	mov    0x200f95(%rip),%edx        # 6020fc <K>
  401167:	29 d1                	sub    %edx,%ecx
  401169:	89 ca                	mov    %ecx,%edx
  40116b:	0f af c2             	imul   %edx,%eax
  40116e:	89 05 6c 0f 20 00    	mov    %eax,0x200f6c(%rip)        # 6020e0 <J>
  401174:	8b 15 66 0f 20 00    	mov    0x200f66(%rip),%edx        # 6020e0 <J>
  40117a:	8b 05 7c 0f 20 00    	mov    0x200f7c(%rip),%eax        # 6020fc <K>
  401180:	0f af c2             	imul   %edx,%eax
  401183:	89 05 73 0f 20 00    	mov    %eax,0x200f73(%rip)        # 6020fc <K>
  401189:	8b 15 69 0f 20 00    	mov    0x200f69(%rip),%edx        # 6020f8 <L>
  40118f:	8b 05 67 0f 20 00    	mov    0x200f67(%rip),%eax        # 6020fc <K>
  401195:	89 d1                	mov    %edx,%ecx
  401197:	29 c1                	sub    %eax,%ecx
  401199:	8b 15 5d 0f 20 00    	mov    0x200f5d(%rip),%edx        # 6020fc <K>
  40119f:	8b 05 3b 0f 20 00    	mov    0x200f3b(%rip),%eax        # 6020e0 <J>
  4011a5:	01 d0                	add    %edx,%eax
  4011a7:	0f af c1             	imul   %ecx,%eax
  4011aa:	89 05 48 0f 20 00    	mov    %eax,0x200f48(%rip)        # 6020f8 <L>
  4011b0:	8b 05 42 0f 20 00    	mov    0x200f42(%rip),%eax        # 6020f8 <L>
  4011b6:	8d 48 ff             	lea    -0x1(%rax),%ecx
  4011b9:	8b 15 21 0f 20 00    	mov    0x200f21(%rip),%edx        # 6020e0 <J>
  4011bf:	8b 05 37 0f 20 00    	mov    0x200f37(%rip),%eax        # 6020fc <K>
  4011c5:	01 c2                	add    %eax,%edx
  4011c7:	8b 05 2b 0f 20 00    	mov    0x200f2b(%rip),%eax        # 6020f8 <L>
  4011cd:	01 d0                	add    %edx,%eax
  4011cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4011d3:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4011d7:	48 63 c1             	movslq %ecx,%rax
  4011da:	f2 0f 11 04 c5 20 21 	movsd  %xmm0,0x602120(,%rax,8)
  4011e1:	60 00 
  4011e3:	8b 05 13 0f 20 00    	mov    0x200f13(%rip),%eax        # 6020fc <K>
  4011e9:	8d 48 ff             	lea    -0x1(%rax),%ecx
  4011ec:	8b 15 ee 0e 20 00    	mov    0x200eee(%rip),%edx        # 6020e0 <J>
  4011f2:	8b 05 04 0f 20 00    	mov    0x200f04(%rip),%eax        # 6020fc <K>
  4011f8:	0f af d0             	imul   %eax,%edx
  4011fb:	8b 05 f7 0e 20 00    	mov    0x200ef7(%rip),%eax        # 6020f8 <L>
  401201:	0f af c2             	imul   %edx,%eax
  401204:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401208:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  40120c:	48 63 c1             	movslq %ecx,%rax
  40120f:	f2 0f 11 04 c5 20 21 	movsd  %xmm0,0x602120(,%rax,8)
  401216:	60 00 
  401218:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  40121f:	01 
  401220:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  401227:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  40122b:	0f 8e 13 ff ff ff    	jle    401144 <main+0x5ce>
  401231:	f2 0f 10 05 6f 09 00 	movsd  0x96f(%rip),%xmm0        # 401ba8 <_IO_stdin_used+0x120>
  401238:	00 
  401239:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
  401240:	ff 
  401241:	f2 0f 10 05 5f 09 00 	movsd  0x95f(%rip),%xmm0        # 401ba8 <_IO_stdin_used+0x120>
  401248:	00 
  401249:	f2 0f 11 45 80       	movsd  %xmm0,-0x80(%rbp)
  40124e:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  401255:	01 00 00 00 
  401259:	e9 95 01 00 00       	jmpq   4013f3 <main+0x87d>
  40125e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401265:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  40126c:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
  401273:	ff 
  401274:	e8 77 f7 ff ff       	callq  4009f0 <sin@plt>
  401279:	66 0f 28 c8          	movapd %xmm0,%xmm1
  40127d:	f2 0f 10 05 7b 0e 20 	movsd  0x200e7b(%rip),%xmm0        # 602100 <T2>
  401284:	00 
  401285:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  401289:	f2 0f 11 8d 18 ff ff 	movsd  %xmm1,-0xe8(%rbp)
  401290:	ff 
  401291:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401298:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  40129f:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
  4012a6:	ff 
  4012a7:	e8 e4 f6 ff ff       	callq  400990 <cos@plt>
  4012ac:	f2 0f 59 85 18 ff ff 	mulsd  -0xe8(%rbp),%xmm0
  4012b3:	ff 
  4012b4:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
  4012bb:	ff 
  4012bc:	f2 0f 10 85 78 ff ff 	movsd  -0x88(%rbp),%xmm0
  4012c3:	ff 
  4012c4:	f2 0f 58 45 80       	addsd  -0x80(%rbp),%xmm0
  4012c9:	e8 c2 f6 ff ff       	callq  400990 <cos@plt>
  4012ce:	f2 0f 11 85 10 ff ff 	movsd  %xmm0,-0xf0(%rbp)
  4012d5:	ff 
  4012d6:	f2 0f 10 85 78 ff ff 	movsd  -0x88(%rbp),%xmm0
  4012dd:	ff 
  4012de:	f2 0f 5c 45 80       	subsd  -0x80(%rbp),%xmm0
  4012e3:	e8 a8 f6 ff ff       	callq  400990 <cos@plt>
  4012e8:	f2 0f 58 85 10 ff ff 	addsd  -0xf0(%rbp),%xmm0
  4012ef:	ff 
  4012f0:	f2 0f 10 0d a0 08 00 	movsd  0x8a0(%rip),%xmm1        # 401b98 <_IO_stdin_used+0x110>
  4012f7:	00 
  4012f8:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4012fc:	f2 0f 10 95 18 ff ff 	movsd  -0xe8(%rbp),%xmm2
  401303:	ff 
  401304:	f2 0f 5e d0          	divsd  %xmm0,%xmm2
  401308:	66 0f 28 c2          	movapd %xmm2,%xmm0
  40130c:	e8 3f f6 ff ff       	callq  400950 <atan@plt>
  401311:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401315:	f2 0f 10 05 cb 0d 20 	movsd  0x200dcb(%rip),%xmm0        # 6020e8 <T>
  40131c:	00 
  40131d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  401321:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
  401328:	ff 
  401329:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  40132d:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  401334:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
  40133b:	ff 
  40133c:	e8 af f6 ff ff       	callq  4009f0 <sin@plt>
  401341:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401345:	f2 0f 10 05 b3 0d 20 	movsd  0x200db3(%rip),%xmm0        # 602100 <T2>
  40134c:	00 
  40134d:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  401351:	f2 0f 11 8d 18 ff ff 	movsd  %xmm1,-0xe8(%rbp)
  401358:	ff 
  401359:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  40135d:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  401364:	f2 0f 10 85 10 ff ff 	movsd  -0xf0(%rbp),%xmm0
  40136b:	ff 
  40136c:	e8 1f f6 ff ff       	callq  400990 <cos@plt>
  401371:	f2 0f 59 85 18 ff ff 	mulsd  -0xe8(%rbp),%xmm0
  401378:	ff 
  401379:	f2 0f 11 85 18 ff ff 	movsd  %xmm0,-0xe8(%rbp)
  401380:	ff 
  401381:	f2 0f 10 85 78 ff ff 	movsd  -0x88(%rbp),%xmm0
  401388:	ff 
  401389:	f2 0f 58 45 80       	addsd  -0x80(%rbp),%xmm0
  40138e:	e8 fd f5 ff ff       	callq  400990 <cos@plt>
  401393:	f2 0f 11 85 10 ff ff 	movsd  %xmm0,-0xf0(%rbp)
  40139a:	ff 
  40139b:	f2 0f 10 85 78 ff ff 	movsd  -0x88(%rbp),%xmm0
  4013a2:	ff 
  4013a3:	f2 0f 5c 45 80       	subsd  -0x80(%rbp),%xmm0
  4013a8:	e8 e3 f5 ff ff       	callq  400990 <cos@plt>
  4013ad:	f2 0f 58 85 10 ff ff 	addsd  -0xf0(%rbp),%xmm0
  4013b4:	ff 
  4013b5:	f2 0f 10 0d db 07 00 	movsd  0x7db(%rip),%xmm1        # 401b98 <_IO_stdin_used+0x110>
  4013bc:	00 
  4013bd:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4013c1:	f2 0f 10 9d 18 ff ff 	movsd  -0xe8(%rbp),%xmm3
  4013c8:	ff 
  4013c9:	f2 0f 5e d8          	divsd  %xmm0,%xmm3
  4013cd:	66 0f 28 c3          	movapd %xmm3,%xmm0
  4013d1:	e8 7a f5 ff ff       	callq  400950 <atan@plt>
  4013d6:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4013da:	f2 0f 10 05 06 0d 20 	movsd  0x200d06(%rip),%xmm0        # 6020e8 <T>
  4013e1:	00 
  4013e2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  4013e6:	f2 0f 11 45 80       	movsd  %xmm0,-0x80(%rbp)
  4013eb:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  4013f2:	01 
  4013f3:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  4013fa:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  4013fe:	0f 8e 5a fe ff ff    	jle    40125e <main+0x6e8>
  401404:	f2 0f 10 05 8c 07 00 	movsd  0x78c(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  40140b:	00 
  40140c:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
  401413:	ff 
  401414:	f2 0f 10 05 7c 07 00 	movsd  0x77c(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  40141b:	00 
  40141c:	f2 0f 11 45 80       	movsd  %xmm0,-0x80(%rbp)
  401421:	f2 0f 10 05 6f 07 00 	movsd  0x76f(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  401428:	00 
  401429:	f2 0f 11 85 48 ff ff 	movsd  %xmm0,-0xb8(%rbp)
  401430:	ff 
  401431:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  401438:	01 00 00 00 
  40143c:	eb 36                	jmp    401474 <main+0x8fe>
  40143e:	48 8d 95 48 ff ff ff 	lea    -0xb8(%rbp),%rdx
  401445:	f2 0f 10 45 80       	movsd  -0x80(%rbp),%xmm0
  40144a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401451:	48 89 d7             	mov    %rdx,%rdi
  401454:	66 0f 28 c8          	movapd %xmm0,%xmm1
  401458:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  40145f:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
  401466:	ff 
  401467:	e8 d0 04 00 00       	callq  40193c <P3>
  40146c:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  401473:	01 
  401474:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  40147b:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
  40147f:	7e bd                	jle    40143e <main+0x8c8>
  401481:	c7 05 55 0c 20 00 01 	movl   $0x1,0x200c55(%rip)        # 6020e0 <J>
  401488:	00 00 00 
  40148b:	c7 05 67 0c 20 00 02 	movl   $0x2,0x200c67(%rip)        # 6020fc <K>
  401492:	00 00 00 
  401495:	c7 05 59 0c 20 00 03 	movl   $0x3,0x200c59(%rip)        # 6020f8 <L>
  40149c:	00 00 00 
  40149f:	f2 0f 10 05 f1 06 00 	movsd  0x6f1(%rip),%xmm0        # 401b98 <_IO_stdin_used+0x110>
  4014a6:	00 
  4014a7:	f2 0f 11 05 79 0c 20 	movsd  %xmm0,0x200c79(%rip)        # 602128 <E1+0x8>
  4014ae:	00 
  4014af:	f2 0f 10 05 d9 06 00 	movsd  0x6d9(%rip),%xmm0        # 401b90 <_IO_stdin_used+0x108>
  4014b6:	00 
  4014b7:	f2 0f 11 05 71 0c 20 	movsd  %xmm0,0x200c71(%rip)        # 602130 <E1+0x10>
  4014be:	00 
  4014bf:	f2 0f 10 05 e9 06 00 	movsd  0x6e9(%rip),%xmm0        # 401bb0 <_IO_stdin_used+0x128>
  4014c6:	00 
  4014c7:	f2 0f 11 05 69 0c 20 	movsd  %xmm0,0x200c69(%rip)        # 602138 <E1+0x18>
  4014ce:	00 
  4014cf:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  4014d6:	01 00 00 00 
  4014da:	eb 0d                	jmp    4014e9 <main+0x973>
  4014dc:	e8 e6 03 00 00       	callq  4018c7 <P0>
  4014e1:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  4014e8:	01 
  4014e9:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  4014f0:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  4014f4:	7e e6                	jle    4014dc <main+0x966>
  4014f6:	c7 05 e0 0b 20 00 02 	movl   $0x2,0x200be0(%rip)        # 6020e0 <J>
  4014fd:	00 00 00 
  401500:	c7 05 f2 0b 20 00 03 	movl   $0x3,0x200bf2(%rip)        # 6020fc <K>
  401507:	00 00 00 
  40150a:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  401511:	01 00 00 00 
  401515:	eb 64                	jmp    40157b <main+0xa05>
  401517:	8b 15 c3 0b 20 00    	mov    0x200bc3(%rip),%edx        # 6020e0 <J>
  40151d:	8b 05 d9 0b 20 00    	mov    0x200bd9(%rip),%eax        # 6020fc <K>
  401523:	01 d0                	add    %edx,%eax
  401525:	89 05 b5 0b 20 00    	mov    %eax,0x200bb5(%rip)        # 6020e0 <J>
  40152b:	8b 15 af 0b 20 00    	mov    0x200baf(%rip),%edx        # 6020e0 <J>
  401531:	8b 05 c5 0b 20 00    	mov    0x200bc5(%rip),%eax        # 6020fc <K>
  401537:	01 d0                	add    %edx,%eax
  401539:	89 05 bd 0b 20 00    	mov    %eax,0x200bbd(%rip)        # 6020fc <K>
  40153f:	8b 15 b7 0b 20 00    	mov    0x200bb7(%rip),%edx        # 6020fc <K>
  401545:	8b 05 95 0b 20 00    	mov    0x200b95(%rip),%eax        # 6020e0 <J>
  40154b:	29 c2                	sub    %eax,%edx
  40154d:	89 d0                	mov    %edx,%eax
  40154f:	89 05 8b 0b 20 00    	mov    %eax,0x200b8b(%rip)        # 6020e0 <J>
  401555:	8b 15 a1 0b 20 00    	mov    0x200ba1(%rip),%edx        # 6020fc <K>
  40155b:	8b 05 7f 0b 20 00    	mov    0x200b7f(%rip),%eax        # 6020e0 <J>
  401561:	29 c2                	sub    %eax,%edx
  401563:	8b 05 77 0b 20 00    	mov    0x200b77(%rip),%eax        # 6020e0 <J>
  401569:	29 c2                	sub    %eax,%edx
  40156b:	89 d0                	mov    %edx,%eax
  40156d:	89 05 89 0b 20 00    	mov    %eax,0x200b89(%rip)        # 6020fc <K>
  401573:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  40157a:	01 
  40157b:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  401582:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  401586:	7e 8f                	jle    401517 <main+0x9a1>
  401588:	f2 0f 10 05 28 06 00 	movsd  0x628(%rip),%xmm0        # 401bb8 <_IO_stdin_used+0x130>
  40158f:	00 
  401590:	f2 0f 11 85 78 ff ff 	movsd  %xmm0,-0x88(%rbp)
  401597:	ff 
  401598:	48 c7 85 50 ff ff ff 	movq   $0x1,-0xb0(%rbp)
  40159f:	01 00 00 00 
  4015a3:	eb 4d                	jmp    4015f2 <main+0xa7c>
  4015a5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  4015ac:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  4015b3:	f2 0f 10 85 18 ff ff 	movsd  -0xe8(%rbp),%xmm0
  4015ba:	ff 
  4015bb:	e8 c0 f3 ff ff       	callq  400980 <log@plt>
  4015c0:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4015c4:	f2 0f 10 05 24 0b 20 	movsd  0x200b24(%rip),%xmm0        # 6020f0 <T1>
  4015cb:	00 
  4015cc:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  4015d0:	66 0f 28 c1          	movapd %xmm1,%xmm0
  4015d4:	e8 67 f3 ff ff       	callq  400940 <exp@plt>
  4015d9:	e8 42 f4 ff ff       	callq  400a20 <sqrt@plt>
  4015de:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4015e3:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  4015ea:	48 83 85 50 ff ff ff 	addq   $0x1,-0xb0(%rbp)
  4015f1:	01 
  4015f2:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
  4015f9:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  4015fd:	7e a6                	jle    4015a5 <main+0xa2f>
  4015ff:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
  401606:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
  40160c:	3b 85 38 ff ff ff    	cmp    -0xc8(%rbp),%eax
  401612:	7f 05                	jg     401619 <main+0xaa3>
  401614:	e9 fd f6 ff ff       	jmpq   400d16 <main+0x1a0>
  401619:	bf 00 00 00 00       	mov    $0x0,%edi
  40161e:	e8 9d f3 ff ff       	callq  4009c0 <time@plt>
  401623:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401627:	bf 0a 00 00 00       	mov    $0xa,%edi
  40162c:	e8 df f2 ff ff       	callq  400910 <putchar@plt>
  401631:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401635:	48 2b 45 90          	sub    -0x70(%rbp),%rax
  401639:	48 85 c0             	test   %rax,%rax
  40163c:	7f 14                	jg     401652 <main+0xadc>
  40163e:	bf b0 1a 40 00       	mov    $0x401ab0,%edi
  401643:	e8 e8 f2 ff ff       	callq  400930 <puts@plt>
  401648:	b8 01 00 00 00       	mov    $0x1,%eax
  40164d:	e9 d2 00 00 00       	jmpq   401724 <main+0xbae>
  401652:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401656:	48 2b 45 90          	sub    -0x70(%rbp),%rax
  40165a:	48 89 c1             	mov    %rax,%rcx
  40165d:	8b 95 38 ff ff ff    	mov    -0xc8(%rbp),%edx
  401663:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401667:	48 89 c6             	mov    %rax,%rsi
  40166a:	bf e0 1a 40 00       	mov    $0x401ae0,%edi
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	e8 f7 f2 ff ff       	callq  400970 <printf@plt>
  401679:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40167d:	f2 48 0f 2a 45 98    	cvtsi2sdq -0x68(%rbp),%xmm0
  401683:	f2 0f 10 0d 35 05 00 	movsd  0x535(%rip),%xmm1        # 401bc0 <_IO_stdin_used+0x138>
  40168a:	00 
  40168b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  40168f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401693:	f2 0f 2a 85 38 ff ff 	cvtsi2sdl -0xc8(%rbp),%xmm0
  40169a:	ff 
  40169b:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40169f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016a3:	48 2b 45 90          	sub    -0x70(%rbp),%rax
  4016a7:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4016ab:	f3 48 0f 2a c8       	cvtsi2ss %rax,%xmm1
  4016b0:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  4016b4:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  4016b8:	f2 0f 5a f0          	cvtsd2ss %xmm0,%xmm6
  4016bc:	f3 0f 11 b5 44 ff ff 	movss  %xmm6,-0xbc(%rbp)
  4016c3:	ff 
  4016c4:	f3 0f 10 85 44 ff ff 	movss  -0xbc(%rbp),%xmm0
  4016cb:	ff 
  4016cc:	0f 2e 05 f5 04 00 00 	ucomiss 0x4f5(%rip),%xmm0        # 401bc8 <_IO_stdin_used+0x140>
  4016d3:	72 25                	jb     4016fa <main+0xb84>
  4016d5:	f3 0f 5a 85 44 ff ff 	cvtss2sd -0xbc(%rbp),%xmm0
  4016dc:	ff 
  4016dd:	f2 0f 10 0d eb 04 00 	movsd  0x4eb(%rip),%xmm1        # 401bd0 <_IO_stdin_used+0x148>
  4016e4:	00 
  4016e5:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  4016e9:	bf 10 1b 40 00       	mov    $0x401b10,%edi
  4016ee:	b8 01 00 00 00       	mov    $0x1,%eax
  4016f3:	e8 78 f2 ff ff       	callq  400970 <printf@plt>
  4016f8:	eb 17                	jmp    401711 <main+0xb9b>
  4016fa:	f3 0f 5a 85 44 ff ff 	cvtss2sd -0xbc(%rbp),%xmm0
  401701:	ff 
  401702:	bf 48 1b 40 00       	mov    $0x401b48,%edi
  401707:	b8 01 00 00 00       	mov    $0x1,%eax
  40170c:	e8 5f f2 ff ff       	callq  400970 <printf@plt>
  401711:	83 bd 40 ff ff ff 00 	cmpl   $0x0,-0xc0(%rbp)
  401718:	74 05                	je     40171f <main+0xba9>
  40171a:	e9 9d f5 ff ff       	jmpq   400cbc <main+0x146>
  40171f:	b8 00 00 00 00       	mov    $0x0,%eax
  401724:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401728:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40172f:	00 00 
  401731:	74 05                	je     401738 <main+0xbc2>
  401733:	e8 28 f2 ff ff       	callq  400960 <__stack_chk_fail@plt>
  401738:	c9                   	leaveq 
  401739:	c3                   	retq   

000000000040173a <PA>:
  40173a:	55                   	push   %rbp
  40173b:	48 89 e5             	mov    %rsp,%rbp
  40173e:	48 83 ec 08          	sub    $0x8,%rsp
  401742:	e8 89 f2 ff ff       	callq  4009d0 <mcount@plt>
  401747:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40174b:	c7 05 8b 09 20 00 00 	movl   $0x0,0x20098b(%rip)        # 6020e0 <J>
  401752:	00 00 00 
  401755:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401759:	48 83 c0 08          	add    $0x8,%rax
  40175d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401761:	48 83 c2 08          	add    $0x8,%rdx
  401765:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401769:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40176d:	48 83 c2 10          	add    $0x10,%rdx
  401771:	f2 0f 10 02          	movsd  (%rdx),%xmm0
  401775:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401779:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40177d:	48 83 c2 18          	add    $0x18,%rdx
  401781:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401785:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401789:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40178d:	48 83 c2 20          	add    $0x20,%rdx
  401791:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401795:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  401799:	f2 0f 10 0d 47 09 20 	movsd  0x200947(%rip),%xmm1        # 6020e8 <T>
  4017a0:	00 
  4017a1:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  4017a5:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4017a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017ad:	48 83 c0 10          	add    $0x10,%rax
  4017b1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4017b5:	48 83 c2 08          	add    $0x8,%rdx
  4017b9:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  4017bd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4017c1:	48 83 c2 10          	add    $0x10,%rdx
  4017c5:	f2 0f 10 02          	movsd  (%rdx),%xmm0
  4017c9:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4017cd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4017d1:	48 83 c2 18          	add    $0x18,%rdx
  4017d5:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  4017d9:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4017dd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4017e1:	48 83 c2 20          	add    $0x20,%rdx
  4017e5:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  4017e9:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4017ed:	f2 0f 10 0d f3 08 20 	movsd  0x2008f3(%rip),%xmm1        # 6020e8 <T>
  4017f4:	00 
  4017f5:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  4017f9:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4017fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401801:	48 83 c0 18          	add    $0x18,%rax
  401805:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401809:	48 83 c2 08          	add    $0x8,%rdx
  40180d:	f2 0f 10 02          	movsd  (%rdx),%xmm0
  401811:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401815:	48 83 c2 10          	add    $0x10,%rdx
  401819:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  40181d:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  401821:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401825:	48 83 c2 18          	add    $0x18,%rdx
  401829:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  40182d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401831:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401835:	48 83 c2 20          	add    $0x20,%rdx
  401839:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  40183d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401841:	f2 0f 10 0d 9f 08 20 	movsd  0x20089f(%rip),%xmm1        # 6020e8 <T>
  401848:	00 
  401849:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40184d:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  401851:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401855:	48 83 c0 20          	add    $0x20,%rax
  401859:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40185d:	48 83 c2 10          	add    $0x10,%rdx
  401861:	f2 0f 10 02          	movsd  (%rdx),%xmm0
  401865:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401869:	48 83 c2 08          	add    $0x8,%rdx
  40186d:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401871:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  401875:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401879:	48 83 c2 18          	add    $0x18,%rdx
  40187d:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401881:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401885:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401889:	48 83 c2 20          	add    $0x20,%rdx
  40188d:	f2 0f 10 0a          	movsd  (%rdx),%xmm1
  401891:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401895:	f2 0f 10 0d 63 08 20 	movsd  0x200863(%rip),%xmm1        # 602100 <T2>
  40189c:	00 
  40189d:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  4018a1:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4018a5:	8b 05 35 08 20 00    	mov    0x200835(%rip),%eax        # 6020e0 <J>
  4018ab:	83 c0 01             	add    $0x1,%eax
  4018ae:	89 05 2c 08 20 00    	mov    %eax,0x20082c(%rip)        # 6020e0 <J>
  4018b4:	8b 05 26 08 20 00    	mov    0x200826(%rip),%eax        # 6020e0 <J>
  4018ba:	83 f8 05             	cmp    $0x5,%eax
  4018bd:	7f 05                	jg     4018c4 <PA+0x18a>
  4018bf:	e9 91 fe ff ff       	jmpq   401755 <PA+0x1b>
  4018c4:	90                   	nop
  4018c5:	c9                   	leaveq 
  4018c6:	c3                   	retq   

00000000004018c7 <P0>:
  4018c7:	55                   	push   %rbp
  4018c8:	48 89 e5             	mov    %rsp,%rbp
  4018cb:	e8 00 f1 ff ff       	callq  4009d0 <mcount@plt>
  4018d0:	8b 15 0a 08 20 00    	mov    0x20080a(%rip),%edx        # 6020e0 <J>
  4018d6:	8b 05 20 08 20 00    	mov    0x200820(%rip),%eax        # 6020fc <K>
  4018dc:	48 98                	cltq   
  4018de:	f2 0f 10 04 c5 20 21 	movsd  0x602120(,%rax,8),%xmm0
  4018e5:	60 00 
  4018e7:	48 63 c2             	movslq %edx,%rax
  4018ea:	f2 0f 11 04 c5 20 21 	movsd  %xmm0,0x602120(,%rax,8)
  4018f1:	60 00 
  4018f3:	8b 15 03 08 20 00    	mov    0x200803(%rip),%edx        # 6020fc <K>
  4018f9:	8b 05 f9 07 20 00    	mov    0x2007f9(%rip),%eax        # 6020f8 <L>
  4018ff:	48 98                	cltq   
  401901:	f2 0f 10 04 c5 20 21 	movsd  0x602120(,%rax,8),%xmm0
  401908:	60 00 
  40190a:	48 63 c2             	movslq %edx,%rax
  40190d:	f2 0f 11 04 c5 20 21 	movsd  %xmm0,0x602120(,%rax,8)
  401914:	60 00 
  401916:	8b 15 dc 07 20 00    	mov    0x2007dc(%rip),%edx        # 6020f8 <L>
  40191c:	8b 05 be 07 20 00    	mov    0x2007be(%rip),%eax        # 6020e0 <J>
  401922:	48 98                	cltq   
  401924:	f2 0f 10 04 c5 20 21 	movsd  0x602120(,%rax,8),%xmm0
  40192b:	60 00 
  40192d:	48 63 c2             	movslq %edx,%rax
  401930:	f2 0f 11 04 c5 20 21 	movsd  %xmm0,0x602120(,%rax,8)
  401937:	60 00 
  401939:	90                   	nop
  40193a:	5d                   	pop    %rbp
  40193b:	c3                   	retq   

000000000040193c <P3>:
  40193c:	55                   	push   %rbp
  40193d:	48 89 e5             	mov    %rsp,%rbp
  401940:	48 83 ec 28          	sub    $0x28,%rsp
  401944:	e8 87 f0 ff ff       	callq  4009d0 <mcount@plt>
  401949:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  40194e:	f2 0f 11 4d e0       	movsd  %xmm1,-0x20(%rbp)
  401953:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401957:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  40195c:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
  401961:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  401966:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
  40196b:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  401970:	f2 0f 58 45 f8       	addsd  -0x8(%rbp),%xmm0
  401975:	f2 0f 10 0d 6b 07 20 	movsd  0x20076b(%rip),%xmm1        # 6020e8 <T>
  40197c:	00 
  40197d:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  401981:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
  401986:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  40198b:	f2 0f 58 45 f8       	addsd  -0x8(%rbp),%xmm0
  401990:	f2 0f 10 0d 50 07 20 	movsd  0x200750(%rip),%xmm1        # 6020e8 <T>
  401997:	00 
  401998:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
  40199c:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
  4019a1:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  4019a6:	f2 0f 58 45 f8       	addsd  -0x8(%rbp),%xmm0
  4019ab:	f2 0f 10 0d 4d 07 20 	movsd  0x20074d(%rip),%xmm1        # 602100 <T2>
  4019b2:	00 
  4019b3:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  4019b7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4019bb:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  4019bf:	90                   	nop
  4019c0:	c9                   	leaveq 
  4019c1:	c3                   	retq   
  4019c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4019c9:	00 00 00 
  4019cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004019d0 <__libc_csu_init>:
  4019d0:	41 57                	push   %r15
  4019d2:	41 56                	push   %r14
  4019d4:	41 89 ff             	mov    %edi,%r15d
  4019d7:	41 55                	push   %r13
  4019d9:	41 54                	push   %r12
  4019db:	4c 8d 25 16 04 20 00 	lea    0x200416(%rip),%r12        # 601df8 <__frame_dummy_init_array_entry>
  4019e2:	55                   	push   %rbp
  4019e3:	48 8d 2d 16 04 20 00 	lea    0x200416(%rip),%rbp        # 601e00 <__init_array_end>
  4019ea:	53                   	push   %rbx
  4019eb:	49 89 f6             	mov    %rsi,%r14
  4019ee:	49 89 d5             	mov    %rdx,%r13
  4019f1:	4c 29 e5             	sub    %r12,%rbp
  4019f4:	48 83 ec 08          	sub    $0x8,%rsp
  4019f8:	48 c1 fd 03          	sar    $0x3,%rbp
  4019fc:	e8 df ee ff ff       	callq  4008e0 <_init>
  401a01:	48 85 ed             	test   %rbp,%rbp
  401a04:	74 20                	je     401a26 <__libc_csu_init+0x56>
  401a06:	31 db                	xor    %ebx,%ebx
  401a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a0f:	00 
  401a10:	4c 89 ea             	mov    %r13,%rdx
  401a13:	4c 89 f6             	mov    %r14,%rsi
  401a16:	44 89 ff             	mov    %r15d,%edi
  401a19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401a1d:	48 83 c3 01          	add    $0x1,%rbx
  401a21:	48 39 eb             	cmp    %rbp,%rbx
  401a24:	75 ea                	jne    401a10 <__libc_csu_init+0x40>
  401a26:	48 83 c4 08          	add    $0x8,%rsp
  401a2a:	5b                   	pop    %rbx
  401a2b:	5d                   	pop    %rbp
  401a2c:	41 5c                	pop    %r12
  401a2e:	41 5d                	pop    %r13
  401a30:	41 5e                	pop    %r14
  401a32:	41 5f                	pop    %r15
  401a34:	c3                   	retq   
  401a35:	90                   	nop
  401a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a3d:	00 00 00 

0000000000401a40 <__libc_csu_fini>:
  401a40:	f3 c3                	repz retq 
  401a42:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a49:	00 00 00 
  401a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a50 <atexit>:
  401a50:	48 8d 05 59 06 20 00 	lea    0x200659(%rip),%rax        # 6020b0 <__dso_handle>
  401a57:	48 85 c0             	test   %rax,%rax
  401a5a:	74 14                	je     401a70 <atexit+0x20>
  401a5c:	48 8b 10             	mov    (%rax),%rdx
  401a5f:	31 f6                	xor    %esi,%esi
  401a61:	e9 9a ef ff ff       	jmpq   400a00 <__cxa_atexit@plt>
  401a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a6d:	00 00 00 
  401a70:	31 d2                	xor    %edx,%edx
  401a72:	31 f6                	xor    %esi,%esi
  401a74:	e9 87 ef ff ff       	jmpq   400a00 <__cxa_atexit@plt>

Disassembly of section .fini:

0000000000401a7c <_fini>:
  401a7c:	48 83 ec 08          	sub    $0x8,%rsp
  401a80:	48 83 c4 08          	add    $0x8,%rsp
  401a84:	c3                   	retq   
