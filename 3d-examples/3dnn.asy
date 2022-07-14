import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="png";

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.11)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(3);
pen thick2=linewidth(3);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=2;
//currentprojection=perspective(-2,-1.4,n/2.+0.5,center=true);
currentprojection=perspective(0.5,-3,1.5,center=true);
light lit=currentlight;

draw(surface(A1--A2--A3--cycle),pn1);draw(surface(A1--A3--A4--cycle),pn2);
draw(surface(A1--A4--A2--cycle),pn3);draw(surface(A2--A3--A4--cycle),pn4);
draw(A1..A2,cl+thick2,lit);draw(A1..A3,cl+thick2,lit);draw(A1..A4,cl+thick2,lit);
draw(A2..A3,cl+thick2,lit);draw(A2..A4,cl+thick2,lit);draw(A3..A4,cl+thick2,lit);

path3 pth1,pth2,pth3;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {
		draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	      }
	    else
	      {
		draw(shift((i1,i2,i3))*Fe,green+linewidth(4.0));
	      }
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3);
	    pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    draw(pth1,gray(0.5)+thick1,lit);
	    draw(pth2,gray(0.5)+thick1,lit);
	    draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }
