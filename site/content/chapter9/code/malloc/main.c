/*
 * main.c
 */
#include <stdio.h>

#include "csapp.h"

#define VIEW_SBRK 0

#ifdef CUS_MALLOC
#include "memlib.h"
#include "mm.h"
#else
#include <stdlib.h>
#endif

#define LOOP 10000

int main(int argc, char* argv[]) {
  void* m_start = sbrk(0);
  size_t malloc_size = 0;

  int i;
  // for (i = LOOP*LOOP; i < LOOP*LOOP*LOOP; i += 2) {
  for (i=0; i < LOOP; i += 2) {
    void* ptr_f = malloc(i);
    if (VIEW_SBRK) {
      printf("after first allocing %d, heap %p\n", i, sbrk(0));
    }
    void* ptr = malloc(i + 1);
    if (VIEW_SBRK) {
      printf("after twice allocing %d, heap %p\n", i + 1, sbrk(0));
    }
    free(ptr_f);
    if (VIEW_SBRK) {
      printf("after free first %d, heap %p\n", i, sbrk(0));
    }

    malloc_size += i + 1;
  }

  void* m_end = sbrk(0);
  size_t heap_size = (size_t)(m_end - m_start);
  if (VIEW_SBRK) {
    printf("%p %p", m_start, m_end);
    getchar();
  }

  printf("malloc size: %ld, heap_size: %ld\n", malloc_size, heap_size);

  return 0;
}
