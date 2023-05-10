	.file	"3_63.c"
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3
	.text
	.p2align 4
	.globl	switch_prob
	.type	switch_prob, @function
switch_prob:
.LFB22:
	.cfi_startproc
# 3_63.c:6:   switch (n) {
	leaq	-60(%rsi), %rax	#, tmp86
	cmpq	$5, %rax	#, tmp86
	ja	.L2	#,
	leaq	.L4(%rip), %rdx	#, tmp87
	movslq	(%rdx,%rax,4), %rax	#, tmp89
	addq	%rdx, %rax	# tmp87, tmp90
	jmp	*%rax	# tmp90
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L7-.L4
	.long	.L2-.L4
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
	.p2align 4,,10
	.p2align 3
.L5:
# 3_63.c:16:       x = (x << 4) - x;
	movq	%rdi, %rax	# x, _1
	salq	$4, %rax	#, _1
# 3_63.c:16:       x = (x << 4) - x;
	subq	%rdi, %rax	# x, _1
	movq	%rax, %rdi	# _1, x
.L3:
# 3_63.c:18:       x *= x;
	imulq	%rdi, %rdi	# x, x
.L2:
# 3_63.c:20:       result = x + 0x4b;
	leaq	75(%rdi), %rax	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
# 3_63.c:10:       result = 8 * n;
	leaq	0(,%rsi,8), %rax	#, <retval>
# 3_63.c:11:       break;
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# 3_63.c:6:   switch (n) {
	movl	$7, %eax	#, <retval>
# 3_63.c:23: }
	ret	
	.cfi_endproc
.LFE22:
	.size	switch_prob, .-switch_prob
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
# 3_63.c:25: int main(int argc, char *argv[]) {}
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
