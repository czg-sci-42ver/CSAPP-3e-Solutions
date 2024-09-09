#
# makefile
#
CC = gcc
# https://stackoverflow.com/a/56613606/21294350. See more_simple_compile.sh: CFLAGS="-g3 -O0 -ggdb3" make 12.21_fix --always-make
CFLAGS += -m64 -pthread
SRCS = $(wildcard 12.*.c)
PROGS = $(patsubst %.c,%,$(SRCS))
PROGS_TEST = $(patsubst %.c,%.test,$(SRCS))

all: $(PROGS) diff 12.34_self_test.s format
	(cd cgi-bin; make)
	(cd 12.36; make)
	(cd 12.38; make)
	(cd 12.39; make)

12.34_self_test.s: 12.34_self_test.c
	$(CC) $(CFLAGS) -S $@ $< csapp.c -fverbose-asm -masm=intel
%: %.c
	$(CC) $(CFLAGS) -o $@ $< csapp.c

test:
	(cd cgi-bin; make test)
	(cd 12.36; make test)
	(cd 12.38; make test)
	(cd 12.39; make test)
	./12.16
	./12.17
	./12.19
	./12.20
	./12.21
	./12.26

diff:
	(diff -u 12.23.bug.c 12.23.c > 12.23.c.diff; cd .)
	(diff -u 12.tiny.c 12.35.c > 12.35.c.diff; cd .)
	(diff -u 12.tiny.c 12.37.c > 12.37.c.diff; cd .)

measure:
	(time ./12.34.non.concurrent)
	(time ./12.34.concurrent)

.PHONY : clean
clean:
	(cd cgi-bin; make clean)
	(cd 12.36; make clean)
	(cd 12.38; make clean)
	(cd 12.39; make clean)
	find . -type f -executable -print0 | xargs -0 rm -f --

benchmark:
	wrk -d4 http://localhost:5000
format:
	(clang-format --style=Google -dump-config > ./.clang-format_google)
	#(cat ./.clang-format >> ./.clang-format_google)
	# tested on sed (GNU sed) 4.9. In old sed, . seems to be not regex.
	(sed -n -e '/\.\.\./{r ./.clang-format_tmp' -e 'd' -e '}' ./.clang-format_google > ./.clang-format)
	# (sed -e '/SortIncludes/{r ./.clang-format_tmp' -e 'd' -e '}' ./.clang-format_google > ./.clang-format)
	# clang-format version 18.1.8
	(find . -name '*.c' | xargs clang-format --style=file -i )
