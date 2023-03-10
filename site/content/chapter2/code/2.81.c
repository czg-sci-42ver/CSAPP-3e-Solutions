/*
 * 2.81.c
 */
#include <assert.h>
#include <stdio.h>
unsigned safe_shiftleft(unsigned x, int k);
/* Assume 0 <= k < w */
int A(int k) {
  // printf("%d\n",-1 << k);
  return safe_shiftleft(-1, k);
}

int A_2(int k) {
  const int is_k_non_0 = !k - 1;
  printf("%08x\n",~(((1 << k - 1) - 1 << 1) + 1));
  printf("%x\n",1<<-1);
  return is_k_non_0 & ~(((1 << (k - 1)) - 1 << 1) + 1) | ~is_k_non_0;
  // return ~(((1 << (k - 1)) - 1 << 1) + 1);
}

unsigned safe_shiftleft(unsigned x, int k) {
  int is_nonzero = k != 0;
  return x << is_nonzero << (k - is_nonzero);
}

/* Assume 0 <= j,k < w */
int B(int k, int j) { return ~A(k) << j; }

int main(int argc, char* argv[]) {
  assert(A(8) == 0xFFFFFF00);
  // assert(A_2(8) == 0xFFFFFF00);
  assert(A(32) == 0x0);
  assert(A(0) == 0xFFFFFFff);
  assert(A_2(0) == 0xFFFFFFff);
  // assert(A_2(32) == 0x0);
  assert(B(16, 8) == 0x00FFFF00);
  return 0;
}
