/*
 * rotate-left.c
 */
#include <stdint.h>
#include <stdio.h>
#include <assert.h>

/*
 * Do rotate left shift. Assume 0 <= n < w
 * Example when x = 0x12345678 and w = 32:
 *   n = 4 -> 0x23456781, n = 20 -> 0x67812345
 */
unsigned rotate_left(unsigned x, int n) {
  int w = sizeof(unsigned) << 3;
  /* pay attention when n == 0 */
  // int32_t test = x<<31<<31;
  // int16_t test2 = x<<15<<15;
  // printf("%d %d",test,test2);
  return x << n | x >> (w - n - 1) >> 1;
}

int main(int argc, char* argv[]) {
  assert(rotate_left(0x12345678, 4) == 0x23456781);
  assert(rotate_left(0x12345678, 20) == 0x67812345);
  return 0;
}


