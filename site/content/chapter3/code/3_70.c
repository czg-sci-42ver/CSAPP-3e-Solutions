#include <stdio.h>
#include <stdlib.h>

union ele {
  struct {
    long *p;
    long y;
  } e1;
  struct {
    long x;
    union ele *next;
  } e2;
};

void proc(union ele *up) {
  /* up->  = *(    ) -     ; */
  up->e2.x = *((*( up->e2.next)).e1.p) - (*(up->e2.next)).e1.y;
}

int main(int argc, char *argv[]) {}
