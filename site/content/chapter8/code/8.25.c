/*
 * 8.25.c
 */
#include <stdio.h>
#include <sys/ioctl.h>

#include "csapp.h"

sigjmp_buf buf;

void handler(int sig) {
  /* jump */
  siglongjmp(buf, 1);
}

char* tfgets(char* s, int size, FILE* stream) {
  char* result;
  int num;

  if (!sigsetjmp(buf, 1)) {
    alarm(5);
    if (signal(SIGALRM, handler) == SIG_ERR)
      unix_error("set alarm handler error");
    while (1) {
      int ch = getchar();
      if (ch == EOF) {
        if (feof(stdin))
          puts("stdin empty");
        else
          puts("stdin error");  // very rare
      } else {
        ungetc(ch, stdin);  // put back
        alarm(0);
        break;
      }
      fseek(stdin, 0, SEEK_END);
      num = ftell(stdin);
      if (num > 0) {
        printf("get input");
        alarm(0);
        break;
      }
    }
    return fgets(s, size, stream);
  } else {
    /* run out of time */
    return NULL;
  }
}

#define LEN 100

int main(int argc, char* argv[]) {
  char buf[LEN];
  char* input = tfgets(buf, LEN, stdin);

  if (input == NULL) {
    printf("nothing input: NULL\n");
  } else {
    printf("%s", input);
  }
  return 0;
}
