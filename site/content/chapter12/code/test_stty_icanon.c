#i n cl u d e < u ni s t d.h>
#i n cl u d e < c t ype.h>
i n t main(i n t argc, cha r ∗ argv[]) {
  cha r ch;
  w hil e(read(0, &ch, 1) > 0) {
    i f(i s l o w e r(ch)) ch = ' a ' + ' z ' − ch;
    w ri t e(1, &ch, 1);
  }
  r e t u r n 0;
}
