#
# makefile
#
CC = gcc
CFLAGS = -m64 -pthread

all:
	$(CC) $(CFLAGS) main.c echoservers.c tiny.c ../csapp.c -o main

test:

.PHONY : clean
clean:
	find . -type f -executable -print0 | xargs -0 rm -f --
diff:
	(if [ -f echoservers_aggregate.c ];then rm echoservers_aggregate.c;fi)
	(cp echoservers.h echoservers_aggregate.c; cat main.c >> echoservers_aggregate.c; cat echoservers.c >> echoservers_aggregate.c)
	# https://unix.stackexchange.com/questions/100786/why-does-diff-fail-when-invoked-from-a-makefile
	(diff -u ../tiny_origin/tiny.c tiny.c > tiny.diff;[ $$? -eq 1 ])
	(diff -u ../tiny_origin/echoservers.c echoservers_aggregate.c > echoservers_aggregate.diff;[ $$? -eq 1 ])

# vim:ft=make
#
