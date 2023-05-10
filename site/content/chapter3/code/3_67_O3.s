	.file	"3_67.c"
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3
	.text
	.p2align 4
	.globl	process
	.type	process, @function
process:
.LFB22:
	.cfi_startproc
# 3_67.c:18: 	r.q = *s.p;
	movq	24(%rsp), %rdx	# s.p, s.p
# 3_67.c:17: 	r.u[1] = s.a[0];
	movdqu	8(%rsp), %xmm0	# MEM <vector(2) long int> [(long int *)&s], vect__2.20
# 3_67.c:14: strB process(strA s) {
	movq	%rdi, %rax	# tmp90, .result_ptr
# 3_67.c:18: 	r.q = *s.p;
	movq	(%rdx), %rdx	# *_3, _4
# 3_67.c:17: 	r.u[1] = s.a[0];
	shufpd	$1, %xmm0, %xmm0	#, tmp93, vect__2.20
# 3_67.c:19: 	return r;
	movups	%xmm0, (%rdi)	# vect__2.20, MEM <vector(2) long int> [(long int *)&<retval>]
	movq	%rdx, 16(%rdi)	# _4, <retval>.q
# 3_67.c:20: }
	ret	
	.cfi_endproc
.LFE22:
	.size	process, .-process
	.p2align 4
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
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
# 3_67.c:35: }
	movl	$12, %eax	#,
	ret	
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
