/*
 * int-size-is-32.c
 */
#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/types.h>

/* The following function does not run properly on some machine */
/*
int bad_int_size_is_32() {
  int set_msb = 1 << 31;
  int beyond_msb = 1 << 32;

  return set_msb && !beyond_msb;
}
*/

int int_size_is_32() {
  int set_msb = 1 << 31;
  int beyond_msb = set_msb << 1;
  printf("%x %x\n", beyond_msb, set_msb);

  return set_msb && !beyond_msb;
}

/*wrong*/
// int int_size_is_32_for_16bit() {
//   int16_t set_msb =
//       1
//       << 15 << 15
//       << 1; /* wrong , see
//                https://github.com/DesmondoRay/CSAPP-3e/blob/master/chapter_2/p67.c*/
//   printf("%x %x %s\n", (int16_t)set_msb, set_msb, __func__);
//   // printf("%x %x",1<<15<<15,1<<(15<<15));
//   int beyond_msb = set_msb << 1;

//   return set_msb && !beyond_msb;
// }

int int_size_is_32_for_64bit_when_min_32() {
  int64_t set_msb_64 = 1 << 31;
  int64_t beyond_msb_64 = set_msb_64 << 1;
  return set_msb_64 && !beyond_msb_64;
}

int int_size_is_32_for_16bit_when_min_16() {
  // int16_t set_msb_16 = (int16_t) (1 << 31);
  // int16_t beyond_msb_16 = set_msb_16 << 1;
  
  // printf("%x %x %lx %lx\n", set_msb_16, beyond_msb_16, set_msb_64,
  //        beyond_msb_64);

  // https://github.com/DesmondoRay/CSAPP-3e/blob/master/chapter_2/p67.c
  /*not valid when 64bit*/
  // typedef int64_t int;
  int16_t set_msb = 1 << 14;
  int16_t beyond_msb = set_msb << 15;
  int16_t beyond_msb_32 = beyond_msb << 15;
  // int16_t big_than_16 = (beyond_msb == (set_msb + set_msb));
  // printf(" %lx %lx %lx %d\n", set_msb, beyond_msb, big_than_16,
  //        set_msb && (!beyond_msb || big_than_16));
  printf("(int16_t)set_msb %x %x %x\n", set_msb,
         beyond_msb, beyond_msb_32);
  // return set_msb && (!beyond_msb || big_than_16);


  return set_msb && beyond_msb &&!beyond_msb_32;
}

int int_size_is_32_for_32bit_when_min_16(){
  int32_t set_msb = 1 << 14;
  int32_t beyond_msb = set_msb << 15;
  int32_t beyond_msb_32 = beyond_msb << 15;
  return set_msb && beyond_msb &&!beyond_msb_32;
}

int int_size_is_32_for_64bit_when_min_16(){
  int64_t set_msb = 1 << 14;
  int64_t beyond_msb = set_msb << 15;
  int64_t beyond_msb_32 = beyond_msb << 15;
  return set_msb && beyond_msb &&!beyond_msb_32;
}

int main(int argc, char *argv[]) {
  assert(int_size_is_32());
  assert(!int_size_is_32_for_16bit_when_min_16());
  assert(!int_size_is_32_for_64bit_when_min_32());
  assert(int_size_is_32_for_32bit_when_min_16());
  assert(!int_size_is_32_for_64bit_when_min_16());
  // printf("%x",1<<31<<1);
  return 0;
}
