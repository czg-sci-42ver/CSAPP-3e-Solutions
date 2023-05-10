/*
 * mysystem.c
 */
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "csapp.h"

int mysystem(char* command) {
  pid_t pid;
  int status;

  if ((pid = Fork()) == 0) {
    /* child process */
    char* argv[4] = { "", "-c", command, NULL };
    execve("/bin/sh", argv, environ);
  }
  printf("env: %s",*environ);

  /* print child pid so we can kill it */
  printf("child pid: %d\n", pid);

  if (Waitpid(pid, &status, 0) > 0) {
    /* exit normally */
    if (WIFEXITED(status))
      return WEXITSTATUS(status);

    /* exit by signal */
    if (WIFSIGNALED(status)){
      printf("catch signal\n");
      return WTERMSIG(status);
    }
      
  }
}

void handler(int sig)
{
  printf("catch signal %s\n",strsignal(sig));
  return;
}

int main(int argc, char* argv[]) {
  int code;

  code = mysystem("./exit-code");
  printf("normally exit, code: %d\n", code); fflush(stdout);

  // Signal(SIGINT, handler);
  code = mysystem("./wait-sig");
  printf("exit caused by signal, code: %d\n", code); fflush(stdout);
  return 0;
}

