import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Fe = scale3(0.05)*unitsphere;
int n;
int j1,j2,j3, i, flag;
real theta = 45;
//size(12cm,0);
size3(16cm,16cm,16cm);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
triple[] sp={(0,1,0),(-1,0,0),(0,-1,0),(1,0,0)};

n=3;
//currentprojection=perspective(1.5,1.3,10,center=true);
currentprojection=orthographic(1.5,1.3,10,center=true);
light lit=currentlight;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
	    //theta = 90*((i3)%4)*(2*(i1+i2)%2-1);
	    //vec = (1,0,0);
	    //vec = rotate(theta,(0,0,1))*vec;
	    i = i3%4;
	    if (i3%2==0)
	      {
		flag = i1;
	      }
	    else
	      {
		flag = i2;
	      }
	    vec = (-1)^flag * sp[i];
	    
	    vec1 = (i1,i2,i3);
	    vec2 = (i1,i2,i3)+0.5*(vec);
	    draw(vec1..vec2,rgb(0.9,0.1,0.1)+thick3,Arrow3(30),lit);
	  
	    //draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.5)+thick1,lit);
	    //draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.5)+thick1,lit);
	    //draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.5)+thick1,lit);

	    if (i1==0 && i2==0 && i3==0) {label("(0,0,0)",(i1,i2,i3));}
	    if (i1==n && i2==n && i3==n) {label("(n,n,n)",(i1,i2,i3));}
	  }
      }
  }
