#
# makefile
#
CC = gcc
CFLAGS = -m64 -lpthread -g
SRCS = $(shell ls | grep -e 'proxy[_a-zA-Z]*.c')
PROGS = $(patsubst %.c,%,$(SRCS))

all: $(PROGS)
	$(CC) $(CFLAGS) proxy.c ../csapp.c -o proxy
	$(CC) $(CFLAGS) proxy-thread.c ../csapp.c -o proxy-thread
%: %.c
	$(CC) $(CFLAGS) -o $@ $< ../csapp.c

test:

.PHONY : clean
clean:
	find . -type f -executable -print0 | xargs -0 rm -f --

# vim:ft=make
#
