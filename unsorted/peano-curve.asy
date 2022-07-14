

import settings;
outformat="pdf";
size(16cm, 16cm);
path unit_path(pair x0, real sc)
{
  pair c0, c1, c2, c3, c4, c5, c6, c7;
  real h;
  h = sc /3.0;
  c0 = x0;
  c1 = x0 + (h, h);
  c2 = x0 + (2 * h, 0);
  c3 = x0 + (3 * h, h);
  c4 = x0 + (2 * h, 2 * h);
  c5 = x0 + (0, 2 * h);
  c6 = x0 + (h, 3 * h);
  c7 = x0 + (3 * h, 3 * h);

  return c0--c1--c2--c3--c4--c1--c5--c6--c4--c7;
}

int num=32;
pair x0;
path pth;
real sc=1.5, x;

pen pn;

int c = 0;


c = 0;
for (int i1 = 0; i1 < num; ++i1){
  for (int i2 = 0; i2 < num; ++i2){
    x0 = i1*(1,0) + i2*(0, 1);
    pth = unit_path(x0, sc);
    x = c/(num**2);
    pn = rgb(x, 1-x, 0) + linewidth(1.0);
    pn = rgb(i1*1.0/num, 0, i2*1.0/num) + linewidth(1.0);
    draw(pth, pn);
    ++c;
  }
}

