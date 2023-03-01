#include <stdio.h>
#include <assert.h>

#define NEW 1
typedef unsigned packet_t;

int xbyte(packet_t word, int bytenum) {
  #if NEW==0
    printf("def");
    int max_bytenum = 3;
    // unsigned int test = 0xff;
    // printf("%x %x %X %x\n",test>>3,test,~0,max_bytenum);
    return (int) word << ((max_bytenum - bytenum) << 3) >> (max_bytenum << 3);
  #elif NEW ==1
    // printf("ndef");
    int shifted_word = (((word >> (bytenum << 3)) << (3 << 3)) >> (3 << 3));
    // int mask = ((((word >> (bytenum << 3)) << (3 << 3)) >> (3 << 3)) >> 7) << 8;
    int mask = (shifted_word >> 7) << 8;
    printf("%08x %08x\n",shifted_word,mask);
    return shifted_word-mask;
  #endif
}

int main(int argc, char* argv[]) {
  assert(xbyte(0x00112233, 0) == 0x33);
  assert(xbyte(0x00112233, 1) == 0x22);
  assert(xbyte(0x00112233, 2) == 0x11);
  assert(xbyte(0x00112233, 3) == 0x00);

  assert(xbyte(0xAABBCCDD, 0) == 0xFFFFFFDD);
  assert(xbyte(0xAABBCCDD, 1) == 0xFFFFFFCC);
  assert(xbyte(0xAABBCCDD, 2) == 0xFFFFFFBB);
  assert(xbyte(0xAABBCCDD, 3) == 0xFFFFFFAA);
  assert(xbyte(0xffBBCCDD, 3) == 0xFFFFFFff);

  return 0;
}

