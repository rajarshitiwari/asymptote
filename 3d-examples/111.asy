import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
int n;
int j1,j2,j3;

//size(12cm,0);
size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
n=4;
//currentprojection=perspective(10,11,n/2+0.5,autoadjust=true,center=true);
currentprojection=perspective(12,-6,2,center=true);
light lit=currentlight;
pen pn1,pn2;
pn1 = .5*red+.5*white+opacity(.5);
draw(surface((n,0,0)--(0,n,0)--(0,0,n)--cycle),pn1);
pn2 = .5*blue+.5*white+opacity(.5);
//draw(surface((0,2,0)--(n-2,n,0)--(n,n,2)--(n,2,n)--(n-2,0,n)--(0,0,2)--cycle),pn2);
for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;} else {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;} else {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;} else {j3 = 1;}

	    if (abs(i1+i2+i3) <= n)
	      {
		draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
	      }

	    draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.5)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.5)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.5)+thick1,lit);
	  }
      }
  }
