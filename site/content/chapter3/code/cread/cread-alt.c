/*
 * cread-alt.c
 */
#include <assert.h>
#include <stdio.h>

long cread(long *xp) { return (xp ? *xp : 0); }

long cread_alt(long *xp) { return (!xp ? 0 : *xp); }

long cread_alt_test(long *xp) {
  long zero = 0;
  return *(xp ? xp : &zero);
}

int main(int argc, char *argv[]) {
  long a = 0;
  assert(cread(&a) == cread_alt(&a));
  assert(cread(NULL) == cread_alt(NULL));
  return 0;
}
