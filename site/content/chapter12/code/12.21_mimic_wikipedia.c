/*
 * 12.21.c
 */
#include <stdio.h>

#include "csapp.h"

#define WRITE_LIMIT 100000
#define PEOPLE 4

static int readtimes;
static int writetimes;
static int writecnt, readcnt, i;
// https://en.wikipedia.org/wiki/Readers%E2%80%93writer_lock#Using_a_condition_variable_and_a_mutex
// We use one mutex g to protect all state variables (i.e. the above static int variables excluding i).
// Here mutex is g and w is cond.
sem_t mutex, w;

void *reader(void *vargp) {
  while (1) {
    P(&mutex); // Lock g
    // writer first
    if (writecnt > 0){
      V(&mutex); // release g for "wait cond, g"
      continue;
    }
    
    readcnt++; // Increment num_readers_active
    readtimes++;
    if (readcnt == 1)
      P(&w); // acquire cond for "wait cond, g"
    V(&mutex);

    /* Critical section */
    if (i%10000==0) {
      printf("reader Critical section with i:%d\n",i);
      fflush(stdout);
    }
    /* Critical section */

    P(&mutex);
    readcnt--;
    if (readcnt == 0)
      V(&w); // Notify cond (broadcast)
    V(&mutex);
  }
}

/*
Here we use writecnt to function as both num_writers_waiting and writer_active.
*/
void *writer(void *vargp) {
  while (1) {
    P(&mutex);
    // one more writer wait to write
    writecnt++;
    writetimes++;
    if (writetimes == WRITE_LIMIT) {
      printf("read/write: %d/%d\n", readtimes, writetimes);
      exit(0);
    }
    V(&mutex); // release g for "wait cond, g"

    /*
    Notice here we should not do P(&w) between P(&mutex) and V(&mutex) to avoid deadlock.
    */
    P(&w); // acquire cond for "wait cond, g"

    /* Critical section */
    ++i;
    /* Critical section */

    P(&mutex);
    // writer has written
    writecnt--;
    V(&w);
    V(&mutex);
  }
}

void init(void) {
  writecnt = 0;
  readcnt = 0;
  readtimes = 0;
  writetimes = 0;
  Sem_init(&w, 0, 1);
  Sem_init(&mutex, 0, 1);
}

int main(int argc, char *argv[]) {
  int i;
  pthread_t tid;

  init();

  for (i = 0; i < PEOPLE; i++) {
    if (i % 2 == 0)
      Pthread_create(&tid, NULL, reader, NULL);
    else
      Pthread_create(&tid, NULL, writer, NULL);
  }

  Pthread_exit(NULL);
  exit(0);
}
