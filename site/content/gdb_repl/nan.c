/* nan.c */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

void f1(double *y) {
  *y -= 2.0;
}

void f2(double *z) {
  *z = sqrt(*z);
  *z += 1.0;
}

int main() {
  double *x = malloc(sizeof(double));
  *x = 5e4;
  int i;
  for (i = 0; i < 1000; i++) {
    f1(x);
    f2(x);
  }
  printf("%f\n", *x);
  free(x);
}