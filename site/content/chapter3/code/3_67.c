#include <stdio.h>
#include <stdlib.h>

typedef struct {
	long a[2];
	long *p;
} strA;

typedef struct {
	long u[2];
	long q;
} strB;

strB process(strA s) {
	strB r;
	r.u[0] = s.a[1];
	r.u[1] = s.a[0];
	r.q = *s.p;
	return r;
}


long eval(long x, long y, long z) {
	strA s;
	s.a[0] = x;
	s.a[1] = y;
	s.p = &z;
	strB r = process(s);
	return r.u[0] + r.u[1] + r.q;
}

int main(int argc, char *argv[]) {
	long test=eval(3, 4, 5);
	return test;
}
