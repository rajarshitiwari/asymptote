import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Fe = scale3(0.05)*unitsphere;

int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(0.5);
pen thick2=linewidth(2);
pen thick3=linewidth(4);
triple vec,vec1,vec2;
triple x,x1,x2,x3,x4;

n=2;
pen pn1,pn2,pn3,pn4;
pn1 = .5*green+.5*white+opacity(.01);
pn2 = .5*green+.5*white+opacity(.01);
pn3 = .5*green+.5*white+opacity(.01);
pn4 = .5*green+.5*white+opacity(.01);

light lit=currentlight;
pen cl=rgb(0,0,0.9);
pen cl1=rgb(0.9,0,0);
pen cl2=rgb(0,0.9,0);

//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
//currentprojection=perspective(n/2,0,n/2,center=true);
currentprojection=perspective(n,n/2,n/2,center=true);
//currentprojection=perspective(camera=(-0.8,-14.0,2.5),up=(-0.5,0.0,0.0),target=(2.,2.,2.),zoom=1,angle=20.,autoadjust=true);

triple A0=(0,0,0),A1=(n,0,0),A2=(n,n,0),A3=(0,n,0);
triple A4=(0,0,n),A5=(n,0,n),A6=(n,n,n),A7=(0,n,n);

draw(surface(A0--A1--A2--A3--cycle),pn1);
draw(surface(A0--A1--A5--A4--cycle),pn1);
draw(surface(A0--A3--A7--A4--cycle),pn1);

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    if (i1 == 0) {k1 = 0;}else {k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	if (i2 == 0) {k2 = 0;}else {k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else {k3 = 1;}
	    x = (i1,i2,i3);
	    draw(shift(x)*(Fe),red+linewidth(4.0));
	    write(rand());
	  }
      }
  }

//draw(surface(A1--A2--A6--A5--cycle),pn1);

//draw(surface(A0--A1--A2--A3--cycle),pn1);
//draw(surface(x1--x3--x4--cycle),pn2);
//draw(surface(x1--x4--x2--cycle),pn3);
//draw(surface(x2--x3--x4--cycle),pn4);

//draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),rgb(0,0,0)+thick2);
//draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),rgb(0,0,0)+thick2);
//draw((0,0,n)--(n,0,n),rgb(0,0,0)+thick2);
//draw((0,n,n)--(n,n,n),rgb(0,0,0)+thick2);
