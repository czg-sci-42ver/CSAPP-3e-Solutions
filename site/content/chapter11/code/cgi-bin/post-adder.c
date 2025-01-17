/*
 * post-adder.c - a minimal CGI program that adds two numbers together
 */
#include "../csapp.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
  char *buf, *p,*old_buf=(char *)malloc(100);
  char arg1[MAXLINE], arg2[MAXLINE], content[MAXLINE];
  int n1=0, n2=0;

  /* Extract the two arguments */
  if ((buf = getenv("QUERY_STRING")) != NULL) {
    // printf("buf:%s",buf);
    strcpy(old_buf, buf);
    p = strchr(buf, '&');
    *p = '\0';
    sscanf(buf, "first=%d", &n1);
    sscanf(p+1, "second=%d", &n2);
    printf("n2: %d",n2);
  }

  /* Make the response body */
  sprintf(content, "Welcome to add.com: ");
  sprintf(content, "%sTHE Internet addition portal.\r\n<p>", content);
  sprintf(content, "%sThe answer is: %d + %d = %d, and old_buf: %s\r\n<p>",
      content, n1, n2, n1 + n2,old_buf);
  sprintf(content, "%sThanks for visiting!\r\n", content);

  /* Generate the HTTP response */
  printf("Connection: close\r\n");
  printf("Content-length: %d\r\n", (int)strlen(content));
  printf("Content-type: text/html\r\n\r\n");
  printf("%s", content);
  fflush(stdout);
  free(old_buf);
  exit(0);
}
