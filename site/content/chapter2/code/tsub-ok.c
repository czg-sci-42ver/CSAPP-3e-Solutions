/*
 * tsub-ok.c
 */
#include <assert.h>
#include <limits.h>
#include <stdio.h>

/* Determine whether arguments can be substracted without overflow */
int tsub_ok(int x, int y) {
  //  check condition with 0: 0-INT_MIN
  int res = 1;

  (y == INT_MIN) && (res = 0);
  // if (y == INT_MIN) res = 0;

  int sub = x - y;
  // not overflow when both <0/>0
  int pos_over = x > 0 && y < 0 && sub < 0;
  int neg_over = x < 0 && y > 0 && sub > 0;

  res = res && !(pos_over || neg_over);

  return res;
}
int tsub_ok_two(int x, int y) {
  int neg_y = -y;
  int sub = x + neg_y;

  return x==0 && y==INT_MIN || !(((x & neg_y & ~sub) | (~x & ~neg_y & sub)) & INT_MIN);
}

int main(int argc, char* argv[]) {
  assert(!tsub_ok(0x00, INT_MIN));
  assert(tsub_ok(0x00, 0x00));
  assert(!tsub_ok_two(0x00, INT_MIN));
  assert(!tsub_ok_two(0x01, INT_MIN));
  assert(tsub_ok_two(0x00, 0x00));
  assert(tsub_ok(INT_MIN + 10, INT_MIN));
  return 0;
}
