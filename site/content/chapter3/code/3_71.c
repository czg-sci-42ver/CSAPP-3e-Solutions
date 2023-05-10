#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFERSIZE 10
#define BUFSIZE 5
#define N 10

// char *fgets(char *s, int size, FILE *fp) {
//   int c;
//   char *dest = s;
//   int cnt = 0;
//   /*`&& sizeof(s) < size-1` no use when no '\0' end*/
//   while ((c = getchar()) != '\n' && c != EOF) {
//     *dest++ = c;
//     cnt++;
//     if (cnt == size - 1) {
//       printf("reach param range");
//       break;
//     }
//   }
//   if (c == EOF && dest == s) /* No characters read */
//     return NULL;
//   *dest++ = '\0'; /* Terminate string */
//   return s;
// }

void good_echo() {
  char buf[N];
  while (fgets(buf, N, stdin) != NULL) {
    int len = strlen(buf);
    printf("%s", buf);
    if (buf[len - 1] == '\n') break;
  }
  return;
}

int good_echo_2() {
  char buf[BUFSIZE];

  while (!feof(stdin)) {
    if (fgets(buf, BUFSIZE, stdin) == NULL) return 1;
    fputs(buf, stdout);
  }
  return 0;
}

void echo() {
  char buf[BUFFERSIZE]; /* Way too small! */
  while (fgets(buf, BUFFERSIZE, stdin)) {
    if (sizeof(buf) > BUFFERSIZE - 1) {
      break;
      printf("too many params");
    }
  }
  puts(buf);
}

int main(int argc, char *argv[]) {
  // echo();
  // good_echo();
  good_echo_2();
}
