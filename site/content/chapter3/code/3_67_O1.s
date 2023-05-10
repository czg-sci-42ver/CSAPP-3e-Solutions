	.file	"3_67.c"
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O1
	.text
	.globl	process
	.type	process, @function
process:
.LFB22:
	.cfi_startproc
	movq	%rdi, %rax	# tmp89, .result_ptr
# 3_67.c:18: 	r.q = *s.p;
	movq	24(%rsp), %rdx	# s.p, s.p
	movq	(%rdx), %rdx	# *_3, _4
# 3_67.c:19: 	return r;
	movq	16(%rsp), %rcx	# s.a[1], s.a[1]
	movq	%rcx, (%rdi)	# s.a[1], <retval>.u[0]
	movq	8(%rsp), %rcx	# s.a[0], _2
	movq	%rcx, 8(%rdi)	# _2, <retval>.u[1]
	movq	%rdx, 16(%rdi)	# _4, <retval>.q
# 3_67.c:20: }
	ret	
	.cfi_endproc
.LFE22:
	.size	process, .-process
	.globl	eval
	.type	eval, @function
eval:
.LFB23:
	.cfi_startproc
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	addq	%rsi, %rdi	# tmp90, tmp88
# 3_67.c:29: 	return r.u[0] + r.u[1] + r.q;
	leaq	(%rdi,%rdx), %rax	#, tmp87
# 3_67.c:30: }
	ret	
	.cfi_endproc
.LFE23:
	.size	eval, .-eval
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
# 3_67.c:33: 	long test=eval(3, 4, 5);
	movl	$5, %edx	#,
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	eval	#
# 3_67.c:35: }
	ret	
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
