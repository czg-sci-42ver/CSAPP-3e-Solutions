#include "csapp.h"
// #define N 64
#define N 640
#define M 640
#define THREAD_NUM 16
#define ARG_ROW N / THREAD_NUM
#define DEBUG
// #define DEBUG_MUL
// #define BUG
// #define SIMPLE
#define TEST 0
struct arg {
  int mat1[ARG_ROW][M];
  int mat2[M][N];
  int return_mat[ARG_ROW][N];
};

void *mul(void *arg) {
  printf("begin mul\n");
  struct arg *tmp_arg = (struct arg *)arg;
  // printf("%ldth thread:%p\n",pthread_self(),&tmp_arg);
  int calc;
  for (int i = 0; i < ARG_ROW; i++) {
    for (int j = 0; j < N; j++) {
      calc = 0;
      for (int k = 0; k < M; k++) {
        calc += tmp_arg->mat1[i][k] * tmp_arg->mat2[k][j];
      }
      tmp_arg->return_mat[i][j] = calc;
#ifdef DEBUG_MUL
      printf("%d ", tmp_arg->return_mat[i][j]);
#endif
    }
#ifdef DEBUG_MUL
    printf("\n");
#endif
  }
  // memcpy(arg, &tmp_arg, sizeof(struct arg));
}

int main(int argc, char **argv) {
  /*
  too many local variable, will maybe cause 'Segmentation fault'.
  below is pwngdb output when '#define N 640 \n #define M 640':
  ────────────────────────────────────────────────────────────────────────[
  DISASM / x86-64 / set emulate on
  ]─────────────────────────────────────────────────────────────────────────
  0x555555556739<main+4>    sub    rsp,0x1f5a4c0
  ►0x555555556740<main+11>   mov    dwordptr[rbp-0x1f5a4b4],edi
  Program received signal SIGSEGV, Segmentation fault.
  */
  int mat1[N][M], mat2[M][N], i, j, pack1[M], pack2[N],
      arg_ret_mat[THREAD_NUM][ARG_ROW][N], arg_mat[ARG_ROW][M];
  pthread_t tid[THREAD_NUM];
  struct arg thread_arg[THREAD_NUM];
  int ret_size = sizeof(arg_ret_mat[0]);
  // struct arg thread_arg={(int*)arg_mat,(int*)mat2,(int*)arg_ret_mat[i]};
  // int* test[ARG_ROW][M]=(int***)arg_mat;

  if (M < N) {
    exit(0);
  }
  unsigned int seed = 100;
#ifdef SIMPLE
  for (i = 0; i < N; i++) {
    pack1[i] = i;
    pack2[i] = i * 2;
  }
  for (; i < M; i++) {
    pack1[i] = i;
  }
#elif TEST == 0
  for (i = 0; i < N; i++) {
    pack1[i] = rand_r(&seed);
    pack2[i] = rand_r(&seed);
  }
  for (; i < M; i++) {
    pack1[i] = rand_r(&seed);
  }
#elif TEST == 1
  for (i = 0; i < N; i++) {
    pack1[i] = 1;
    pack2[i] = 1;
  }
  for (; i < M; i++) {
    pack1[i] = 1;
  }
#endif

  for (i = 0; i < N; i++) {
    memcpy(mat1[i], pack1, M * sizeof(int));
  }

#ifdef DEBUG
  printf("%ld %ld\n", sizeof(pack2), N * sizeof(int));
#endif
  for (i = 0; i < M; i++) {
    memcpy(mat2[i], pack2, N * sizeof(int));
  }
  printf("mat1:\n");
  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++) {
      printf("%d ", mat1[i][j]);
    }
    printf("\n");
  }
  printf("mat2:\n");
  for (i = 0; i < M; i++) {
    for (j = 0; j < N; j++) {
      printf("%d ", mat2[i][j]);
    }
    printf("\n");
  }
  printf("%f should be: %d\n", (double)sizeof(mat1) / sizeof(int), N * M);
  // if (M%THREAD_NUM || N%THREAD_NUM) {
  //     exit(0);
  // }

  printf("begin\n");
#ifdef DEBUG
  /*weird sizeof(int)*ARG_ROW*M -> '4*2*64' -> '640'*/
  printf("debug sizeof(int)*ARG_ROW*M:%ld %ld ARG_ROW:%d M:%d "
         "sizeof(int):%ld\nsizeof(int)*ARG_ROW*N:%ld %d ret_size:%d\n",
         sizeof(arg_mat), sizeof(int) * ARG_ROW * M, ARG_ROW, M, sizeof(int),
         sizeof(int) * ARG_ROW * N, N, ret_size);
#endif
  memcpy(arg_mat, mat1, sizeof(arg_mat));
  for (i = 0; i < THREAD_NUM; i++) {
#ifdef BUG
    memcpy(thread_arg[i].return_mat, mat1, sizeof(int) * ARG_ROW * N);
#else
    memcpy(thread_arg[i].return_mat, mat1, ret_size);
#endif
    memcpy(thread_arg[i].mat1, arg_mat, sizeof(arg_mat));
    memcpy(thread_arg[i].mat2, mat2, sizeof(mat2));
    Pthread_create(&tid[i], NULL, mul, (void *)&thread_arg[i]);
#ifdef DEBUG
    printf("%dth thread:%p\n", i, &thread_arg[i]);
#endif
  }
  for (i = 0; i < THREAD_NUM; i++) {
    Pthread_join(tid[i], NULL);
  }
  for (i = 0; i < THREAD_NUM; i++) {
    for (j = 0; j < ARG_ROW; j++) {
      for (int k = 0; k < N; k++) {
        printf("%d ", thread_arg[i].return_mat[j][k]);
      }
      printf("\n");
    }
  }
}