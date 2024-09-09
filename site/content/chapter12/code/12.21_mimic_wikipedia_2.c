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
// https://en.wikipedia.org/wiki/Readers%E2%80%93writers_problem#Second_readers%E2%80%93writers_problem
// Here we must use 2 mutex's rmutex, wmutex to avoid deadlock "Figure 12.44 Progress graph for a program that can deadlock".
sem_t rmutex, wmutex, readTry, w;

void *reader(void *vargp) {
  while (1) {
    /*
    See "Mutex lock ordering rule ... each thread acquires its mutexes in order and releases them in reverse order".
    */
    P(&readTry);
    P(&rmutex); // Lock g
    readcnt++; // Increment num_readers_active
    readtimes++;
    if (readcnt == 1)
      P(&w); // acquire cond for "wait cond, g"
    V(&rmutex);
    V(&readTry);

    /* Critical section */
    if (i%10000==0) {
      printf("reader Critical section with i:%d\n",i);
      fflush(stdout);
    }
    /* Critical section */

    P(&rmutex);
    readcnt--;
    if (readcnt == 0)
      V(&w); // Notify cond (broadcast)
    V(&rmutex);
  }
}

/*
Here we use writecnt to function as both num_writers_waiting and writer_active.
*/
void *writer(void *vargp) {
  while (1) {
    P(&wmutex);
    // one more writer wait to write
    writecnt++;
    if (writecnt==1) {
      P(&readTry);
    }
    writetimes++;
    if (writetimes == WRITE_LIMIT) {
      /*
      TODO I add rmutex here due to accessing readtimes (This is the same as wikipedia). I don't know whether this may cause some problems.
      IMHO if some program is stuck here, then it will have 2 mutex's held (wmutex and readTry).
      Then another writer may be stuck at P(&wmutex) or P(&w) holding nothing.
      Another reader may be stuck at P(&rmutex) still holding nothing.
      So no deadlocks.
      */
      P(&rmutex);
      printf("read/write: %d/%d\n", readtimes, writetimes);
      V(&rmutex);
      exit(0);
    }
    V(&wmutex); // release g for "wait cond, g"

    P(&w); // acquire cond for "wait cond, g"

    /* Critical section */
    ++i;
    /* Critical section */

    V(&w);

    P(&wmutex);
    // writer has written
    writecnt--;
    if (writecnt==0) {
      V(&readTry);
    }
    V(&wmutex);
  }
}

void init(void) {
  writecnt = 0;
  readcnt = 0;
  readtimes = 0;
  writetimes = 0;
  Sem_init(&w, 0, 1);
  Sem_init(&rmutex, 0, 1);
  Sem_init(&wmutex, 0, 1);
  Sem_init(&readTry, 0, 1);
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
