12.21

---

Also see https://en.wikipedia.org/wiki/Readers%E2%80%93writer_lock#Using_a_condition_variable_and_a_mutex . Then we can do as the following (notice here I tried to use mutex to function as cond. Obviously without using cond from lib, this is a bit naive especially for wait implementation. But the basic ideas can be still be conveyed clearly):
$ diff 12.21_fix.c 12.21_mimic_wikipedia.c
--- 12.21_fix.c 2024-09-09 13:40:47.537704715 +0800
+++ 12.21_mimic_wikipedia.c 2024-09-09 14:39:34.353938222 +0800
@@ -10,63 +10,70 @@

static int readtimes;
static int writetimes;
-static int writecnt, readcnt;
-sem_t readtimes_mutex, readcnt_mutex, mutex, w;
-
-static int number;
+static int writecnt, readcnt, i;
+// https://en.wikipedia.org/wiki/Readers%E2%80%93writer_lock#Using_a_condition_variable_and_a_mutex
+// We use one mutex g to protect all state variables (i.e. the above static int variables excluding i).
+// Here mutex is g and w is cond.
+sem_t mutex, w;

void *reader(void *vargp) {
while (1) {
- P(&mutex);
+ P(&mutex); // Lock g
// writer first
if (writecnt > 0){
- V(&mutex);
+ V(&mutex); // release g for "wait cond, g"
continue;
}
- V(&mutex);
-
- P(&readcnt_mutex);
- readcnt++;
+
+ readcnt++; // Increment num_readers_active
+ readtimes++;
if (readcnt == 1)
- P(&w);
- V(&readcnt_mutex);
+ P(&w); // acquire cond for "wait cond, g"
+ V(&mutex);

- P(&readtimes_mutex);
/* Critical section */
- readtimes++;
+ if (i%10000==0) {
+ printf("reader Critical section with i:%d\n",i);
+ fflush(stdout);
+ }
/* Critical section */
- V(&readtimes_mutex);

- P(&readcnt_mutex);
+ P(&mutex);
readcnt--;
if (readcnt == 0)
- V(&w);
- V(&readcnt_mutex);
+ V(&w); // Notify cond (broadcast)
+ V(&mutex);
}
}

+/*
+Here we use writecnt to function as both num_writers_waiting and writer_active.
+*/
void *writer(void *vargp) {
while (1) {
P(&mutex);
// one more writer wait to write
writecnt++;
- V(&mutex);
-
- P(&w);
-
- /* Critical section */
writetimes++;
if (writetimes == WRITE_LIMIT) {
printf("read/write: %d/%d\n", readtimes, writetimes);
exit(0);
}
- /* Critical section */
+ V(&mutex); // release g for "wait cond, g"

- V(&w);
+ /*
+ Notice here we should not do P(&w) between P(&mutex) and V(&mutex) to avoid deadlock.
+ */
+ P(&w); // acquire cond for "wait cond, g"
+
+ /* Critical section */
+ ++i;
+ /* Critical section */

P(&mutex);
// writer has written
writecnt--;
+ V(&w);
V(&mutex);
}
}
@@ -78,8 +85,6 @@
   writetimes = 0;
   Sem_init(&w, 0, 1);
   Sem_init(&mutex, 0, 1);
-  Sem_init(&readcnt_mutex, 0, 1);
-  Sem_init(&readtimes_mutex, 0, 1);
 }