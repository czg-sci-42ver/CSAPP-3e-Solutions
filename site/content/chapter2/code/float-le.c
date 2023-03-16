/*
 * float-le.c
 */
#include <stdio.h>
#include <assert.h>

unsigned f2u(float x) {
  unsigned im_x = x;
  return *(unsigned*)&x;
}

int float_le(float x, float y) {
  unsigned ux = f2u(x);
  unsigned uy = f2u(y);

  unsigned sx = ux >> 31;
  unsigned sy = uy >> 31;

  // ref: https://github.com/DreamAndDead/CSAPP-3e-Solutions/issues/1
  // return (ux << 1 == 0 && uy << 1 == 0) || /* both zeros */
  //   (sx && !sy) ||                         /* x < 0, y >= 0 or x <= 0, y > 0 */
  //   (!sx && !sy && ux <= uy) ||            /* x > 0, y >= 0 or x >= 0, y > 0 */
  //   (sx && sy && ux >= uy);                /* x < 0, y <= 0 or x <= 0, y < 0 */

  // ux,uy=[0,INT_MIN], ux+uy==ux-uy && ux+uy==uy-ux -> ux-uy==uy-ux ->ux,uy=[0,INT_MIN]
  // return ux + uy == ux - uy && ux + uy == uy - ux
  //               ? ux + uy
  //               : sx ^ sy ? !sx
  //                         : !sx ? ux >= uy
  //                               : ux <= uy;

  return sx == sy ? (sx == 0 ? ux <= uy : ux >= uy) : sx > sy ? sx > sy : ux+uy==ux-uy && ux+uy==uy-ux;
  // return sx == sy ? (sx == 0 ? ux <= uy : ux >= uy) : sx > sy;
}

int main(int argc, char* argv[]) {
  assert(float_le(-0.0, +0.0));
  assert(float_le(+0.0, -0.0));
  assert(float_le(0, 3));
  assert(float_le(-1.23, 2.4));
  assert(float_le(-4, -0));
  assert(float_le(-4, 4));
  return 0;
}


