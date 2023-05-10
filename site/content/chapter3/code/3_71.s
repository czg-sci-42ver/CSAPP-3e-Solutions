	.file	"3_67.c"
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0
	.text
	.globl	process
	.type	process, @function
process:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# .result_ptr, .result_ptr
# 3_67.c:14: strB process(strA s) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp89
	movq	%rax, -8(%rbp)	# tmp89, D.2942
	xorl	%eax, %eax	# tmp89
# 3_67.c:16: 	r.u[0] = s.a[1];
	movq	24(%rbp), %rax	# s.a[1], _1
# 3_67.c:16: 	r.u[0] = s.a[1];
	movq	%rax, -32(%rbp)	# _1, r.u[0]
# 3_67.c:17: 	r.u[1] = s.a[0];
	movq	16(%rbp), %rax	# s.a[0], _2
# 3_67.c:17: 	r.u[1] = s.a[0];
	movq	%rax, -24(%rbp)	# _2, r.u[1]
# 3_67.c:18: 	r.q = *s.p;
	movq	32(%rbp), %rax	# s.p, _3
# 3_67.c:18: 	r.q = *s.p;
	movq	(%rax), %rax	# *_3, _4
# 3_67.c:18: 	r.q = *s.p;
	movq	%rax, -16(%rbp)	# _4, r.q
# 3_67.c:19: 	return r;
	movq	-40(%rbp), %rcx	# .result_ptr, tmp86
	movq	-32(%rbp), %rax	# r, tmp87
	movq	-24(%rbp), %rdx	# r,
	movq	%rax, (%rcx)	# tmp87, <retval>
	movq	%rdx, 8(%rcx)	#, <retval>
	movq	-16(%rbp), %rax	# r, tmp88
	movq	%rax, 16(%rcx)	# tmp88, <retval>
# 3_67.c:20: }
	movq	-8(%rbp), %rax	# D.2942, tmp90
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	movq	-40(%rbp), %rax	# .result_ptr,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	process, .-process
	.globl	eval
	.type	eval, @function
eval:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# y, y
	movq	%rdx, -88(%rbp)	# z, z
# 3_67.c:23: long eval(long x, long y, long z) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.2945
	xorl	%eax, %eax	# tmp96
# 3_67.c:25: 	s.a[0] = x;
	movq	-72(%rbp), %rax	# x, tmp88
	movq	%rax, -64(%rbp)	# tmp88, s.a[0]
# 3_67.c:26: 	s.a[1] = y;
	movq	-80(%rbp), %rax	# y, tmp89
	movq	%rax, -56(%rbp)	# tmp89, s.a[1]
# 3_67.c:27: 	s.p = &z;
	leaq	-88(%rbp), %rax	#, tmp90
	movq	%rax, -48(%rbp)	# tmp90, s.p
# 3_67.c:28: 	strB r = process(s);
	leaq	-32(%rbp), %rsi	#, tmp91
	subq	$8, %rsp	#,
	subq	$24, %rsp	#,
	movq	%rsp, %rcx	#, tmp92
	movq	-64(%rbp), %rax	# s, tmp93
	movq	-56(%rbp), %rdx	# s,
	movq	%rax, (%rcx)	# tmp93,
	movq	%rdx, 8(%rcx)	#,
	movq	-48(%rbp), %rax	# s, tmp94
	movq	%rax, 16(%rcx)	# tmp94,
	movq	%rsi, %rdi	# tmp91,
	call	process	#
	addq	$32, %rsp	#,
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	movq	-32(%rbp), %rdx	# r.u[0], _1
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	movq	-24(%rbp), %rax	# r.u[1], _2
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	addq	%rax, %rdx	# _2, _3
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	movq	-16(%rbp), %rax	# r.q, _4
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	addq	%rdx, %rax	# _3, _12
# 3_67.c:30: }
	movq	-8(%rbp), %rdx	# D.2945, tmp97
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	eval, .-eval
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# argc, argc
	movq	%rsi, -32(%rbp)	# argv, argv
# 3_67.c:33: 	long test=eval(3, 4, 5);
	movl	$5, %edx	#,
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	eval	#
	movq	%rax, -8(%rbp)	# tmp84, test
# 3_67.c:34: 	return test;
	movq	-8(%rbp), %rax	# test, tmp85
# 3_67.c:35: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
