	.file	"3_34.c"
	.text
	.globl	test_mul_args
	.type	test_mul_args, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	rrmovq %rdi,%rax
	addq %rsi,%rax
	irmovq $-1,%rcx
	xorq %rdx,%rdx ; i
	jmp .L4
.L5:
# 3_34.c:11:         test[i]=i;
	subq %rcx,%rdx
	mrmovq 8*()(%rdi)
.L4:
	addq %rcx,%rax
	xorq %rax,%rax
	jne .L5
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
