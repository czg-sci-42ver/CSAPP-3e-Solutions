	.file	"cread-alt.c"
	.text
	.globl	cread
	.type	cread, @function
cread:
.LFB11:
	.cfi_startproc
	movl	$0, %eax
	testq	%rdi, %rdi
	je	.L1
	movq	(%rdi), %rax
.L1:
	ret
	.cfi_endproc
.LFE11:
	.size	cread, .-cread
	.globl	cread_alt
	.type	cread_alt, @function
cread_alt:
.LFB12:
	.cfi_startproc
	movl	$0, %eax
	testq	%rdi, %rdi
	je	.L4
	movq	(%rdi), %rax
.L4:
	ret
	.cfi_endproc
.LFE12:
	.size	cread_alt, .-cread_alt
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
