import three;
import math;
import graph3;
import contour;
import tube;

//import settings;
//outformat="png";

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;

int n;
int j1,j2,j3;

//size(12cm,0);
size3(16cm,16cm,16cm);
//draw(unitcube,opacity(0.1));
//opacity(real opacity=0,string blend="Compatible");
//defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2,xi;
n=2;
//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
currentprojection=perspective(15,-8,n/2+0.5,center=true);
light lit=currentlight;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    //xi = (i1,i2,i3);
	    xi = (i2+i3,i3+i1,i1+i2);
	    draw(shift(xi)*Fe,blue+linewidth(4.0));
	    vec = ((-1)^(i2+i3),(-1)^(i3+i1),(-1)^(i1+i2))/sqrt(3.0);
	    vec1 = xi-0.05*vec;
	    vec2 = xi+0.95*vec;
	    draw(vec1..vec2,rgb(0.9,0.1,0.1)+thick3,Arrow3(30),lit);

	    draw(xi..xi+(j1,j2,0),gray(0.5)+thick1,lit);
	    draw(xi..xi+(j1,-j2,0),gray(0.5)+thick1,lit);
	    draw(xi..xi+(0,j2,j3),gray(0.5)+thick1,lit);
	    draw(xi..xi+(0,j2,-j3),gray(0.5)+thick1,lit);
	    draw(xi..xi+(j1,0,j3),gray(0.5)+thick1,lit);
	    draw(xi..xi+(-j1,0,j3),gray(0.5)+thick1,lit);
	  }
      }
  }
