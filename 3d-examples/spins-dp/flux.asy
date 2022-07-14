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

size3(16cm,16cm,16cm);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;


pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

n=3;
light lit=currentlight;
pen cl=rgb(0.0,0.0,0.9);
draw(surface(A1--A2--A3--cycle),pn1);
draw(surface(A1--A3--A4--cycle),pn2);
draw(surface(A1--A4--A2--cycle),pn3);
draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

draw(A1..A2,cl+thick1,lit);draw(A1..A3,cl+thick1,lit);draw(A1..A4,cl+thick1,lit);
draw(A2..A3,cl+thick1,lit);draw(A2..A4,cl+thick1,lit);draw(A3..A4,cl+thick1,lit);

currentprojection=perspective(-n/2,-n/2-0.5,n/2+0.5,center=true);



for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {
		draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	      }
	    else
	      {
		draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
		vec = ((-1)^(i2+i3),(-1)^(i3+i1),(-1)^(i1+i2))/sqrt(3.0);
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
