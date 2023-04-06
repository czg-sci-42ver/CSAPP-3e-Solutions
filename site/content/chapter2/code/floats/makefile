#
# makefile
#
CFLAGS = -m64 -std=c99
# SRCS = $(wildcard *.c)
TEST_SRC = ./float-half-test.c
LIBFILE = ../lib/random.c

all:
	gcc $(CFLAGS) $(TEST_SRC) $(LIBFILE) -g3 -o float-half-test

test:
	./main

.PHONY : clean
clean:
	find . -type f -executable -print0 | xargs -0 rm -f --

# vim:ft=make
#
