import math;
import contour;
import solids;
import palette;
import settings;
outformat="pdf";


size(50cm);

int num1, num2;

num1 = 100; num2 = num1;

pair A1, A2, x0;
real theta;

theta = pi/2.0;//pi/3.0;

A1 = (1.0,0.0);
A2 = (cos(theta), sin(theta));
int i1, i2, j1, j2, k1, k2;

path ell,rec;
pen pn1, pn2, pn3;

path ellipse(pair c, real a, real b)
{
  return shift(c)*scale(a,b)*unitcircle;
}
void draw_patch(pair x0, real slnt, pen pn1, pen pn2)
{
  path rec, ell;
  rec = x0--x0+A1--x0+A1+A2--x0+A2--cycle;
  ell = ellipse(x0+0.5*(A1+A2),0.3,0.3);
  rec = slant(slnt)*rec;
  ell = slant(slnt)*ell;
  filldraw(rec,pn2);
  filldraw(ell,pn1);
}

pn1 = black;
pn2 = cyan;

for (i1 = 0; i1 < num1; ++i1)
  {
    for (i2 = 0; i2 < num2 ; ++i2)
      {
	x0=i1*A1+i2*A2;
	if (unitrand() >= 0.5)
	  {
	    pn1 = black;
	  }
	else
	  {
	    pn1 = white;
	  }
      	draw_patch(x0, 0.0, pn1, pn2);
      }	
  }
