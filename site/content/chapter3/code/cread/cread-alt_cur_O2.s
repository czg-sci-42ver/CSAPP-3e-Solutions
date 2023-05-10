	.file	"cread-alt.c"
	.text
	.p2align 4
	.globl	cread
	.type	cread, @function
cread:
.LFB11:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L1
	movq	(%rdi), %rax
.L1:
	ret
	.cfi_endproc
.LFE11:
	.size	cread, .-cread
	.p2align 4
	.globl	cread_alt
	.type	cread_alt, @function
cread_alt:
.LFB16:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L6
	movq	(%rdi), %rax
.L6:
	ret
	.cfi_endproc
.LFE16:
	.size	cread_alt, .-cread_alt
	.p2align 4
	.globl	cread_alt_test
	.type	cread_alt_test, @function
cread_alt_test:
.LFB13:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L10
	movq	(%rdi), %rax
.L10:
	ret
	.cfi_endproc
.LFE13:
	.size	cread_alt_test, .-cread_alt_test
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
