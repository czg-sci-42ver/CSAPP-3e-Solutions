#include <stdio.h>
#include <stdlib.h>

long switch_prob(long x, long n) {
  long result = x;
  switch (n) {
    case 60:
    case 62:
    /* x */
      result = 8 * n;
      break;
    case 63:
      result = n >> 3;
      break;
    case 64:
      x = (x << 4) - x;
    case 65:
      x *= x;
    default:
      result = x + 0x4b;
  }
  return result;
}

int main(int argc, char *argv[]) {}
