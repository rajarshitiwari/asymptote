import math;
import contour;
import solids;
import palette;
import settings;
outformat="pdf";


size(50cm);

int num1, num2;

num1 = 400; num2 = num1;

pair A1, A2, x0;
real theta;

theta = pi/2.0;//pi/3.0;

A1 = (1.0,0.0);
A2 = (cos(theta), sin(theta));
int i1, i2, j1, j2, k1, k2;

path ell,rec;
pen pn1, pn2, pn3;

void draw_patch(pair x0, real prob, real slnt, pen pn1)
{
  path rec; pen pp;
  rec = x0--x0+A1; rec = slant(slnt)*rec;
  if (unitrand() >= prob){draw(rec,pn1);}
  rec = x0+A1--x0+A1+A2; rec = slant(slnt)*rec;
  if (unitrand() >= prob){draw(rec,pn1);}
  rec = x0+A1+A2--x0+A2; rec = slant(slnt)*rec;
  if (unitrand() >= prob){draw(rec,pn1);}
  rec = x0+A2--x0; rec = slant(slnt)*rec;
  if (unitrand() >= prob){draw(rec,pn1);}
  //rec = x0--x0+A1--x0+A1+A2--x0+A2--cycle; rec = slant(slnt)*rec;
  //filldraw(rec,pn1);
}

  pn1 = black+linewidth(1);
pn2 = cyan;

for (i1 = 0; i1 < num1; ++i1)
  {
    for (i2 = 0; i2 < num2 ; ++i2)
      {
	x0=i1*A1+i2*A2;
	draw_patch(x0, 0.6, 0.0, pn1);
      }
  }
