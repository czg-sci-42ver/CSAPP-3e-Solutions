	.file	"csapp.c"
	.intel_syntax noprefix
# GNU C17 (GCC) version 12.2.1 20230201 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.1 20230201, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -m64 -masm=intel -mtune=generic -march=x86-64
	.text
	.section	.rodata
.LC0:
	.string	"%s: %s\n"
	.text
	.globl	unix_error
	.type	unix_error, @function
unix_error:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# msg, msg
# csapp.c:34:   fprintf(stderr, "%s: %s\n", msg, strerror(errno));
	call	__errno_location@PLT	#
# csapp.c:34:   fprintf(stderr, "%s: %s\n", msg, strerror(errno));
	mov	eax, DWORD PTR [rax]	# _2, *_1
	mov	edi, eax	#, _2
	call	strerror@PLT	#
	mov	rcx, rax	# _3,
	mov	rax, QWORD PTR stderr[rip]	# stderr.0_4, stderr
	mov	rdx, QWORD PTR -8[rbp]	# tmp86, msg
	lea	rsi, .LC0[rip]	# tmp87,
	mov	rdi, rax	#, stderr.0_4
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:35:   exit(0);
	mov	edi, 0	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6:
	.size	unix_error, .-unix_error
	.globl	posix_error
	.type	posix_error, @function
posix_error:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# code, code
	mov	QWORD PTR -16[rbp], rsi	# msg, msg
# csapp.c:41:   fprintf(stderr, "%s: %s\n", msg, strerror(code));
	mov	eax, DWORD PTR -4[rbp]	# tmp84, code
	mov	edi, eax	#, tmp84
	call	strerror@PLT	#
	mov	rcx, rax	# _1,
	mov	rax, QWORD PTR stderr[rip]	# stderr.1_2, stderr
	mov	rdx, QWORD PTR -16[rbp]	# tmp85, msg
	lea	rsi, .LC0[rip]	# tmp86,
	mov	rdi, rax	#, stderr.1_2
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:42:   exit(0);
	mov	edi, 0	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE7:
	.size	posix_error, .-posix_error
	.globl	gai_error
	.type	gai_error, @function
gai_error:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# code, code
	mov	QWORD PTR -16[rbp], rsi	# msg, msg
# csapp.c:47:   fprintf(stderr, "%s: %s\n", msg, gai_strerror(code));
	mov	eax, DWORD PTR -4[rbp]	# tmp84, code
	mov	edi, eax	#, tmp84
	call	gai_strerror@PLT	#
	mov	rcx, rax	# _1,
	mov	rax, QWORD PTR stderr[rip]	# stderr.2_2, stderr
	mov	rdx, QWORD PTR -16[rbp]	# tmp85, msg
	lea	rsi, .LC0[rip]	# tmp86,
	mov	rdi, rax	#, stderr.2_2
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:48:   exit(0);
	mov	edi, 0	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE8:
	.size	gai_error, .-gai_error
	.section	.rodata
.LC1:
	.string	"%s\n"
	.text
	.globl	app_error
	.type	app_error, @function
app_error:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# msg, msg
# csapp.c:53:   fprintf(stderr, "%s\n", msg);
	mov	rax, QWORD PTR stderr[rip]	# stderr.3_1, stderr
	mov	rdx, QWORD PTR -8[rbp]	# tmp83, msg
	lea	rcx, .LC1[rip]	# tmp84,
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, stderr.3_1
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:54:   exit(0);
	mov	edi, 0	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE9:
	.size	app_error, .-app_error
	.globl	dns_error
	.type	dns_error, @function
dns_error:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# msg, msg
# csapp.c:60:   fprintf(stderr, "%s\n", msg);
	mov	rax, QWORD PTR stderr[rip]	# stderr.4_1, stderr
	mov	rdx, QWORD PTR -8[rbp]	# tmp83, msg
	lea	rcx, .LC1[rip]	# tmp84,
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, stderr.4_1
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:61:   exit(0);
	mov	edi, 0	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE10:
	.size	dns_error, .-dns_error
	.section	.rodata
.LC2:
	.string	"Fork error"
	.text
	.globl	Fork
	.type	Fork, @function
Fork:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# csapp.c:72:   if ((pid = fork()) < 0)
	call	fork@PLT	#
	mov	DWORD PTR -4[rbp], eax	# pid, tmp85
# csapp.c:72:   if ((pid = fork()) < 0)
	cmp	DWORD PTR -4[rbp], 0	# pid,
	jns	.L7	#,
# csapp.c:73:     unix_error("Fork error");
	lea	rax, .LC2[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L7:
# csapp.c:74:   return pid;
	mov	eax, DWORD PTR -4[rbp]	# _6, pid
# csapp.c:75: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	Fork, .-Fork
	.section	.rodata
.LC3:
	.string	"Execve error"
	.text
	.globl	Execve
	.type	Execve, @function
Execve:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -8[rbp], rdi	# filename, filename
	mov	QWORD PTR -16[rbp], rsi	# argv, argv
	mov	QWORD PTR -24[rbp], rdx	# envp, envp
# csapp.c:79:   if (execve(filename, argv, envp) < 0)
	mov	rdx, QWORD PTR -24[rbp]	# tmp83, envp
	mov	rcx, QWORD PTR -16[rbp]	# tmp84, argv
	mov	rax, QWORD PTR -8[rbp]	# tmp85, filename
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	execve@PLT	#
# csapp.c:79:   if (execve(filename, argv, envp) < 0)
	test	eax, eax	# _1
	jns	.L11	#,
# csapp.c:80:     unix_error("Execve error");
	lea	rax, .LC3[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L11:
# csapp.c:81: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	Execve, .-Execve
	.section	.rodata
.LC4:
	.string	"Wait error"
	.text
	.globl	Wait
	.type	Wait, @function
Wait:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# status, status
# csapp.c:87:   if ((pid = wait(status)) < 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, status
	mov	rdi, rax	#, tmp84
	call	wait@PLT	#
	mov	DWORD PTR -4[rbp], eax	# pid, tmp85
# csapp.c:87:   if ((pid = wait(status)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# pid,
	jns	.L13	#,
# csapp.c:88:     unix_error("Wait error");
	lea	rax, .LC4[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L13:
# csapp.c:89:   return pid;
	mov	eax, DWORD PTR -4[rbp]	# _7, pid
# csapp.c:90: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	Wait, .-Wait
	.section	.rodata
.LC5:
	.string	"Waitpid error"
	.text
	.globl	Waitpid
	.type	Waitpid, @function
Waitpid:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# pid, pid
	mov	QWORD PTR -32[rbp], rsi	# iptr, iptr
	mov	DWORD PTR -24[rbp], edx	# options, options
# csapp.c:96:   if ((retpid = waitpid(pid, iptr, options)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp84, options
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, iptr
	mov	eax, DWORD PTR -20[rbp]	# tmp86, pid
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	waitpid@PLT	#
	mov	DWORD PTR -4[rbp], eax	# retpid, tmp87
# csapp.c:96:   if ((retpid = waitpid(pid, iptr, options)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# retpid,
	jns	.L16	#,
# csapp.c:97:     unix_error("Waitpid error");
	lea	rax, .LC5[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L16:
# csapp.c:98:   return (retpid);
	mov	eax, DWORD PTR -4[rbp]	# _9, retpid
# csapp.c:99: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	Waitpid, .-Waitpid
	.section	.rodata
.LC6:
	.string	"Kill error"
	.text
	.globl	Kill
	.type	Kill, @function
Kill:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# pid, pid
	mov	DWORD PTR -24[rbp], esi	# signum, signum
# csapp.c:105:   if ((rc = kill(pid, signum)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp82, signum
	mov	eax, DWORD PTR -20[rbp]	# tmp83, pid
	mov	esi, edx	#, tmp82
	mov	edi, eax	#, tmp83
	call	kill@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp84
# csapp.c:105:   if ((rc = kill(pid, signum)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L20	#,
# csapp.c:106:     unix_error("Kill error");
	lea	rax, .LC6[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L20:
# csapp.c:107: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	Kill, .-Kill
	.globl	Pause
	.type	Pause, @function
Pause:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# csapp.c:111:   (void)pause();
	call	pause@PLT	#
# csapp.c:112:   return;
	nop	
# csapp.c:113: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	Pause, .-Pause
	.globl	Sleep
	.type	Sleep, @function
Sleep:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# secs, secs
# csapp.c:118:   if ((rc = sleep(secs)) < 0)
	mov	eax, DWORD PTR -20[rbp]	# tmp84, secs
	mov	edi, eax	#, tmp84
	call	sleep@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:120:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _5, rc
# csapp.c:121: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	Sleep, .-Sleep
	.globl	Alarm
	.type	Alarm, @function
Alarm:
.LFB18:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# seconds, seconds
# csapp.c:123: unsigned int Alarm(unsigned int seconds) { return alarm(seconds); }
	mov	eax, DWORD PTR -4[rbp]	# tmp84, seconds
	mov	edi, eax	#, tmp84
	call	alarm@PLT	#
# csapp.c:123: unsigned int Alarm(unsigned int seconds) { return alarm(seconds); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	Alarm, .-Alarm
	.section	.rodata
.LC7:
	.string	"Setpgid error"
	.text
	.globl	Setpgid
	.type	Setpgid, @function
Setpgid:
.LFB19:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# pid, pid
	mov	DWORD PTR -24[rbp], esi	# pgid, pgid
# csapp.c:128:   if ((rc = setpgid(pid, pgid)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp82, pgid
	mov	eax, DWORD PTR -20[rbp]	# tmp83, pid
	mov	esi, edx	#, tmp82
	mov	edi, eax	#, tmp83
	call	setpgid@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp84
# csapp.c:128:   if ((rc = setpgid(pid, pgid)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L30	#,
# csapp.c:129:     unix_error("Setpgid error");
	lea	rax, .LC7[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
# csapp.c:130:   return;
	nop	
.L30:
	nop	
# csapp.c:131: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	Setpgid, .-Setpgid
	.globl	Getpgrp
	.type	Getpgrp, @function
Getpgrp:
.LFB20:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# csapp.c:133: pid_t Getpgrp(void) { return getpgrp(); }
	call	getpgrp@PLT	#
# csapp.c:133: pid_t Getpgrp(void) { return getpgrp(); }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	Getpgrp, .-Getpgrp
	.section	.rodata
.LC8:
	.string	"Signal error"
	.text
	.globl	Signal
	.type	Signal, @function
Signal:
.LFB21:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 336	#,
	mov	DWORD PTR -324[rbp], edi	# signum, signum
	mov	QWORD PTR -336[rbp], rsi	# handler, handler
# csapp.c:140: handler_t *Signal(int signum, handler_t *handler) {
	mov	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.7935, tmp93
	xor	eax, eax	# tmp93
# csapp.c:143:   action.sa_handler = handler;
	mov	rax, QWORD PTR -336[rbp]	# tmp85, handler
	mov	QWORD PTR -320[rbp], rax	# action.__sigaction_handler.sa_handler, tmp85
# csapp.c:144:   sigemptyset(&action.sa_mask); /* Block sigs of type being handled */
	lea	rax, -320[rbp]	# tmp86,
	add	rax, 8	# tmp87,
	mov	rdi, rax	#, tmp87
	call	sigemptyset@PLT	#
# csapp.c:145:   action.sa_flags = SA_RESTART; /* Restart syscalls if possible */
	mov	DWORD PTR -184[rbp], 268435456	# action.sa_flags,
# csapp.c:147:   if (sigaction(signum, &action, &old_action) < 0)
	lea	rdx, -160[rbp]	# tmp88,
	lea	rcx, -320[rbp]	# tmp89,
	mov	eax, DWORD PTR -324[rbp]	# tmp90, signum
	mov	rsi, rcx	#, tmp89
	mov	edi, eax	#, tmp90
	call	sigaction@PLT	#
# csapp.c:147:   if (sigaction(signum, &action, &old_action) < 0)
	test	eax, eax	# _1
	jns	.L34	#,
# csapp.c:148:     unix_error("Signal error");
	lea	rax, .LC8[rip]	# tmp91,
	mov	rdi, rax	#, tmp91
	call	unix_error	#
.L34:
# csapp.c:149:   return (old_action.sa_handler);
	mov	rax, QWORD PTR -160[rbp]	# _11, old_action.__sigaction_handler.sa_handler
# csapp.c:150: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp94, D.7935
	sub	rdx, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L36	#,
	call	__stack_chk_fail@PLT	#
.L36:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	Signal, .-Signal
	.section	.rodata
.LC9:
	.string	"Sigprocmask error"
	.text
	.globl	Sigprocmask
	.type	Sigprocmask, @function
Sigprocmask:
.LFB22:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -4[rbp], edi	# how, how
	mov	QWORD PTR -16[rbp], rsi	# set, set
	mov	QWORD PTR -24[rbp], rdx	# oldset, oldset
# csapp.c:154:   if (sigprocmask(how, set, oldset) < 0)
	mov	rdx, QWORD PTR -24[rbp]	# tmp83, oldset
	mov	rcx, QWORD PTR -16[rbp]	# tmp84, set
	mov	eax, DWORD PTR -4[rbp]	# tmp85, how
	mov	rsi, rcx	#, tmp84
	mov	edi, eax	#, tmp85
	call	sigprocmask@PLT	#
# csapp.c:154:   if (sigprocmask(how, set, oldset) < 0)
	test	eax, eax	# _1
	jns	.L40	#,
# csapp.c:155:     unix_error("Sigprocmask error");
	lea	rax, .LC9[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
# csapp.c:156:   return;
	nop	
.L40:
	nop	
# csapp.c:157: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	Sigprocmask, .-Sigprocmask
	.section	.rodata
.LC10:
	.string	"Sigemptyset error"
	.text
	.globl	Sigemptyset
	.type	Sigemptyset, @function
Sigemptyset:
.LFB23:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# set, set
# csapp.c:160:   if (sigemptyset(set) < 0)
	mov	rax, QWORD PTR -8[rbp]	# tmp83, set
	mov	rdi, rax	#, tmp83
	call	sigemptyset@PLT	#
# csapp.c:160:   if (sigemptyset(set) < 0)
	test	eax, eax	# _1
	jns	.L44	#,
# csapp.c:161:     unix_error("Sigemptyset error");
	lea	rax, .LC10[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
# csapp.c:162:   return;
	nop	
.L44:
	nop	
# csapp.c:163: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	Sigemptyset, .-Sigemptyset
	.section	.rodata
.LC11:
	.string	"Sigfillset error"
	.text
	.globl	Sigfillset
	.type	Sigfillset, @function
Sigfillset:
.LFB24:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# set, set
# csapp.c:166:   if (sigfillset(set) < 0)
	mov	rax, QWORD PTR -8[rbp]	# tmp83, set
	mov	rdi, rax	#, tmp83
	call	sigfillset@PLT	#
# csapp.c:166:   if (sigfillset(set) < 0)
	test	eax, eax	# _1
	jns	.L48	#,
# csapp.c:167:     unix_error("Sigfillset error");
	lea	rax, .LC11[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
# csapp.c:168:   return;
	nop	
.L48:
	nop	
# csapp.c:169: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	Sigfillset, .-Sigfillset
	.section	.rodata
.LC12:
	.string	"Sigaddset error"
	.text
	.globl	Sigaddset
	.type	Sigaddset, @function
Sigaddset:
.LFB25:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# set, set
	mov	DWORD PTR -12[rbp], esi	# signum, signum
# csapp.c:172:   if (sigaddset(set, signum) < 0)
	mov	edx, DWORD PTR -12[rbp]	# tmp83, signum
	mov	rax, QWORD PTR -8[rbp]	# tmp84, set
	mov	esi, edx	#, tmp83
	mov	rdi, rax	#, tmp84
	call	sigaddset@PLT	#
# csapp.c:172:   if (sigaddset(set, signum) < 0)
	test	eax, eax	# _1
	jns	.L52	#,
# csapp.c:173:     unix_error("Sigaddset error");
	lea	rax, .LC12[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
# csapp.c:174:   return;
	nop	
.L52:
	nop	
# csapp.c:175: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	Sigaddset, .-Sigaddset
	.section	.rodata
.LC13:
	.string	"Sigdelset error"
	.text
	.globl	Sigdelset
	.type	Sigdelset, @function
Sigdelset:
.LFB26:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# set, set
	mov	DWORD PTR -12[rbp], esi	# signum, signum
# csapp.c:178:   if (sigdelset(set, signum) < 0)
	mov	edx, DWORD PTR -12[rbp]	# tmp83, signum
	mov	rax, QWORD PTR -8[rbp]	# tmp84, set
	mov	esi, edx	#, tmp83
	mov	rdi, rax	#, tmp84
	call	sigdelset@PLT	#
# csapp.c:178:   if (sigdelset(set, signum) < 0)
	test	eax, eax	# _1
	jns	.L56	#,
# csapp.c:179:     unix_error("Sigdelset error");
	lea	rax, .LC13[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
# csapp.c:180:   return;
	nop	
.L56:
	nop	
# csapp.c:181: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	Sigdelset, .-Sigdelset
	.section	.rodata
.LC14:
	.string	"Sigismember error"
	.text
	.globl	Sigismember
	.type	Sigismember, @function
Sigismember:
.LFB27:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# set, set
	mov	DWORD PTR -28[rbp], esi	# signum, signum
# csapp.c:185:   if ((rc = sigismember(set, signum)) < 0)
	mov	edx, DWORD PTR -28[rbp]	# tmp84, signum
	mov	rax, QWORD PTR -24[rbp]	# tmp85, set
	mov	esi, edx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	sigismember@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp86
# csapp.c:185:   if ((rc = sigismember(set, signum)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L58	#,
# csapp.c:186:     unix_error("Sigismember error");
	lea	rax, .LC14[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L58:
# csapp.c:187:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _8, rc
# csapp.c:188: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	Sigismember, .-Sigismember
	.section	.rodata
.LC15:
	.string	"Sigsuspend error"
	.text
	.globl	Sigsuspend
	.type	Sigsuspend, @function
Sigsuspend:
.LFB28:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# set, set
# csapp.c:191:   int rc = sigsuspend(set); /* always returns -1 */
	mov	rax, QWORD PTR -24[rbp]	# tmp86, set
	mov	rdi, rax	#, tmp86
	call	sigsuspend@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp87
# csapp.c:192:   if (errno != EINTR)
	call	__errno_location@PLT	#
	mov	eax, DWORD PTR [rax]	# _2, *_1
# csapp.c:192:   if (errno != EINTR)
	cmp	eax, 4	# _2,
	je	.L61	#,
# csapp.c:193:     unix_error("Sigsuspend error");
	lea	rax, .LC15[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L61:
# csapp.c:194:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _9, rc
# csapp.c:195: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	Sigsuspend, .-Sigsuspend
	.type	sio_reverse, @function
sio_reverse:
.LFB29:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# s, s
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	mov	DWORD PTR -12[rbp], 0	# i,
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	mov	rax, QWORD PTR -24[rbp]	# tmp96, s
	mov	rdi, rax	#, tmp96
	call	strlen@PLT	#
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	sub	eax, 1	# _3,
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	mov	DWORD PTR -8[rbp], eax	# j, _3
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	jmp	.L64	#
.L65:
# csapp.c:210:     c = s[i];
	mov	eax, DWORD PTR -12[rbp]	# tmp97, i
	movsx	rdx, eax	# _4, tmp97
	mov	rax, QWORD PTR -24[rbp]	# tmp98, s
	add	rax, rdx	# _5, _4
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# csapp.c:210:     c = s[i];
	movsx	eax, al	# tmp99, _6
	mov	DWORD PTR -4[rbp], eax	# c, tmp99
# csapp.c:211:     s[i] = s[j];
	mov	eax, DWORD PTR -8[rbp]	# tmp100, j
	movsx	rdx, eax	# _7, tmp100
	mov	rax, QWORD PTR -24[rbp]	# tmp101, s
	add	rax, rdx	# _8, _7
# csapp.c:211:     s[i] = s[j];
	mov	edx, DWORD PTR -12[rbp]	# tmp102, i
	movsx	rcx, edx	# _9, tmp102
	mov	rdx, QWORD PTR -24[rbp]	# tmp103, s
	add	rdx, rcx	# _10, _9
# csapp.c:211:     s[i] = s[j];
	movzx	eax, BYTE PTR [rax]	# _11, *_8
# csapp.c:211:     s[i] = s[j];
	mov	BYTE PTR [rdx], al	# *_10, _11
# csapp.c:212:     s[j] = c;
	mov	eax, DWORD PTR -8[rbp]	# tmp104, j
	movsx	rdx, eax	# _12, tmp104
	mov	rax, QWORD PTR -24[rbp]	# tmp105, s
	add	rax, rdx	# _13, _12
# csapp.c:212:     s[j] = c;
	mov	edx, DWORD PTR -4[rbp]	# tmp106, c
	mov	BYTE PTR [rax], dl	# *_13, _14
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	add	DWORD PTR -12[rbp], 1	# i,
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	sub	DWORD PTR -8[rbp], 1	# j,
.L64:
# csapp.c:209:   for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
	mov	eax, DWORD PTR -12[rbp]	# tmp107, i
	cmp	eax, DWORD PTR -8[rbp]	# tmp107, j
	jl	.L65	#,
# csapp.c:214: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	sio_reverse, .-sio_reverse
	.type	sio_ltoa, @function
sio_ltoa:
.LFB30:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# v, v
	mov	QWORD PTR -32[rbp], rsi	# s, s
	mov	DWORD PTR -36[rbp], edx	# b, b
# csapp.c:218:   int c, i = 0;
	mov	DWORD PTR -12[rbp], 0	# i,
# csapp.c:219:   int neg = v < 0;
	mov	rax, QWORD PTR -24[rbp]	# tmp100, v
	shr	rax, 63	# tmp99,
# csapp.c:219:   int neg = v < 0;
	movzx	eax, al	# tmp101, _1
	mov	DWORD PTR -8[rbp], eax	# neg, tmp101
# csapp.c:221:   if (neg)
	cmp	DWORD PTR -8[rbp], 0	# neg,
	je	.L70	#,
# csapp.c:222:     v = -v;
	neg	QWORD PTR -24[rbp]	# v
.L70:
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	eax, DWORD PTR -36[rbp]	# tmp102, b
	movsx	rcx, eax	# _2, tmp102
	mov	rax, QWORD PTR -24[rbp]	# tmp103, v
	cqo
	idiv	rcx	# _2
	mov	rax, rdx	# _3, tmp104
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	DWORD PTR -4[rbp], eax	# c, _3
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	cmp	DWORD PTR -4[rbp], 9	# c,
	jg	.L68	#,
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	eax, DWORD PTR -4[rbp]	# tmp106, c
	add	eax, 48	# _5,
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	ecx, eax	# iftmp.5_20, _5
	jmp	.L69	#
.L68:
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	eax, DWORD PTR -4[rbp]	# tmp107, c
	add	eax, 87	# _7,
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	ecx, eax	# iftmp.5_20, _7
.L69:
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	eax, DWORD PTR -12[rbp]	# i.6_8, i
	lea	edx, 1[rax]	# tmp108,
	mov	DWORD PTR -12[rbp], edx	# i, tmp108
	movsx	rdx, eax	# _9, i.6_8
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	rax, QWORD PTR -32[rbp]	# tmp109, s
	add	rax, rdx	# _10, _9
# csapp.c:225:     s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
	mov	BYTE PTR [rax], cl	# *_10, iftmp.5_20
# csapp.c:226:   } while ((v /= b) > 0);
	mov	eax, DWORD PTR -36[rbp]	# tmp110, b
	movsx	rsi, eax	# _11, tmp110
	mov	rax, QWORD PTR -24[rbp]	# tmp113, v
	cqo
	idiv	rsi	# _11
	mov	QWORD PTR -24[rbp], rax	# v, tmp111
# csapp.c:226:   } while ((v /= b) > 0);
	cmp	QWORD PTR -24[rbp], 0	# v,
	jg	.L70	#,
# csapp.c:228:   if (neg)
	cmp	DWORD PTR -8[rbp], 0	# neg,
	je	.L71	#,
# csapp.c:229:     s[i++] = '-';
	mov	eax, DWORD PTR -12[rbp]	# i.7_12, i
	lea	edx, 1[rax]	# tmp114,
	mov	DWORD PTR -12[rbp], edx	# i, tmp114
	movsx	rdx, eax	# _13, i.7_12
# csapp.c:229:     s[i++] = '-';
	mov	rax, QWORD PTR -32[rbp]	# tmp115, s
	add	rax, rdx	# _14, _13
# csapp.c:229:     s[i++] = '-';
	mov	BYTE PTR [rax], 45	# *_14,
.L71:
# csapp.c:231:   s[i] = '\0';
	mov	eax, DWORD PTR -12[rbp]	# tmp116, i
	movsx	rdx, eax	# _15, tmp116
	mov	rax, QWORD PTR -32[rbp]	# tmp117, s
	add	rax, rdx	# _16, _15
# csapp.c:231:   s[i] = '\0';
	mov	BYTE PTR [rax], 0	# *_16,
# csapp.c:232:   sio_reverse(s);
	mov	rax, QWORD PTR -32[rbp]	# tmp118, s
	mov	rdi, rax	#, tmp118
	call	sio_reverse	#
# csapp.c:233: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	sio_ltoa, .-sio_ltoa
	.type	sio_strlen, @function
sio_strlen:
.LFB31:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# s, s
# csapp.c:237:   int i = 0;
	mov	DWORD PTR -4[rbp], 0	# i,
# csapp.c:239:   while (s[i] != '\0')
	jmp	.L73	#
.L74:
# csapp.c:240:     ++i;
	add	DWORD PTR -4[rbp], 1	# i,
.L73:
# csapp.c:239:   while (s[i] != '\0')
	mov	eax, DWORD PTR -4[rbp]	# tmp87, i
	movsx	rdx, eax	# _1, tmp87
	mov	rax, QWORD PTR -24[rbp]	# tmp88, s
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
# csapp.c:239:   while (s[i] != '\0')
	test	al, al	# _3
	jne	.L74	#,
# csapp.c:241:   return i;
	mov	eax, DWORD PTR -4[rbp]	# tmp89, i
	cdqe
# csapp.c:242: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	sio_strlen, .-sio_strlen
	.globl	sio_puts
	.type	sio_puts, @function
sio_puts:
.LFB32:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# s, s
# csapp.c:250:   return write(STDOUT_FILENO, s, sio_strlen(s)); // line:csapp:siostrlen
	mov	rax, QWORD PTR -8[rbp]	# tmp85, s
	mov	rdi, rax	#, tmp85
	call	sio_strlen	#
	mov	rdx, rax	# _1,
	mov	rax, QWORD PTR -8[rbp]	# tmp86, s
	mov	rsi, rax	#, tmp86
	mov	edi, 1	#,
	call	write@PLT	#
# csapp.c:251: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	sio_puts, .-sio_puts
	.globl	sio_putl
	.type	sio_putl, @function
sio_putl:
.LFB33:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 160	#,
	mov	QWORD PTR -152[rbp], rdi	# v, v
# csapp.c:254: {
	mov	rax, QWORD PTR fs:40	# tmp88, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.7947, tmp88
	xor	eax, eax	# tmp88
# csapp.c:257:   sio_ltoa(v, s, 10); /* Based on K&R itoa() */ // line:csapp:sioltoa
	lea	rcx, -144[rbp]	# tmp84,
	mov	rax, QWORD PTR -152[rbp]	# tmp85, v
	mov	edx, 10	#,
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	sio_ltoa	#
# csapp.c:258:   return sio_puts(s);
	lea	rax, -144[rbp]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	sio_puts	#
# csapp.c:259: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp89, D.7947
	sub	rdx, QWORD PTR fs:40	# tmp89, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L80	#,
	call	__stack_chk_fail@PLT	#
.L80:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	sio_putl, .-sio_putl
	.globl	sio_error
	.type	sio_error, @function
sio_error:
.LFB34:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# s, s
# csapp.c:263:   sio_puts(s);
	mov	rax, QWORD PTR -8[rbp]	# tmp82, s
	mov	rdi, rax	#, tmp82
	call	sio_puts	#
# csapp.c:264:   _exit(1); // line:csapp:sioexit
	mov	edi, 1	#,
	call	_exit@PLT	#
	.cfi_endproc
.LFE34:
	.size	sio_error, .-sio_error
	.section	.rodata
.LC16:
	.string	"Sio_putl error"
	.text
	.globl	Sio_putl
	.type	Sio_putl, @function
Sio_putl:
.LFB35:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# v, v
# csapp.c:274:   if ((n = sio_putl(v)) < 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, v
	mov	rdi, rax	#, tmp84
	call	sio_putl	#
	mov	QWORD PTR -8[rbp], rax	# n, tmp85
# csapp.c:274:   if ((n = sio_putl(v)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# n,
	jns	.L83	#,
# csapp.c:275:     sio_error("Sio_putl error");
	lea	rax, .LC16[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	sio_error	#
.L83:
# csapp.c:276:   return n;
	mov	rax, QWORD PTR -8[rbp]	# _7, n
# csapp.c:277: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	Sio_putl, .-Sio_putl
	.section	.rodata
.LC17:
	.string	"Sio_puts error"
	.text
	.globl	Sio_puts
	.type	Sio_puts, @function
Sio_puts:
.LFB36:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# s, s
# csapp.c:282:   if ((n = sio_puts(s)) < 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, s
	mov	rdi, rax	#, tmp84
	call	sio_puts	#
	mov	QWORD PTR -8[rbp], rax	# n, tmp85
# csapp.c:282:   if ((n = sio_puts(s)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# n,
	jns	.L86	#,
# csapp.c:283:     sio_error("Sio_puts error");
	lea	rax, .LC17[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	sio_error	#
.L86:
# csapp.c:284:   return n;
	mov	rax, QWORD PTR -8[rbp]	# _7, n
# csapp.c:285: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	Sio_puts, .-Sio_puts
	.globl	Sio_error
	.type	Sio_error, @function
Sio_error:
.LFB37:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# s, s
# csapp.c:287: void Sio_error(char s[]) { sio_error(s); }
	mov	rax, QWORD PTR -8[rbp]	# tmp82, s
	mov	rdi, rax	#, tmp82
	call	sio_error	#
# csapp.c:287: void Sio_error(char s[]) { sio_error(s); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	Sio_error, .-Sio_error
	.section	.rodata
.LC18:
	.string	"Open error"
	.text
	.globl	Open
	.type	Open, @function
Open:
.LFB38:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# pathname, pathname
	mov	DWORD PTR -28[rbp], esi	# flags, flags
	mov	DWORD PTR -32[rbp], edx	# mode, mode
# csapp.c:296:   if ((rc = open(pathname, flags, mode)) < 0)
	mov	edx, DWORD PTR -32[rbp]	# tmp84, mode
	mov	ecx, DWORD PTR -28[rbp]	# tmp85, flags
	mov	rax, QWORD PTR -24[rbp]	# tmp86, pathname
	mov	esi, ecx	#, tmp85
	mov	rdi, rax	#, tmp86
	mov	eax, 0	#,
	call	open@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp87
# csapp.c:296:   if ((rc = open(pathname, flags, mode)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L90	#,
# csapp.c:297:     unix_error("Open error");
	lea	rax, .LC18[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L90:
# csapp.c:298:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _9, rc
# csapp.c:299: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	Open, .-Open
	.section	.rodata
.LC19:
	.string	"Read error"
	.text
	.globl	Read
	.type	Read, @function
Read:
.LFB39:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# fd, fd
	mov	QWORD PTR -32[rbp], rsi	# buf, buf
	mov	QWORD PTR -40[rbp], rdx	# count, count
# csapp.c:304:   if ((rc = read(fd, buf, count)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, count
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, buf
	mov	eax, DWORD PTR -20[rbp]	# tmp86, fd
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	read@PLT	#
	mov	QWORD PTR -8[rbp], rax	# rc, tmp87
# csapp.c:304:   if ((rc = read(fd, buf, count)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# rc,
	jns	.L93	#,
# csapp.c:305:     unix_error("Read error");
	lea	rax, .LC19[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L93:
# csapp.c:306:   return rc;
	mov	rax, QWORD PTR -8[rbp]	# _9, rc
# csapp.c:307: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE39:
	.size	Read, .-Read
	.section	.rodata
.LC20:
	.string	"Write error"
	.text
	.globl	Write
	.type	Write, @function
Write:
.LFB40:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# fd, fd
	mov	QWORD PTR -32[rbp], rsi	# buf, buf
	mov	QWORD PTR -40[rbp], rdx	# count, count
# csapp.c:312:   if ((rc = write(fd, buf, count)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, count
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, buf
	mov	eax, DWORD PTR -20[rbp]	# tmp86, fd
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	write@PLT	#
	mov	QWORD PTR -8[rbp], rax	# rc, tmp87
# csapp.c:312:   if ((rc = write(fd, buf, count)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# rc,
	jns	.L96	#,
# csapp.c:313:     unix_error("Write error");
	lea	rax, .LC20[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L96:
# csapp.c:314:   return rc;
	mov	rax, QWORD PTR -8[rbp]	# _9, rc
# csapp.c:315: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE40:
	.size	Write, .-Write
	.section	.rodata
.LC21:
	.string	"Lseek error"
	.text
	.globl	Lseek
	.type	Lseek, @function
Lseek:
.LFB41:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# fildes, fildes
	mov	QWORD PTR -32[rbp], rsi	# offset, offset
	mov	DWORD PTR -24[rbp], edx	# whence, whence
# csapp.c:320:   if ((rc = lseek(fildes, offset, whence)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp84, whence
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, offset
	mov	eax, DWORD PTR -20[rbp]	# tmp86, fildes
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	lseek@PLT	#
	mov	QWORD PTR -8[rbp], rax	# rc, tmp87
# csapp.c:320:   if ((rc = lseek(fildes, offset, whence)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# rc,
	jns	.L99	#,
# csapp.c:321:     unix_error("Lseek error");
	lea	rax, .LC21[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L99:
# csapp.c:322:   return rc;
	mov	rax, QWORD PTR -8[rbp]	# _9, rc
# csapp.c:323: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE41:
	.size	Lseek, .-Lseek
	.section	.rodata
.LC22:
	.string	"Close error"
	.text
	.globl	Close
	.type	Close, @function
Close:
.LFB42:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# fd, fd
# csapp.c:328:   if ((rc = close(fd)) < 0)
	mov	eax, DWORD PTR -20[rbp]	# tmp82, fd
	mov	edi, eax	#, tmp82
	call	close@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp83
# csapp.c:328:   if ((rc = close(fd)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L103	#,
# csapp.c:329:     unix_error("Close error");
	lea	rax, .LC22[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
.L103:
# csapp.c:330: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE42:
	.size	Close, .-Close
	.section	.rodata
.LC23:
	.string	"Select error"
	.text
	.globl	Select
	.type	Select, @function
Select:
.LFB43:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	DWORD PTR -20[rbp], edi	# n, n
	mov	QWORD PTR -32[rbp], rsi	# readfds, readfds
	mov	QWORD PTR -40[rbp], rdx	# writefds, writefds
	mov	QWORD PTR -48[rbp], rcx	# exceptfds, exceptfds
	mov	QWORD PTR -56[rbp], r8	# timeout, timeout
# csapp.c:336:   if ((rc = select(n, readfds, writefds, exceptfds, timeout)) < 0)
	mov	rdi, QWORD PTR -56[rbp]	# tmp84, timeout
	mov	rcx, QWORD PTR -48[rbp]	# tmp85, exceptfds
	mov	rdx, QWORD PTR -40[rbp]	# tmp86, writefds
	mov	rsi, QWORD PTR -32[rbp]	# tmp87, readfds
	mov	eax, DWORD PTR -20[rbp]	# tmp88, n
	mov	r8, rdi	#, tmp84
	mov	edi, eax	#, tmp88
	call	select@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp89
# csapp.c:336:   if ((rc = select(n, readfds, writefds, exceptfds, timeout)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L105	#,
# csapp.c:337:     unix_error("Select error");
	lea	rax, .LC23[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	unix_error	#
.L105:
# csapp.c:338:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _11, rc
# csapp.c:339: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE43:
	.size	Select, .-Select
	.section	.rodata
.LC24:
	.string	"Dup2 error"
	.text
	.globl	Dup2
	.type	Dup2, @function
Dup2:
.LFB44:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# fd1, fd1
	mov	DWORD PTR -24[rbp], esi	# fd2, fd2
# csapp.c:344:   if ((rc = dup2(fd1, fd2)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp84, fd2
	mov	eax, DWORD PTR -20[rbp]	# tmp85, fd1
	mov	esi, edx	#, tmp84
	mov	edi, eax	#, tmp85
	call	dup2@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp86
# csapp.c:344:   if ((rc = dup2(fd1, fd2)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L108	#,
# csapp.c:345:     unix_error("Dup2 error");
	lea	rax, .LC24[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L108:
# csapp.c:346:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _8, rc
# csapp.c:347: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE44:
	.size	Dup2, .-Dup2
	.section	.rodata
.LC25:
	.string	"Stat error"
	.text
	.globl	Stat
	.type	Stat, @function
Stat:
.LFB45:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# filename, filename
	mov	QWORD PTR -16[rbp], rsi	# buf, buf
# csapp.c:350:   if (stat(filename, buf) < 0)
	mov	rdx, QWORD PTR -16[rbp]	# tmp83, buf
	mov	rax, QWORD PTR -8[rbp]	# tmp84, filename
	mov	rsi, rdx	#, tmp83
	mov	rdi, rax	#, tmp84
	call	stat@PLT	#
# csapp.c:350:   if (stat(filename, buf) < 0)
	test	eax, eax	# _1
	jns	.L112	#,
# csapp.c:351:     unix_error("Stat error");
	lea	rax, .LC25[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L112:
# csapp.c:352: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE45:
	.size	Stat, .-Stat
	.section	.rodata
.LC26:
	.string	"Fstat error"
	.text
	.globl	Fstat
	.type	Fstat, @function
Fstat:
.LFB46:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# fd, fd
	mov	QWORD PTR -16[rbp], rsi	# buf, buf
# csapp.c:355:   if (fstat(fd, buf) < 0)
	mov	rdx, QWORD PTR -16[rbp]	# tmp83, buf
	mov	eax, DWORD PTR -4[rbp]	# tmp84, fd
	mov	rsi, rdx	#, tmp83
	mov	edi, eax	#, tmp84
	call	fstat@PLT	#
# csapp.c:355:   if (fstat(fd, buf) < 0)
	test	eax, eax	# _1
	jns	.L115	#,
# csapp.c:356:     unix_error("Fstat error");
	lea	rax, .LC26[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L115:
# csapp.c:357: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE46:
	.size	Fstat, .-Fstat
	.section	.rodata
.LC27:
	.string	"opendir error"
	.text
	.globl	Opendir
	.type	Opendir, @function
Opendir:
.LFB47:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# name, name
# csapp.c:364:   DIR *dirp = opendir(name);
	mov	rax, QWORD PTR -24[rbp]	# tmp84, name
	mov	rdi, rax	#, tmp84
	call	opendir@PLT	#
	mov	QWORD PTR -8[rbp], rax	# dirp, tmp85
# csapp.c:366:   if (!dirp)
	cmp	QWORD PTR -8[rbp], 0	# dirp,
	jne	.L117	#,
# csapp.c:367:     unix_error("opendir error");
	lea	rax, .LC27[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L117:
# csapp.c:368:   return dirp;
	mov	rax, QWORD PTR -8[rbp]	# _7, dirp
# csapp.c:369: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE47:
	.size	Opendir, .-Opendir
	.section	.rodata
.LC28:
	.string	"readdir error"
	.text
	.globl	Readdir
	.type	Readdir, @function
Readdir:
.LFB48:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# dirp, dirp
# csapp.c:374:   errno = 0;
	call	__errno_location@PLT	#
# csapp.c:374:   errno = 0;
	mov	DWORD PTR [rax], 0	# *_1,
# csapp.c:375:   dep = readdir(dirp);
	mov	rax, QWORD PTR -24[rbp]	# tmp87, dirp
	mov	rdi, rax	#, tmp87
	call	readdir@PLT	#
	mov	QWORD PTR -8[rbp], rax	# dep, tmp88
# csapp.c:376:   if ((dep == NULL) && (errno != 0))
	cmp	QWORD PTR -8[rbp], 0	# dep,
	jne	.L120	#,
# csapp.c:376:   if ((dep == NULL) && (errno != 0))
	call	__errno_location@PLT	#
	mov	eax, DWORD PTR [rax]	# _3, *_2
# csapp.c:376:   if ((dep == NULL) && (errno != 0))
	test	eax, eax	# _3
	je	.L120	#,
# csapp.c:377:     unix_error("readdir error");
	lea	rax, .LC28[rip]	# tmp89,
	mov	rdi, rax	#, tmp89
	call	unix_error	#
.L120:
# csapp.c:378:   return dep;
	mov	rax, QWORD PTR -8[rbp]	# _11, dep
# csapp.c:379: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE48:
	.size	Readdir, .-Readdir
	.section	.rodata
.LC29:
	.string	"closedir error"
	.text
	.globl	Closedir
	.type	Closedir, @function
Closedir:
.LFB49:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# dirp, dirp
# csapp.c:384:   if ((rc = closedir(dirp)) < 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, dirp
	mov	rdi, rax	#, tmp84
	call	closedir@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:384:   if ((rc = closedir(dirp)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L123	#,
# csapp.c:385:     unix_error("closedir error");
	lea	rax, .LC29[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L123:
# csapp.c:386:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _7, rc
# csapp.c:387: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE49:
	.size	Closedir, .-Closedir
	.section	.rodata
.LC30:
	.string	"mmap error"
	.text
	.globl	Mmap
	.type	Mmap, @function
Mmap:
.LFB50:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -24[rbp], rdi	# addr, addr
	mov	QWORD PTR -32[rbp], rsi	# len, len
	mov	DWORD PTR -36[rbp], edx	# prot, prot
	mov	DWORD PTR -40[rbp], ecx	# flags, flags
	mov	DWORD PTR -44[rbp], r8d	# fd, fd
	mov	QWORD PTR -56[rbp], r9	# offset, offset
# csapp.c:395:   if ((ptr = mmap(addr, len, prot, flags, fd, offset)) == ((void *)-1))
	mov	r8, QWORD PTR -56[rbp]	# tmp84, offset
	mov	edi, DWORD PTR -44[rbp]	# tmp85, fd
	mov	ecx, DWORD PTR -40[rbp]	# tmp86, flags
	mov	edx, DWORD PTR -36[rbp]	# tmp87, prot
	mov	rsi, QWORD PTR -32[rbp]	# tmp88, len
	mov	rax, QWORD PTR -24[rbp]	# tmp89, addr
	mov	r9, r8	#, tmp84
	mov	r8d, edi	#, tmp85
	mov	rdi, rax	#, tmp89
	call	mmap@PLT	#
	mov	QWORD PTR -8[rbp], rax	# ptr, tmp90
# csapp.c:395:   if ((ptr = mmap(addr, len, prot, flags, fd, offset)) == ((void *)-1))
	cmp	QWORD PTR -8[rbp], -1	# ptr,
	jne	.L126	#,
# csapp.c:396:     unix_error("mmap error");
	lea	rax, .LC30[rip]	# tmp91,
	mov	rdi, rax	#, tmp91
	call	unix_error	#
.L126:
# csapp.c:397:   return (ptr);
	mov	rax, QWORD PTR -8[rbp]	# _12, ptr
# csapp.c:398: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE50:
	.size	Mmap, .-Mmap
	.section	.rodata
.LC31:
	.string	"munmap error"
	.text
	.globl	Munmap
	.type	Munmap, @function
Munmap:
.LFB51:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# start, start
	mov	QWORD PTR -16[rbp], rsi	# length, length
# csapp.c:401:   if (munmap(start, length) < 0)
	mov	rdx, QWORD PTR -16[rbp]	# tmp83, length
	mov	rax, QWORD PTR -8[rbp]	# tmp84, start
	mov	rsi, rdx	#, tmp83
	mov	rdi, rax	#, tmp84
	call	munmap@PLT	#
# csapp.c:401:   if (munmap(start, length) < 0)
	test	eax, eax	# _1
	jns	.L130	#,
# csapp.c:402:     unix_error("munmap error");
	lea	rax, .LC31[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L130:
# csapp.c:403: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE51:
	.size	Munmap, .-Munmap
	.section	.rodata
.LC32:
	.string	"Malloc error"
	.text
	.globl	Malloc
	.type	Malloc, @function
Malloc:
.LFB52:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# size, size
# csapp.c:412:   if ((p = malloc(size)) == NULL)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, size
	mov	rdi, rax	#, tmp84
	call	malloc@PLT	#
	mov	QWORD PTR -8[rbp], rax	# p, tmp85
# csapp.c:412:   if ((p = malloc(size)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# p,
	jne	.L132	#,
# csapp.c:413:     unix_error("Malloc error");
	lea	rax, .LC32[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L132:
# csapp.c:414:   return p;
	mov	rax, QWORD PTR -8[rbp]	# _7, p
# csapp.c:415: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE52:
	.size	Malloc, .-Malloc
	.section	.rodata
.LC33:
	.string	"Realloc error"
	.text
	.globl	Realloc
	.type	Realloc, @function
Realloc:
.LFB53:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# ptr, ptr
	mov	QWORD PTR -32[rbp], rsi	# size, size
# csapp.c:420:   if ((p = realloc(ptr, size)) == NULL)
	mov	rdx, QWORD PTR -32[rbp]	# tmp84, size
	mov	rax, QWORD PTR -24[rbp]	# tmp85, ptr
	mov	rsi, rdx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	realloc@PLT	#
	mov	QWORD PTR -8[rbp], rax	# p, tmp86
# csapp.c:420:   if ((p = realloc(ptr, size)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# p,
	jne	.L135	#,
# csapp.c:421:     unix_error("Realloc error");
	lea	rax, .LC33[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L135:
# csapp.c:422:   return p;
	mov	rax, QWORD PTR -8[rbp]	# _8, p
# csapp.c:423: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE53:
	.size	Realloc, .-Realloc
	.section	.rodata
.LC34:
	.string	"Calloc error"
	.text
	.globl	Calloc
	.type	Calloc, @function
Calloc:
.LFB54:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# nmemb, nmemb
	mov	QWORD PTR -32[rbp], rsi	# size, size
# csapp.c:428:   if ((p = calloc(nmemb, size)) == NULL)
	mov	rdx, QWORD PTR -32[rbp]	# tmp84, size
	mov	rax, QWORD PTR -24[rbp]	# tmp85, nmemb
	mov	rsi, rdx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	calloc@PLT	#
	mov	QWORD PTR -8[rbp], rax	# p, tmp86
# csapp.c:428:   if ((p = calloc(nmemb, size)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# p,
	jne	.L138	#,
# csapp.c:429:     unix_error("Calloc error");
	lea	rax, .LC34[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L138:
# csapp.c:430:   return p;
	mov	rax, QWORD PTR -8[rbp]	# _8, p
# csapp.c:431: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE54:
	.size	Calloc, .-Calloc
	.globl	Free
	.type	Free, @function
Free:
.LFB55:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# ptr, ptr
# csapp.c:433: void Free(void *ptr) { free(ptr); }
	mov	rax, QWORD PTR -8[rbp]	# tmp82, ptr
	mov	rdi, rax	#, tmp82
	call	free@PLT	#
# csapp.c:433: void Free(void *ptr) { free(ptr); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE55:
	.size	Free, .-Free
	.section	.rodata
.LC35:
	.string	"Fclose error"
	.text
	.globl	Fclose
	.type	Fclose, @function
Fclose:
.LFB56:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# fp, fp
# csapp.c:439:   if (fclose(fp) != 0)
	mov	rax, QWORD PTR -8[rbp]	# tmp83, fp
	mov	rdi, rax	#, tmp83
	call	fclose@PLT	#
# csapp.c:439:   if (fclose(fp) != 0)
	test	eax, eax	# _1
	je	.L143	#,
# csapp.c:440:     unix_error("Fclose error");
	lea	rax, .LC35[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
.L143:
# csapp.c:441: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE56:
	.size	Fclose, .-Fclose
	.section	.rodata
.LC36:
	.string	"Fdopen error"
	.text
	.globl	Fdopen
	.type	Fdopen, @function
Fdopen:
.LFB57:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# fd, fd
	mov	QWORD PTR -32[rbp], rsi	# type, type
# csapp.c:446:   if ((fp = fdopen(fd, type)) == NULL)
	mov	rdx, QWORD PTR -32[rbp]	# tmp84, type
	mov	eax, DWORD PTR -20[rbp]	# tmp85, fd
	mov	rsi, rdx	#, tmp84
	mov	edi, eax	#, tmp85
	call	fdopen@PLT	#
	mov	QWORD PTR -8[rbp], rax	# fp, tmp86
# csapp.c:446:   if ((fp = fdopen(fd, type)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# fp,
	jne	.L145	#,
# csapp.c:447:     unix_error("Fdopen error");
	lea	rax, .LC36[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L145:
# csapp.c:449:   return fp;
	mov	rax, QWORD PTR -8[rbp]	# _8, fp
# csapp.c:450: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE57:
	.size	Fdopen, .-Fdopen
	.section	.rodata
.LC37:
	.string	"Fgets error"
	.text
	.globl	Fgets
	.type	Fgets, @function
Fgets:
.LFB58:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# ptr, ptr
	mov	DWORD PTR -28[rbp], esi	# n, n
	mov	QWORD PTR -40[rbp], rdx	# stream, stream
# csapp.c:455:   if (((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
	mov	rdx, QWORD PTR -40[rbp]	# tmp85, stream
	mov	ecx, DWORD PTR -28[rbp]	# tmp86, n
	mov	rax, QWORD PTR -24[rbp]	# tmp87, ptr
	mov	esi, ecx	#, tmp86
	mov	rdi, rax	#, tmp87
	call	fgets@PLT	#
	mov	QWORD PTR -8[rbp], rax	# rptr, tmp88
# csapp.c:455:   if (((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
	cmp	QWORD PTR -8[rbp], 0	# rptr,
	jne	.L148	#,
# csapp.c:455:   if (((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
	mov	rax, QWORD PTR -40[rbp]	# tmp89, stream
	mov	rdi, rax	#, tmp89
	call	ferror@PLT	#
# csapp.c:455:   if (((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
	test	eax, eax	# _1
	je	.L148	#,
# csapp.c:456:     app_error("Fgets error");
	lea	rax, .LC37[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	app_error	#
.L148:
# csapp.c:458:   return rptr;
	mov	rax, QWORD PTR -8[rbp]	# _11, rptr
# csapp.c:459: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE58:
	.size	Fgets, .-Fgets
	.section	.rodata
.LC38:
	.string	"Fopen error"
	.text
	.globl	Fopen
	.type	Fopen, @function
Fopen:
.LFB59:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# filename, filename
	mov	QWORD PTR -32[rbp], rsi	# mode, mode
# csapp.c:464:   if ((fp = fopen(filename, mode)) == NULL)
	mov	rdx, QWORD PTR -32[rbp]	# tmp84, mode
	mov	rax, QWORD PTR -24[rbp]	# tmp85, filename
	mov	rsi, rdx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	fopen@PLT	#
	mov	QWORD PTR -8[rbp], rax	# fp, tmp86
# csapp.c:464:   if ((fp = fopen(filename, mode)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# fp,
	jne	.L151	#,
# csapp.c:465:     unix_error("Fopen error");
	lea	rax, .LC38[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L151:
# csapp.c:467:   return fp;
	mov	rax, QWORD PTR -8[rbp]	# _8, fp
# csapp.c:468: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	Fopen, .-Fopen
	.section	.rodata
.LC39:
	.string	"Fputs error"
	.text
	.globl	Fputs
	.type	Fputs, @function
Fputs:
.LFB60:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# ptr, ptr
	mov	QWORD PTR -16[rbp], rsi	# stream, stream
# csapp.c:471:   if (fputs(ptr, stream) == EOF)
	mov	rdx, QWORD PTR -16[rbp]	# tmp83, stream
	mov	rax, QWORD PTR -8[rbp]	# tmp84, ptr
	mov	rsi, rdx	#, tmp83
	mov	rdi, rax	#, tmp84
	call	fputs@PLT	#
# csapp.c:471:   if (fputs(ptr, stream) == EOF)
	cmp	eax, -1	# _1,
	jne	.L155	#,
# csapp.c:472:     unix_error("Fputs error");
	lea	rax, .LC39[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L155:
# csapp.c:473: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE60:
	.size	Fputs, .-Fputs
	.section	.rodata
.LC40:
	.string	"Fread error"
	.text
	.globl	Fread
	.type	Fread, @function
Fread:
.LFB61:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# ptr, ptr
	mov	QWORD PTR -32[rbp], rsi	# size, size
	mov	QWORD PTR -40[rbp], rdx	# nmemb, nmemb
	mov	QWORD PTR -48[rbp], rcx	# stream, stream
# csapp.c:478:   if (((n = fread(ptr, size, nmemb, stream)) < nmemb) && ferror(stream))
	mov	rcx, QWORD PTR -48[rbp]	# tmp85, stream
	mov	rdx, QWORD PTR -40[rbp]	# tmp86, nmemb
	mov	rsi, QWORD PTR -32[rbp]	# tmp87, size
	mov	rax, QWORD PTR -24[rbp]	# tmp88, ptr
	mov	rdi, rax	#, tmp88
	call	fread@PLT	#
	mov	QWORD PTR -8[rbp], rax	# n, tmp89
# csapp.c:478:   if (((n = fread(ptr, size, nmemb, stream)) < nmemb) && ferror(stream))
	mov	rax, QWORD PTR -8[rbp]	# tmp90, n
	cmp	rax, QWORD PTR -40[rbp]	# tmp90, nmemb
	jnb	.L157	#,
# csapp.c:478:   if (((n = fread(ptr, size, nmemb, stream)) < nmemb) && ferror(stream))
	mov	rax, QWORD PTR -48[rbp]	# tmp91, stream
	mov	rdi, rax	#, tmp91
	call	ferror@PLT	#
# csapp.c:478:   if (((n = fread(ptr, size, nmemb, stream)) < nmemb) && ferror(stream))
	test	eax, eax	# _1
	je	.L157	#,
# csapp.c:479:     unix_error("Fread error");
	lea	rax, .LC40[rip]	# tmp92,
	mov	rdi, rax	#, tmp92
	call	unix_error	#
.L157:
# csapp.c:480:   return n;
	mov	rax, QWORD PTR -8[rbp]	# _12, n
# csapp.c:481: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE61:
	.size	Fread, .-Fread
	.section	.rodata
.LC41:
	.string	"Fwrite error"
	.text
	.globl	Fwrite
	.type	Fwrite, @function
Fwrite:
.LFB62:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -8[rbp], rdi	# ptr, ptr
	mov	QWORD PTR -16[rbp], rsi	# size, size
	mov	QWORD PTR -24[rbp], rdx	# nmemb, nmemb
	mov	QWORD PTR -32[rbp], rcx	# stream, stream
# csapp.c:484:   if (fwrite(ptr, size, nmemb, stream) < nmemb)
	mov	rcx, QWORD PTR -32[rbp]	# tmp83, stream
	mov	rdx, QWORD PTR -24[rbp]	# tmp84, nmemb
	mov	rsi, QWORD PTR -16[rbp]	# tmp85, size
	mov	rax, QWORD PTR -8[rbp]	# tmp86, ptr
	mov	rdi, rax	#, tmp86
	call	fwrite@PLT	#
# csapp.c:484:   if (fwrite(ptr, size, nmemb, stream) < nmemb)
	cmp	rax, QWORD PTR -24[rbp]	# _1, nmemb
	jnb	.L161	#,
# csapp.c:485:     unix_error("Fwrite error");
	lea	rax, .LC41[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L161:
# csapp.c:486: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE62:
	.size	Fwrite, .-Fwrite
	.section	.rodata
.LC42:
	.string	"Socket error"
	.text
	.globl	Socket
	.type	Socket, @function
Socket:
.LFB63:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# domain, domain
	mov	DWORD PTR -24[rbp], esi	# type, type
	mov	DWORD PTR -28[rbp], edx	# protocol, protocol
# csapp.c:495:   if ((rc = socket(domain, type, protocol)) < 0)
	mov	edx, DWORD PTR -28[rbp]	# tmp84, protocol
	mov	ecx, DWORD PTR -24[rbp]	# tmp85, type
	mov	eax, DWORD PTR -20[rbp]	# tmp86, domain
	mov	esi, ecx	#, tmp85
	mov	edi, eax	#, tmp86
	call	socket@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp87
# csapp.c:495:   if ((rc = socket(domain, type, protocol)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L163	#,
# csapp.c:496:     unix_error("Socket error");
	lea	rax, .LC42[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L163:
# csapp.c:497:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _9, rc
# csapp.c:498: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE63:
	.size	Socket, .-Socket
	.section	.rodata
.LC43:
	.string	"Setsockopt error"
	.text
	.globl	Setsockopt
	.type	Setsockopt, @function
Setsockopt:
.LFB64:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# s, s
	mov	DWORD PTR -24[rbp], esi	# level, level
	mov	DWORD PTR -28[rbp], edx	# optname, optname
	mov	QWORD PTR -40[rbp], rcx	# optval, optval
	mov	DWORD PTR -32[rbp], r8d	# optlen, optlen
# csapp.c:503:   if ((rc = setsockopt(s, level, optname, optval, optlen)) < 0)
	mov	edi, DWORD PTR -32[rbp]	# optlen.8_1, optlen
	mov	rcx, QWORD PTR -40[rbp]	# tmp83, optval
	mov	edx, DWORD PTR -28[rbp]	# tmp84, optname
	mov	esi, DWORD PTR -24[rbp]	# tmp85, level
	mov	eax, DWORD PTR -20[rbp]	# tmp86, s
	mov	r8d, edi	#, optlen.8_1
	mov	edi, eax	#, tmp86
	call	setsockopt@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp87
# csapp.c:503:   if ((rc = setsockopt(s, level, optname, optval, optlen)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L167	#,
# csapp.c:504:     unix_error("Setsockopt error");
	lea	rax, .LC43[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L167:
# csapp.c:505: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE64:
	.size	Setsockopt, .-Setsockopt
	.section	.rodata
.LC44:
	.string	"Bind error"
	.text
	.globl	Bind
	.type	Bind, @function
Bind:
.LFB65:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# sockfd, sockfd
	mov	QWORD PTR -32[rbp], rsi	# my_addr, my_addr
	mov	DWORD PTR -24[rbp], edx	# addrlen, addrlen
# csapp.c:510:   if ((rc = bind(sockfd, my_addr, addrlen)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# addrlen.9_1, addrlen
	mov	rcx, QWORD PTR -32[rbp]	# tmp83, my_addr
	mov	eax, DWORD PTR -20[rbp]	# tmp84, sockfd
	mov	rsi, rcx	#, tmp83
	mov	edi, eax	#, tmp84
	call	bind@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:510:   if ((rc = bind(sockfd, my_addr, addrlen)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L170	#,
# csapp.c:511:     unix_error("Bind error");
	lea	rax, .LC44[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L170:
# csapp.c:512: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE65:
	.size	Bind, .-Bind
	.section	.rodata
.LC45:
	.string	"Listen error"
	.text
	.globl	Listen
	.type	Listen, @function
Listen:
.LFB66:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# s, s
	mov	DWORD PTR -24[rbp], esi	# backlog, backlog
# csapp.c:517:   if ((rc = listen(s, backlog)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# tmp82, backlog
	mov	eax, DWORD PTR -20[rbp]	# tmp83, s
	mov	esi, edx	#, tmp82
	mov	edi, eax	#, tmp83
	call	listen@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp84
# csapp.c:517:   if ((rc = listen(s, backlog)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L173	#,
# csapp.c:518:     unix_error("Listen error");
	lea	rax, .LC45[rip]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	unix_error	#
.L173:
# csapp.c:519: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE66:
	.size	Listen, .-Listen
	.section	.rodata
.LC46:
	.string	"Accept error"
	.text
	.globl	Accept
	.type	Accept, @function
Accept:
.LFB67:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# s, s
	mov	QWORD PTR -32[rbp], rsi	# addr, addr
	mov	QWORD PTR -40[rbp], rdx	# addrlen, addrlen
# csapp.c:524:   if ((rc = accept(s, addr, addrlen)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, addrlen
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, addr
	mov	eax, DWORD PTR -20[rbp]	# tmp86, s
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	accept@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp87
# csapp.c:524:   if ((rc = accept(s, addr, addrlen)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L175	#,
# csapp.c:525:     unix_error("Accept error");
	lea	rax, .LC46[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L175:
# csapp.c:526:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _9, rc
# csapp.c:527: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE67:
	.size	Accept, .-Accept
	.section	.rodata
.LC47:
	.string	"Connect error"
	.text
	.globl	Connect
	.type	Connect, @function
Connect:
.LFB68:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# sockfd, sockfd
	mov	QWORD PTR -32[rbp], rsi	# serv_addr, serv_addr
	mov	DWORD PTR -24[rbp], edx	# addrlen, addrlen
# csapp.c:532:   if ((rc = connect(sockfd, serv_addr, addrlen)) < 0)
	mov	edx, DWORD PTR -24[rbp]	# addrlen.10_1, addrlen
	mov	rcx, QWORD PTR -32[rbp]	# tmp83, serv_addr
	mov	eax, DWORD PTR -20[rbp]	# tmp84, sockfd
	mov	rsi, rcx	#, tmp83
	mov	edi, eax	#, tmp84
	call	connect@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:532:   if ((rc = connect(sockfd, serv_addr, addrlen)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L179	#,
# csapp.c:533:     unix_error("Connect error");
	lea	rax, .LC47[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L179:
# csapp.c:534: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE68:
	.size	Connect, .-Connect
	.section	.rodata
.LC48:
	.string	"Getaddrinfo error"
	.text
	.globl	Getaddrinfo
	.type	Getaddrinfo, @function
Getaddrinfo:
.LFB69:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# node, node
	mov	QWORD PTR -32[rbp], rsi	# service, service
	mov	QWORD PTR -40[rbp], rdx	# hints, hints
	mov	QWORD PTR -48[rbp], rcx	# res, res
# csapp.c:544:   if ((rc = getaddrinfo(node, service, hints, res)) != 0)
	mov	rcx, QWORD PTR -48[rbp]	# tmp82, res
	mov	rdx, QWORD PTR -40[rbp]	# tmp83, hints
	mov	rsi, QWORD PTR -32[rbp]	# tmp84, service
	mov	rax, QWORD PTR -24[rbp]	# tmp85, node
	mov	rdi, rax	#, tmp85
	call	getaddrinfo@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp86
# csapp.c:544:   if ((rc = getaddrinfo(node, service, hints, res)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L182	#,
# csapp.c:545:     gai_error(rc, "Getaddrinfo error");
	mov	eax, DWORD PTR -4[rbp]	# tmp87, rc
	lea	rdx, .LC48[rip]	# tmp88,
	mov	rsi, rdx	#, tmp88
	mov	edi, eax	#, tmp87
	call	gai_error	#
.L182:
# csapp.c:546: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE69:
	.size	Getaddrinfo, .-Getaddrinfo
	.section	.rodata
.LC49:
	.string	"Getnameinfo error"
	.text
	.globl	Getnameinfo
	.type	Getnameinfo, @function
Getnameinfo:
.LFB70:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -24[rbp], rdi	# sa, sa
	mov	DWORD PTR -28[rbp], esi	# salen, salen
	mov	QWORD PTR -40[rbp], rdx	# host, host
	mov	QWORD PTR -48[rbp], rcx	# hostlen, hostlen
	mov	QWORD PTR -56[rbp], r8	# serv, serv
	mov	QWORD PTR -64[rbp], r9	# servlen, servlen
# csapp.c:553:   if ((rc = getnameinfo(sa, salen, host, hostlen, serv, servlen, flags)) != 0)
	mov	rax, QWORD PTR -64[rbp]	# tmp84, servlen
	mov	r8d, eax	# _1, tmp84
	mov	rax, QWORD PTR -48[rbp]	# tmp85, hostlen
	mov	r10d, eax	# _2, tmp85
	mov	rdi, QWORD PTR -56[rbp]	# tmp86, serv
	mov	rdx, QWORD PTR -40[rbp]	# tmp87, host
	mov	esi, DWORD PTR -28[rbp]	# tmp88, salen
	mov	rax, QWORD PTR -24[rbp]	# tmp89, sa
	sub	rsp, 8	#,
	mov	ecx, DWORD PTR 16[rbp]	# tmp90, flags
	push	rcx	# tmp90
	mov	r9d, r8d	#, _1
	mov	r8, rdi	#, tmp86
	mov	ecx, r10d	#, _2
	mov	rdi, rax	#, tmp89
	call	getnameinfo@PLT	#
	add	rsp, 16	#,
	mov	DWORD PTR -4[rbp], eax	# rc, tmp91
# csapp.c:553:   if ((rc = getnameinfo(sa, salen, host, hostlen, serv, servlen, flags)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L185	#,
# csapp.c:554:     gai_error(rc, "Getnameinfo error");
	mov	eax, DWORD PTR -4[rbp]	# tmp92, rc
	lea	rdx, .LC49[rip]	# tmp93,
	mov	rsi, rdx	#, tmp93
	mov	edi, eax	#, tmp92
	call	gai_error	#
.L185:
# csapp.c:555: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE70:
	.size	Getnameinfo, .-Getnameinfo
	.globl	Freeaddrinfo
	.type	Freeaddrinfo, @function
Freeaddrinfo:
.LFB71:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# res, res
# csapp.c:557: void Freeaddrinfo(struct addrinfo *res) { freeaddrinfo(res); }
	mov	rax, QWORD PTR -8[rbp]	# tmp82, res
	mov	rdi, rax	#, tmp82
	call	freeaddrinfo@PLT	#
# csapp.c:557: void Freeaddrinfo(struct addrinfo *res) { freeaddrinfo(res); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE71:
	.size	Freeaddrinfo, .-Freeaddrinfo
	.section	.rodata
.LC50:
	.string	"Inet_ntop error"
	.text
	.globl	Inet_ntop
	.type	Inet_ntop, @function
Inet_ntop:
.LFB72:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -4[rbp], edi	# af, af
	mov	QWORD PTR -16[rbp], rsi	# src, src
	mov	QWORD PTR -24[rbp], rdx	# dst, dst
	mov	DWORD PTR -8[rbp], ecx	# size, size
# csapp.c:560:   if (!inet_ntop(af, src, dst, size))
	mov	ecx, DWORD PTR -8[rbp]	# tmp83, size
	mov	rdx, QWORD PTR -24[rbp]	# tmp84, dst
	mov	rsi, QWORD PTR -16[rbp]	# tmp85, src
	mov	eax, DWORD PTR -4[rbp]	# tmp86, af
	mov	edi, eax	#, tmp86
	call	inet_ntop@PLT	#
# csapp.c:560:   if (!inet_ntop(af, src, dst, size))
	test	rax, rax	# _1
	jne	.L189	#,
# csapp.c:561:     unix_error("Inet_ntop error");
	lea	rax, .LC50[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L189:
# csapp.c:562: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE72:
	.size	Inet_ntop, .-Inet_ntop
	.section	.rodata
	.align 8
.LC51:
	.string	"inet_pton error: invalid dotted-decimal address"
.LC52:
	.string	"Inet_pton error"
	.text
	.globl	Inet_pton
	.type	Inet_pton, @function
Inet_pton:
.LFB73:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# af, af
	mov	QWORD PTR -32[rbp], rsi	# src, src
	mov	QWORD PTR -40[rbp], rdx	# dst, dst
# csapp.c:567:   rc = inet_pton(af, src, dst);
	mov	rdx, QWORD PTR -40[rbp]	# tmp82, dst
	mov	rcx, QWORD PTR -32[rbp]	# tmp83, src
	mov	eax, DWORD PTR -20[rbp]	# tmp84, af
	mov	rsi, rcx	#, tmp83
	mov	edi, eax	#, tmp84
	call	inet_pton@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:568:   if (rc == 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jne	.L191	#,
# csapp.c:569:     app_error("inet_pton error: invalid dotted-decimal address");
	lea	rax, .LC51[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	app_error	#
# csapp.c:572: }
	jmp	.L193	#
.L191:
# csapp.c:570:   else if (rc < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L193	#,
# csapp.c:571:     unix_error("Inet_pton error");
	lea	rax, .LC52[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L193:
# csapp.c:572: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE73:
	.size	Inet_pton, .-Inet_pton
	.section	.rodata
.LC53:
	.string	"Gethostbyname error"
	.text
	.globl	Gethostbyname
	.type	Gethostbyname, @function
Gethostbyname:
.LFB74:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# name, name
# csapp.c:585:   if ((p = gethostbyname(name)) == NULL)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, name
	mov	rdi, rax	#, tmp84
	call	gethostbyname@PLT	#
	mov	QWORD PTR -8[rbp], rax	# p, tmp85
# csapp.c:585:   if ((p = gethostbyname(name)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# p,
	jne	.L195	#,
# csapp.c:586:     dns_error("Gethostbyname error");
	lea	rax, .LC53[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	dns_error	#
.L195:
# csapp.c:587:   return p;
	mov	rax, QWORD PTR -8[rbp]	# _7, p
# csapp.c:588: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE74:
	.size	Gethostbyname, .-Gethostbyname
	.section	.rodata
.LC54:
	.string	"Gethostbyaddr error"
	.text
	.globl	Gethostbyaddr
	.type	Gethostbyaddr, @function
Gethostbyaddr:
.LFB75:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# addr, addr
	mov	DWORD PTR -28[rbp], esi	# len, len
	mov	DWORD PTR -32[rbp], edx	# type, type
# csapp.c:594:   if ((p = gethostbyaddr(addr, len, type)) == NULL)
	mov	ecx, DWORD PTR -28[rbp]	# len.11_1, len
	mov	edx, DWORD PTR -32[rbp]	# tmp85, type
	mov	rax, QWORD PTR -24[rbp]	# tmp86, addr
	mov	esi, ecx	#, len.11_1
	mov	rdi, rax	#, tmp86
	call	gethostbyaddr@PLT	#
	mov	QWORD PTR -8[rbp], rax	# p, tmp87
# csapp.c:594:   if ((p = gethostbyaddr(addr, len, type)) == NULL)
	cmp	QWORD PTR -8[rbp], 0	# p,
	jne	.L198	#,
# csapp.c:595:     dns_error("Gethostbyaddr error");
	lea	rax, .LC54[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	dns_error	#
.L198:
# csapp.c:596:   return p;
	mov	rax, QWORD PTR -8[rbp]	# _10, p
# csapp.c:597: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE75:
	.size	Gethostbyaddr, .-Gethostbyaddr
	.section	.rodata
.LC55:
	.string	"Pthread_create error"
	.text
	.globl	Pthread_create
	.type	Pthread_create, @function
Pthread_create:
.LFB76:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# tidp, tidp
	mov	QWORD PTR -32[rbp], rsi	# attrp, attrp
	mov	QWORD PTR -40[rbp], rdx	# routine, routine
	mov	QWORD PTR -48[rbp], rcx	# argp, argp
# csapp.c:607:   if ((rc = pthread_create(tidp, attrp, routine, argp)) != 0)
	mov	rcx, QWORD PTR -48[rbp]	# tmp82, argp
	mov	rdx, QWORD PTR -40[rbp]	# tmp83, routine
	mov	rsi, QWORD PTR -32[rbp]	# tmp84, attrp
	mov	rax, QWORD PTR -24[rbp]	# tmp85, tidp
	mov	rdi, rax	#, tmp85
	call	pthread_create@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp86
# csapp.c:607:   if ((rc = pthread_create(tidp, attrp, routine, argp)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L202	#,
# csapp.c:608:     posix_error(rc, "Pthread_create error");
	mov	eax, DWORD PTR -4[rbp]	# tmp87, rc
	lea	rdx, .LC55[rip]	# tmp88,
	mov	rsi, rdx	#, tmp88
	mov	edi, eax	#, tmp87
	call	posix_error	#
.L202:
# csapp.c:609: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE76:
	.size	Pthread_create, .-Pthread_create
	.section	.rodata
.LC56:
	.string	"Pthread_cancel error"
	.text
	.globl	Pthread_cancel
	.type	Pthread_cancel, @function
Pthread_cancel:
.LFB77:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# tid, tid
# csapp.c:614:   if ((rc = pthread_cancel(tid)) != 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp82, tid
	mov	rdi, rax	#, tmp82
	call	pthread_cancel@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp83
# csapp.c:614:   if ((rc = pthread_cancel(tid)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L205	#,
# csapp.c:615:     posix_error(rc, "Pthread_cancel error");
	mov	eax, DWORD PTR -4[rbp]	# tmp84, rc
	lea	rdx, .LC56[rip]	# tmp85,
	mov	rsi, rdx	#, tmp85
	mov	edi, eax	#, tmp84
	call	posix_error	#
.L205:
# csapp.c:616: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE77:
	.size	Pthread_cancel, .-Pthread_cancel
	.section	.rodata
.LC57:
	.string	"Pthread_join error"
	.text
	.globl	Pthread_join
	.type	Pthread_join, @function
Pthread_join:
.LFB78:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# tid, tid
	mov	QWORD PTR -32[rbp], rsi	# thread_return, thread_return
# csapp.c:621:   if ((rc = pthread_join(tid, thread_return)) != 0)
	mov	rdx, QWORD PTR -32[rbp]	# tmp82, thread_return
	mov	rax, QWORD PTR -24[rbp]	# tmp83, tid
	mov	rsi, rdx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	pthread_join@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp84
# csapp.c:621:   if ((rc = pthread_join(tid, thread_return)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L208	#,
# csapp.c:622:     posix_error(rc, "Pthread_join error");
	mov	eax, DWORD PTR -4[rbp]	# tmp85, rc
	lea	rdx, .LC57[rip]	# tmp86,
	mov	rsi, rdx	#, tmp86
	mov	edi, eax	#, tmp85
	call	posix_error	#
.L208:
# csapp.c:623: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE78:
	.size	Pthread_join, .-Pthread_join
	.section	.rodata
.LC58:
	.string	"Pthread_detach error"
	.text
	.globl	Pthread_detach
	.type	Pthread_detach, @function
Pthread_detach:
.LFB79:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# tid, tid
# csapp.c:629:   if ((rc = pthread_detach(tid)) != 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp82, tid
	mov	rdi, rax	#, tmp82
	call	pthread_detach@PLT	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp83
# csapp.c:629:   if ((rc = pthread_detach(tid)) != 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	je	.L211	#,
# csapp.c:630:     posix_error(rc, "Pthread_detach error");
	mov	eax, DWORD PTR -4[rbp]	# tmp84, rc
	lea	rdx, .LC58[rip]	# tmp85,
	mov	rsi, rdx	#, tmp85
	mov	edi, eax	#, tmp84
	call	posix_error	#
.L211:
# csapp.c:631: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE79:
	.size	Pthread_detach, .-Pthread_detach
	.globl	Pthread_exit
	.type	Pthread_exit, @function
Pthread_exit:
.LFB80:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# retval, retval
# csapp.c:634: void Pthread_exit(void *retval) { pthread_exit(retval); }
	mov	rax, QWORD PTR -8[rbp]	# tmp82, retval
	mov	rdi, rax	#, tmp82
	call	pthread_exit@PLT	#
	.cfi_endproc
.LFE80:
	.size	Pthread_exit, .-Pthread_exit
	.globl	Pthread_self
	.type	Pthread_self, @function
Pthread_self:
.LFB81:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# csapp.c:636: pthread_t Pthread_self(void) { return pthread_self(); }
	call	pthread_self@PLT	#
# csapp.c:636: pthread_t Pthread_self(void) { return pthread_self(); }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE81:
	.size	Pthread_self, .-Pthread_self
	.globl	Pthread_once
	.type	Pthread_once, @function
Pthread_once:
.LFB82:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# once_control, once_control
	mov	QWORD PTR -16[rbp], rsi	# init_function, init_function
# csapp.c:639:   pthread_once(once_control, init_function);
	mov	rdx, QWORD PTR -16[rbp]	# tmp82, init_function
	mov	rax, QWORD PTR -8[rbp]	# tmp83, once_control
	mov	rsi, rdx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	pthread_once@PLT	#
# csapp.c:640: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE82:
	.size	Pthread_once, .-Pthread_once
	.section	.rodata
.LC59:
	.string	"Sem_init error"
	.text
	.globl	Sem_init
	.type	Sem_init, @function
Sem_init:
.LFB83:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# sem, sem
	mov	DWORD PTR -12[rbp], esi	# pshared, pshared
	mov	DWORD PTR -16[rbp], edx	# value, value
# csapp.c:647:   if (sem_init(sem, pshared, value) < 0)
	mov	edx, DWORD PTR -16[rbp]	# tmp83, value
	mov	ecx, DWORD PTR -12[rbp]	# tmp84, pshared
	mov	rax, QWORD PTR -8[rbp]	# tmp85, sem
	mov	esi, ecx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	sem_init@PLT	#
# csapp.c:647:   if (sem_init(sem, pshared, value) < 0)
	test	eax, eax	# _1
	jns	.L218	#,
# csapp.c:648:     unix_error("Sem_init error");
	lea	rax, .LC59[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L218:
# csapp.c:649: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE83:
	.size	Sem_init, .-Sem_init
	.section	.rodata
.LC60:
	.string	"P error"
	.text
	.globl	P
	.type	P, @function
P:
.LFB84:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# sem, sem
# csapp.c:652:   if (sem_wait(sem) < 0)
	mov	rax, QWORD PTR -8[rbp]	# tmp83, sem
	mov	rdi, rax	#, tmp83
	call	sem_wait@PLT	#
# csapp.c:652:   if (sem_wait(sem) < 0)
	test	eax, eax	# _1
	jns	.L221	#,
# csapp.c:653:     unix_error("P error");
	lea	rax, .LC60[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
.L221:
# csapp.c:654: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE84:
	.size	P, .-P
	.section	.rodata
.LC61:
	.string	"V error"
	.text
	.globl	V
	.type	V, @function
V:
.LFB85:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# sem, sem
# csapp.c:657:   if (sem_post(sem) < 0)
	mov	rax, QWORD PTR -8[rbp]	# tmp83, sem
	mov	rdi, rax	#, tmp83
	call	sem_post@PLT	#
# csapp.c:657:   if (sem_post(sem) < 0)
	test	eax, eax	# _1
	jns	.L224	#,
# csapp.c:658:     unix_error("V error");
	lea	rax, .LC61[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	call	unix_error	#
.L224:
# csapp.c:659: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE85:
	.size	V, .-V
	.globl	rio_readn
	.type	rio_readn, @function
rio_readn:
.LFB86:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	DWORD PTR -36[rbp], edi	# fd, fd
	mov	QWORD PTR -48[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -56[rbp], rdx	# n, n
# csapp.c:670:   size_t nleft = n;
	mov	rax, QWORD PTR -56[rbp]	# tmp89, n
	mov	QWORD PTR -24[rbp], rax	# nleft, tmp89
# csapp.c:672:   char *bufp = usrbuf;
	mov	rax, QWORD PTR -48[rbp]	# tmp90, usrbuf
	mov	QWORD PTR -8[rbp], rax	# bufp, tmp90
# csapp.c:674:   while (nleft > 0) {
	jmp	.L226	#
.L232:
# csapp.c:675:     if ((nread = read(fd, bufp, nleft)) < 0) {
	mov	rdx, QWORD PTR -24[rbp]	# tmp91, nleft
	mov	rcx, QWORD PTR -8[rbp]	# tmp92, bufp
	mov	eax, DWORD PTR -36[rbp]	# tmp93, fd
	mov	rsi, rcx	#, tmp92
	mov	edi, eax	#, tmp93
	call	read@PLT	#
	mov	QWORD PTR -16[rbp], rax	# nread, tmp94
# csapp.c:675:     if ((nread = read(fd, bufp, nleft)) < 0) {
	cmp	QWORD PTR -16[rbp], 0	# nread,
	jns	.L227	#,
# csapp.c:676:       if (errno == EINTR) /* Interrupted by sig handler return */
	call	__errno_location@PLT	#
	mov	eax, DWORD PTR [rax]	# _2, *_1
# csapp.c:676:       if (errno == EINTR) /* Interrupted by sig handler return */
	cmp	eax, 4	# _2,
	jne	.L228	#,
# csapp.c:677:         nread = 0;        /* and call read() again */
	mov	QWORD PTR -16[rbp], 0	# nread,
	jmp	.L229	#
.L228:
# csapp.c:679:         return -1; /* errno set by read() */
	mov	rax, -1	# _9,
	jmp	.L230	#
.L227:
# csapp.c:680:     } else if (nread == 0)
	cmp	QWORD PTR -16[rbp], 0	# nread,
	je	.L233	#,
.L229:
# csapp.c:682:     nleft -= nread;
	mov	rax, QWORD PTR -16[rbp]	# nread.12_3, nread
	sub	QWORD PTR -24[rbp], rax	# nleft, nread.12_3
# csapp.c:683:     bufp += nread;
	mov	rax, QWORD PTR -16[rbp]	# nread.13_4, nread
	add	QWORD PTR -8[rbp], rax	# bufp, nread.13_4
.L226:
# csapp.c:674:   while (nleft > 0) {
	cmp	QWORD PTR -24[rbp], 0	# nleft,
	jne	.L232	#,
	jmp	.L231	#
.L233:
# csapp.c:681:       break; /* EOF */
	nop	
.L231:
# csapp.c:685:   return (n - nleft); /* Return >= 0 */
	mov	rax, QWORD PTR -56[rbp]	# tmp95, n
	sub	rax, QWORD PTR -24[rbp]	# _5, nleft
.L230:
# csapp.c:686: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE86:
	.size	rio_readn, .-rio_readn
	.globl	rio_writen
	.type	rio_writen, @function
rio_writen:
.LFB87:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	DWORD PTR -36[rbp], edi	# fd, fd
	mov	QWORD PTR -48[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -56[rbp], rdx	# n, n
# csapp.c:694:   size_t nleft = n;
	mov	rax, QWORD PTR -56[rbp]	# tmp88, n
	mov	QWORD PTR -24[rbp], rax	# nleft, tmp88
# csapp.c:696:   char *bufp = usrbuf;
	mov	rax, QWORD PTR -48[rbp]	# tmp89, usrbuf
	mov	QWORD PTR -8[rbp], rax	# bufp, tmp89
# csapp.c:698:   while (nleft > 0) {
	jmp	.L235	#
.L239:
# csapp.c:699:     if ((nwritten = write(fd, bufp, nleft)) <= 0) {
	mov	rdx, QWORD PTR -24[rbp]	# tmp90, nleft
	mov	rcx, QWORD PTR -8[rbp]	# tmp91, bufp
	mov	eax, DWORD PTR -36[rbp]	# tmp92, fd
	mov	rsi, rcx	#, tmp91
	mov	edi, eax	#, tmp92
	call	write@PLT	#
	mov	QWORD PTR -16[rbp], rax	# nwritten, tmp93
# csapp.c:699:     if ((nwritten = write(fd, bufp, nleft)) <= 0) {
	cmp	QWORD PTR -16[rbp], 0	# nwritten,
	jg	.L236	#,
# csapp.c:700:       if (errno == EINTR) /* Interrupted by sig handler return */
	call	__errno_location@PLT	#
	mov	eax, DWORD PTR [rax]	# _2, *_1
# csapp.c:700:       if (errno == EINTR) /* Interrupted by sig handler return */
	cmp	eax, 4	# _2,
	jne	.L237	#,
# csapp.c:701:         nwritten = 0;     /* and call write() again */
	mov	QWORD PTR -16[rbp], 0	# nwritten,
	jmp	.L236	#
.L237:
# csapp.c:703:         return -1; /* errno set by write() */
	mov	rax, -1	# _8,
	jmp	.L238	#
.L236:
# csapp.c:705:     nleft -= nwritten;
	mov	rax, QWORD PTR -16[rbp]	# nwritten.14_3, nwritten
	sub	QWORD PTR -24[rbp], rax	# nleft, nwritten.14_3
# csapp.c:706:     bufp += nwritten;
	mov	rax, QWORD PTR -16[rbp]	# nwritten.15_4, nwritten
	add	QWORD PTR -8[rbp], rax	# bufp, nwritten.15_4
.L235:
# csapp.c:698:   while (nleft > 0) {
	cmp	QWORD PTR -24[rbp], 0	# nleft,
	jne	.L239	#,
# csapp.c:708:   return n;
	mov	rax, QWORD PTR -56[rbp]	# _8, n
.L238:
# csapp.c:709: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE87:
	.size	rio_writen, .-rio_writen
	.type	rio_read, @function
rio_read:
.LFB88:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# rp, rp
	mov	QWORD PTR -32[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -40[rbp], rdx	# n, n
# csapp.c:724:   while (rp->rio_cnt <= 0) { /* Refill if buf is empty */
	jmp	.L241	#
.L245:
# csapp.c:725:     rp->rio_cnt = read(rp->rio_fd, rp->rio_buf, sizeof(rp->rio_buf));
	mov	rax, QWORD PTR -24[rbp]	# tmp103, rp
	lea	rcx, 16[rax]	# _1,
# csapp.c:725:     rp->rio_cnt = read(rp->rio_fd, rp->rio_buf, sizeof(rp->rio_buf));
	mov	rax, QWORD PTR -24[rbp]	# tmp104, rp
	mov	eax, DWORD PTR [rax]	# _2, rp_25(D)->rio_fd
	mov	edx, 8192	#,
	mov	rsi, rcx	#, _1
	mov	edi, eax	#, _2
	call	read@PLT	#
# csapp.c:725:     rp->rio_cnt = read(rp->rio_fd, rp->rio_buf, sizeof(rp->rio_buf));
	mov	edx, eax	# _4, _3
	mov	rax, QWORD PTR -24[rbp]	# tmp105, rp
	mov	DWORD PTR 4[rax], edx	# rp_25(D)->rio_cnt, _4
# csapp.c:726:     if (rp->rio_cnt < 0) {
	mov	rax, QWORD PTR -24[rbp]	# tmp106, rp
	mov	eax, DWORD PTR 4[rax]	# _5, rp_25(D)->rio_cnt
# csapp.c:726:     if (rp->rio_cnt < 0) {
	test	eax, eax	# _5
	jns	.L242	#,
# csapp.c:727:       if (errno != EINTR) /* Interrupted by sig handler return */
	call	__errno_location@PLT	#
	mov	eax, DWORD PTR [rax]	# _7, *_6
# csapp.c:727:       if (errno != EINTR) /* Interrupted by sig handler return */
	cmp	eax, 4	# _7,
	je	.L241	#,
# csapp.c:728:         return -1;
	mov	rax, -1	# _21,
	jmp	.L243	#
.L242:
# csapp.c:729:     } else if (rp->rio_cnt == 0) /* EOF */
	mov	rax, QWORD PTR -24[rbp]	# tmp107, rp
	mov	eax, DWORD PTR 4[rax]	# _8, rp_25(D)->rio_cnt
# csapp.c:729:     } else if (rp->rio_cnt == 0) /* EOF */
	test	eax, eax	# _8
	jne	.L244	#,
# csapp.c:730:       return 0;
	mov	eax, 0	# _21,
	jmp	.L243	#
.L244:
# csapp.c:732:       rp->rio_bufptr = rp->rio_buf; /* Reset buffer ptr */
	mov	rax, QWORD PTR -24[rbp]	# tmp108, rp
	lea	rdx, 16[rax]	# _9,
# csapp.c:732:       rp->rio_bufptr = rp->rio_buf; /* Reset buffer ptr */
	mov	rax, QWORD PTR -24[rbp]	# tmp109, rp
	mov	QWORD PTR 8[rax], rdx	# rp_25(D)->rio_bufptr, _9
.L241:
# csapp.c:724:   while (rp->rio_cnt <= 0) { /* Refill if buf is empty */
	mov	rax, QWORD PTR -24[rbp]	# tmp110, rp
	mov	eax, DWORD PTR 4[rax]	# _10, rp_25(D)->rio_cnt
# csapp.c:724:   while (rp->rio_cnt <= 0) { /* Refill if buf is empty */
	test	eax, eax	# _10
	jle	.L245	#,
# csapp.c:736:   cnt = n;
	mov	rax, QWORD PTR -40[rbp]	# tmp111, n
	mov	DWORD PTR -4[rbp], eax	# cnt, tmp111
# csapp.c:737:   if (rp->rio_cnt < n)
	mov	rax, QWORD PTR -24[rbp]	# tmp112, rp
	mov	eax, DWORD PTR 4[rax]	# _11, rp_25(D)->rio_cnt
	cdqe
# csapp.c:737:   if (rp->rio_cnt < n)
	cmp	rax, QWORD PTR -40[rbp]	# _12, n
	jnb	.L246	#,
# csapp.c:738:     cnt = rp->rio_cnt;
	mov	rax, QWORD PTR -24[rbp]	# tmp113, rp
	mov	eax, DWORD PTR 4[rax]	# tmp114, rp_25(D)->rio_cnt
	mov	DWORD PTR -4[rbp], eax	# cnt, tmp114
.L246:
# csapp.c:739:   memcpy(usrbuf, rp->rio_bufptr, cnt);
	mov	eax, DWORD PTR -4[rbp]	# tmp115, cnt
	movsx	rdx, eax	# _13, tmp115
# csapp.c:739:   memcpy(usrbuf, rp->rio_bufptr, cnt);
	mov	rax, QWORD PTR -24[rbp]	# tmp116, rp
	mov	rcx, QWORD PTR 8[rax]	# _14, rp_25(D)->rio_bufptr
# csapp.c:739:   memcpy(usrbuf, rp->rio_bufptr, cnt);
	mov	rax, QWORD PTR -32[rbp]	# tmp117, usrbuf
	mov	rsi, rcx	#, _14
	mov	rdi, rax	#, tmp117
	call	memcpy@PLT	#
# csapp.c:740:   rp->rio_bufptr += cnt;
	mov	rax, QWORD PTR -24[rbp]	# tmp118, rp
	mov	rdx, QWORD PTR 8[rax]	# _15, rp_25(D)->rio_bufptr
# csapp.c:740:   rp->rio_bufptr += cnt;
	mov	eax, DWORD PTR -4[rbp]	# tmp119, cnt
	cdqe
	add	rdx, rax	# _17, _16
	mov	rax, QWORD PTR -24[rbp]	# tmp120, rp
	mov	QWORD PTR 8[rax], rdx	# rp_25(D)->rio_bufptr, _17
# csapp.c:741:   rp->rio_cnt -= cnt;
	mov	rax, QWORD PTR -24[rbp]	# tmp121, rp
	mov	eax, DWORD PTR 4[rax]	# _18, rp_25(D)->rio_cnt
# csapp.c:741:   rp->rio_cnt -= cnt;
	sub	eax, DWORD PTR -4[rbp]	# _18, cnt
	mov	edx, eax	# _19, _18
	mov	rax, QWORD PTR -24[rbp]	# tmp122, rp
	mov	DWORD PTR 4[rax], edx	# rp_25(D)->rio_cnt, _19
# csapp.c:742:   return cnt;
	mov	eax, DWORD PTR -4[rbp]	# tmp123, cnt
	cdqe
.L243:
# csapp.c:743: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE88:
	.size	rio_read, .-rio_read
	.globl	rio_readinitb
	.type	rio_readinitb, @function
rio_readinitb:
.LFB89:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# rp, rp
	mov	DWORD PTR -12[rbp], esi	# fd, fd
# csapp.c:751:   rp->rio_fd = fd;
	mov	rax, QWORD PTR -8[rbp]	# tmp83, rp
	mov	edx, DWORD PTR -12[rbp]	# tmp84, fd
	mov	DWORD PTR [rax], edx	# rp_3(D)->rio_fd, tmp84
# csapp.c:752:   rp->rio_cnt = 0;
	mov	rax, QWORD PTR -8[rbp]	# tmp85, rp
	mov	DWORD PTR 4[rax], 0	# rp_3(D)->rio_cnt,
# csapp.c:753:   rp->rio_bufptr = rp->rio_buf;
	mov	rax, QWORD PTR -8[rbp]	# tmp86, rp
	lea	rdx, 16[rax]	# _1,
# csapp.c:753:   rp->rio_bufptr = rp->rio_buf;
	mov	rax, QWORD PTR -8[rbp]	# tmp87, rp
	mov	QWORD PTR 8[rax], rdx	# rp_3(D)->rio_bufptr, _1
# csapp.c:754: }
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE89:
	.size	rio_readinitb, .-rio_readinitb
	.globl	rio_readnb
	.type	rio_readnb, @function
rio_readnb:
.LFB90:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# rp, rp
	mov	QWORD PTR -48[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -56[rbp], rdx	# n, n
# csapp.c:762:   size_t nleft = n;
	mov	rax, QWORD PTR -56[rbp]	# tmp87, n
	mov	QWORD PTR -24[rbp], rax	# nleft, tmp87
# csapp.c:764:   char *bufp = usrbuf;
	mov	rax, QWORD PTR -48[rbp]	# tmp88, usrbuf
	mov	QWORD PTR -16[rbp], rax	# bufp, tmp88
# csapp.c:766:   while (nleft > 0) {
	jmp	.L249	#
.L254:
# csapp.c:767:     if ((nread = rio_read(rp, bufp, nleft)) < 0)
	mov	rdx, QWORD PTR -24[rbp]	# tmp89, nleft
	mov	rcx, QWORD PTR -16[rbp]	# tmp90, bufp
	mov	rax, QWORD PTR -40[rbp]	# tmp91, rp
	mov	rsi, rcx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	rio_read	#
	mov	QWORD PTR -8[rbp], rax	# nread, tmp92
# csapp.c:767:     if ((nread = rio_read(rp, bufp, nleft)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# nread,
	jns	.L250	#,
# csapp.c:768:       return -1; /* errno set by read() */
	mov	rax, -1	# _6,
	jmp	.L251	#
.L250:
# csapp.c:769:     else if (nread == 0)
	cmp	QWORD PTR -8[rbp], 0	# nread,
	je	.L255	#,
# csapp.c:771:     nleft -= nread;
	mov	rax, QWORD PTR -8[rbp]	# nread.16_1, nread
	sub	QWORD PTR -24[rbp], rax	# nleft, nread.16_1
# csapp.c:772:     bufp += nread;
	mov	rax, QWORD PTR -8[rbp]	# nread.17_2, nread
	add	QWORD PTR -16[rbp], rax	# bufp, nread.17_2
.L249:
# csapp.c:766:   while (nleft > 0) {
	cmp	QWORD PTR -24[rbp], 0	# nleft,
	jne	.L254	#,
	jmp	.L253	#
.L255:
# csapp.c:770:       break; /* EOF */
	nop	
.L253:
# csapp.c:774:   return (n - nleft); /* return >= 0 */
	mov	rax, QWORD PTR -56[rbp]	# tmp93, n
	sub	rax, QWORD PTR -24[rbp]	# _3, nleft
.L251:
# csapp.c:775: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE90:
	.size	rio_readnb, .-rio_readnb
	.globl	rio_readlineb
	.type	rio_readlineb, @function
rio_readlineb:
.LFB91:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# rp, rp
	mov	QWORD PTR -48[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -56[rbp], rdx	# maxlen, maxlen
# csapp.c:782: ssize_t rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen) {
	mov	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.7994, tmp98
	xor	eax, eax	# tmp98
# csapp.c:784:   char c, *bufp = usrbuf;
	mov	rax, QWORD PTR -48[rbp]	# tmp90, usrbuf
	mov	QWORD PTR -16[rbp], rax	# bufp, tmp90
# csapp.c:786:   for (n = 1; n < maxlen; n++) {
	mov	DWORD PTR -24[rbp], 1	# n,
# csapp.c:786:   for (n = 1; n < maxlen; n++) {
	jmp	.L257	#
.L264:
# csapp.c:787:     if ((rc = rio_read(rp, &c, 1)) == 1) {
	lea	rcx, -25[rbp]	# tmp91,
	mov	rax, QWORD PTR -40[rbp]	# tmp92, rp
	mov	edx, 1	#,
	mov	rsi, rcx	#, tmp91
	mov	rdi, rax	#, tmp92
	call	rio_read	#
# csapp.c:787:     if ((rc = rio_read(rp, &c, 1)) == 1) {
	mov	DWORD PTR -20[rbp], eax	# rc, _1
# csapp.c:787:     if ((rc = rio_read(rp, &c, 1)) == 1) {
	cmp	DWORD PTR -20[rbp], 1	# rc,
	jne	.L258	#,
# csapp.c:788:       *bufp++ = c;
	mov	rax, QWORD PTR -16[rbp]	# bufp.18_2, bufp
	lea	rdx, 1[rax]	# tmp93,
	mov	QWORD PTR -16[rbp], rdx	# bufp, tmp93
# csapp.c:788:       *bufp++ = c;
	movzx	edx, BYTE PTR -25[rbp]	# c.19_3, c
	mov	BYTE PTR [rax], dl	# *bufp.18_2, c.19_3
# csapp.c:789:       if (c == '\n') {
	movzx	eax, BYTE PTR -25[rbp]	# c.20_4, c
# csapp.c:789:       if (c == '\n') {
	cmp	al, 10	# c.20_4,
	jne	.L259	#,
# csapp.c:790:         n++;
	add	DWORD PTR -24[rbp], 1	# n,
# csapp.c:791:         break;
	jmp	.L260	#
.L258:
# csapp.c:793:     } else if (rc == 0) {
	cmp	DWORD PTR -20[rbp], 0	# rc,
	jne	.L261	#,
# csapp.c:794:       if (n == 1)
	cmp	DWORD PTR -24[rbp], 1	# n,
	jne	.L267	#,
# csapp.c:795:         return 0; /* EOF, no data read */
	mov	eax, 0	# _11,
	jmp	.L265	#
.L261:
# csapp.c:799:       return -1; /* Error */
	mov	rax, -1	# _11,
	jmp	.L265	#
.L259:
# csapp.c:786:   for (n = 1; n < maxlen; n++) {
	add	DWORD PTR -24[rbp], 1	# n,
.L257:
# csapp.c:786:   for (n = 1; n < maxlen; n++) {
	mov	eax, DWORD PTR -24[rbp]	# tmp94, n
	cdqe
	cmp	rax, QWORD PTR -56[rbp]	# _5, maxlen
	jb	.L264	#,
	jmp	.L260	#
.L267:
# csapp.c:797:         break; /* EOF, some data was read */
	nop	
.L260:
# csapp.c:801:   *bufp = 0;
	mov	rax, QWORD PTR -16[rbp]	# tmp95, bufp
	mov	BYTE PTR [rax], 0	# *bufp_10,
# csapp.c:802:   return n - 1;
	mov	eax, DWORD PTR -24[rbp]	# tmp96, n
	sub	eax, 1	# _6,
	cdqe
.L265:
# csapp.c:803: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp99, D.7994
	sub	rdx, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L266	#,
# csapp.c:803: }
	call	__stack_chk_fail@PLT	#
.L266:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE91:
	.size	rio_readlineb, .-rio_readlineb
	.section	.rodata
.LC62:
	.string	"Rio_readn error"
	.text
	.globl	Rio_readn
	.type	Rio_readn, @function
Rio_readn:
.LFB92:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR -20[rbp], edi	# fd, fd
	mov	QWORD PTR -32[rbp], rsi	# ptr, ptr
	mov	QWORD PTR -40[rbp], rdx	# nbytes, nbytes
# csapp.c:812:   if ((n = rio_readn(fd, ptr, nbytes)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, nbytes
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, ptr
	mov	eax, DWORD PTR -20[rbp]	# tmp86, fd
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	rio_readn	#
	mov	QWORD PTR -8[rbp], rax	# n, tmp87
# csapp.c:812:   if ((n = rio_readn(fd, ptr, nbytes)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# n,
	jns	.L269	#,
# csapp.c:813:     unix_error("Rio_readn error");
	lea	rax, .LC62[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L269:
# csapp.c:814:   return n;
	mov	rax, QWORD PTR -8[rbp]	# _9, n
# csapp.c:815: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE92:
	.size	Rio_readn, .-Rio_readn
	.section	.rodata
.LC63:
	.string	"Rio_writen error"
	.text
	.globl	Rio_writen
	.type	Rio_writen, @function
Rio_writen:
.LFB93:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -4[rbp], edi	# fd, fd
	mov	QWORD PTR -16[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -24[rbp], rdx	# n, n
# csapp.c:818:   if (rio_writen(fd, usrbuf, n) != n)
	mov	rdx, QWORD PTR -24[rbp]	# tmp84, n
	mov	rcx, QWORD PTR -16[rbp]	# tmp85, usrbuf
	mov	eax, DWORD PTR -4[rbp]	# tmp86, fd
	mov	rsi, rcx	#, tmp85
	mov	edi, eax	#, tmp86
	call	rio_writen	#
	mov	rdx, rax	# _1,
# csapp.c:818:   if (rio_writen(fd, usrbuf, n) != n)
	mov	rax, QWORD PTR -24[rbp]	# n.21_2, n
# csapp.c:818:   if (rio_writen(fd, usrbuf, n) != n)
	cmp	rdx, rax	# _1, n.21_2
	je	.L273	#,
# csapp.c:819:     unix_error("Rio_writen error");
	lea	rax, .LC63[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L273:
# csapp.c:820: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE93:
	.size	Rio_writen, .-Rio_writen
	.globl	Rio_readinitb
	.type	Rio_readinitb, @function
Rio_readinitb:
.LFB94:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# rp, rp
	mov	DWORD PTR -12[rbp], esi	# fd, fd
# csapp.c:822: void Rio_readinitb(rio_t *rp, int fd) { rio_readinitb(rp, fd); }
	mov	edx, DWORD PTR -12[rbp]	# tmp82, fd
	mov	rax, QWORD PTR -8[rbp]	# tmp83, rp
	mov	esi, edx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	rio_readinitb	#
# csapp.c:822: void Rio_readinitb(rio_t *rp, int fd) { rio_readinitb(rp, fd); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE94:
	.size	Rio_readinitb, .-Rio_readinitb
	.section	.rodata
.LC64:
	.string	"Rio_readnb error"
	.text
	.globl	Rio_readnb
	.type	Rio_readnb, @function
Rio_readnb:
.LFB95:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# rp, rp
	mov	QWORD PTR -32[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -40[rbp], rdx	# n, n
# csapp.c:827:   if ((rc = rio_readnb(rp, usrbuf, n)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, n
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, usrbuf
	mov	rax, QWORD PTR -24[rbp]	# tmp86, rp
	mov	rsi, rcx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	rio_readnb	#
	mov	QWORD PTR -8[rbp], rax	# rc, tmp87
# csapp.c:827:   if ((rc = rio_readnb(rp, usrbuf, n)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# rc,
	jns	.L276	#,
# csapp.c:828:     unix_error("Rio_readnb error");
	lea	rax, .LC64[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L276:
# csapp.c:829:   return rc;
	mov	rax, QWORD PTR -8[rbp]	# _9, rc
# csapp.c:830: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE95:
	.size	Rio_readnb, .-Rio_readnb
	.section	.rodata
.LC65:
	.string	"Rio_readlineb error"
	.text
	.globl	Rio_readlineb
	.type	Rio_readlineb, @function
Rio_readlineb:
.LFB96:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# rp, rp
	mov	QWORD PTR -32[rbp], rsi	# usrbuf, usrbuf
	mov	QWORD PTR -40[rbp], rdx	# maxlen, maxlen
# csapp.c:835:   if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0)
	mov	rdx, QWORD PTR -40[rbp]	# tmp84, maxlen
	mov	rcx, QWORD PTR -32[rbp]	# tmp85, usrbuf
	mov	rax, QWORD PTR -24[rbp]	# tmp86, rp
	mov	rsi, rcx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	rio_readlineb	#
	mov	QWORD PTR -8[rbp], rax	# rc, tmp87
# csapp.c:835:   if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0)
	cmp	QWORD PTR -8[rbp], 0	# rc,
	jns	.L279	#,
# csapp.c:836:     unix_error("Rio_readlineb error");
	lea	rax, .LC65[rip]	# tmp88,
	mov	rdi, rax	#, tmp88
	call	unix_error	#
.L279:
# csapp.c:837:   return rc;
	mov	rax, QWORD PTR -8[rbp]	# _9, rc
# csapp.c:838: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE96:
	.size	Rio_readlineb, .-Rio_readlineb
	.section	.rodata
	.align 8
.LC66:
	.string	"getaddrinfo failed (%s:%s): %s\n"
	.align 8
.LC67:
	.string	"open_clientfd: close failed: %s\n"
	.text
	.globl	open_clientfd
	.type	open_clientfd, @function
open_clientfd:
.LFB97:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 112	#,
	mov	QWORD PTR -104[rbp], rdi	# hostname, hostname
	mov	QWORD PTR -112[rbp], rsi	# port, port
# csapp.c:853: int open_clientfd(char *hostname, char *port) {
	mov	rax, QWORD PTR fs:40	# tmp123, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.7999, tmp123
	xor	eax, eax	# tmp123
# csapp.c:858:   memset(&hints, 0, sizeof(struct addrinfo));
	lea	rax, -64[rbp]	# tmp100,
	mov	edx, 48	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp100
	call	memset@PLT	#
# csapp.c:859:   hints.ai_socktype = SOCK_STREAM; /* Open a connection */
	mov	DWORD PTR -56[rbp], 1	# hints.ai_socktype,
# csapp.c:860:   hints.ai_flags = AI_NUMERICSERV; /* ... using a numeric port arg. */
	mov	DWORD PTR -64[rbp], 1024	# hints.ai_flags,
# csapp.c:861:   hints.ai_flags |= AI_ADDRCONFIG; /* Recommended for connections */
	mov	eax, DWORD PTR -64[rbp]	# _1, hints.ai_flags
# csapp.c:861:   hints.ai_flags |= AI_ADDRCONFIG; /* Recommended for connections */
	or	eax, 32	# _2,
	mov	DWORD PTR -64[rbp], eax	# hints.ai_flags, _2
# csapp.c:862:   if ((rc = getaddrinfo(hostname, port, &hints, &listp)) != 0) {
	lea	rcx, -80[rbp]	# tmp101,
	lea	rdx, -64[rbp]	# tmp102,
	mov	rsi, QWORD PTR -112[rbp]	# tmp103, port
	mov	rax, QWORD PTR -104[rbp]	# tmp104, hostname
	mov	rdi, rax	#, tmp104
	call	getaddrinfo@PLT	#
	mov	DWORD PTR -84[rbp], eax	# rc, tmp105
# csapp.c:862:   if ((rc = getaddrinfo(hostname, port, &hints, &listp)) != 0) {
	cmp	DWORD PTR -84[rbp], 0	# rc,
	je	.L282	#,
# csapp.c:863:     fprintf(stderr, "getaddrinfo failed (%s:%s): %s\n", hostname, port,
	mov	eax, DWORD PTR -84[rbp]	# tmp106, rc
	mov	edi, eax	#, tmp106
	call	gai_strerror@PLT	#
	mov	rsi, rax	# _3,
	mov	rax, QWORD PTR stderr[rip]	# stderr.22_4, stderr
	mov	rcx, QWORD PTR -112[rbp]	# tmp107, port
	mov	rdx, QWORD PTR -104[rbp]	# tmp108, hostname
	mov	r8, rsi	#, _3
	lea	rsi, .LC66[rip]	# tmp109,
	mov	rdi, rax	#, stderr.22_4
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:865:     return -2;
	mov	eax, -2	# _20,
	jmp	.L291	#
.L282:
# csapp.c:869:   for (p = listp; p; p = p->ai_next) {
	mov	rax, QWORD PTR -80[rbp]	# tmp110, listp
	mov	QWORD PTR -72[rbp], rax	# p, tmp110
# csapp.c:869:   for (p = listp; p; p = p->ai_next) {
	jmp	.L284	#
.L289:
# csapp.c:871:     if ((clientfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0)
	mov	rax, QWORD PTR -72[rbp]	# tmp111, p
	mov	edx, DWORD PTR 12[rax]	# _5, p_19->ai_protocol
	mov	rax, QWORD PTR -72[rbp]	# tmp112, p
	mov	ecx, DWORD PTR 8[rax]	# _6, p_19->ai_socktype
	mov	rax, QWORD PTR -72[rbp]	# tmp113, p
	mov	eax, DWORD PTR 4[rax]	# _7, p_19->ai_family
	mov	esi, ecx	#, _6
	mov	edi, eax	#, _7
	call	socket@PLT	#
	mov	DWORD PTR -88[rbp], eax	# clientfd, tmp114
# csapp.c:871:     if ((clientfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0)
	cmp	DWORD PTR -88[rbp], 0	# clientfd,
	js	.L293	#,
# csapp.c:875:     if (connect(clientfd, p->ai_addr, p->ai_addrlen) != -1)
	mov	rax, QWORD PTR -72[rbp]	# tmp115, p
	mov	edx, DWORD PTR 16[rax]	# _8, p_19->ai_addrlen
# csapp.c:875:     if (connect(clientfd, p->ai_addr, p->ai_addrlen) != -1)
	mov	rax, QWORD PTR -72[rbp]	# tmp116, p
	mov	rcx, QWORD PTR 24[rax]	# _9, p_19->ai_addr
# csapp.c:875:     if (connect(clientfd, p->ai_addr, p->ai_addrlen) != -1)
	mov	eax, DWORD PTR -88[rbp]	# tmp117, clientfd
	mov	rsi, rcx	#, _9
	mov	edi, eax	#, tmp117
	call	connect@PLT	#
# csapp.c:875:     if (connect(clientfd, p->ai_addr, p->ai_addrlen) != -1)
	cmp	eax, -1	# _10,
	jne	.L294	#,
# csapp.c:877:     if (close(clientfd) < 0) {
	mov	eax, DWORD PTR -88[rbp]	# tmp118, clientfd
	mov	edi, eax	#, tmp118
	call	close@PLT	#
# csapp.c:877:     if (close(clientfd) < 0) {
	test	eax, eax	# _11
	jns	.L286	#,
# csapp.c:879:       fprintf(stderr, "open_clientfd: close failed: %s\n", strerror(errno));
	call	__errno_location@PLT	#
# csapp.c:879:       fprintf(stderr, "open_clientfd: close failed: %s\n", strerror(errno));
	mov	eax, DWORD PTR [rax]	# _13, *_12
	mov	edi, eax	#, _13
	call	strerror@PLT	#
	mov	rdx, rax	# _14,
	mov	rax, QWORD PTR stderr[rip]	# stderr.23_15, stderr
	lea	rcx, .LC67[rip]	# tmp119,
	mov	rsi, rcx	#, tmp119
	mov	rdi, rax	#, stderr.23_15
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:880:       return -1;
	mov	eax, -1	# _20,
	jmp	.L291	#
.L293:
# csapp.c:872:       continue; /* Socket failed, try the next */
	nop	
.L286:
# csapp.c:869:   for (p = listp; p; p = p->ai_next) {
	mov	rax, QWORD PTR -72[rbp]	# tmp120, p
	mov	rax, QWORD PTR 40[rax]	# tmp121, p_19->ai_next
	mov	QWORD PTR -72[rbp], rax	# p, tmp121
.L284:
# csapp.c:869:   for (p = listp; p; p = p->ai_next) {
	cmp	QWORD PTR -72[rbp], 0	# p,
	jne	.L289	#,
	jmp	.L288	#
.L294:
# csapp.c:876:       break; /* Success */
	nop	
.L288:
# csapp.c:885:   freeaddrinfo(listp);
	mov	rax, QWORD PTR -80[rbp]	# listp.24_16, listp
	mov	rdi, rax	#, listp.24_16
	call	freeaddrinfo@PLT	#
# csapp.c:886:   if (!p) /* All connects failed */
	cmp	QWORD PTR -72[rbp], 0	# p,
	jne	.L290	#,
# csapp.c:887:     return -1;
	mov	eax, -1	# _20,
	jmp	.L291	#
.L290:
# csapp.c:889:     return clientfd;
	mov	eax, DWORD PTR -88[rbp]	# _20, clientfd
.L291:
# csapp.c:890: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp124, D.7999
	sub	rdx, QWORD PTR fs:40	# tmp124, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L292	#,
# csapp.c:890: }
	call	__stack_chk_fail@PLT	#
.L292:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE97:
	.size	open_clientfd, .-open_clientfd
	.section	.rodata
	.align 8
.LC68:
	.string	"getaddrinfo failed (port %s): %s\n"
	.align 8
.LC69:
	.string	"open_listenfd close failed: %s\n"
	.text
	.globl	open_listenfd
	.type	open_listenfd, @function
open_listenfd:
.LFB98:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 112	#,
	mov	QWORD PTR -104[rbp], rdi	# port, port
# csapp.c:902: int open_listenfd(char *port) {
	mov	rax, QWORD PTR fs:40	# tmp126, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.8002, tmp126
	xor	eax, eax	# tmp126
# csapp.c:904:   int listenfd, rc, optval = 1;
	mov	DWORD PTR -92[rbp], 1	# optval,
# csapp.c:907:   memset(&hints, 0, sizeof(struct addrinfo));
	lea	rax, -64[rbp]	# tmp101,
	mov	edx, 48	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp101
	call	memset@PLT	#
# csapp.c:908:   hints.ai_socktype = SOCK_STREAM;             /* Accept connections */
	mov	DWORD PTR -56[rbp], 1	# hints.ai_socktype,
# csapp.c:909:   hints.ai_flags = AI_PASSIVE | AI_ADDRCONFIG; /* ... on any IP address */
	mov	DWORD PTR -64[rbp], 33	# hints.ai_flags,
# csapp.c:910:   hints.ai_flags |= AI_NUMERICSERV;            /* ... using port number */
	mov	eax, DWORD PTR -64[rbp]	# _1, hints.ai_flags
# csapp.c:910:   hints.ai_flags |= AI_NUMERICSERV;            /* ... using port number */
	or	ah, 4	# _2,
	mov	DWORD PTR -64[rbp], eax	# hints.ai_flags, _2
# csapp.c:911:   if ((rc = getaddrinfo(NULL, port, &hints, &listp)) != 0) {
	lea	rcx, -80[rbp]	# tmp102,
	lea	rdx, -64[rbp]	# tmp103,
	mov	rax, QWORD PTR -104[rbp]	# tmp104, port
	mov	rsi, rax	#, tmp104
	mov	edi, 0	#,
	call	getaddrinfo@PLT	#
	mov	DWORD PTR -84[rbp], eax	# rc, tmp105
# csapp.c:911:   if ((rc = getaddrinfo(NULL, port, &hints, &listp)) != 0) {
	cmp	DWORD PTR -84[rbp], 0	# rc,
	je	.L296	#,
# csapp.c:912:     fprintf(stderr, "getaddrinfo failed (port %s): %s\n", port,
	mov	eax, DWORD PTR -84[rbp]	# tmp106, rc
	mov	edi, eax	#, tmp106
	call	gai_strerror@PLT	#
	mov	rcx, rax	# _3,
	mov	rax, QWORD PTR stderr[rip]	# stderr.25_4, stderr
	mov	rdx, QWORD PTR -104[rbp]	# tmp107, port
	lea	rsi, .LC68[rip]	# tmp108,
	mov	rdi, rax	#, stderr.25_4
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:914:     return -2;
	mov	eax, -2	# _21,
	jmp	.L306	#
.L296:
# csapp.c:918:   for (p = listp; p; p = p->ai_next) {
	mov	rax, QWORD PTR -80[rbp]	# tmp109, listp
	mov	QWORD PTR -72[rbp], rax	# p, tmp109
# csapp.c:918:   for (p = listp; p; p = p->ai_next) {
	jmp	.L298	#
.L303:
# csapp.c:920:     if ((listenfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0)
	mov	rax, QWORD PTR -72[rbp]	# tmp110, p
	mov	edx, DWORD PTR 12[rax]	# _5, p_18->ai_protocol
	mov	rax, QWORD PTR -72[rbp]	# tmp111, p
	mov	ecx, DWORD PTR 8[rax]	# _6, p_18->ai_socktype
	mov	rax, QWORD PTR -72[rbp]	# tmp112, p
	mov	eax, DWORD PTR 4[rax]	# _7, p_18->ai_family
	mov	esi, ecx	#, _6
	mov	edi, eax	#, _7
	call	socket@PLT	#
	mov	DWORD PTR -88[rbp], eax	# listenfd, tmp113
# csapp.c:920:     if ((listenfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0)
	cmp	DWORD PTR -88[rbp], 0	# listenfd,
	js	.L308	#,
# csapp.c:924:     setsockopt(listenfd, SOL_SOCKET,
	lea	rdx, -92[rbp]	# tmp114,
	mov	eax, DWORD PTR -88[rbp]	# tmp115, listenfd
	mov	r8d, 4	#,
	mov	rcx, rdx	#, tmp114
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	edi, eax	#, tmp115
	call	setsockopt@PLT	#
# csapp.c:929:     if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
	mov	rax, QWORD PTR -72[rbp]	# tmp116, p
	mov	edx, DWORD PTR 16[rax]	# _8, p_18->ai_addrlen
# csapp.c:929:     if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
	mov	rax, QWORD PTR -72[rbp]	# tmp117, p
	mov	rcx, QWORD PTR 24[rax]	# _9, p_18->ai_addr
# csapp.c:929:     if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
	mov	eax, DWORD PTR -88[rbp]	# tmp118, listenfd
	mov	rsi, rcx	#, _9
	mov	edi, eax	#, tmp118
	call	bind@PLT	#
# csapp.c:929:     if (bind(listenfd, p->ai_addr, p->ai_addrlen) == 0)
	test	eax, eax	# _10
	je	.L309	#,
# csapp.c:931:     if (close(listenfd) < 0) { /* Bind failed, try the next */
	mov	eax, DWORD PTR -88[rbp]	# tmp119, listenfd
	mov	edi, eax	#, tmp119
	call	close@PLT	#
# csapp.c:931:     if (close(listenfd) < 0) { /* Bind failed, try the next */
	test	eax, eax	# _11
	jns	.L300	#,
# csapp.c:932:       fprintf(stderr, "open_listenfd close failed: %s\n", strerror(errno));
	call	__errno_location@PLT	#
# csapp.c:932:       fprintf(stderr, "open_listenfd close failed: %s\n", strerror(errno));
	mov	eax, DWORD PTR [rax]	# _13, *_12
	mov	edi, eax	#, _13
	call	strerror@PLT	#
	mov	rdx, rax	# _14,
	mov	rax, QWORD PTR stderr[rip]	# stderr.26_15, stderr
	lea	rcx, .LC69[rip]	# tmp120,
	mov	rsi, rcx	#, tmp120
	mov	rdi, rax	#, stderr.26_15
	mov	eax, 0	#,
	call	fprintf@PLT	#
# csapp.c:933:       return -1;
	mov	eax, -1	# _21,
	jmp	.L306	#
.L308:
# csapp.c:921:       continue; /* Socket failed, try the next */
	nop	
.L300:
# csapp.c:918:   for (p = listp; p; p = p->ai_next) {
	mov	rax, QWORD PTR -72[rbp]	# tmp121, p
	mov	rax, QWORD PTR 40[rax]	# tmp122, p_18->ai_next
	mov	QWORD PTR -72[rbp], rax	# p, tmp122
.L298:
# csapp.c:918:   for (p = listp; p; p = p->ai_next) {
	cmp	QWORD PTR -72[rbp], 0	# p,
	jne	.L303	#,
	jmp	.L302	#
.L309:
# csapp.c:930:       break;                   /* Success */
	nop	
.L302:
# csapp.c:938:   freeaddrinfo(listp);
	mov	rax, QWORD PTR -80[rbp]	# listp.27_16, listp
	mov	rdi, rax	#, listp.27_16
	call	freeaddrinfo@PLT	#
# csapp.c:939:   if (!p) /* No address worked */
	cmp	QWORD PTR -72[rbp], 0	# p,
	jne	.L304	#,
# csapp.c:940:     return -1;
	mov	eax, -1	# _21,
	jmp	.L306	#
.L304:
# csapp.c:943:   if (listen(listenfd, LISTENQ) < 0) {
	mov	eax, DWORD PTR -88[rbp]	# tmp123, listenfd
	mov	esi, 1024	#,
	mov	edi, eax	#, tmp123
	call	listen@PLT	#
# csapp.c:943:   if (listen(listenfd, LISTENQ) < 0) {
	test	eax, eax	# _17
	jns	.L305	#,
# csapp.c:944:     close(listenfd);
	mov	eax, DWORD PTR -88[rbp]	# tmp124, listenfd
	mov	edi, eax	#, tmp124
	call	close@PLT	#
# csapp.c:945:     return -1;
	mov	eax, -1	# _21,
	jmp	.L306	#
.L305:
# csapp.c:947:   return listenfd;
	mov	eax, DWORD PTR -88[rbp]	# _21, listenfd
.L306:
# csapp.c:948: }
	mov	rdx, QWORD PTR -8[rbp]	# tmp127, D.8002
	sub	rdx, QWORD PTR fs:40	# tmp127, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L307	#,
# csapp.c:948: }
	call	__stack_chk_fail@PLT	#
.L307:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE98:
	.size	open_listenfd, .-open_listenfd
	.section	.rodata
.LC70:
	.string	"Open_clientfd error"
	.text
	.globl	Open_clientfd
	.type	Open_clientfd, @function
Open_clientfd:
.LFB99:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# hostname, hostname
	mov	QWORD PTR -32[rbp], rsi	# port, port
# csapp.c:957:   if ((rc = open_clientfd(hostname, port)) < 0)
	mov	rdx, QWORD PTR -32[rbp]	# tmp84, port
	mov	rax, QWORD PTR -24[rbp]	# tmp85, hostname
	mov	rsi, rdx	#, tmp84
	mov	rdi, rax	#, tmp85
	call	open_clientfd	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp86
# csapp.c:957:   if ((rc = open_clientfd(hostname, port)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L311	#,
# csapp.c:958:     unix_error("Open_clientfd error");
	lea	rax, .LC70[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	call	unix_error	#
.L311:
# csapp.c:959:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _8, rc
# csapp.c:960: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE99:
	.size	Open_clientfd, .-Open_clientfd
	.section	.rodata
.LC71:
	.string	"Open_listenfd error"
	.text
	.globl	Open_listenfd
	.type	Open_listenfd, @function
Open_listenfd:
.LFB100:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# port, port
# csapp.c:965:   if ((rc = open_listenfd(port)) < 0)
	mov	rax, QWORD PTR -24[rbp]	# tmp84, port
	mov	rdi, rax	#, tmp84
	call	open_listenfd	#
	mov	DWORD PTR -4[rbp], eax	# rc, tmp85
# csapp.c:965:   if ((rc = open_listenfd(port)) < 0)
	cmp	DWORD PTR -4[rbp], 0	# rc,
	jns	.L314	#,
# csapp.c:966:     unix_error("Open_listenfd error");
	lea	rax, .LC71[rip]	# tmp86,
	mov	rdi, rax	#, tmp86
	call	unix_error	#
.L314:
# csapp.c:967:   return rc;
	mov	eax, DWORD PTR -4[rbp]	# _7, rc
# csapp.c:968: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE100:
	.size	Open_listenfd, .-Open_listenfd
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
