/*
 * 12.20.c
 */
#include <stdio.h>

#include "csapp.h"

#define WRITE_LIMIT 100000
#define PEOPLE 20 // 10 reader and 10 writer
#define N 5
#define CYCLE 10000
#define USE_READER_FIRST_LOCK
/*
If NOT_DEBUG_ORDER, then both reader and writer use the same order
P(reader_first_lock),P(mutex),V(mutex),V(reader_first_lock)
otherwise they are different like
one is same as above
while the other P(mutex),P(reader_first_lock),V(reader_first_lock),V(mutex)
*/
#define NOT_DEBUG_ORDER

/*
Also see https://dreamanddead.github.io/CSAPP-3e-Solutions/chapter12/12.20/#comment-6273427059
for how COMPLEX_SECTION influences the result.
*/
#define COMPLEX_SECTION
#ifdef COMPLEX_SECTION
#define TRACK_SWITCH
#define TRACK_TIMES
#endif

static int readtimes;
static int writetimes;
static int read_first;
sem_t mutex;
sem_t readercnt;
#ifdef USE_READER_FIRST_LOCK
sem_t reader_first_lock;
long int P_reader_first_cnt;
long int V_reader_first_cnt;
#endif

void *reader(void *vargp) {
  int block_continue = 0;
  while (1) {
#ifdef USE_READER_FIRST_LOCK
    P_count(&reader_first_lock, &P_reader_first_cnt);
#endif
    if (!read_first) {
      /*
      Sleep is better, but the time is not easy to decide.
      */
      block_continue = 1;
      goto release_lock;
    }
    /*
    recommend not to use goto (See OSTEP book), although here I use it.
    */
    P(&readercnt);
    P(&mutex);

    readtimes++;
#ifdef TRACK_TIMES
    printf("readtimes %d\n", readtimes);
#endif
    V(&mutex);
    V(&readercnt);
    if ((readtimes % (WRITE_LIMIT / CYCLE) == 0) && (readtimes > 0)) {
      read_first = 0;
#ifdef TRACK_SWITCH
      printf("switch to write_first\n");
#endif
      block_continue = 1;
      goto release_lock;
    }
    block_continue = 0;
  /*
  This must be put at the end to avoid always `block_continue` and can't modify
  `readtimes` so that `block_continue` also can't be modified.
  */
  release_lock:
#ifdef USE_READER_FIRST_LOCK
    V_count(&reader_first_lock, &V_reader_first_cnt);
#endif
    if (block_continue) {
      // sleep(1);
      continue;
    }
  }
}

void *writer(void *vargp) {
  while (1) {
#ifdef USE_READER_FIRST_LOCK
    P_count(&reader_first_lock, &P_reader_first_cnt);
#endif
    if (read_first) {
#ifdef USE_READER_FIRST_LOCK
      V_count(&reader_first_lock, &V_reader_first_cnt);
#endif
      // sleep(1);
      continue;
    }
#ifdef USE_READER_FIRST_LOCK
    V_count(&reader_first_lock, &V_reader_first_cnt);
#endif
    P(&mutex);

    writetimes++;
#ifdef TRACK_TIMES
    printf("writetimes %d\n", writetimes);
#endif
    if (writetimes == WRITE_LIMIT) {
      printf("read/write: %d/%d\n", readtimes, writetimes);
      exit(0);
    }
#ifdef NOT_DEBUG_ORDER
    V(&mutex);
#endif

    /*
    Notice although the P,V,P,V for `mutex` seems to be weird,
    here it to keep the same order as the reader.
    Although sometimes different order may work well with small PEOPLE num, but
    is not correct all the time.
    */
#ifdef USE_READER_FIRST_LOCK
    P_count(&reader_first_lock, &P_reader_first_cnt);
#endif
#ifdef NOT_DEBUG_ORDER
    P(&mutex);
#endif
    if ((writetimes % (WRITE_LIMIT / CYCLE) == 0) && (writetimes > 0)) {
#ifdef TRACK_SWITCH
      printf("switch to read_first\n");
#endif
      read_first = 1;
    }
#ifdef NOT_DEBUG_ORDER
    V(&mutex);
#endif
#ifdef USE_READER_FIRST_LOCK
    V_count(&reader_first_lock, &V_reader_first_cnt);
#endif
#ifndef NOT_DEBUG_ORDER
    V(&mutex);
#endif
  }
}

void init(void) {
  readtimes = 0;
  writetimes = 0;
  Sem_init(&mutex, 0, 1);
  Sem_init(&readercnt, 0, N);
#ifdef USE_READER_FIRST_LOCK
  Sem_init(&reader_first_lock, 0, 1);
#endif
  read_first = 1;
  P_reader_first_cnt = 0;
  V_reader_first_cnt = 0;
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
