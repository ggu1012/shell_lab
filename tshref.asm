
tshref:     file format elf64-x86-64


Disassembly of section .init:

0000000000400af0 <_init>:
  400af0:	48 83 ec 08          	sub    $0x8,%rsp
  400af4:	e8 83 03 00 00       	callq  400e7c <call_gmon_start>
  400af9:	48 83 c4 08          	add    $0x8,%rsp
  400afd:	c3                   	retq   

Disassembly of section .plt:

0000000000400b00 <.plt>:
  400b00:	ff 35 ea 24 20 00    	pushq  0x2024ea(%rip)        # 602ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b06:	ff 25 ec 24 20 00    	jmpq   *0x2024ec(%rip)        # 602ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b10 <sigprocmask@plt>:
  400b10:	ff 25 ea 24 20 00    	jmpq   *0x2024ea(%rip)        # 603000 <sigprocmask@GLIBC_2.2.5>
  400b16:	68 00 00 00 00       	pushq  $0x0
  400b1b:	e9 e0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b20 <__errno_location@plt>:
  400b20:	ff 25 e2 24 20 00    	jmpq   *0x2024e2(%rip)        # 603008 <__errno_location@GLIBC_2.2.5>
  400b26:	68 01 00 00 00       	pushq  $0x1
  400b2b:	e9 d0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b30 <strcpy@plt>:
  400b30:	ff 25 da 24 20 00    	jmpq   *0x2024da(%rip)        # 603010 <strcpy@GLIBC_2.2.5>
  400b36:	68 02 00 00 00       	pushq  $0x2
  400b3b:	e9 c0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b40 <puts@plt>:
  400b40:	ff 25 d2 24 20 00    	jmpq   *0x2024d2(%rip)        # 603018 <puts@GLIBC_2.2.5>
  400b46:	68 03 00 00 00       	pushq  $0x3
  400b4b:	e9 b0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b50 <ferror@plt>:
  400b50:	ff 25 ca 24 20 00    	jmpq   *0x2024ca(%rip)        # 603020 <ferror@GLIBC_2.2.5>
  400b56:	68 04 00 00 00       	pushq  $0x4
  400b5b:	e9 a0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b60 <sigaction@plt>:
  400b60:	ff 25 c2 24 20 00    	jmpq   *0x2024c2(%rip)        # 603028 <sigaction@GLIBC_2.2.5>
  400b66:	68 05 00 00 00       	pushq  $0x5
  400b6b:	e9 90 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b70 <dup2@plt>:
  400b70:	ff 25 ba 24 20 00    	jmpq   *0x2024ba(%rip)        # 603030 <dup2@GLIBC_2.2.5>
  400b76:	68 06 00 00 00       	pushq  $0x6
  400b7b:	e9 80 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b80 <strchr@plt>:
  400b80:	ff 25 b2 24 20 00    	jmpq   *0x2024b2(%rip)        # 603038 <strchr@GLIBC_2.2.5>
  400b86:	68 07 00 00 00       	pushq  $0x7
  400b8b:	e9 70 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b90 <__libc_start_main@plt>:
  400b90:	ff 25 aa 24 20 00    	jmpq   *0x2024aa(%rip)        # 603040 <__libc_start_main@GLIBC_2.2.5>
  400b96:	68 08 00 00 00       	pushq  $0x8
  400b9b:	e9 60 ff ff ff       	jmpq   400b00 <.plt>

0000000000400ba0 <fgets@plt>:
  400ba0:	ff 25 a2 24 20 00    	jmpq   *0x2024a2(%rip)        # 603048 <fgets@GLIBC_2.2.5>
  400ba6:	68 09 00 00 00       	pushq  $0x9
  400bab:	e9 50 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bb0 <execve@plt>:
  400bb0:	ff 25 9a 24 20 00    	jmpq   *0x20249a(%rip)        # 603050 <execve@GLIBC_2.2.5>
  400bb6:	68 0a 00 00 00       	pushq  $0xa
  400bbb:	e9 40 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bc0 <sigemptyset@plt>:
  400bc0:	ff 25 92 24 20 00    	jmpq   *0x202492(%rip)        # 603058 <sigemptyset@GLIBC_2.2.5>
  400bc6:	68 0b 00 00 00       	pushq  $0xb
  400bcb:	e9 30 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bd0 <feof@plt>:
  400bd0:	ff 25 8a 24 20 00    	jmpq   *0x20248a(%rip)        # 603060 <feof@GLIBC_2.2.5>
  400bd6:	68 0c 00 00 00       	pushq  $0xc
  400bdb:	e9 20 ff ff ff       	jmpq   400b00 <.plt>

0000000000400be0 <strtol@plt>:
  400be0:	ff 25 82 24 20 00    	jmpq   *0x202482(%rip)        # 603068 <strtol@GLIBC_2.2.5>
  400be6:	68 0d 00 00 00       	pushq  $0xd
  400beb:	e9 10 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bf0 <kill@plt>:
  400bf0:	ff 25 7a 24 20 00    	jmpq   *0x20247a(%rip)        # 603070 <kill@GLIBC_2.2.5>
  400bf6:	68 0e 00 00 00       	pushq  $0xe
  400bfb:	e9 00 ff ff ff       	jmpq   400b00 <.plt>

0000000000400c00 <__stpcpy_chk@plt>:
  400c00:	ff 25 72 24 20 00    	jmpq   *0x202472(%rip)        # 603078 <__stpcpy_chk@GLIBC_2.3.4>
  400c06:	68 0f 00 00 00       	pushq  $0xf
  400c0b:	e9 f0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c10 <fflush@plt>:
  400c10:	ff 25 6a 24 20 00    	jmpq   *0x20246a(%rip)        # 603080 <fflush@GLIBC_2.2.5>
  400c16:	68 10 00 00 00       	pushq  $0x10
  400c1b:	e9 e0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c20 <__printf_chk@plt>:
  400c20:	ff 25 62 24 20 00    	jmpq   *0x202462(%rip)        # 603088 <__printf_chk@GLIBC_2.3.4>
  400c26:	68 11 00 00 00       	pushq  $0x11
  400c2b:	e9 d0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c30 <waitpid@plt>:
  400c30:	ff 25 5a 24 20 00    	jmpq   *0x20245a(%rip)        # 603090 <waitpid@GLIBC_2.2.5>
  400c36:	68 12 00 00 00       	pushq  $0x12
  400c3b:	e9 c0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c40 <getopt@plt>:
  400c40:	ff 25 52 24 20 00    	jmpq   *0x202452(%rip)        # 603098 <getopt@GLIBC_2.2.5>
  400c46:	68 13 00 00 00       	pushq  $0x13
  400c4b:	e9 b0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c50 <setpgid@plt>:
  400c50:	ff 25 4a 24 20 00    	jmpq   *0x20244a(%rip)        # 6030a0 <setpgid@GLIBC_2.2.5>
  400c56:	68 14 00 00 00       	pushq  $0x14
  400c5b:	e9 a0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c60 <exit@plt>:
  400c60:	ff 25 42 24 20 00    	jmpq   *0x202442(%rip)        # 6030a8 <exit@GLIBC_2.2.5>
  400c66:	68 15 00 00 00       	pushq  $0x15
  400c6b:	e9 90 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c70 <__fprintf_chk@plt>:
  400c70:	ff 25 3a 24 20 00    	jmpq   *0x20243a(%rip)        # 6030b0 <__fprintf_chk@GLIBC_2.3.4>
  400c76:	68 16 00 00 00       	pushq  $0x16
  400c7b:	e9 80 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c80 <strerror@plt>:
  400c80:	ff 25 32 24 20 00    	jmpq   *0x202432(%rip)        # 6030b8 <strerror@GLIBC_2.2.5>
  400c86:	68 17 00 00 00       	pushq  $0x17
  400c8b:	e9 70 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c90 <sleep@plt>:
  400c90:	ff 25 2a 24 20 00    	jmpq   *0x20242a(%rip)        # 6030c0 <sleep@GLIBC_2.2.5>
  400c96:	68 18 00 00 00       	pushq  $0x18
  400c9b:	e9 60 fe ff ff       	jmpq   400b00 <.plt>

0000000000400ca0 <sigaddset@plt>:
  400ca0:	ff 25 22 24 20 00    	jmpq   *0x202422(%rip)        # 6030c8 <sigaddset@GLIBC_2.2.5>
  400ca6:	68 19 00 00 00       	pushq  $0x19
  400cab:	e9 50 fe ff ff       	jmpq   400b00 <.plt>

0000000000400cb0 <fork@plt>:
  400cb0:	ff 25 1a 24 20 00    	jmpq   *0x20241a(%rip)        # 6030d0 <fork@GLIBC_2.2.5>
  400cb6:	68 1a 00 00 00       	pushq  $0x1a
  400cbb:	e9 40 fe ff ff       	jmpq   400b00 <.plt>

0000000000400cc0 <__ctype_b_loc@plt>:
  400cc0:	ff 25 12 24 20 00    	jmpq   *0x202412(%rip)        # 6030d8 <__ctype_b_loc@GLIBC_2.3>
  400cc6:	68 1b 00 00 00       	pushq  $0x1b
  400ccb:	e9 30 fe ff ff       	jmpq   400b00 <.plt>

Disassembly of section .text:

0000000000400cd0 <main>:
  400cd0:	41 54                	push   %r12
  400cd2:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  400cd8:	55                   	push   %rbp
  400cd9:	89 fd                	mov    %edi,%ebp
  400cdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400ce0:	53                   	push   %rbx
  400ce1:	48 89 f3             	mov    %rsi,%rbx
  400ce4:	be 02 00 00 00       	mov    $0x2,%esi
  400ce9:	48 81 ec 10 04 00 00 	sub    $0x410,%rsp
  400cf0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400cf7:	00 00 
  400cf9:	48 89 84 24 08 04 00 	mov    %rax,0x408(%rsp)
  400d00:	00 
  400d01:	31 c0                	xor    %eax,%eax
  400d03:	e8 68 fe ff ff       	callq  400b70 <dup2@plt>
  400d08:	ba 01 24 40 00       	mov    $0x402401,%edx
  400d0d:	48 89 de             	mov    %rbx,%rsi
  400d10:	89 ef                	mov    %ebp,%edi
  400d12:	e8 29 ff ff ff       	callq  400c40 <getopt@plt>
  400d17:	3c ff                	cmp    $0xff,%al
  400d19:	89 c2                	mov    %eax,%edx
  400d1b:	74 21                	je     400d3e <main+0x6e>
  400d1d:	3c 70                	cmp    $0x70,%al
  400d1f:	74 0a                	je     400d2b <main+0x5b>
  400d21:	80 fa 76             	cmp    $0x76,%dl
  400d24:	74 0c                	je     400d32 <main+0x62>
  400d26:	e8 65 07 00 00       	callq  401490 <usage>
  400d2b:	45 31 e4             	xor    %r12d,%r12d
  400d2e:	66 90                	xchg   %ax,%ax
  400d30:	eb d6                	jmp    400d08 <main+0x38>
  400d32:	c7 05 e4 23 20 00 01 	movl   $0x1,0x2023e4(%rip)        # 603120 <verbose>
  400d39:	00 00 00 
  400d3c:	eb ca                	jmp    400d08 <main+0x38>
  400d3e:	be 70 1c 40 00       	mov    $0x401c70,%esi
  400d43:	bf 02 00 00 00       	mov    $0x2,%edi
  400d48:	e8 f3 10 00 00       	callq  401e40 <Signal>
  400d4d:	be 20 1d 40 00       	mov    $0x401d20,%esi
  400d52:	bf 14 00 00 00       	mov    $0x14,%edi
  400d57:	e8 e4 10 00 00       	callq  401e40 <Signal>
  400d5c:	be b0 19 40 00       	mov    $0x4019b0,%esi
  400d61:	bf 11 00 00 00       	mov    $0x11,%edi
  400d66:	e8 d5 10 00 00       	callq  401e40 <Signal>
  400d6b:	be 60 0f 40 00       	mov    $0x400f60,%esi
  400d70:	bf 03 00 00 00       	mov    $0x3,%edi
  400d75:	e8 c6 10 00 00       	callq  401e40 <Signal>
  400d7a:	b8 40 39 60 00       	mov    $0x603940,%eax
  400d7f:	90                   	nop
  400d80:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  400d86:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  400d8d:	48 05 0c 04 00 00    	add    $0x40c,%rax
  400d93:	c7 80 fc fb ff ff 00 	movl   $0x0,-0x404(%rax)
  400d9a:	00 00 00 
  400d9d:	c6 80 00 fc ff ff 00 	movb   $0x0,-0x400(%rax)
  400da4:	48 3d 00 7a 60 00    	cmp    $0x607a00,%rax
  400daa:	75 d4                	jne    400d80 <main+0xb0>
  400dac:	eb 6b                	jmp    400e19 <main+0x149>
  400dae:	bf 01 00 00 00       	mov    $0x1,%edi
  400db3:	ba f4 30 60 00       	mov    $0x6030f4,%edx
  400db8:	be 3e 22 40 00       	mov    $0x40223e,%esi
  400dbd:	31 c0                	xor    %eax,%eax
  400dbf:	e8 5c fe ff ff       	callq  400c20 <__printf_chk@plt>
  400dc4:	48 8b 3d 35 23 20 00 	mov    0x202335(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  400dcb:	e8 40 fe ff ff       	callq  400c10 <fflush@plt>
  400dd0:	48 8b 15 31 23 20 00 	mov    0x202331(%rip),%rdx        # 603108 <stdin@@GLIBC_2.2.5>
  400dd7:	be 00 04 00 00       	mov    $0x400,%esi
  400ddc:	48 89 e7             	mov    %rsp,%rdi
  400ddf:	e8 bc fd ff ff       	callq  400ba0 <fgets@plt>
  400de4:	48 85 c0             	test   %rax,%rax
  400de7:	74 37                	je     400e20 <main+0x150>
  400de9:	48 8b 3d 18 23 20 00 	mov    0x202318(%rip),%rdi        # 603108 <stdin@@GLIBC_2.2.5>
  400df0:	e8 db fd ff ff       	callq  400bd0 <feof@plt>
  400df5:	85 c0                	test   %eax,%eax
  400df7:	75 41                	jne    400e3a <main+0x16a>
  400df9:	48 89 e7             	mov    %rsp,%rdi
  400dfc:	e8 6f 09 00 00       	callq  401770 <eval>
  400e01:	48 8b 3d f8 22 20 00 	mov    0x2022f8(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  400e08:	e8 03 fe ff ff       	callq  400c10 <fflush@plt>
  400e0d:	48 8b 3d ec 22 20 00 	mov    0x2022ec(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  400e14:	e8 f7 fd ff ff       	callq  400c10 <fflush@plt>
  400e19:	45 85 e4             	test   %r12d,%r12d
  400e1c:	74 b2                	je     400dd0 <main+0x100>
  400e1e:	eb 8e                	jmp    400dae <main+0xde>
  400e20:	48 8b 3d e1 22 20 00 	mov    0x2022e1(%rip),%rdi        # 603108 <stdin@@GLIBC_2.2.5>
  400e27:	e8 24 fd ff ff       	callq  400b50 <ferror@plt>
  400e2c:	85 c0                	test   %eax,%eax
  400e2e:	74 b9                	je     400de9 <main+0x119>
  400e30:	bf 05 24 40 00       	mov    $0x402405,%edi
  400e35:	e8 d6 0f 00 00       	callq  401e10 <app_error>
  400e3a:	48 8b 3d bf 22 20 00 	mov    0x2022bf(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  400e41:	e8 ca fd ff ff       	callq  400c10 <fflush@plt>
  400e46:	31 ff                	xor    %edi,%edi
  400e48:	e8 13 fe ff ff       	callq  400c60 <exit@plt>
  400e4d:	90                   	nop
  400e4e:	90                   	nop
  400e4f:	90                   	nop

0000000000400e50 <_start>:
  400e50:	31 ed                	xor    %ebp,%ebp
  400e52:	49 89 d1             	mov    %rdx,%r9
  400e55:	5e                   	pop    %rsi
  400e56:	48 89 e2             	mov    %rsp,%rdx
  400e59:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e5d:	50                   	push   %rax
  400e5e:	54                   	push   %rsp
  400e5f:	49 c7 c0 30 1f 40 00 	mov    $0x401f30,%r8
  400e66:	48 c7 c1 a0 1e 40 00 	mov    $0x401ea0,%rcx
  400e6d:	48 c7 c7 d0 0c 40 00 	mov    $0x400cd0,%rdi
  400e74:	e8 17 fd ff ff       	callq  400b90 <__libc_start_main@plt>
  400e79:	f4                   	hlt    
  400e7a:	90                   	nop
  400e7b:	90                   	nop

0000000000400e7c <call_gmon_start>:
  400e7c:	48 83 ec 08          	sub    $0x8,%rsp
  400e80:	48 8b 05 59 21 20 00 	mov    0x202159(%rip),%rax        # 602fe0 <__gmon_start__>
  400e87:	48 85 c0             	test   %rax,%rax
  400e8a:	74 02                	je     400e8e <call_gmon_start+0x12>
  400e8c:	ff d0                	callq  *%rax
  400e8e:	48 83 c4 08          	add    $0x8,%rsp
  400e92:	c3                   	retq   
  400e93:	90                   	nop
  400e94:	90                   	nop
  400e95:	90                   	nop
  400e96:	90                   	nop
  400e97:	90                   	nop
  400e98:	90                   	nop
  400e99:	90                   	nop
  400e9a:	90                   	nop
  400e9b:	90                   	nop
  400e9c:	90                   	nop
  400e9d:	90                   	nop
  400e9e:	90                   	nop
  400e9f:	90                   	nop

0000000000400ea0 <deregister_tm_clones>:
  400ea0:	b8 07 31 60 00       	mov    $0x603107,%eax
  400ea5:	55                   	push   %rbp
  400ea6:	48 2d 00 31 60 00    	sub    $0x603100,%rax
  400eac:	48 83 f8 0e          	cmp    $0xe,%rax
  400eb0:	48 89 e5             	mov    %rsp,%rbp
  400eb3:	77 02                	ja     400eb7 <deregister_tm_clones+0x17>
  400eb5:	5d                   	pop    %rbp
  400eb6:	c3                   	retq   
  400eb7:	b8 00 00 00 00       	mov    $0x0,%eax
  400ebc:	48 85 c0             	test   %rax,%rax
  400ebf:	74 f4                	je     400eb5 <deregister_tm_clones+0x15>
  400ec1:	5d                   	pop    %rbp
  400ec2:	bf 00 31 60 00       	mov    $0x603100,%edi
  400ec7:	ff e0                	jmpq   *%rax
  400ec9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ed0 <register_tm_clones>:
  400ed0:	b8 00 31 60 00       	mov    $0x603100,%eax
  400ed5:	55                   	push   %rbp
  400ed6:	48 2d 00 31 60 00    	sub    $0x603100,%rax
  400edc:	48 c1 f8 03          	sar    $0x3,%rax
  400ee0:	48 89 e5             	mov    %rsp,%rbp
  400ee3:	48 89 c2             	mov    %rax,%rdx
  400ee6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400eea:	48 01 d0             	add    %rdx,%rax
  400eed:	48 d1 f8             	sar    %rax
  400ef0:	75 02                	jne    400ef4 <register_tm_clones+0x24>
  400ef2:	5d                   	pop    %rbp
  400ef3:	c3                   	retq   
  400ef4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ef9:	48 85 d2             	test   %rdx,%rdx
  400efc:	74 f4                	je     400ef2 <register_tm_clones+0x22>
  400efe:	5d                   	pop    %rbp
  400eff:	48 89 c6             	mov    %rax,%rsi
  400f02:	bf 00 31 60 00       	mov    $0x603100,%edi
  400f07:	ff e2                	jmpq   *%rdx
  400f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f10 <__do_global_dtors_aux>:
  400f10:	80 3d 01 22 20 00 00 	cmpb   $0x0,0x202201(%rip)        # 603118 <completed.6976>
  400f17:	75 11                	jne    400f2a <__do_global_dtors_aux+0x1a>
  400f19:	55                   	push   %rbp
  400f1a:	48 89 e5             	mov    %rsp,%rbp
  400f1d:	e8 7e ff ff ff       	callq  400ea0 <deregister_tm_clones>
  400f22:	5d                   	pop    %rbp
  400f23:	c6 05 ee 21 20 00 01 	movb   $0x1,0x2021ee(%rip)        # 603118 <completed.6976>
  400f2a:	f3 c3                	repz retq 
  400f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f30 <frame_dummy>:
  400f30:	48 83 3d d0 1e 20 00 	cmpq   $0x0,0x201ed0(%rip)        # 602e08 <__JCR_END__>
  400f37:	00 
  400f38:	74 1e                	je     400f58 <frame_dummy+0x28>
  400f3a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3f:	48 85 c0             	test   %rax,%rax
  400f42:	74 14                	je     400f58 <frame_dummy+0x28>
  400f44:	55                   	push   %rbp
  400f45:	bf 08 2e 60 00       	mov    $0x602e08,%edi
  400f4a:	48 89 e5             	mov    %rsp,%rbp
  400f4d:	ff d0                	callq  *%rax
  400f4f:	5d                   	pop    %rbp
  400f50:	e9 7b ff ff ff       	jmpq   400ed0 <register_tm_clones>
  400f55:	0f 1f 00             	nopl   (%rax)
  400f58:	e9 73 ff ff ff       	jmpq   400ed0 <register_tm_clones>
  400f5d:	90                   	nop
  400f5e:	90                   	nop
  400f5f:	90                   	nop

0000000000400f60 <sigquit_handler>:
  400f60:	bf 48 1f 40 00       	mov    $0x401f48,%edi
  400f65:	48 83 ec 08          	sub    $0x8,%rsp
  400f69:	e8 d2 fb ff ff       	callq  400b40 <puts@plt>
  400f6e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f73:	e8 e8 fc ff ff       	callq  400c60 <exit@plt>
  400f78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f7f:	00 

0000000000400f80 <parseline>:
  400f80:	41 56                	push   %r14
  400f82:	ba 00 04 00 00       	mov    $0x400,%edx
  400f87:	41 55                	push   %r13
  400f89:	49 89 f5             	mov    %rsi,%r13
  400f8c:	48 89 fe             	mov    %rdi,%rsi
  400f8f:	bf 40 31 60 00       	mov    $0x603140,%edi
  400f94:	41 54                	push   %r12
  400f96:	55                   	push   %rbp
  400f97:	53                   	push   %rbx
  400f98:	bb 40 31 60 00       	mov    $0x603140,%ebx
  400f9d:	e8 5e fc ff ff       	callq  400c00 <__stpcpy_chk@plt>
  400fa2:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
  400fa6:	0f b6 05 93 21 20 00 	movzbl 0x202193(%rip),%eax        # 603140 <array.4798>
  400fad:	3c 20                	cmp    $0x20,%al
  400faf:	75 12                	jne    400fc3 <parseline+0x43>
  400fb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400fb8:	48 83 c3 01          	add    $0x1,%rbx
  400fbc:	0f b6 03             	movzbl (%rbx),%eax
  400fbf:	3c 20                	cmp    $0x20,%al
  400fc1:	74 f5                	je     400fb8 <parseline+0x38>
  400fc3:	3c 27                	cmp    $0x27,%al
  400fc5:	0f 84 a8 00 00 00    	je     401073 <parseline+0xf3>
  400fcb:	be 20 00 00 00       	mov    $0x20,%esi
  400fd0:	48 89 df             	mov    %rbx,%rdi
  400fd3:	31 ed                	xor    %ebp,%ebp
  400fd5:	e8 a6 fb ff ff       	callq  400b80 <strchr@plt>
  400fda:	48 85 c0             	test   %rax,%rax
  400fdd:	4d 89 ee             	mov    %r13,%r14
  400fe0:	0f 84 ac 00 00 00    	je     401092 <parseline+0x112>
  400fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fed:	00 00 00 
  400ff0:	49 89 1e             	mov    %rbx,(%r14)
  400ff3:	c6 00 00             	movb   $0x0,(%rax)
  400ff6:	48 8d 58 01          	lea    0x1(%rax),%rbx
  400ffa:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  400ffe:	83 c5 01             	add    $0x1,%ebp
  401001:	4d 89 f4             	mov    %r14,%r12
  401004:	3c 20                	cmp    $0x20,%al
  401006:	75 13                	jne    40101b <parseline+0x9b>
  401008:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40100f:	00 
  401010:	48 83 c3 01          	add    $0x1,%rbx
  401014:	0f b6 03             	movzbl (%rbx),%eax
  401017:	3c 20                	cmp    $0x20,%al
  401019:	74 f5                	je     401010 <parseline+0x90>
  40101b:	3c 27                	cmp    $0x27,%al
  40101d:	74 41                	je     401060 <parseline+0xe0>
  40101f:	be 20 00 00 00       	mov    $0x20,%esi
  401024:	48 89 df             	mov    %rbx,%rdi
  401027:	e8 54 fb ff ff       	callq  400b80 <strchr@plt>
  40102c:	49 83 c6 08          	add    $0x8,%r14
  401030:	48 85 c0             	test   %rax,%rax
  401033:	75 bb                	jne    400ff0 <parseline+0x70>
  401035:	48 63 ed             	movslq %ebp,%rbp
  401038:	49 8b 54 ed f8       	mov    -0x8(%r13,%rbp,8),%rdx
  40103d:	49 c7 44 ed 00 00 00 	movq   $0x0,0x0(%r13,%rbp,8)
  401044:	00 00 
  401046:	80 3a 26             	cmpb   $0x26,(%rdx)
  401049:	75 0a                	jne    401055 <parseline+0xd5>
  40104b:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
  401052:	00 
  401053:	b0 01                	mov    $0x1,%al
  401055:	5b                   	pop    %rbx
  401056:	5d                   	pop    %rbp
  401057:	41 5c                	pop    %r12
  401059:	41 5d                	pop    %r13
  40105b:	41 5e                	pop    %r14
  40105d:	c3                   	retq   
  40105e:	66 90                	xchg   %ax,%ax
  401060:	48 83 c3 01          	add    $0x1,%rbx
  401064:	be 27 00 00 00       	mov    $0x27,%esi
  401069:	48 89 df             	mov    %rbx,%rdi
  40106c:	e8 0f fb ff ff       	callq  400b80 <strchr@plt>
  401071:	eb b9                	jmp    40102c <parseline+0xac>
  401073:	48 83 c3 01          	add    $0x1,%rbx
  401077:	be 27 00 00 00       	mov    $0x27,%esi
  40107c:	31 ed                	xor    %ebp,%ebp
  40107e:	48 89 df             	mov    %rbx,%rdi
  401081:	4d 89 ee             	mov    %r13,%r14
  401084:	e8 f7 fa ff ff       	callq  400b80 <strchr@plt>
  401089:	48 85 c0             	test   %rax,%rax
  40108c:	0f 85 5e ff ff ff    	jne    400ff0 <parseline+0x70>
  401092:	5b                   	pop    %rbx
  401093:	5d                   	pop    %rbp
  401094:	41 5c                	pop    %r12
  401096:	49 c7 45 00 00 00 00 	movq   $0x0,0x0(%r13)
  40109d:	00 
  40109e:	b8 01 00 00 00       	mov    $0x1,%eax
  4010a3:	41 5d                	pop    %r13
  4010a5:	41 5e                	pop    %r14
  4010a7:	c3                   	retq   
  4010a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4010af:	00 

00000000004010b0 <waitfg>:
  4010b0:	41 54                	push   %r12
  4010b2:	85 ff                	test   %edi,%edi
  4010b4:	41 89 fc             	mov    %edi,%r12d
  4010b7:	55                   	push   %rbp
  4010b8:	53                   	push   %rbx
  4010b9:	bb 40 39 60 00       	mov    $0x603940,%ebx
  4010be:	7e 3e                	jle    4010fe <waitfg+0x4e>
  4010c0:	8b 2b                	mov    (%rbx),%ebp
  4010c2:	41 39 ec             	cmp    %ebp,%r12d
  4010c5:	74 27                	je     4010ee <waitfg+0x3e>
  4010c7:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  4010ce:	48 81 fb 00 7a 60 00 	cmp    $0x607a00,%rbx
  4010d5:	75 e9                	jne    4010c0 <waitfg+0x10>
  4010d7:	5b                   	pop    %rbx
  4010d8:	5d                   	pop    %rbp
  4010d9:	41 5c                	pop    %r12
  4010db:	c3                   	retq   
  4010dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4010e5:	e8 a6 fb ff ff       	callq  400c90 <sleep@plt>
  4010ea:	3b 2b                	cmp    (%rbx),%ebp
  4010ec:	75 06                	jne    4010f4 <waitfg+0x44>
  4010ee:	83 7b 08 01          	cmpl   $0x1,0x8(%rbx)
  4010f2:	74 ec                	je     4010e0 <waitfg+0x30>
  4010f4:	8b 05 26 20 20 00    	mov    0x202026(%rip),%eax        # 603120 <verbose>
  4010fa:	85 c0                	test   %eax,%eax
  4010fc:	75 0a                	jne    401108 <waitfg+0x58>
  4010fe:	5b                   	pop    %rbx
  4010ff:	5d                   	pop    %rbp
  401100:	41 5c                	pop    %r12
  401102:	c3                   	retq   
  401103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401108:	5b                   	pop    %rbx
  401109:	5d                   	pop    %rbp
  40110a:	44 89 e2             	mov    %r12d,%edx
  40110d:	be 78 1f 40 00       	mov    $0x401f78,%esi
  401112:	bf 01 00 00 00       	mov    $0x1,%edi
  401117:	41 5c                	pop    %r12
  401119:	31 c0                	xor    %eax,%eax
  40111b:	e9 00 fb ff ff       	jmpq   400c20 <__printf_chk@plt>

0000000000401120 <clearjob>:
  401120:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  401126:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40112d:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%rdi)
  401134:	c6 47 0c 00          	movb   $0x0,0xc(%rdi)
  401138:	c3                   	retq   
  401139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401140 <initjobs>:
  401140:	b8 10 00 00 00       	mov    $0x10,%eax
  401145:	0f 1f 00             	nopl   (%rax)
  401148:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  40114e:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401155:	48 81 c7 0c 04 00 00 	add    $0x40c,%rdi
  40115c:	c7 87 fc fb ff ff 00 	movl   $0x0,-0x404(%rdi)
  401163:	00 00 00 
  401166:	c6 87 00 fc ff ff 00 	movb   $0x0,-0x400(%rdi)
  40116d:	83 e8 01             	sub    $0x1,%eax
  401170:	75 d6                	jne    401148 <initjobs+0x8>
  401172:	f3 c3                	repz retq 
  401174:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40117b:	00 00 00 00 00 

0000000000401180 <maxjid>:
  401180:	31 d2                	xor    %edx,%edx
  401182:	31 c0                	xor    %eax,%eax
  401184:	0f 1f 40 00          	nopl   0x0(%rax)
  401188:	8b 4c 17 04          	mov    0x4(%rdi,%rdx,1),%ecx
  40118c:	39 c8                	cmp    %ecx,%eax
  40118e:	0f 4c c1             	cmovl  %ecx,%eax
  401191:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  401198:	48 81 fa c0 40 00 00 	cmp    $0x40c0,%rdx
  40119f:	75 e7                	jne    401188 <maxjid+0x8>
  4011a1:	f3 c3                	repz retq 
  4011a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4011aa:	84 00 00 00 00 00 

00000000004011b0 <addjob>:
  4011b0:	55                   	push   %rbp
  4011b1:	53                   	push   %rbx
  4011b2:	48 83 ec 08          	sub    $0x8,%rsp
  4011b6:	85 f6                	test   %esi,%esi
  4011b8:	0f 8e a2 00 00 00    	jle    401260 <addjob+0xb0>
  4011be:	48 89 fb             	mov    %rdi,%rbx
  4011c1:	b8 10 00 00 00       	mov    $0x10,%eax
  4011c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011cd:	00 00 00 
  4011d0:	8b 3b                	mov    (%rbx),%edi
  4011d2:	85 ff                	test   %edi,%edi
  4011d4:	74 2a                	je     401200 <addjob+0x50>
  4011d6:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  4011dd:	83 e8 01             	sub    $0x1,%eax
  4011e0:	75 ee                	jne    4011d0 <addjob+0x20>
  4011e2:	bf a6 21 40 00       	mov    $0x4021a6,%edi
  4011e7:	31 ed                	xor    %ebp,%ebp
  4011e9:	e8 52 f9 ff ff       	callq  400b40 <puts@plt>
  4011ee:	48 83 c4 08          	add    $0x8,%rsp
  4011f2:	89 e8                	mov    %ebp,%eax
  4011f4:	5b                   	pop    %rbx
  4011f5:	5d                   	pop    %rbp
  4011f6:	c3                   	retq   
  4011f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4011fe:	00 00 
  401200:	89 53 08             	mov    %edx,0x8(%rbx)
  401203:	8b 15 e7 1e 20 00    	mov    0x201ee7(%rip),%edx        # 6030f0 <nextjid>
  401209:	89 33                	mov    %esi,(%rbx)
  40120b:	8d 42 01             	lea    0x1(%rdx),%eax
  40120e:	89 53 04             	mov    %edx,0x4(%rbx)
  401211:	83 f8 10             	cmp    $0x10,%eax
  401214:	89 05 d6 1e 20 00    	mov    %eax,0x201ed6(%rip)        # 6030f0 <nextjid>
  40121a:	7e 0a                	jle    401226 <addjob+0x76>
  40121c:	c7 05 ca 1e 20 00 01 	movl   $0x1,0x201eca(%rip)        # 6030f0 <nextjid>
  401223:	00 00 00 
  401226:	4c 8d 43 0c          	lea    0xc(%rbx),%r8
  40122a:	48 89 ce             	mov    %rcx,%rsi
  40122d:	bd 01 00 00 00       	mov    $0x1,%ebp
  401232:	4c 89 c7             	mov    %r8,%rdi
  401235:	e8 f6 f8 ff ff       	callq  400b30 <strcpy@plt>
  40123a:	8b 15 e0 1e 20 00    	mov    0x201ee0(%rip),%edx        # 603120 <verbose>
  401240:	49 89 c0             	mov    %rax,%r8
  401243:	85 d2                	test   %edx,%edx
  401245:	74 a7                	je     4011ee <addjob+0x3e>
  401247:	8b 53 04             	mov    0x4(%rbx),%edx
  40124a:	8b 0b                	mov    (%rbx),%ecx
  40124c:	be 90 21 40 00       	mov    $0x402190,%esi
  401251:	bf 01 00 00 00       	mov    $0x1,%edi
  401256:	31 c0                	xor    %eax,%eax
  401258:	e8 c3 f9 ff ff       	callq  400c20 <__printf_chk@plt>
  40125d:	eb 8f                	jmp    4011ee <addjob+0x3e>
  40125f:	90                   	nop
  401260:	48 83 c4 08          	add    $0x8,%rsp
  401264:	31 ed                	xor    %ebp,%ebp
  401266:	5b                   	pop    %rbx
  401267:	89 e8                	mov    %ebp,%eax
  401269:	5d                   	pop    %rbp
  40126a:	c3                   	retq   
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deletejob>:
  401270:	85 f6                	test   %esi,%esi
  401272:	7e 1b                	jle    40128f <deletejob+0x1f>
  401274:	48 89 f8             	mov    %rdi,%rax
  401277:	ba 10 00 00 00       	mov    $0x10,%edx
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)
  401280:	39 30                	cmp    %esi,(%rax)
  401282:	74 14                	je     401298 <deletejob+0x28>
  401284:	48 05 0c 04 00 00    	add    $0x40c,%rax
  40128a:	83 ea 01             	sub    $0x1,%edx
  40128d:	75 f1                	jne    401280 <deletejob+0x10>
  40128f:	31 c0                	xor    %eax,%eax
  401291:	c3                   	retq   
  401292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401298:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40129e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  4012a5:	31 d2                	xor    %edx,%edx
  4012a7:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  4012ae:	c6 40 0c 00          	movb   $0x0,0xc(%rax)
  4012b2:	31 c0                	xor    %eax,%eax
  4012b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012b8:	8b 4c 07 04          	mov    0x4(%rdi,%rax,1),%ecx
  4012bc:	39 ca                	cmp    %ecx,%edx
  4012be:	0f 4c d1             	cmovl  %ecx,%edx
  4012c1:	48 05 0c 04 00 00    	add    $0x40c,%rax
  4012c7:	48 3d c0 40 00 00    	cmp    $0x40c0,%rax
  4012cd:	75 e9                	jne    4012b8 <deletejob+0x48>
  4012cf:	83 c2 01             	add    $0x1,%edx
  4012d2:	66 b8 01 00          	mov    $0x1,%ax
  4012d6:	89 15 14 1e 20 00    	mov    %edx,0x201e14(%rip)        # 6030f0 <nextjid>
  4012dc:	c3                   	retq   
  4012dd:	0f 1f 00             	nopl   (%rax)

00000000004012e0 <fgpid>:
  4012e0:	31 c0                	xor    %eax,%eax
  4012e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012e8:	83 7f 08 01          	cmpl   $0x1,0x8(%rdi)
  4012ec:	74 12                	je     401300 <fgpid+0x20>
  4012ee:	83 c0 01             	add    $0x1,%eax
  4012f1:	48 81 c7 0c 04 00 00 	add    $0x40c,%rdi
  4012f8:	83 f8 10             	cmp    $0x10,%eax
  4012fb:	75 eb                	jne    4012e8 <fgpid+0x8>
  4012fd:	30 c0                	xor    %al,%al
  4012ff:	c3                   	retq   
  401300:	8b 07                	mov    (%rdi),%eax
  401302:	c3                   	retq   
  401303:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40130a:	84 00 00 00 00 00 

0000000000401310 <getjobpid>:
  401310:	85 f6                	test   %esi,%esi
  401312:	7e 1e                	jle    401332 <getjobpid+0x22>
  401314:	48 89 f8             	mov    %rdi,%rax
  401317:	31 d2                	xor    %edx,%edx
  401319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401320:	39 30                	cmp    %esi,(%rax)
  401322:	74 10                	je     401334 <getjobpid+0x24>
  401324:	83 c2 01             	add    $0x1,%edx
  401327:	48 05 0c 04 00 00    	add    $0x40c,%rax
  40132d:	83 fa 10             	cmp    $0x10,%edx
  401330:	75 ee                	jne    401320 <getjobpid+0x10>
  401332:	31 c0                	xor    %eax,%eax
  401334:	f3 c3                	repz retq 
  401336:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40133d:	00 00 00 

0000000000401340 <getjobjid>:
  401340:	85 f6                	test   %esi,%esi
  401342:	7e 1f                	jle    401363 <getjobjid+0x23>
  401344:	48 89 f8             	mov    %rdi,%rax
  401347:	31 d2                	xor    %edx,%edx
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	39 70 04             	cmp    %esi,0x4(%rax)
  401353:	74 10                	je     401365 <getjobjid+0x25>
  401355:	83 c2 01             	add    $0x1,%edx
  401358:	48 05 0c 04 00 00    	add    $0x40c,%rax
  40135e:	83 fa 10             	cmp    $0x10,%edx
  401361:	75 ed                	jne    401350 <getjobjid+0x10>
  401363:	31 c0                	xor    %eax,%eax
  401365:	f3 c3                	repz retq 
  401367:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40136e:	00 00 

0000000000401370 <pid2jid>:
  401370:	85 ff                	test   %edi,%edi
  401372:	7e 1e                	jle    401392 <pid2jid+0x22>
  401374:	b8 40 39 60 00       	mov    $0x603940,%eax
  401379:	31 d2                	xor    %edx,%edx
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401380:	39 38                	cmp    %edi,(%rax)
  401382:	74 14                	je     401398 <pid2jid+0x28>
  401384:	83 c2 01             	add    $0x1,%edx
  401387:	48 05 0c 04 00 00    	add    $0x40c,%rax
  40138d:	83 fa 10             	cmp    $0x10,%edx
  401390:	75 ee                	jne    401380 <pid2jid+0x10>
  401392:	31 c0                	xor    %eax,%eax
  401394:	c3                   	retq   
  401395:	0f 1f 00             	nopl   (%rax)
  401398:	48 63 d2             	movslq %edx,%rdx
  40139b:	48 69 d2 0c 04 00 00 	imul   $0x40c,%rdx,%rdx
  4013a2:	8b 82 44 39 60 00    	mov    0x603944(%rdx),%eax
  4013a8:	c3                   	retq   
  4013a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004013b0 <listjobs>:
  4013b0:	55                   	push   %rbp
  4013b1:	31 ed                	xor    %ebp,%ebp
  4013b3:	53                   	push   %rbx
  4013b4:	48 8d 5f 0c          	lea    0xc(%rdi),%rbx
  4013b8:	48 83 ec 08          	sub    $0x8,%rsp
  4013bc:	eb 11                	jmp    4013cf <listjobs+0x1f>
  4013be:	66 90                	xchg   %ax,%ax
  4013c0:	83 c5 01             	add    $0x1,%ebp
  4013c3:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  4013ca:	83 fd 10             	cmp    $0x10,%ebp
  4013cd:	74 63                	je     401432 <listjobs+0x82>
  4013cf:	8b 4b f4             	mov    -0xc(%rbx),%ecx
  4013d2:	85 c9                	test   %ecx,%ecx
  4013d4:	74 ea                	je     4013c0 <listjobs+0x10>
  4013d6:	8b 53 f8             	mov    -0x8(%rbx),%edx
  4013d9:	31 c0                	xor    %eax,%eax
  4013db:	be c4 21 40 00       	mov    $0x4021c4,%esi
  4013e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e5:	e8 36 f8 ff ff       	callq  400c20 <__printf_chk@plt>
  4013ea:	8b 4b fc             	mov    -0x4(%rbx),%ecx
  4013ed:	83 f9 02             	cmp    $0x2,%ecx
  4013f0:	74 4e                	je     401440 <listjobs+0x90>
  4013f2:	83 f9 03             	cmp    $0x3,%ecx
  4013f5:	74 79                	je     401470 <listjobs+0xc0>
  4013f7:	83 f9 01             	cmp    $0x1,%ecx
  4013fa:	74 5c                	je     401458 <listjobs+0xa8>
  4013fc:	89 ea                	mov    %ebp,%edx
  4013fe:	be a8 1f 40 00       	mov    $0x401fa8,%esi
  401403:	bf 01 00 00 00       	mov    $0x1,%edi
  401408:	31 c0                	xor    %eax,%eax
  40140a:	e8 11 f8 ff ff       	callq  400c20 <__printf_chk@plt>
  40140f:	48 89 da             	mov    %rbx,%rdx
  401412:	31 c0                	xor    %eax,%eax
  401414:	be 3e 22 40 00       	mov    $0x40223e,%esi
  401419:	bf 01 00 00 00       	mov    $0x1,%edi
  40141e:	83 c5 01             	add    $0x1,%ebp
  401421:	48 81 c3 0c 04 00 00 	add    $0x40c,%rbx
  401428:	e8 f3 f7 ff ff       	callq  400c20 <__printf_chk@plt>
  40142d:	83 fd 10             	cmp    $0x10,%ebp
  401430:	75 9d                	jne    4013cf <listjobs+0x1f>
  401432:	48 83 c4 08          	add    $0x8,%rsp
  401436:	5b                   	pop    %rbx
  401437:	5d                   	pop    %rbp
  401438:	c3                   	retq   
  401439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401440:	be cf 21 40 00       	mov    $0x4021cf,%esi
  401445:	bf 01 00 00 00       	mov    $0x1,%edi
  40144a:	31 c0                	xor    %eax,%eax
  40144c:	e8 cf f7 ff ff       	callq  400c20 <__printf_chk@plt>
  401451:	eb bc                	jmp    40140f <listjobs+0x5f>
  401453:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401458:	be d8 21 40 00       	mov    $0x4021d8,%esi
  40145d:	bf 01 00 00 00       	mov    $0x1,%edi
  401462:	31 c0                	xor    %eax,%eax
  401464:	e8 b7 f7 ff ff       	callq  400c20 <__printf_chk@plt>
  401469:	eb a4                	jmp    40140f <listjobs+0x5f>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401470:	be e4 21 40 00       	mov    $0x4021e4,%esi
  401475:	bf 01 00 00 00       	mov    $0x1,%edi
  40147a:	31 c0                	xor    %eax,%eax
  40147c:	e8 9f f7 ff ff       	callq  400c20 <__printf_chk@plt>
  401481:	eb 8c                	jmp    40140f <listjobs+0x5f>
  401483:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40148a:	84 00 00 00 00 00 

0000000000401490 <usage>:
  401490:	48 83 ec 08          	sub    $0x8,%rsp
  401494:	bf ed 21 40 00       	mov    $0x4021ed,%edi
  401499:	e8 a2 f6 ff ff       	callq  400b40 <puts@plt>
  40149e:	bf 01 22 40 00       	mov    $0x402201,%edi
  4014a3:	e8 98 f6 ff ff       	callq  400b40 <puts@plt>
  4014a8:	bf d8 1f 40 00       	mov    $0x401fd8,%edi
  4014ad:	e8 8e f6 ff ff       	callq  400b40 <puts@plt>
  4014b2:	bf 08 20 40 00       	mov    $0x402008,%edi
  4014b7:	e8 84 f6 ff ff       	callq  400b40 <puts@plt>
  4014bc:	bf 01 00 00 00       	mov    $0x1,%edi
  4014c1:	e8 9a f7 ff ff       	callq  400c60 <exit@plt>
  4014c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014cd:	00 00 00 

00000000004014d0 <unix_error>:
  4014d0:	53                   	push   %rbx
  4014d1:	48 89 fb             	mov    %rdi,%rbx
  4014d4:	e8 47 f6 ff ff       	callq  400b20 <__errno_location@plt>
  4014d9:	8b 38                	mov    (%rax),%edi
  4014db:	e8 a0 f7 ff ff       	callq  400c80 <strerror@plt>
  4014e0:	48 8b 3d 19 1c 20 00 	mov    0x201c19(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  4014e7:	49 89 c0             	mov    %rax,%r8
  4014ea:	48 89 d9             	mov    %rbx,%rcx
  4014ed:	ba 1c 22 40 00       	mov    $0x40221c,%edx
  4014f2:	be 01 00 00 00       	mov    $0x1,%esi
  4014f7:	31 c0                	xor    %eax,%eax
  4014f9:	e8 72 f7 ff ff       	callq  400c70 <__fprintf_chk@plt>
  4014fe:	bf 01 00 00 00       	mov    $0x1,%edi
  401503:	e8 58 f7 ff ff       	callq  400c60 <exit@plt>
  401508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40150f:	00 

0000000000401510 <do_bgfg>:
  401510:	55                   	push   %rbp
  401511:	48 89 fd             	mov    %rdi,%rbp
  401514:	53                   	push   %rbx
  401515:	48 83 ec 08          	sub    $0x8,%rsp
  401519:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  40151d:	48 85 db             	test   %rbx,%rbx
  401520:	0f 84 82 01 00 00    	je     4016a8 <do_bgfg+0x198>
  401526:	e8 95 f7 ff ff       	callq  400cc0 <__ctype_b_loc@plt>
  40152b:	0f b6 13             	movzbl (%rbx),%edx
  40152e:	48 8b 00             	mov    (%rax),%rax
  401531:	48 0f be ca          	movsbq %dl,%rcx
  401535:	f6 44 48 01 08       	testb  $0x8,0x1(%rax,%rcx,2)
  40153a:	75 6c                	jne    4015a8 <do_bgfg+0x98>
  40153c:	80 fa 25             	cmp    $0x25,%dl
  40153f:	74 1f                	je     401560 <do_bgfg+0x50>
  401541:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  401545:	be 60 20 40 00       	mov    $0x402060,%esi
  40154a:	48 83 c4 08          	add    $0x8,%rsp
  40154e:	bf 01 00 00 00       	mov    $0x1,%edi
  401553:	31 c0                	xor    %eax,%eax
  401555:	5b                   	pop    %rbx
  401556:	5d                   	pop    %rbp
  401557:	e9 c4 f6 ff ff       	jmpq   400c20 <__printf_chk@plt>
  40155c:	0f 1f 40 00          	nopl   0x0(%rax)
  401560:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
  401564:	ba 0a 00 00 00       	mov    $0xa,%edx
  401569:	31 f6                	xor    %esi,%esi
  40156b:	e8 70 f6 ff ff       	callq  400be0 <strtol@plt>
  401570:	85 c0                	test   %eax,%eax
  401572:	89 c2                	mov    %eax,%edx
  401574:	7e 20                	jle    401596 <do_bgfg+0x86>
  401576:	b8 40 39 60 00       	mov    $0x603940,%eax
  40157b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401580:	3b 50 04             	cmp    0x4(%rax),%edx
  401583:	48 89 c3             	mov    %rax,%rbx
  401586:	74 78                	je     401600 <do_bgfg+0xf0>
  401588:	48 05 0c 04 00 00    	add    $0x40c,%rax
  40158e:	48 3d 00 7a 60 00    	cmp    $0x607a00,%rax
  401594:	75 ea                	jne    401580 <do_bgfg+0x70>
  401596:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40159a:	be 80 22 40 00       	mov    $0x402280,%esi
  40159f:	eb a9                	jmp    40154a <do_bgfg+0x3a>
  4015a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4015a8:	31 f6                	xor    %esi,%esi
  4015aa:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015af:	48 89 df             	mov    %rbx,%rdi
  4015b2:	e8 29 f6 ff ff       	callq  400be0 <strtol@plt>
  4015b7:	85 c0                	test   %eax,%eax
  4015b9:	89 c6                	mov    %eax,%esi
  4015bb:	7e 22                	jle    4015df <do_bgfg+0xcf>
  4015bd:	b9 40 39 60 00       	mov    $0x603940,%ecx
  4015c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015c8:	3b 31                	cmp    (%rcx),%esi
  4015ca:	48 89 cb             	mov    %rcx,%rbx
  4015cd:	74 31                	je     401600 <do_bgfg+0xf0>
  4015cf:	48 81 c1 0c 04 00 00 	add    $0x40c,%rcx
  4015d6:	48 81 f9 00 7a 60 00 	cmp    $0x607a00,%rcx
  4015dd:	75 e9                	jne    4015c8 <do_bgfg+0xb8>
  4015df:	48 83 c4 08          	add    $0x8,%rsp
  4015e3:	89 c2                	mov    %eax,%edx
  4015e5:	be 69 22 40 00       	mov    $0x402269,%esi
  4015ea:	5b                   	pop    %rbx
  4015eb:	5d                   	pop    %rbp
  4015ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4015f1:	31 c0                	xor    %eax,%eax
  4015f3:	e9 28 f6 ff ff       	jmpq   400c20 <__printf_chk@plt>
  4015f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4015ff:	00 
  401600:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401604:	0f b6 10             	movzbl (%rax),%edx
  401607:	83 fa 62             	cmp    $0x62,%edx
  40160a:	75 4c                	jne    401658 <do_bgfg+0x148>
  40160c:	80 78 01 67          	cmpb   $0x67,0x1(%rax)
  401610:	75 51                	jne    401663 <do_bgfg+0x153>
  401612:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
  401616:	75 4b                	jne    401663 <do_bgfg+0x153>
  401618:	8b 3b                	mov    (%rbx),%edi
  40161a:	be 12 00 00 00       	mov    $0x12,%esi
  40161f:	f7 df                	neg    %edi
  401621:	e8 ca f5 ff ff       	callq  400bf0 <kill@plt>
  401626:	85 c0                	test   %eax,%eax
  401628:	0f 88 91 00 00 00    	js     4016bf <do_bgfg+0x1af>
  40162e:	c7 43 08 02 00 00 00 	movl   $0x2,0x8(%rbx)
  401635:	8b 53 04             	mov    0x4(%rbx),%edx
  401638:	4c 8d 43 0c          	lea    0xc(%rbx),%r8
  40163c:	8b 0b                	mov    (%rbx),%ecx
  40163e:	48 83 c4 08          	add    $0x8,%rsp
  401642:	be 34 22 40 00       	mov    $0x402234,%esi
  401647:	5b                   	pop    %rbx
  401648:	5d                   	pop    %rbp
  401649:	bf 01 00 00 00       	mov    $0x1,%edi
  40164e:	31 c0                	xor    %eax,%eax
  401650:	e9 cb f5 ff ff       	jmpq   400c20 <__printf_chk@plt>
  401655:	0f 1f 00             	nopl   (%rax)
  401658:	83 fa 66             	cmp    $0x66,%edx
  40165b:	75 06                	jne    401663 <do_bgfg+0x153>
  40165d:	80 78 01 67          	cmpb   $0x67,0x1(%rax)
  401661:	74 15                	je     401678 <do_bgfg+0x168>
  401663:	bf 51 22 40 00       	mov    $0x402251,%edi
  401668:	e8 d3 f4 ff ff       	callq  400b40 <puts@plt>
  40166d:	31 ff                	xor    %edi,%edi
  40166f:	e8 ec f5 ff ff       	callq  400c60 <exit@plt>
  401674:	0f 1f 40 00          	nopl   0x0(%rax)
  401678:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
  40167c:	75 e5                	jne    401663 <do_bgfg+0x153>
  40167e:	8b 3b                	mov    (%rbx),%edi
  401680:	be 12 00 00 00       	mov    $0x12,%esi
  401685:	f7 df                	neg    %edi
  401687:	e8 64 f5 ff ff       	callq  400bf0 <kill@plt>
  40168c:	85 c0                	test   %eax,%eax
  40168e:	78 25                	js     4016b5 <do_bgfg+0x1a5>
  401690:	c7 43 08 01 00 00 00 	movl   $0x1,0x8(%rbx)
  401697:	8b 3b                	mov    (%rbx),%edi
  401699:	48 83 c4 08          	add    $0x8,%rsp
  40169d:	5b                   	pop    %rbx
  40169e:	5d                   	pop    %rbp
  40169f:	e9 0c fa ff ff       	jmpq   4010b0 <waitfg>
  4016a4:	0f 1f 40 00          	nopl   0x0(%rax)
  4016a8:	48 8b 17             	mov    (%rdi),%rdx
  4016ab:	be 30 20 40 00       	mov    $0x402030,%esi
  4016b0:	e9 95 fe ff ff       	jmpq   40154a <do_bgfg+0x3a>
  4016b5:	bf 41 22 40 00       	mov    $0x402241,%edi
  4016ba:	e8 11 fe ff ff       	callq  4014d0 <unix_error>
  4016bf:	bf 24 22 40 00       	mov    $0x402224,%edi
  4016c4:	e8 07 fe ff ff       	callq  4014d0 <unix_error>
  4016c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004016d0 <builtin_cmd>:
  4016d0:	48 83 ec 08          	sub    $0x8,%rsp
  4016d4:	48 8b 07             	mov    (%rdi),%rax
  4016d7:	49 89 f8             	mov    %rdi,%r8
  4016da:	b9 05 00 00 00       	mov    $0x5,%ecx
  4016df:	bf 91 22 40 00       	mov    $0x402291,%edi
  4016e4:	48 89 c6             	mov    %rax,%rsi
  4016e7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4016e9:	74 79                	je     401764 <builtin_cmd+0x94>
  4016eb:	bf bf 21 40 00       	mov    $0x4021bf,%edi
  4016f0:	b9 05 00 00 00       	mov    $0x5,%ecx
  4016f5:	48 89 c6             	mov    %rax,%rsi
  4016f8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4016fa:	74 54                	je     401750 <builtin_cmd+0x80>
  4016fc:	0f b6 10             	movzbl (%rax),%edx
  4016ff:	83 fa 62             	cmp    $0x62,%edx
  401702:	75 1c                	jne    401720 <builtin_cmd+0x50>
  401704:	80 78 01 67          	cmpb   $0x67,0x1(%rax)
  401708:	74 26                	je     401730 <builtin_cmd+0x60>
  40170a:	83 ea 26             	sub    $0x26,%edx
  40170d:	31 c0                	xor    %eax,%eax
  40170f:	85 d2                	test   %edx,%edx
  401711:	0f 94 c0             	sete   %al
  401714:	48 83 c4 08          	add    $0x8,%rsp
  401718:	c3                   	retq   
  401719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401720:	83 fa 66             	cmp    $0x66,%edx
  401723:	74 df                	je     401704 <builtin_cmd+0x34>
  401725:	83 ea 26             	sub    $0x26,%edx
  401728:	75 e3                	jne    40170d <builtin_cmd+0x3d>
  40172a:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  40172e:	eb dd                	jmp    40170d <builtin_cmd+0x3d>
  401730:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
  401734:	75 d4                	jne    40170a <builtin_cmd+0x3a>
  401736:	4c 89 c7             	mov    %r8,%rdi
  401739:	e8 d2 fd ff ff       	callq  401510 <do_bgfg>
  40173e:	b8 01 00 00 00       	mov    $0x1,%eax
  401743:	48 83 c4 08          	add    $0x8,%rsp
  401747:	c3                   	retq   
  401748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40174f:	00 
  401750:	bf 40 39 60 00       	mov    $0x603940,%edi
  401755:	e8 56 fc ff ff       	callq  4013b0 <listjobs>
  40175a:	b8 01 00 00 00       	mov    $0x1,%eax
  40175f:	48 83 c4 08          	add    $0x8,%rsp
  401763:	c3                   	retq   
  401764:	31 ff                	xor    %edi,%edi
  401766:	e8 f5 f4 ff ff       	callq  400c60 <exit@plt>
  40176b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401770 <eval>:
  401770:	41 55                	push   %r13
  401772:	41 54                	push   %r12
  401774:	55                   	push   %rbp
  401775:	48 89 fd             	mov    %rdi,%rbp
  401778:	53                   	push   %rbx
  401779:	48 81 ec 88 04 00 00 	sub    $0x488,%rsp
  401780:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  401787:	00 
  401788:	e8 f3 f7 ff ff       	callq  400f80 <parseline>
  40178d:	48 83 bc 24 80 00 00 	cmpq   $0x0,0x80(%rsp)
  401794:	00 00 
  401796:	74 14                	je     4017ac <eval+0x3c>
  401798:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  40179f:	00 
  4017a0:	41 89 c4             	mov    %eax,%r12d
  4017a3:	e8 28 ff ff ff       	callq  4016d0 <builtin_cmd>
  4017a8:	85 c0                	test   %eax,%eax
  4017aa:	74 14                	je     4017c0 <eval+0x50>
  4017ac:	48 81 c4 88 04 00 00 	add    $0x488,%rsp
  4017b3:	5b                   	pop    %rbx
  4017b4:	5d                   	pop    %rbp
  4017b5:	41 5c                	pop    %r12
  4017b7:	41 5d                	pop    %r13
  4017b9:	c3                   	retq   
  4017ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4017c0:	48 89 e7             	mov    %rsp,%rdi
  4017c3:	e8 f8 f3 ff ff       	callq  400bc0 <sigemptyset@plt>
  4017c8:	85 c0                	test   %eax,%eax
  4017ca:	0f 88 cc 01 00 00    	js     40199c <eval+0x22c>
  4017d0:	be 11 00 00 00       	mov    $0x11,%esi
  4017d5:	48 89 e7             	mov    %rsp,%rdi
  4017d8:	e8 c3 f4 ff ff       	callq  400ca0 <sigaddset@plt>
  4017dd:	85 c0                	test   %eax,%eax
  4017df:	0f 85 99 01 00 00    	jne    40197e <eval+0x20e>
  4017e5:	be 02 00 00 00       	mov    $0x2,%esi
  4017ea:	48 89 e7             	mov    %rsp,%rdi
  4017ed:	e8 ae f4 ff ff       	callq  400ca0 <sigaddset@plt>
  4017f2:	85 c0                	test   %eax,%eax
  4017f4:	0f 85 84 01 00 00    	jne    40197e <eval+0x20e>
  4017fa:	be 14 00 00 00       	mov    $0x14,%esi
  4017ff:	48 89 e7             	mov    %rsp,%rdi
  401802:	e8 99 f4 ff ff       	callq  400ca0 <sigaddset@plt>
  401807:	85 c0                	test   %eax,%eax
  401809:	41 89 c5             	mov    %eax,%r13d
  40180c:	0f 85 6c 01 00 00    	jne    40197e <eval+0x20e>
  401812:	31 d2                	xor    %edx,%edx
  401814:	31 ff                	xor    %edi,%edi
  401816:	48 89 e6             	mov    %rsp,%rsi
  401819:	e8 f2 f2 ff ff       	callq  400b10 <sigprocmask@plt>
  40181e:	85 c0                	test   %eax,%eax
  401820:	0f 88 62 01 00 00    	js     401988 <eval+0x218>
  401826:	e8 85 f4 ff ff       	callq  400cb0 <fork@plt>
  40182b:	85 c0                	test   %eax,%eax
  40182d:	89 c3                	mov    %eax,%ebx
  40182f:	90                   	nop
  401830:	0f 88 5c 01 00 00    	js     401992 <eval+0x222>
  401836:	0f 84 9c 00 00 00    	je     4018d8 <eval+0x168>
  40183c:	41 83 fc 01          	cmp    $0x1,%r12d
  401840:	48 89 e9             	mov    %rbp,%rcx
  401843:	0f 84 f7 00 00 00    	je     401940 <eval+0x1d0>
  401849:	ba 01 00 00 00       	mov    $0x1,%edx
  40184e:	89 de                	mov    %ebx,%esi
  401850:	bf 40 39 60 00       	mov    $0x603940,%edi
  401855:	e8 56 f9 ff ff       	callq  4011b0 <addjob>
  40185a:	31 d2                	xor    %edx,%edx
  40185c:	48 89 e6             	mov    %rsp,%rsi
  40185f:	bf 01 00 00 00       	mov    $0x1,%edi
  401864:	e8 a7 f2 ff ff       	callq  400b10 <sigprocmask@plt>
  401869:	45 85 e4             	test   %r12d,%r12d
  40186c:	74 5a                	je     4018c8 <eval+0x158>
  40186e:	85 db                	test   %ebx,%ebx
  401870:	74 28                	je     40189a <eval+0x12a>
  401872:	41 b9 40 39 60 00    	mov    $0x603940,%r9d
  401878:	45 31 d2             	xor    %r10d,%r10d
  40187b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401880:	41 3b 19             	cmp    (%r9),%ebx
  401883:	0f 84 df 00 00 00    	je     401968 <eval+0x1f8>
  401889:	41 83 c2 01          	add    $0x1,%r10d
  40188d:	49 81 c1 0c 04 00 00 	add    $0x40c,%r9
  401894:	41 83 fa 10          	cmp    $0x10,%r10d
  401898:	75 e6                	jne    401880 <eval+0x110>
  40189a:	49 89 e8             	mov    %rbp,%r8
  40189d:	89 d9                	mov    %ebx,%ecx
  40189f:	44 89 ea             	mov    %r13d,%edx
  4018a2:	be 34 22 40 00       	mov    $0x402234,%esi
  4018a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ac:	31 c0                	xor    %eax,%eax
  4018ae:	e8 6d f3 ff ff       	callq  400c20 <__printf_chk@plt>
  4018b3:	48 81 c4 88 04 00 00 	add    $0x488,%rsp
  4018ba:	5b                   	pop    %rbx
  4018bb:	5d                   	pop    %rbp
  4018bc:	41 5c                	pop    %r12
  4018be:	41 5d                	pop    %r13
  4018c0:	c3                   	retq   
  4018c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4018c8:	89 df                	mov    %ebx,%edi
  4018ca:	e8 e1 f7 ff ff       	callq  4010b0 <waitfg>
  4018cf:	e9 d8 fe ff ff       	jmpq   4017ac <eval+0x3c>
  4018d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4018d8:	31 d2                	xor    %edx,%edx
  4018da:	48 89 e6             	mov    %rsp,%rsi
  4018dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4018e2:	e8 29 f2 ff ff       	callq  400b10 <sigprocmask@plt>
  4018e7:	31 f6                	xor    %esi,%esi
  4018e9:	31 ff                	xor    %edi,%edi
  4018eb:	e8 60 f3 ff ff       	callq  400c50 <setpgid@plt>
  4018f0:	85 c0                	test   %eax,%eax
  4018f2:	0f 88 ae 00 00 00    	js     4019a6 <eval+0x236>
  4018f8:	48 8b 15 11 18 20 00 	mov    0x201811(%rip),%rdx        # 603110 <__environ@@GLIBC_2.2.5>
  4018ff:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  401906:	00 
  401907:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  40190e:	00 
  40190f:	e8 9c f2 ff ff       	callq  400bb0 <execve@plt>
  401914:	85 c0                	test   %eax,%eax
  401916:	0f 89 20 ff ff ff    	jns    40183c <eval+0xcc>
  40191c:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
  401923:	00 
  401924:	bf 01 00 00 00       	mov    $0x1,%edi
  401929:	be e3 22 40 00       	mov    $0x4022e3,%esi
  40192e:	31 c0                	xor    %eax,%eax
  401930:	e8 eb f2 ff ff       	callq  400c20 <__printf_chk@plt>
  401935:	31 ff                	xor    %edi,%edi
  401937:	e8 24 f3 ff ff       	callq  400c60 <exit@plt>
  40193c:	0f 1f 40 00          	nopl   0x0(%rax)
  401940:	89 de                	mov    %ebx,%esi
  401942:	ba 02 00 00 00       	mov    $0x2,%edx
  401947:	bf 40 39 60 00       	mov    $0x603940,%edi
  40194c:	e8 5f f8 ff ff       	callq  4011b0 <addjob>
  401951:	31 d2                	xor    %edx,%edx
  401953:	48 89 e6             	mov    %rsp,%rsi
  401956:	bf 01 00 00 00       	mov    $0x1,%edi
  40195b:	e8 b0 f1 ff ff       	callq  400b10 <sigprocmask@plt>
  401960:	e9 09 ff ff ff       	jmpq   40186e <eval+0xfe>
  401965:	0f 1f 00             	nopl   (%rax)
  401968:	4d 63 d2             	movslq %r10d,%r10
  40196b:	4d 69 d2 0c 04 00 00 	imul   $0x40c,%r10,%r10
  401972:	45 8b aa 44 39 60 00 	mov    0x603944(%r10),%r13d
  401979:	e9 1c ff ff ff       	jmpq   40189a <eval+0x12a>
  40197e:	bf a8 22 40 00       	mov    $0x4022a8,%edi
  401983:	e8 48 fb ff ff       	callq  4014d0 <unix_error>
  401988:	bf b8 22 40 00       	mov    $0x4022b8,%edi
  40198d:	e8 3e fb ff ff       	callq  4014d0 <unix_error>
  401992:	bf ca 22 40 00       	mov    $0x4022ca,%edi
  401997:	e8 34 fb ff ff       	callq  4014d0 <unix_error>
  40199c:	bf 96 22 40 00       	mov    $0x402296,%edi
  4019a1:	e8 2a fb ff ff       	callq  4014d0 <unix_error>
  4019a6:	bf d5 22 40 00       	mov    $0x4022d5,%edi
  4019ab:	e8 20 fb ff ff       	callq  4014d0 <unix_error>

00000000004019b0 <sigchld_handler>:
  4019b0:	41 54                	push   %r12
  4019b2:	55                   	push   %rbp
  4019b3:	53                   	push   %rbx
  4019b4:	48 83 ec 10          	sub    $0x10,%rsp
  4019b8:	8b 1d 62 17 20 00    	mov    0x201762(%rip),%ebx        # 603120 <verbose>
  4019be:	85 db                	test   %ebx,%ebx
  4019c0:	0f 85 7c 02 00 00    	jne    401c42 <sigchld_handler+0x292>
  4019c6:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
  4019cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019d0:	ba 03 00 00 00       	mov    $0x3,%edx
  4019d5:	48 89 ee             	mov    %rbp,%rsi
  4019d8:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  4019dd:	e8 4e f2 ff ff       	callq  400c30 <waitpid@plt>
  4019e2:	83 f8 00             	cmp    $0x0,%eax
  4019e5:	89 c3                	mov    %eax,%ebx
  4019e7:	0f 8e 21 02 00 00    	jle    401c0e <sigchld_handler+0x25e>
  4019ed:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  4019f1:	80 fa 7f             	cmp    $0x7f,%dl
  4019f4:	0f 84 86 00 00 00    	je     401a80 <sigchld_handler+0xd0>
  4019fa:	89 d0                	mov    %edx,%eax
  4019fc:	83 e0 7f             	and    $0x7f,%eax
  4019ff:	83 c0 01             	add    $0x1,%eax
  401a02:	3c 01                	cmp    $0x1,%al
  401a04:	0f 8e b6 00 00 00    	jle    401ac0 <sigchld_handler+0x110>
  401a0a:	b8 40 39 60 00       	mov    $0x603940,%eax
  401a0f:	31 d2                	xor    %edx,%edx
  401a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a18:	3b 18                	cmp    (%rax),%ebx
  401a1a:	0f 84 38 01 00 00    	je     401b58 <sigchld_handler+0x1a8>
  401a20:	83 c2 01             	add    $0x1,%edx
  401a23:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401a29:	83 fa 10             	cmp    $0x10,%edx
  401a2c:	75 ea                	jne    401a18 <sigchld_handler+0x68>
  401a2e:	45 31 e4             	xor    %r12d,%r12d
  401a31:	89 de                	mov    %ebx,%esi
  401a33:	bf 40 39 60 00       	mov    $0x603940,%edi
  401a38:	e8 33 f8 ff ff       	callq  401270 <deletejob>
  401a3d:	85 c0                	test   %eax,%eax
  401a3f:	74 10                	je     401a51 <sigchld_handler+0xa1>
  401a41:	44 8b 1d d8 16 20 00 	mov    0x2016d8(%rip),%r11d        # 603120 <verbose>
  401a48:	45 85 db             	test   %r11d,%r11d
  401a4b:	0f 85 87 01 00 00    	jne    401bd8 <sigchld_handler+0x228>
  401a51:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  401a56:	48 8b 3d a3 16 20 00 	mov    0x2016a3(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  401a5d:	41 89 d8             	mov    %ebx,%r8d
  401a60:	44 89 e1             	mov    %r12d,%ecx
  401a63:	ba d8 20 40 00       	mov    $0x4020d8,%edx
  401a68:	be 01 00 00 00       	mov    $0x1,%esi
  401a6d:	31 c0                	xor    %eax,%eax
  401a6f:	41 83 e1 7f          	and    $0x7f,%r9d
  401a73:	e8 f8 f1 ff ff       	callq  400c70 <__fprintf_chk@plt>
  401a78:	e9 53 ff ff ff       	jmpq   4019d0 <sigchld_handler+0x20>
  401a7d:	0f 1f 00             	nopl   (%rax)
  401a80:	b8 40 39 60 00       	mov    $0x603940,%eax
  401a85:	0f 1f 00             	nopl   (%rax)
  401a88:	3b 18                	cmp    (%rax),%ebx
  401a8a:	0f 84 e0 00 00 00    	je     401b70 <sigchld_handler+0x1c0>
  401a90:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401a96:	48 3d 00 7a 60 00    	cmp    $0x607a00,%rax
  401a9c:	75 ea                	jne    401a88 <sigchld_handler+0xd8>
  401a9e:	89 da                	mov    %ebx,%edx
  401aa0:	be 56 23 40 00       	mov    $0x402356,%esi
  401aa5:	bf 01 00 00 00       	mov    $0x1,%edi
  401aaa:	31 c0                	xor    %eax,%eax
  401aac:	e8 6f f1 ff ff       	callq  400c20 <__printf_chk@plt>
  401ab1:	48 83 c4 10          	add    $0x10,%rsp
  401ab5:	5b                   	pop    %rbx
  401ab6:	5d                   	pop    %rbp
  401ab7:	41 5c                	pop    %r12
  401ab9:	c3                   	retq   
  401aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ac0:	83 e2 7f             	and    $0x7f,%edx
  401ac3:	41 89 d4             	mov    %edx,%r12d
  401ac6:	0f 85 8f 01 00 00    	jne    401c5b <sigchld_handler+0x2ab>
  401acc:	b8 40 39 60 00       	mov    $0x603940,%eax
  401ad1:	31 c9                	xor    %ecx,%ecx
  401ad3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ad8:	3b 18                	cmp    (%rax),%ebx
  401ada:	0f 84 18 01 00 00    	je     401bf8 <sigchld_handler+0x248>
  401ae0:	83 c1 01             	add    $0x1,%ecx
  401ae3:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401ae9:	83 f9 10             	cmp    $0x10,%ecx
  401aec:	75 ea                	jne    401ad8 <sigchld_handler+0x128>
  401aee:	89 de                	mov    %ebx,%esi
  401af0:	bf 40 39 60 00       	mov    $0x603940,%edi
  401af5:	e8 76 f7 ff ff       	callq  401270 <deletejob>
  401afa:	85 c0                	test   %eax,%eax
  401afc:	74 26                	je     401b24 <sigchld_handler+0x174>
  401afe:	44 8b 15 1b 16 20 00 	mov    0x20161b(%rip),%r10d        # 603120 <verbose>
  401b05:	45 85 d2             	test   %r10d,%r10d
  401b08:	0f 84 c2 fe ff ff    	je     4019d0 <sigchld_handler+0x20>
  401b0e:	89 d9                	mov    %ebx,%ecx
  401b10:	44 89 e2             	mov    %r12d,%edx
  401b13:	be b0 20 40 00       	mov    $0x4020b0,%esi
  401b18:	bf 01 00 00 00       	mov    $0x1,%edi
  401b1d:	31 c0                	xor    %eax,%eax
  401b1f:	e8 fc f0 ff ff       	callq  400c20 <__printf_chk@plt>
  401b24:	44 8b 0d f5 15 20 00 	mov    0x2015f5(%rip),%r9d        # 603120 <verbose>
  401b2b:	45 85 c9             	test   %r9d,%r9d
  401b2e:	0f 84 9c fe ff ff    	je     4019d0 <sigchld_handler+0x20>
  401b34:	44 0f b6 44 24 0d    	movzbl 0xd(%rsp),%r8d
  401b3a:	89 d9                	mov    %ebx,%ecx
  401b3c:	44 89 e2             	mov    %r12d,%edx
  401b3f:	be 00 21 40 00       	mov    $0x402100,%esi
  401b44:	bf 01 00 00 00       	mov    $0x1,%edi
  401b49:	31 c0                	xor    %eax,%eax
  401b4b:	e8 d0 f0 ff ff       	callq  400c20 <__printf_chk@plt>
  401b50:	e9 7b fe ff ff       	jmpq   4019d0 <sigchld_handler+0x20>
  401b55:	0f 1f 00             	nopl   (%rax)
  401b58:	48 63 d2             	movslq %edx,%rdx
  401b5b:	48 69 d2 0c 04 00 00 	imul   $0x40c,%rdx,%rdx
  401b62:	44 8b a2 44 39 60 00 	mov    0x603944(%rdx),%r12d
  401b69:	e9 c3 fe ff ff       	jmpq   401a31 <sigchld_handler+0x81>
  401b6e:	66 90                	xchg   %ax,%ax
  401b70:	c7 40 08 03 00 00 00 	movl   $0x3,0x8(%rax)
  401b77:	0f b6 c6             	movzbl %dh,%eax
  401b7a:	31 c9                	xor    %ecx,%ecx
  401b7c:	41 89 c1             	mov    %eax,%r9d
  401b7f:	b8 40 39 60 00       	mov    $0x603940,%eax
  401b84:	0f 1f 40 00          	nopl   0x0(%rax)
  401b88:	3b 18                	cmp    (%rax),%ebx
  401b8a:	74 34                	je     401bc0 <sigchld_handler+0x210>
  401b8c:	83 c1 01             	add    $0x1,%ecx
  401b8f:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401b95:	83 f9 10             	cmp    $0x10,%ecx
  401b98:	75 ee                	jne    401b88 <sigchld_handler+0x1d8>
  401b9a:	30 c9                	xor    %cl,%cl
  401b9c:	48 8b 3d 5d 15 20 00 	mov    0x20155d(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  401ba3:	41 89 d8             	mov    %ebx,%r8d
  401ba6:	ba 88 20 40 00       	mov    $0x402088,%edx
  401bab:	be 01 00 00 00       	mov    $0x1,%esi
  401bb0:	31 c0                	xor    %eax,%eax
  401bb2:	e8 b9 f0 ff ff       	callq  400c70 <__fprintf_chk@plt>
  401bb7:	e9 14 fe ff ff       	jmpq   4019d0 <sigchld_handler+0x20>
  401bbc:	0f 1f 40 00          	nopl   0x0(%rax)
  401bc0:	48 63 c9             	movslq %ecx,%rcx
  401bc3:	48 69 c9 0c 04 00 00 	imul   $0x40c,%rcx,%rcx
  401bca:	8b 89 44 39 60 00    	mov    0x603944(%rcx),%ecx
  401bd0:	eb ca                	jmp    401b9c <sigchld_handler+0x1ec>
  401bd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401bd8:	89 d9                	mov    %ebx,%ecx
  401bda:	44 89 e2             	mov    %r12d,%edx
  401bdd:	be b0 20 40 00       	mov    $0x4020b0,%esi
  401be2:	bf 01 00 00 00       	mov    $0x1,%edi
  401be7:	31 c0                	xor    %eax,%eax
  401be9:	e8 32 f0 ff ff       	callq  400c20 <__printf_chk@plt>
  401bee:	e9 5e fe ff ff       	jmpq   401a51 <sigchld_handler+0xa1>
  401bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401bf8:	48 63 c1             	movslq %ecx,%rax
  401bfb:	48 69 c0 0c 04 00 00 	imul   $0x40c,%rax,%rax
  401c02:	44 8b a0 44 39 60 00 	mov    0x603944(%rax),%r12d
  401c09:	e9 e0 fe ff ff       	jmpq   401aee <sigchld_handler+0x13e>
  401c0e:	74 0f                	je     401c1f <sigchld_handler+0x26f>
  401c10:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c13:	75 3c                	jne    401c51 <sigchld_handler+0x2a1>
  401c15:	e8 06 ef ff ff       	callq  400b20 <__errno_location@plt>
  401c1a:	83 38 0a             	cmpl   $0xa,(%rax)
  401c1d:	75 32                	jne    401c51 <sigchld_handler+0x2a1>
  401c1f:	44 8b 05 fa 14 20 00 	mov    0x2014fa(%rip),%r8d        # 603120 <verbose>
  401c26:	45 85 c0             	test   %r8d,%r8d
  401c29:	0f 84 82 fe ff ff    	je     401ab1 <sigchld_handler+0x101>
  401c2f:	bf 3d 23 40 00       	mov    $0x40233d,%edi
  401c34:	e8 07 ef ff ff       	callq  400b40 <puts@plt>
  401c39:	48 83 c4 10          	add    $0x10,%rsp
  401c3d:	5b                   	pop    %rbx
  401c3e:	5d                   	pop    %rbp
  401c3f:	41 5c                	pop    %r12
  401c41:	c3                   	retq   
  401c42:	bf fa 22 40 00       	mov    $0x4022fa,%edi
  401c47:	e8 f4 ee ff ff       	callq  400b40 <puts@plt>
  401c4c:	e9 75 fd ff ff       	jmpq   4019c6 <sigchld_handler+0x16>
  401c51:	bf 22 23 40 00       	mov    $0x402322,%edi
  401c56:	e8 75 f8 ff ff       	callq  4014d0 <unix_error>
  401c5b:	bf 14 23 40 00       	mov    $0x402314,%edi
  401c60:	e8 6b f8 ff ff       	callq  4014d0 <unix_error>
  401c65:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401c6c:	00 00 00 00 

0000000000401c70 <sigint_handler>:
  401c70:	8b 05 aa 14 20 00    	mov    0x2014aa(%rip),%eax        # 603120 <verbose>
  401c76:	53                   	push   %rbx
  401c77:	85 c0                	test   %eax,%eax
  401c79:	75 5d                	jne    401cd8 <sigint_handler+0x68>
  401c7b:	b8 40 39 60 00       	mov    $0x603940,%eax
  401c80:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
  401c84:	74 2a                	je     401cb0 <sigint_handler+0x40>
  401c86:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401c8c:	48 3d 00 7a 60 00    	cmp    $0x607a00,%rax
  401c92:	75 ec                	jne    401c80 <sigint_handler+0x10>
  401c94:	8b 05 86 14 20 00    	mov    0x201486(%rip),%eax        # 603120 <verbose>
  401c9a:	85 c0                	test   %eax,%eax
  401c9c:	74 34                	je     401cd2 <sigint_handler+0x62>
  401c9e:	5b                   	pop    %rbx
  401c9f:	bf 97 23 40 00       	mov    $0x402397,%edi
  401ca4:	e9 97 ee ff ff       	jmpq   400b40 <puts@plt>
  401ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401cb0:	8b 18                	mov    (%rax),%ebx
  401cb2:	85 db                	test   %ebx,%ebx
  401cb4:	7e de                	jle    401c94 <sigint_handler+0x24>
  401cb6:	89 df                	mov    %ebx,%edi
  401cb8:	be 02 00 00 00       	mov    $0x2,%esi
  401cbd:	f7 df                	neg    %edi
  401cbf:	e8 2c ef ff ff       	callq  400bf0 <kill@plt>
  401cc4:	85 c0                	test   %eax,%eax
  401cc6:	78 3f                	js     401d07 <sigint_handler+0x97>
  401cc8:	8b 05 52 14 20 00    	mov    0x201452(%rip),%eax        # 603120 <verbose>
  401cce:	85 c0                	test   %eax,%eax
  401cd0:	75 16                	jne    401ce8 <sigint_handler+0x78>
  401cd2:	5b                   	pop    %rbx
  401cd3:	c3                   	retq   
  401cd4:	0f 1f 40 00          	nopl   0x0(%rax)
  401cd8:	bf 6a 23 40 00       	mov    $0x40236a,%edi
  401cdd:	e8 5e ee ff ff       	callq  400b40 <puts@plt>
  401ce2:	eb 97                	jmp    401c7b <sigint_handler+0xb>
  401ce4:	0f 1f 40 00          	nopl   0x0(%rax)
  401ce8:	31 c0                	xor    %eax,%eax
  401cea:	89 da                	mov    %ebx,%edx
  401cec:	be 40 21 40 00       	mov    $0x402140,%esi
  401cf1:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf6:	e8 25 ef ff ff       	callq  400c20 <__printf_chk@plt>
  401cfb:	8b 05 1f 14 20 00    	mov    0x20141f(%rip),%eax        # 603120 <verbose>
  401d01:	85 c0                	test   %eax,%eax
  401d03:	75 99                	jne    401c9e <sigint_handler+0x2e>
  401d05:	eb cb                	jmp    401cd2 <sigint_handler+0x62>
  401d07:	bf 83 23 40 00       	mov    $0x402383,%edi
  401d0c:	e8 bf f7 ff ff       	callq  4014d0 <unix_error>
  401d11:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401d18:	0f 1f 84 00 00 00 00 
  401d1f:	00 

0000000000401d20 <sigtstp_handler>:
  401d20:	8b 05 fa 13 20 00    	mov    0x2013fa(%rip),%eax        # 603120 <verbose>
  401d26:	53                   	push   %rbx
  401d27:	85 c0                	test   %eax,%eax
  401d29:	0f 85 a9 00 00 00    	jne    401dd8 <sigtstp_handler+0xb8>
  401d2f:	b8 40 39 60 00       	mov    $0x603940,%eax
  401d34:	0f 1f 40 00          	nopl   0x0(%rax)
  401d38:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
  401d3c:	74 32                	je     401d70 <sigtstp_handler+0x50>
  401d3e:	48 05 0c 04 00 00    	add    $0x40c,%rax
  401d44:	48 3d 00 7a 60 00    	cmp    $0x607a00,%rax
  401d4a:	75 ec                	jne    401d38 <sigtstp_handler+0x18>
  401d4c:	8b 05 ce 13 20 00    	mov    0x2013ce(%rip),%eax        # 603120 <verbose>
  401d52:	85 c0                	test   %eax,%eax
  401d54:	74 12                	je     401d68 <sigtstp_handler+0x48>
  401d56:	5b                   	pop    %rbx
  401d57:	bf db 23 40 00       	mov    $0x4023db,%edi
  401d5c:	e9 df ed ff ff       	jmpq   400b40 <puts@plt>
  401d61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401d68:	5b                   	pop    %rbx
  401d69:	c3                   	retq   
  401d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d70:	8b 18                	mov    (%rax),%ebx
  401d72:	85 db                	test   %ebx,%ebx
  401d74:	7e d6                	jle    401d4c <sigtstp_handler+0x2c>
  401d76:	89 df                	mov    %ebx,%edi
  401d78:	be 14 00 00 00       	mov    $0x14,%esi
  401d7d:	f7 df                	neg    %edi
  401d7f:	e8 6c ee ff ff       	callq  400bf0 <kill@plt>
  401d84:	85 c0                	test   %eax,%eax
  401d86:	78 70                	js     401df8 <sigtstp_handler+0xd8>
  401d88:	8b 05 92 13 20 00    	mov    0x201392(%rip),%eax        # 603120 <verbose>
  401d8e:	85 c0                	test   %eax,%eax
  401d90:	74 d6                	je     401d68 <sigtstp_handler+0x48>
  401d92:	ba 40 39 60 00       	mov    $0x603940,%edx
  401d97:	31 c0                	xor    %eax,%eax
  401d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401da0:	3b 1a                	cmp    (%rdx),%ebx
  401da2:	74 43                	je     401de7 <sigtstp_handler+0xc7>
  401da4:	83 c0 01             	add    $0x1,%eax
  401da7:	48 81 c2 0c 04 00 00 	add    $0x40c,%rdx
  401dae:	83 f8 10             	cmp    $0x10,%eax
  401db1:	75 ed                	jne    401da0 <sigtstp_handler+0x80>
  401db3:	31 d2                	xor    %edx,%edx
  401db5:	31 c0                	xor    %eax,%eax
  401db7:	89 d9                	mov    %ebx,%ecx
  401db9:	be 68 21 40 00       	mov    $0x402168,%esi
  401dbe:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc3:	e8 58 ee ff ff       	callq  400c20 <__printf_chk@plt>
  401dc8:	8b 05 52 13 20 00    	mov    0x201352(%rip),%eax        # 603120 <verbose>
  401dce:	85 c0                	test   %eax,%eax
  401dd0:	75 84                	jne    401d56 <sigtstp_handler+0x36>
  401dd2:	eb 94                	jmp    401d68 <sigtstp_handler+0x48>
  401dd4:	0f 1f 40 00          	nopl   0x0(%rax)
  401dd8:	bf af 23 40 00       	mov    $0x4023af,%edi
  401ddd:	e8 5e ed ff ff       	callq  400b40 <puts@plt>
  401de2:	e9 48 ff ff ff       	jmpq   401d2f <sigtstp_handler+0xf>
  401de7:	48 98                	cltq   
  401de9:	48 69 c0 0c 04 00 00 	imul   $0x40c,%rax,%rax
  401df0:	8b 90 44 39 60 00    	mov    0x603944(%rax),%edx
  401df6:	eb bd                	jmp    401db5 <sigtstp_handler+0x95>
  401df8:	bf c9 23 40 00       	mov    $0x4023c9,%edi
  401dfd:	e8 ce f6 ff ff       	callq  4014d0 <unix_error>
  401e02:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401e09:	1f 84 00 00 00 00 00 

0000000000401e10 <app_error>:
  401e10:	48 83 ec 08          	sub    $0x8,%rsp
  401e14:	48 89 f9             	mov    %rdi,%rcx
  401e17:	48 8b 3d e2 12 20 00 	mov    0x2012e2(%rip),%rdi        # 603100 <stdout@@GLIBC_2.2.5>
  401e1e:	ba 20 22 40 00       	mov    $0x402220,%edx
  401e23:	be 01 00 00 00       	mov    $0x1,%esi
  401e28:	31 c0                	xor    %eax,%eax
  401e2a:	e8 41 ee ff ff       	callq  400c70 <__fprintf_chk@plt>
  401e2f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e34:	e8 27 ee ff ff       	callq  400c60 <exit@plt>
  401e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401e40 <Signal>:
  401e40:	53                   	push   %rbx
  401e41:	89 fb                	mov    %edi,%ebx
  401e43:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  401e4a:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  401e4f:	48 89 34 24          	mov    %rsi,(%rsp)
  401e53:	e8 68 ed ff ff       	callq  400bc0 <sigemptyset@plt>
  401e58:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
  401e5f:	00 
  401e60:	48 89 e6             	mov    %rsp,%rsi
  401e63:	89 df                	mov    %ebx,%edi
  401e65:	c7 84 24 88 00 00 00 	movl   $0x10000000,0x88(%rsp)
  401e6c:	00 00 00 10 
  401e70:	e8 eb ec ff ff       	callq  400b60 <sigaction@plt>
  401e75:	85 c0                	test   %eax,%eax
  401e77:	78 11                	js     401e8a <Signal+0x4a>
  401e79:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  401e80:	00 
  401e81:	48 81 c4 40 01 00 00 	add    $0x140,%rsp
  401e88:	5b                   	pop    %rbx
  401e89:	c3                   	retq   
  401e8a:	bf f4 23 40 00       	mov    $0x4023f4,%edi
  401e8f:	e8 3c f6 ff ff       	callq  4014d0 <unix_error>
  401e94:	90                   	nop
  401e95:	90                   	nop
  401e96:	90                   	nop
  401e97:	90                   	nop
  401e98:	90                   	nop
  401e99:	90                   	nop
  401e9a:	90                   	nop
  401e9b:	90                   	nop
  401e9c:	90                   	nop
  401e9d:	90                   	nop
  401e9e:	90                   	nop
  401e9f:	90                   	nop

0000000000401ea0 <__libc_csu_init>:
  401ea0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  401ea5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  401eaa:	48 8d 2d 4f 0f 20 00 	lea    0x200f4f(%rip),%rbp        # 602e00 <__do_global_dtors_aux_fini_array_entry>
  401eb1:	4c 8d 25 40 0f 20 00 	lea    0x200f40(%rip),%r12        # 602df8 <__frame_dummy_init_array_entry>
  401eb8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  401ebd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  401ec2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  401ec7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  401ecc:	48 83 ec 38          	sub    $0x38,%rsp
  401ed0:	4c 29 e5             	sub    %r12,%rbp
  401ed3:	41 89 fd             	mov    %edi,%r13d
  401ed6:	49 89 f6             	mov    %rsi,%r14
  401ed9:	48 c1 fd 03          	sar    $0x3,%rbp
  401edd:	49 89 d7             	mov    %rdx,%r15
  401ee0:	e8 0b ec ff ff       	callq  400af0 <_init>
  401ee5:	48 85 ed             	test   %rbp,%rbp
  401ee8:	74 1c                	je     401f06 <__libc_csu_init+0x66>
  401eea:	31 db                	xor    %ebx,%ebx
  401eec:	0f 1f 40 00          	nopl   0x0(%rax)
  401ef0:	4c 89 fa             	mov    %r15,%rdx
  401ef3:	4c 89 f6             	mov    %r14,%rsi
  401ef6:	44 89 ef             	mov    %r13d,%edi
  401ef9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401efd:	48 83 c3 01          	add    $0x1,%rbx
  401f01:	48 39 eb             	cmp    %rbp,%rbx
  401f04:	75 ea                	jne    401ef0 <__libc_csu_init+0x50>
  401f06:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  401f0b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  401f10:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  401f15:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  401f1a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  401f1f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  401f24:	48 83 c4 38          	add    $0x38,%rsp
  401f28:	c3                   	retq   
  401f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401f30 <__libc_csu_fini>:
  401f30:	f3 c3                	repz retq 
  401f32:	90                   	nop
  401f33:	90                   	nop

Disassembly of section .fini:

0000000000401f34 <_fini>:
  401f34:	48 83 ec 08          	sub    $0x8,%rsp
  401f38:	48 83 c4 08          	add    $0x8,%rsp
  401f3c:	c3                   	retq   
