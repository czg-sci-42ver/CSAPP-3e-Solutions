/*
 * 10.8.c
 */
#include <stdio.h>
#include "csapp.h"


int main(int argc, char* argv[],char **envp) {
  struct stat stat;
  char *type, *readok;

  int fd;
  if (argc <= 1)
    fd = 0; // stdin
  else
    fd = atoi(argv[1]);

  if (Fork() == 0) { /* child */
	  //Dup2(3,0);
	  Dup2(0,3);
	  //Execve("fstatcheck", argv, envp);
	  Execve("10.8", argv, envp);

	  Fstat(fd, &stat);
	  exit(0);
  }

  if (S_ISREG(stat.st_mode))
    type = "regular";
  else if (S_ISDIR(stat.st_mode))
    type = "dir";
  else
    type = "other";
  if ((stat.st_mode & S_IRUSR))
    readok = "yes";
  else
    readok = "no";

  printf("type: %s, read: %s\n", type, readok);

  return 0;
}


