#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum { NEG, ZERO, POS, OTHER } range_t;
range_t find_range(float x) {
  asm("vxorps  %%xmm1,  %%xmm1,  %%xmm1\n\t"
      "vucomiss %[x],  %%xmm1");
}

int main(int argc, char *argv[]) {}
