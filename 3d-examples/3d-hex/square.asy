
import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

size(16cm,0);

real aa = 1.0, bb = 1.0, cc = 1.0;
pen thick1=linewidth(0.01);
pen thick2=linewidth(10)+blue;
pen thick3=linewidth(10)+green;

pair a1,a2,a3,a4;


a1 = (1,1); a2 = (-1,1); a3 = (-1,-1); a4 = (1,-1);

dot(a1,thick2);dot(a2,thick2);dot(a3,thick2);dot(a4,thick2);
draw(a1--a2--a3--a4--a1,thick1);

real theta=pi, a = 1;


//a1 = a*(1-sin(theta),1+sin(theta));
//a2 = a*(-1-sin(theta),1-sin(theta));
//a3 = a*(-1+sin(theta),-1-sin(theta));
//a4 = a*(1+sin(theta),-1+sin(theta));
int n=1200;
for (int i=0; i<=n; ++i)
  {
    theta=i*pi/n;
    write(i);
    a1 = a*(cos(theta)-sin(theta),sin(theta)+cos(theta));
    a2 = a*(-cos(theta)-sin(theta),-sin(theta)+cos(theta));
    a3 = a*(-cos(theta)+sin(theta),-sin(theta)-cos(theta));
    a4 = a*(cos(theta)+sin(theta),sin(theta)-cos(theta));
    
    //dot(a1,thick3);dot(a2,thick3);dot(a3,thick3);dot(a4,thick3);
    draw(a1--a2--a3--a4--a1,thick1+gray(i/n));
  }
