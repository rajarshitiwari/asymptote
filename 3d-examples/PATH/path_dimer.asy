import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="png";

surface Mo = scale3(0.07)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
int n;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(5);
triple vec,vec1,vec2;
n=5;
currentprojection=perspective(2.5,10,n/2+0.5,center=true);
light lit=currentlight;

for (int i1 = 0; i1 <= n; ++i1)
  {
    if (i1 == n) {j1 = 0;}else{j1 = 1;}
    if (i1 == 0) {k1 = 0;}else{k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {
	if (i2 == n) {j2 = 0;}else{j2 = 1;}
	if (i2 == 0) {k2 = 0;}else{k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {
	    if (i3 == n) {j3 = 0;}else{j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else{k3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {
		draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	      }
	    else
	      {
		if (i1 % 4 == 1 ||i1 % 4 == 2)
		  {
		    draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
		    vec = (0,0,1);
		    vec = 1.0*vec;
		    vec1 = (i1,i2,i3)-0.3*vec;
		    vec2 = (i1,i2,i3)+0.5*vec;
		    draw((i1,i2,i3)..(i1+j1,i2,i3),blue+thick1,lit);draw((i1,i2,i3)..(i1,i2+j2,i3),blue+thick1,lit);
		    draw((i1,i2,i3)..(i1,i2,i3+j3),blue+thick1,lit);draw((i1,i2,i3)..(i1-k1,i2,i3),blue+thick1,lit);
		    draw((i1,i2,i3)..(i1,i2-k2,i3),blue+thick1,lit);draw((i1,i2,i3)..(i1,i2,i3-k3),blue+thick1,lit);
		  }else
		  {
		    draw(shift((i1,i2,i3))*Fe,red+linewidth(4.0));
		    vec = (0,0,-1);
		    vec = 1.0*vec;
		    vec1 = (i1,i2,i3)-0.3*vec;
		    vec2 = (i1,i2,i3)+0.5*vec;
		    draw((i1,i2,i3)..(i1+j1,i2,i3),red+thick1,lit);draw((i1,i2,i3)..(i1,i2+j2,i3),red+thick1,lit);
		    draw((i1,i2,i3)..(i1,i2,i3+j3),red+thick1,lit);draw((i1,i2,i3)..(i1-k1,i2,i3),red+thick1,lit);
		    draw((i1,i2,i3)..(i1,i2-k2,i3),red+thick1,lit);draw((i1,i2,i3)..(i1,i2,i3-k3),red+thick1,lit);
		  }
	      }
	  }
      }
  }
