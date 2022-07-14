import three;
import math;
import graph3;
import contour;
import solids;
import settings;
outformat='pdf';

currentprojection=perspective(10,10,2.5,autoadjust=true,center=true);

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
int n;
int j1,j2,j3;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);
//size(12cm,0);
size3(16cm,16cm,16cm);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
real del,scale;

n=3;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else
      {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else
	  {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else
	      {j3 = 1;}
	    if((i1+i2+i3)%2 == 1)
	      {	draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));}
	    else
	      {	draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));}
	    draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.5)+thick1);
	    draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.5)+thick1);
	    draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.5)+thick1);
	  }
      }
  }
n=n-1;
del = 0.1;
scale = 1.0 - del;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else
      {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else
	  {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else
	      {j3 = 1;}
	    if((i1+i2+i3)%2 == 0)
	      {
		A1=(i1,i2,i3);
		A2=(i1+1,i2+1,i3);
		A3=(i1+1,i2,i3+1);
		A4=(i1,i2+1,i3+1);
		draw(surface(A1--A2--A3--cycle),.5*blue+.5*white+opacity(.5));
		draw(surface(A1--A3--A4--cycle),.5*yellow+.5*white+opacity(.5));
		draw(surface(A1--A4--A2--cycle),.5*red+.5*white+opacity(.5));
		draw(surface(A2--A3--A4--cycle),.5*green+.5*white+opacity(.5));
	      }
	  }
      }
  }
