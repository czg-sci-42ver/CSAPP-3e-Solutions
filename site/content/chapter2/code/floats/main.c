/*
 * main.c
 */
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdio.h>

#include "../lib/random.h"
#include "float-absval.h"
#include "float-f2i.h"
#include "float-half.h"
#include "float-i2f.h"
#include "float-negate.h"
#include "float-twice.h"

unsigned f2u(float f) { return *(unsigned*)&f; }

float u2f(unsigned u) { return *(float*)&u; }

int main(int argc, char* argv[]) {
  init_seed();
  unsigned long long total = 0;
  int round = 0;
  for (unsigned long long n = 0; !round; n = n + 1) {
    // if (n == (unsigned long long)0x0FFFFFFFF+1) {
    if (n == (unsigned long long)0xFFFF) {
      round++;
      printf("round %d\n",round);
    }
    total++;
    // test all int numbers waste a lot of time
    // just test 0xFFF random numbers here
    unsigned r = random_int();
    /*r = n;*/
    // printf("r:\t0x%.8X\t%d\n", r, r);

    // float f = u2f(r);
    // printf("f:\t0x%.8X\t%.50f\n", f2u(f), f);

    // float fmul2 = f * 2.0;
    // printf("fmul2:\t0x%.8X\t%.50f\n", f2u(fmul2), fmul2);

    // float fdiv2 = f * 0.5;
    // printf("fdiv2:\t0x%.8X\t%.50f\n", f2u(fdiv2), fdiv2);

    // int f2i = (int)f;
    // printf("f2i:\t0x%.8X\t%d\n", f2i, f2i);

    // float i2f = (float)(int)r;
    // printf("r:\t0x%.8X\t%d\n", r, r);
    // printf("i2f:\t0x%.8X\t%.50f\n", f2u(i2f), i2f);

    float f = u2f(r);

    float fmul2 = f * 2.0;

    float fdiv2 = f * 0.5;

    int f2i = (int)f;

    float i2f = (float)(int)r;
    // printf("r:\t0x%.8X\t%d\n", r, r);
    // printf("f:\t0x%.8X\t%.50f\n", f2u(f), f);
    // printf("fmul2:\t0x%.8X\t%.50f\n", f2u(fmul2), fmul2);
    // printf("fdiv2:\t0x%.8X\t%.50f\n", f2u(fdiv2), fdiv2);
    // printf("f2i:\t0x%.8X\t%d\n", f2i, f2i);
    // printf("r:\t0x%.8X\t%d\n", r, r);
    // printf("i2f:\t0x%.8X\t%.50f\n", f2u(i2f), i2f);

    if (isnan(f)) {
      assert(float_negate(r) == r);
      assert(float_absval(r) == r);
      assert(float_twice(r) == r);
      assert(float_half(r) == r);
      assert(float_f2i(r) == f2i);
    } else {
      assert(u2f(float_negate(r)) == -f);
      assert(u2f(float_absval(r)) == fabsf(f));
      assert(u2f(float_twice(r)) == fmul2);
      assert(u2f(float_half(r)) == fdiv2);
      /* whether f > (float)INT_MAX || f < (float)INT_MIN) */
      assert(float_f2i(r) == f2i);

      float my_i2f = u2f(float_i2f(r));
      // printf("my_i2f:\t0x%.8X\t%.50f\n", f2u(my_i2f), my_i2f);
      assert(my_i2f == i2f);
    }

    // printf("\n");
  }
  printf("total %llu\n", total);
  // assert(total == (unsigned long long)0xFFF * (unsigned long long)pow(2, 32));
}
