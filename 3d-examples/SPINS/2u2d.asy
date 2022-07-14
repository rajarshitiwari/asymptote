import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="png";

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
int n;
int j1,j2,j3;

//size(16cm);
size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
n=5;
//currentprojection=perspective(10,12,n/2+0.5,center=true);
currentprojection=perspective(15,-8.5,n/2+0.5,center=true);
light lit=currentlight;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else
      {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else
	  {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else
	      {j3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {	draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));}
	    else
	      {	draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
		if (i1 % 4 == 0 ||i1 % 4 == 1)
		  {vec = (0,0,1);}else
		  {vec = (0,0,-1);}
		vec = 1.0*vec;
		vec1 = (i1,i2,i3)-0.25*vec;
		vec2 = (i1,i2,i3)+0.55*vec;
		draw(vec1..vec2,rgb(0.9,0.1,0.1)+thick3,Arrow3(30),lit);
	      }
	    draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.5)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.5)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.5)+thick1,lit);
	  }
      }
  }
