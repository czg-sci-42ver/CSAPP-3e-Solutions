This is written when I reviewed csapp while learning other books.
# Ignore some weird codes (Sorry, I learnt csapp first before reading other CS books. So I may write some weird unnecessary codes)
- `12.19_comment_1.c`
  I don't know why I add one useless mutex `r`...
- [`12.19_fix.c`](http://disq.us/p/2ubg52a) is based on `12.19_comment_2.c` (the latter one can be skipped). ~~has writer starvation problem.~~ (also [see](http://disq.us/p/309343y))
  - `12.19_mul_writers.c` will also have writer starvation problem where `readcnt` is given too high priority.
- `12.20_self_test.c` wierdly exits readers by `pthread_exit(0)` after reaching the limit...
- [`12.20_fair*.c`](http://disq.us/p/2vr1bar)  (I don't know why I uses *too many* `#ifdef` there. My written code is really not friendly for readers.)
  > if *implicitly switching* between the reader and the writer by changing `reader_first` *each `WRITE_LIMIT / CYCLE`* (CYCLE can be anything that divides WRITE_LIMIT with no remainder) based on the above config
- `12.21_self_test.c` has the wrong logic. See `diff 12.19.c 12.21_self_test.c | less_n` and [this](http://disq.us/p/3093el8).
- I don't know why I ~~wrote `compile.sh  more_simple_compile.sh  simple_compile.sh` and~~ created DMSXL dir.