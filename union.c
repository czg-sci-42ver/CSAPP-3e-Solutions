// https://hackaday.com/2018/03/02/unionize-your-variables-an-introduction-to-advanced-data-types-in-c/
#include <stdint.h>
#include <stdio.h>
union data_bytes {
  uint32_t data;
  uint8_t bytes[4];
};

/*Computer Systems A Programmers Perspective (3rd).pdf CS 81*/
typedef unsigned char* byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
  int i;
  for (i = 0; i < len; i++)
    if (NULL != &start[i]) { /*may no use*/
        printf(" %.2x", start[i]);
    }
}
void show_int(int x) { show_bytes((byte_pointer)&x, sizeof(int)); }

int main() {
  uint32_t value = 0x12345678;
  union data_bytes db;
  db.data = value;

  // shift one byte to the right and extract the LSB
  printf("0x%02x\n", (value >> 8) & 0xff);
  printf("0x%02x\n", value >> 8);
  // cast to uint8_t pointer, access it as an array
  printf("0x%02x\n", ((uint8_t*)&value)[1]);
  // cast to uint8_t pointer, access via pointer arithmetic
  printf("0x%02x\n", *(((uint8_t*)&value) + 1));
  // simply take the union field
  printf("0x%02x\n", db.bytes[1]);

  /*second program*/
  union float_inspection {
    float floatval;
    uint32_t intval;
    struct {
      uint32_t fraction : 23;
      uint32_t exponent : 8;
      uint32_t sign : 1;
    };
    struct {
      uint32_t sign : 1;
      uint32_t fraction : 23;
      uint32_t exponent : 8;
    } test_frac;
  } fi;

  float f = 65.65625;
  uint32_t i = *((uint32_t*)&f);
  fi.floatval = f;

  printf("%d %d 0x%x\n", fi.sign, fi.exponent, fi.fraction);
  printf("%d %d 0x%x\n", (i >> 31), ((i >> 23) & 0xff), (i & 0x7fffff));
  printf("%d %d 0x%x\n", fi.test_frac.sign, fi.test_frac.exponent,
         fi.test_frac.fraction);

  /*CS*/
  show_int(0x1234);
}
