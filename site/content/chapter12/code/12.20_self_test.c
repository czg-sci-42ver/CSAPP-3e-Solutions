/*
 * 12.19.c
 */
#include <pthread.h>
#include <stdio.h>

#include "csapp.h"

#define WRITE_LIMIT 100000
#define PEOPLE 400
#define READ_LIMIT 2

static int readcnt;
// if a reader is waiting when writing, reader first next round
sem_t mutex;

void *reader(void *vargp) {
  while (1) {
    P(&mutex);
    readcnt++;
    V(&mutex);

    /* Critical section */
    if (readcnt == READ_LIMIT) {
      printf("in reader: readcnt %d\n", readcnt); /*just placeholder*/
      P(&mutex);
      readcnt--;
      V(&mutex);
      pthread_exit(0);
    }
    /* Critical section */

    P(&mutex);
    readcnt--;
    V(&mutex);
  }
}

void *writer(void *vargp) {
  while (1) {
    P(&mutex);

    /* Critical section */
    /*
    more simpler than reader so as to always block reader.
    */
    printf("in writer: readcnt %d\n", readcnt); /*just placeholder*/
    /* Critical section */

    // if a reader is waiting, reader first next round
    V(&mutex);
  }
}

void init(void) {
  readcnt = 0;
  Sem_init(&mutex, 0, 1);
}

int main(int argc, char *argv[]) {
  int i;
  pthread_t tid;

  init();

  for (i = 0; i < PEOPLE; i++)
    if (i % 2 == 0)
      Pthread_create(&tid, NULL, reader, NULL);
    else
      Pthread_create(&tid, NULL, writer, NULL);

  Pthread_exit(NULL);
  exit(0);
}
