	.file	"12.34_self_test.c"
	.intel_syntax noprefix
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -m64 -masm=intel -mtune=generic -march=x86-64
	.text
	.section	.rodata
.LC0:
	.string	"begin mul"
	.text
	.globl	mul
	.type	mul, @function
mul:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# arg, arg
# 12.34_self_test.c:19:   printf("begin mul\n");
	lea	rax, .LC0[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	puts@PLT	#
# 12.34_self_test.c:20:   struct arg *tmp_arg = (struct arg *)arg;
	mov	rax, QWORD PTR -40[rbp]	# tmp87, arg
	mov	QWORD PTR -8[rbp], rax	# tmp_arg, tmp87
# 12.34_self_test.c:23:   for (int i = 0; i < ARG_ROW; i++) {
	mov	DWORD PTR -20[rbp], 0	# i,
# 12.34_self_test.c:23:   for (int i = 0; i < ARG_ROW; i++) {
	jmp	.L2	#
.L7:
# 12.34_self_test.c:24:     for (int j = 0; j < N; j++) {
	mov	DWORD PTR -16[rbp], 0	# j,
# 12.34_self_test.c:24:     for (int j = 0; j < N; j++) {
	jmp	.L3	#
.L6:
# 12.34_self_test.c:25:       calc = 0;
	mov	DWORD PTR -24[rbp], 0	# calc,
# 12.34_self_test.c:26:       for (int k = 0; k < M; k++) {
	mov	DWORD PTR -12[rbp], 0	# k,
# 12.34_self_test.c:26:       for (int k = 0; k < M; k++) {
	jmp	.L4	#
.L5:
# 12.34_self_test.c:27:         calc += tmp_arg->mat1[i][k] * tmp_arg->mat2[k][j];
	mov	rcx, QWORD PTR -8[rbp]	# tmp88, tmp_arg
	mov	eax, DWORD PTR -12[rbp]	# tmp90, k
	movsx	rsi, eax	# tmp89, tmp90
	mov	eax, DWORD PTR -20[rbp]	# tmp92, i
	movsx	rdx, eax	# tmp91, tmp92
	mov	rax, rdx	# tmp93, tmp91
	sal	rax, 2	# tmp93,
	add	rax, rdx	# tmp93, tmp91
	sal	rax, 7	# tmp94,
	add	rax, rsi	# tmp95, tmp89
	mov	ecx, DWORD PTR [rcx+rax*4]	# _1, tmp_arg_13->mat1[i_5][k_7]
# 12.34_self_test.c:27:         calc += tmp_arg->mat1[i][k] * tmp_arg->mat2[k][j];
	mov	rsi, QWORD PTR -8[rbp]	# tmp96, tmp_arg
	mov	eax, DWORD PTR -16[rbp]	# tmp98, j
	movsx	rdi, eax	# tmp97, tmp98
	mov	eax, DWORD PTR -12[rbp]	# tmp100, k
	movsx	rdx, eax	# tmp99, tmp100
	mov	rax, rdx	# tmp101, tmp99
	sal	rax, 2	# tmp101,
	add	rax, rdx	# tmp101, tmp99
	sal	rax, 7	# tmp102,
	add	rax, rdi	# tmp103, tmp97
	add	rax, 25600	# tmp104,
	mov	eax, DWORD PTR [rsi+rax*4]	# _2, tmp_arg_13->mat2[k_7][j_6]
# 12.34_self_test.c:27:         calc += tmp_arg->mat1[i][k] * tmp_arg->mat2[k][j];
	imul	eax, ecx	# _3, _1
# 12.34_self_test.c:27:         calc += tmp_arg->mat1[i][k] * tmp_arg->mat2[k][j];
	add	DWORD PTR -24[rbp], eax	# calc, _3
# 12.34_self_test.c:26:       for (int k = 0; k < M; k++) {
	add	DWORD PTR -12[rbp], 1	# k,
.L4:
# 12.34_self_test.c:26:       for (int k = 0; k < M; k++) {
	cmp	DWORD PTR -12[rbp], 639	# k,
	jle	.L5	#,
# 12.34_self_test.c:29:       tmp_arg->return_mat[i][j] = calc;
	mov	rcx, QWORD PTR -8[rbp]	# tmp105, tmp_arg
	mov	eax, DWORD PTR -16[rbp]	# tmp107, j
	movsx	rsi, eax	# tmp106, tmp107
	mov	eax, DWORD PTR -20[rbp]	# tmp109, i
	movsx	rdx, eax	# tmp108, tmp109
	mov	rax, rdx	# tmp110, tmp108
	sal	rax, 2	# tmp110,
	add	rax, rdx	# tmp110, tmp108
	sal	rax, 7	# tmp111,
	add	rax, rsi	# tmp112, tmp106
	lea	rdx, 435200[rax]	# tmp113,
	mov	eax, DWORD PTR -24[rbp]	# tmp114, calc
	mov	DWORD PTR [rcx+rdx*4], eax	# tmp_arg_13->return_mat[i_5][j_6], tmp114
# 12.34_self_test.c:24:     for (int j = 0; j < N; j++) {
	add	DWORD PTR -16[rbp], 1	# j,
.L3:
# 12.34_self_test.c:24:     for (int j = 0; j < N; j++) {
	cmp	DWORD PTR -16[rbp], 639	# j,
	jle	.L6	#,
# 12.34_self_test.c:23:   for (int i = 0; i < ARG_ROW; i++) {
	add	DWORD PTR -20[rbp], 1	# i,
.L2:
# 12.34_self_test.c:23:   for (int i = 0; i < ARG_ROW; i++) {
	cmp	DWORD PTR -20[rbp], 39	# i,
	jle	.L7	#,
# 12.34_self_test.c:39: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	mul, .-mul
	.section	.rodata
.LC1:
	.string	"%ld %ld\n"
.LC2:
	.string	"mat1:"
.LC3:
	.string	"%d "
.LC4:
	.string	"mat2:"
.LC6:
	.string	"%f should be: %d\n"
.LC7:
	.string	"begin"
	.align 8
.LC8:
	.string	"debug sizeof(int)*ARG_ROW*M:%ld %ld ARG_ROW:%d M:%d sizeof(int):%ld\nsizeof(int)*ARG_ROW*N:%ld %d ret_size:%d\n"
.LC9:
	.string	"%dth thread:%p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32875712	#,
	mov	DWORD PTR -32875700[rbp], edi	# argc, argc
	mov	QWORD PTR -32875712[rbp], rsi	# argv, argv
# 12.34_self_test.c:41: int main(int argc, char **argv) {
	mov	rax, QWORD PTR fs:40	# tmp199, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.7109, tmp199
	xor	eax, eax	# tmp199
# 12.34_self_test.c:56:   int ret_size = sizeof(arg_ret_mat[0]);
	mov	DWORD PTR -32875668[rbp], 102400	# ret_size,
# 12.34_self_test.c:63:   unsigned int seed = 100;
	mov	DWORD PTR -32875684[rbp], 100	# seed,
# 12.34_self_test.c:73:   for (i = 0; i < N; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:73:   for (i = 0; i < N; i++) {
	jmp	.L9	#
.L10:
# 12.34_self_test.c:74:     pack1[i] = rand_r(&seed);
	lea	rax, -32875684[rbp]	# tmp100,
	mov	rdi, rax	#, tmp100
	call	rand_r@PLT	#
# 12.34_self_test.c:74:     pack1[i] = rand_r(&seed);
	mov	edx, DWORD PTR -32875680[rbp]	# tmp102, i
	movsx	rdx, edx	# tmp101, tmp102
	mov	DWORD PTR -32875536[rbp+rdx*4], eax	# pack1[i_17], _1
# 12.34_self_test.c:75:     pack2[i] = rand_r(&seed);
	lea	rax, -32875684[rbp]	# tmp103,
	mov	rdi, rax	#, tmp103
	call	rand_r@PLT	#
# 12.34_self_test.c:75:     pack2[i] = rand_r(&seed);
	mov	edx, DWORD PTR -32875680[rbp]	# tmp105, i
	movsx	rdx, edx	# tmp104, tmp105
	mov	DWORD PTR -32872976[rbp+rdx*4], eax	# pack2[i_17], _2
# 12.34_self_test.c:73:   for (i = 0; i < N; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L9:
# 12.34_self_test.c:73:   for (i = 0; i < N; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L10	#,
# 12.34_self_test.c:77:   for (; i < M; i++) {
	jmp	.L11	#
.L12:
# 12.34_self_test.c:78:     pack1[i] = rand_r(&seed);
	lea	rax, -32875684[rbp]	# tmp106,
	mov	rdi, rax	#, tmp106
	call	rand_r@PLT	#
# 12.34_self_test.c:78:     pack1[i] = rand_r(&seed);
	mov	edx, DWORD PTR -32875680[rbp]	# tmp108, i
	movsx	rdx, edx	# tmp107, tmp108
	mov	DWORD PTR -32875536[rbp+rdx*4], eax	# pack1[i_18], _3
# 12.34_self_test.c:77:   for (; i < M; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L11:
# 12.34_self_test.c:77:   for (; i < M; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L12	#,
# 12.34_self_test.c:90:   for (i = 0; i < N; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:90:   for (i = 0; i < N; i++) {
	jmp	.L13	#
.L14:
# 12.34_self_test.c:91:     memcpy(mat1[i], pack1, M * sizeof(int));
	lea	rcx, -32768016[rbp]	# tmp109,
	mov	eax, DWORD PTR -32875680[rbp]	# tmp111, i
	movsx	rdx, eax	# tmp110, tmp111
	mov	rax, rdx	# tmp112, tmp110
	sal	rax, 2	# tmp112,
	add	rax, rdx	# tmp112, tmp110
	sal	rax, 9	# tmp113,
	add	rcx, rax	# _4, tmp112
# 12.34_self_test.c:91:     memcpy(mat1[i], pack1, M * sizeof(int));
	lea	rax, -32875536[rbp]	# tmp114,
	mov	edx, 2560	#,
	mov	rsi, rax	#, tmp114
	mov	rdi, rcx	#, _4
	call	memcpy@PLT	#
# 12.34_self_test.c:90:   for (i = 0; i < N; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L13:
# 12.34_self_test.c:90:   for (i = 0; i < N; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L14	#,
# 12.34_self_test.c:95:   printf("%ld %ld\n", sizeof(pack2), N * sizeof(int));
	mov	edx, 2560	#,
	mov	esi, 2560	#,
	lea	rax, .LC1[rip]	# tmp115,
	mov	rdi, rax	#, tmp115
	mov	eax, 0	#,
	call	printf@PLT	#
# 12.34_self_test.c:97:   for (i = 0; i < M; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:97:   for (i = 0; i < M; i++) {
	jmp	.L15	#
.L16:
# 12.34_self_test.c:98:     memcpy(mat2[i], pack2, N * sizeof(int));
	lea	rcx, -31129616[rbp]	# tmp116,
	mov	eax, DWORD PTR -32875680[rbp]	# tmp118, i
	movsx	rdx, eax	# tmp117, tmp118
	mov	rax, rdx	# tmp119, tmp117
	sal	rax, 2	# tmp119,
	add	rax, rdx	# tmp119, tmp117
	sal	rax, 9	# tmp120,
	add	rcx, rax	# _5, tmp119
# 12.34_self_test.c:98:     memcpy(mat2[i], pack2, N * sizeof(int));
	lea	rax, -32872976[rbp]	# tmp121,
	mov	edx, 2560	#,
	mov	rsi, rax	#, tmp121
	mov	rdi, rcx	#, _5
	call	memcpy@PLT	#
# 12.34_self_test.c:97:   for (i = 0; i < M; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L15:
# 12.34_self_test.c:97:   for (i = 0; i < M; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L16	#,
# 12.34_self_test.c:100:   printf("mat1:\n");
	lea	rax, .LC2[rip]	# tmp122,
	mov	rdi, rax	#, tmp122
	call	puts@PLT	#
# 12.34_self_test.c:101:   for (i = 0; i < N; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:101:   for (i = 0; i < N; i++) {
	jmp	.L17	#
.L20:
# 12.34_self_test.c:102:     for (j = 0; j < M; j++) {
	mov	DWORD PTR -32875676[rbp], 0	# j,
# 12.34_self_test.c:102:     for (j = 0; j < M; j++) {
	jmp	.L18	#
.L19:
# 12.34_self_test.c:103:       printf("%d ", mat1[i][j]);
	mov	eax, DWORD PTR -32875676[rbp]	# tmp124, j
	movsx	rcx, eax	# tmp123, tmp124
	mov	eax, DWORD PTR -32875680[rbp]	# tmp126, i
	movsx	rdx, eax	# tmp125, tmp126
	mov	rax, rdx	# tmp127, tmp125
	sal	rax, 2	# tmp127,
	add	rax, rdx	# tmp127, tmp125
	sal	rax, 7	# tmp128,
	add	rax, rcx	# tmp129, tmp123
	mov	eax, DWORD PTR -32768016[rbp+rax*4]	# _6, mat1[i_21][j_26]
	mov	esi, eax	#, _6
	lea	rax, .LC3[rip]	# tmp130,
	mov	rdi, rax	#, tmp130
	mov	eax, 0	#,
	call	printf@PLT	#
# 12.34_self_test.c:102:     for (j = 0; j < M; j++) {
	add	DWORD PTR -32875676[rbp], 1	# j,
.L18:
# 12.34_self_test.c:102:     for (j = 0; j < M; j++) {
	cmp	DWORD PTR -32875676[rbp], 639	# j,
	jle	.L19	#,
# 12.34_self_test.c:105:     printf("\n");
	mov	edi, 10	#,
	call	putchar@PLT	#
# 12.34_self_test.c:101:   for (i = 0; i < N; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L17:
# 12.34_self_test.c:101:   for (i = 0; i < N; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L20	#,
# 12.34_self_test.c:107:   printf("mat2:\n");
	lea	rax, .LC4[rip]	# tmp131,
	mov	rdi, rax	#, tmp131
	call	puts@PLT	#
# 12.34_self_test.c:108:   for (i = 0; i < M; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:108:   for (i = 0; i < M; i++) {
	jmp	.L21	#
.L24:
# 12.34_self_test.c:109:     for (j = 0; j < N; j++) {
	mov	DWORD PTR -32875676[rbp], 0	# j,
# 12.34_self_test.c:109:     for (j = 0; j < N; j++) {
	jmp	.L22	#
.L23:
# 12.34_self_test.c:110:       printf("%d ", mat2[i][j]);
	mov	eax, DWORD PTR -32875676[rbp]	# tmp133, j
	movsx	rcx, eax	# tmp132, tmp133
	mov	eax, DWORD PTR -32875680[rbp]	# tmp135, i
	movsx	rdx, eax	# tmp134, tmp135
	mov	rax, rdx	# tmp136, tmp134
	sal	rax, 2	# tmp136,
	add	rax, rdx	# tmp136, tmp134
	sal	rax, 7	# tmp137,
	add	rax, rcx	# tmp138, tmp132
	mov	eax, DWORD PTR -31129616[rbp+rax*4]	# _7, mat2[i_22][j_27]
	mov	esi, eax	#, _7
	lea	rax, .LC3[rip]	# tmp139,
	mov	rdi, rax	#, tmp139
	mov	eax, 0	#,
	call	printf@PLT	#
# 12.34_self_test.c:109:     for (j = 0; j < N; j++) {
	add	DWORD PTR -32875676[rbp], 1	# j,
.L22:
# 12.34_self_test.c:109:     for (j = 0; j < N; j++) {
	cmp	DWORD PTR -32875676[rbp], 639	# j,
	jle	.L23	#,
# 12.34_self_test.c:112:     printf("\n");
	mov	edi, 10	#,
	call	putchar@PLT	#
# 12.34_self_test.c:108:   for (i = 0; i < M; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L21:
# 12.34_self_test.c:108:   for (i = 0; i < M; i++) {
	cmp	DWORD PTR -32875680[rbp], 639	# i,
	jle	.L24	#,
# 12.34_self_test.c:114:   printf("%f should be: %d\n", (double)sizeof(mat1) / sizeof(int), N * M);
	mov	rax, QWORD PTR .LC5[rip]	# tmp140,
	mov	esi, 409600	#,
	movq	xmm0, rax	#, tmp140
	lea	rax, .LC6[rip]	# tmp141,
	mov	rdi, rax	#, tmp141
	mov	eax, 1	#,
	call	printf@PLT	#
# 12.34_self_test.c:119:   printf("begin\n");
	lea	rax, .LC7[rip]	# tmp142,
	mov	rdi, rax	#, tmp142
	call	puts@PLT	#
# 12.34_self_test.c:122:   printf("debug sizeof(int)*ARG_ROW*M:%ld %ld ARG_ROW:%d M:%d "
	sub	rsp, 8	#,
	mov	eax, DWORD PTR -32875668[rbp]	# tmp143, ret_size
	push	rax	# tmp143
	push	640	#
	push	102400	#
	mov	r9d, 4	#,
	mov	r8d, 640	#,
	mov	ecx, 40	#,
	mov	edx, 102400	#,
	mov	esi, 102400	#,
	lea	rax, .LC8[rip]	# tmp144,
	mov	rdi, rax	#, tmp144
	mov	eax, 0	#,
	call	printf@PLT	#
	add	rsp, 32	#,
# 12.34_self_test.c:127:   memcpy(arg_mat, mat1, sizeof(arg_mat));
	lea	rax, -32870416[rbp]	# tmp145,
	lea	rcx, -32768016[rbp]	# tmp146,
	mov	edx, 102400	# tmp147,
	mov	rsi, rcx	#, tmp146
	mov	rdi, rax	#, tmp145
	call	memcpy@PLT	#
# 12.34_self_test.c:128:   for (i = 0; i < THREAD_NUM; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:128:   for (i = 0; i < THREAD_NUM; i++) {
	jmp	.L25	#
.L26:
# 12.34_self_test.c:132:     memcpy(thread_arg[i].return_mat, mat1, ret_size);
	mov	eax, DWORD PTR -32875668[rbp]	# tmp150, ret_size
	movsx	rdx, eax	# _8, tmp150
# 12.34_self_test.c:132:     memcpy(thread_arg[i].return_mat, mat1, ret_size);
	lea	rax, -29491216[rbp]	# tmp151,
	mov	ecx, DWORD PTR -32875680[rbp]	# tmp153, i
	movsx	rcx, ecx	# tmp152, tmp153
	imul	rcx, rcx, 1843200	# tmp154, tmp152,
	add	rcx, 1740800	# tmp155,
	add	rcx, rax	# _9, tmp151
# 12.34_self_test.c:132:     memcpy(thread_arg[i].return_mat, mat1, ret_size);
	lea	rax, -32768016[rbp]	# tmp156,
	mov	rsi, rax	#, tmp156
	mov	rdi, rcx	#, _9
	call	memcpy@PLT	#
# 12.34_self_test.c:134:     memcpy(thread_arg[i].mat1, arg_mat, sizeof(arg_mat));
	lea	rdx, -29491216[rbp]	# tmp157,
	mov	eax, DWORD PTR -32875680[rbp]	# tmp159, i
	cdqe
	imul	rax, rax, 1843200	# tmp160, tmp158,
	lea	rcx, [rdx+rax]	# _10,
# 12.34_self_test.c:134:     memcpy(thread_arg[i].mat1, arg_mat, sizeof(arg_mat));
	lea	rax, -32870416[rbp]	# tmp161,
	mov	edx, 102400	#,
	mov	rsi, rax	#, tmp161
	mov	rdi, rcx	#, _10
	call	memcpy@PLT	#
# 12.34_self_test.c:135:     memcpy(thread_arg[i].mat2, mat2, sizeof(mat2));
	lea	rax, -29491216[rbp]	# tmp162,
	mov	edx, DWORD PTR -32875680[rbp]	# tmp164, i
	movsx	rdx, edx	# tmp163, tmp164
	imul	rdx, rdx, 1843200	# tmp165, tmp163,
	add	rdx, 102400	# tmp166,
	lea	rcx, [rax+rdx]	# _11,
# 12.34_self_test.c:135:     memcpy(thread_arg[i].mat2, mat2, sizeof(mat2));
	lea	rax, -31129616[rbp]	# tmp167,
	mov	edx, 1638400	#,
	mov	rsi, rax	#, tmp167
	mov	rdi, rcx	#, _11
	call	memcpy@PLT	#
# 12.34_self_test.c:136:     Pthread_create(&tid[i], NULL, mul, (void *)&thread_arg[i]);
	lea	rdx, -29491216[rbp]	# tmp168,
	mov	eax, DWORD PTR -32875680[rbp]	# tmp170, i
	cdqe
	imul	rax, rax, 1843200	# tmp171, tmp169,
	add	rdx, rax	# _12, tmp171
# 12.34_self_test.c:136:     Pthread_create(&tid[i], NULL, mul, (void *)&thread_arg[i]);
	lea	rax, -32875664[rbp]	# tmp172,
	mov	ecx, DWORD PTR -32875680[rbp]	# tmp174, i
	movsx	rcx, ecx	# tmp173, tmp174
	sal	rcx, 3	# tmp175,
	add	rax, rcx	# _13, tmp175
	mov	rcx, rdx	#, _12
	lea	rdx, mul[rip]	# tmp176,
	mov	esi, 0	#,
	mov	rdi, rax	#, _13
	call	Pthread_create@PLT	#
# 12.34_self_test.c:138:     printf("%dth thread:%p\n", i, &thread_arg[i]);
	lea	rdx, -29491216[rbp]	# tmp177,
	mov	eax, DWORD PTR -32875680[rbp]	# tmp179, i
	cdqe
	imul	rax, rax, 1843200	# tmp180, tmp178,
	add	rdx, rax	# _14, tmp180
	mov	eax, DWORD PTR -32875680[rbp]	# tmp181, i
	mov	esi, eax	#, tmp181
	lea	rax, .LC9[rip]	# tmp182,
	mov	rdi, rax	#, tmp182
	mov	eax, 0	#,
	call	printf@PLT	#
# 12.34_self_test.c:128:   for (i = 0; i < THREAD_NUM; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L25:
# 12.34_self_test.c:128:   for (i = 0; i < THREAD_NUM; i++) {
	cmp	DWORD PTR -32875680[rbp], 15	# i,
	jle	.L26	#,
# 12.34_self_test.c:141:   for (i = 0; i < THREAD_NUM; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:141:   for (i = 0; i < THREAD_NUM; i++) {
	jmp	.L27	#
.L28:
# 12.34_self_test.c:142:     Pthread_join(tid[i], NULL);
	mov	eax, DWORD PTR -32875680[rbp]	# tmp184, i
	cdqe
	mov	rax, QWORD PTR -32875664[rbp+rax*8]	# _15, tid[i_24]
	mov	esi, 0	#,
	mov	rdi, rax	#, _15
	call	Pthread_join@PLT	#
# 12.34_self_test.c:141:   for (i = 0; i < THREAD_NUM; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L27:
# 12.34_self_test.c:141:   for (i = 0; i < THREAD_NUM; i++) {
	cmp	DWORD PTR -32875680[rbp], 15	# i,
	jle	.L28	#,
# 12.34_self_test.c:144:   for (i = 0; i < THREAD_NUM; i++) {
	mov	DWORD PTR -32875680[rbp], 0	# i,
# 12.34_self_test.c:144:   for (i = 0; i < THREAD_NUM; i++) {
	jmp	.L29	#
.L34:
# 12.34_self_test.c:145:     for (j = 0; j < ARG_ROW; j++) {
	mov	DWORD PTR -32875676[rbp], 0	# j,
# 12.34_self_test.c:145:     for (j = 0; j < ARG_ROW; j++) {
	jmp	.L30	#
.L33:
# 12.34_self_test.c:146:       for (int k = 0; k < N; k++) {
	mov	DWORD PTR -32875672[rbp], 0	# k,
# 12.34_self_test.c:146:       for (int k = 0; k < N; k++) {
	jmp	.L31	#
.L32:
# 12.34_self_test.c:147:         printf("%d ", thread_arg[i].return_mat[j][k]);
	mov	eax, DWORD PTR -32875672[rbp]	# tmp186, k
	movsx	rcx, eax	# tmp185, tmp186
	mov	eax, DWORD PTR -32875676[rbp]	# tmp188, j
	movsx	rdx, eax	# tmp187, tmp188
	mov	eax, DWORD PTR -32875680[rbp]	# tmp190, i
	movsx	rsi, eax	# tmp189, tmp190
	mov	rax, rdx	# tmp191, tmp187
	sal	rax, 2	# tmp191,
	add	rax, rdx	# tmp191, tmp187
	sal	rax, 7	# tmp192,
	imul	rdx, rsi, 460800	# tmp193, tmp189,
	add	rax, rdx	# tmp194, tmp193
	add	rax, rcx	# tmp195, tmp185
	add	rax, 435200	# tmp196,
	mov	eax, DWORD PTR -29491216[rbp+rax*4]	# _16, MEM[(struct arg[16] *)_111][i_25].return_mat[j_28][k_29]
	mov	esi, eax	#, _16
	lea	rax, .LC3[rip]	# tmp197,
	mov	rdi, rax	#, tmp197
	mov	eax, 0	#,
	call	printf@PLT	#
# 12.34_self_test.c:146:       for (int k = 0; k < N; k++) {
	add	DWORD PTR -32875672[rbp], 1	# k,
.L31:
# 12.34_self_test.c:146:       for (int k = 0; k < N; k++) {
	cmp	DWORD PTR -32875672[rbp], 639	# k,
	jle	.L32	#,
# 12.34_self_test.c:149:       printf("\n");
	mov	edi, 10	#,
	call	putchar@PLT	#
# 12.34_self_test.c:145:     for (j = 0; j < ARG_ROW; j++) {
	add	DWORD PTR -32875676[rbp], 1	# j,
.L30:
# 12.34_self_test.c:145:     for (j = 0; j < ARG_ROW; j++) {
	cmp	DWORD PTR -32875676[rbp], 39	# j,
	jle	.L33	#,
# 12.34_self_test.c:144:   for (i = 0; i < THREAD_NUM; i++) {
	add	DWORD PTR -32875680[rbp], 1	# i,
.L29:
# 12.34_self_test.c:144:   for (i = 0; i < THREAD_NUM; i++) {
	cmp	DWORD PTR -32875680[rbp], 15	# i,
	jle	.L34	#,
	mov	eax, 0	# _70,
# 12.34_self_test.c:152: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp200, D.7109
	sub	rdx, QWORD PTR fs:40	# tmp200, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L36	#,
	call	__stack_chk_fail@PLT	#
.L36:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1092157440
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
