12.21

---

We can also follow https://en.wikipedia.org/wiki/Readers%E2%80%93writers_problem#Second_readers%E2%80%93writers_problem where readTry is like one variant of the original w in the book to starve reader (My last comment showing implementation based on the other wikipedia link is marked as one spam ... I may re-check here sometime later).
$ diff 12.21_mimic_wikipedia.c 12.21_mimic_wikipedia_2.c
--- 12.21_mimic_wikipedia.c 2024-09-09 14:55:15.379568539 +0800
+++ 12.21_mimic_wikipedia_2.c 2024-09-09 15:38:26.343042072 +0800
@@ -11,25 +11,23 @@
static int readtimes;
static int writetimes;
static int writecnt, readcnt, i;
-// https://en.wikipedia.org/wiki/Readers%E2%80%93writer_lock#Using_a_condition_variable_and_a_mutex
-// We use one mutex g to protect all state variables (i.e. the above static int variables excluding i).
-// Here mutex is g and w is cond.
-sem_t mutex, w;
+// https://en.wikipedia.org/wiki/Readers%E2%80%93writers_problem#Second_readers%E2%80%93writers_problem
+//Here we must use 2 mutex's rmutex, wmutex to avoid deadlock "Figure 12.44 Progress graph for a program that can deadlock".
+sem_t rmutex, wmutex, readTry, w;

void *reader(void *vargp) {
while (1) {
- P(&mutex); // Lock g
- // writer first
- if (writecnt > 0){
- V(&mutex); // release g for "wait cond, g"
- continue;
- }
-
+ /*
+ See "Mutex lock ordering rule ... each thread acquires its mutexes in order and releases them in reverse order".
+ */
+ P(&readTry);
+ P(&rmutex); // Lock g
readcnt++; // Increment num_readers_active
readtimes++;
if (readcnt == 1)
P(&w); // acquire cond for "wait cond, g"
- V(&mutex);
+ V(&rmutex);
+ V(&readTry);

/* Critical section */
if (i%10000==0) {
@@ -38,11 +36,11 @@
}
/* Critical section */

- P(&mutex);
+ P(&rmutex);
readcnt--;
if (readcnt == 0)
V(&w); // Notify cond (broadcast)
- V(&mutex);
+ V(&rmutex);
}
}

@@ -51,30 +49,43 @@
*/
void *writer(void *vargp) {
while (1) {
- P(&mutex);
+ P(&wmutex);
// one more writer wait to write
writecnt++;
+ if (writecnt==1) {
+ P(&readTry);
+ }
writetimes++;
if (writetimes == WRITE_LIMIT) {
+ /*
+ TODO I add rmutex here due to accessing readtimes (This is the same as wikipedia). I don't know whether this may cause some problems.
+ IMHO if some program is stuck here, then it will have 2 mutex's held (wmutex and readTry).
+ Then another writer may be stuck at P(&wmutex) or P(&w) holding nothing.
+ Another reader may be stuck at P(&rmutex) still holding nothing.
+ So no deadlocks.
+ */
+ P(&rmutex);
printf("read/write: %d/%d\n", readtimes, writetimes);
+ V(&rmutex);
exit(0);
}
- V(&mutex); // release g for "wait cond, g"
+ V(&wmutex); // release g for "wait cond, g"

- /*
- Notice here we should not do P(&w) between P(&mutex) and V(&mutex) to avoid deadlock.
- */
P(&w); // acquire cond for "wait cond, g"

/* Critical section */
++i;
/* Critical section */

- P(&mutex);
+ V(&w);
+