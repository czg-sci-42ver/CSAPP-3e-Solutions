/*
 * saturating-add.c
 */
#include <assert.h>
#include <limits.h>
#include <stdio.h>

int saturating_add(int x, int y) {
  int sum = x + y;
  int sig_mask = INT_MIN;
  /*
   * if x > 0, y > 0 but sum < 0, it's a positive overflow
   * if x < 0, y < 0 but sum >= 0, it's a negetive overflow
   * in gdb 'p/d (int)(1<<31)-1'
   */
  int pos_over = !(x & sig_mask) && !(y & sig_mask) && (sum & sig_mask);
  int neg_over = (x & sig_mask) && (y & sig_mask) && !(sum & sig_mask);

  (pos_over && (sum = INT_MAX) || neg_over && (sum = INT_MIN));

  return sum;
}

int saturating_add_two(int x, int y) {
  int w = sizeof(int) << 3;

  int sum = x + y;
  int shift_sum = sum >> (w - 1);

  // all way 1s if overflow, otherwise, all way 0s
  // similar to above algorithm
  int mask = (x >> (w - 1) ^ shift_sum);

  // either overflow value if being overflowed, or else just plain 0s
  int max_or_min = (shift_sum ^ INT_MIN) & mask;
  // either sum if not being overflowed, or else just plain 0s
  int sum_val = sum & (~mask);

  return max_or_min | sum_val;
}

int saturating_add_three(int x, int y) {
  int sum = x + y;
  int sig_mask = INT_MIN;
  /*
   * if x > 0, y > 0 but sum < 0, it's a positive overflow
   * if x < 0, y < 0 but sum >= 0, it's a negetive overflow
   */
  int pos_over = !(x & sig_mask) && !(y & sig_mask) && (sum & sig_mask);
  int neg_over = (x & sig_mask) && (y & sig_mask) && !(sum & sig_mask);

  int fix = 0;
  fix += (~(unsigned)pos_over + 1) & INT_MAX;
  fix += (~(unsigned)neg_over + 1) & INT_MIN;
  int need_fix = 0 || fix;
  return ((~(unsigned)need_fix + 1) & fix) +
         (sum & (~(unsigned)(!need_fix) + 1));
}

int main(int argc, char* argv[]) {
  assert(INT_MAX == saturating_add(INT_MAX, 0x1234));
  assert(INT_MIN == saturating_add(INT_MIN, -0x1234));
  assert(INT_MIN == saturating_add(INT_MIN, 0));
  assert(0x11 + 0x22 == saturating_add(0x11, 0x22));
  assert(INT_MAX == saturating_add_three(INT_MAX, 0x1234));
  assert(INT_MIN == saturating_add_three(INT_MIN, -0x1234));
  assert(0x11 + 0x22 == saturating_add_three(0x11, 0x22));
  assert(-1 + (-1) == saturating_add_two(-1, -1));
  return 0;
}
