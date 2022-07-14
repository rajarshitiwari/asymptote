import three;
import math;
import graph3;
import contour;
//import tube;

import settings;
outformat="pdf";

surface Zinc = scale3(0.06)*unitsphere;
surface Sulf = scale3(0.06)*unitsphere;
surface zz = scale3(0.05)*unitsphere;
int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(1);
pen thick2=linewidth(2);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
n=3;
pen pn1,pn2,pn3,pn4,pnb;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

light lit=currentlight;
pen cl=rgb(0.0,0.0,0.9);
// draw(surface(A1--A2--A3--cycle),pn1);
// draw(surface(A1--A3--A4--cycle),pn2);
// draw(surface(A1--A4--A2--cycle),pn3);
// draw(surface(A2--A3--A4--cycle),pn4);
//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);
//draw(A1..A2,cl+thick1,lit);draw(A1..A3,cl+thick1,lit);draw(A1..A4,cl+thick1,lit);
//draw(A2..A3,cl+thick1,lit);draw(A2..A4,cl+thick1,lit);draw(A3..A4,cl+thick1,lit);

currentprojection=perspective(n/2,0,n/2,center=true,autoadjust=true);

light lit=currentlight;
int imin = 0;

for (int i1 = imin; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    if (i1 == imin) {k1 = 0;}else {k1 = 1;}
    for (int i2 = imin; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	if (i2 == imin) {k2 = 0;}else {k2 = 1;}
	for (int i3 = imin; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if (i3 == imin) {k3 = 0;}else {k3 = 1;}
	    vec = (i1,i2,i3)-(imin,imin,imin);
	    vec1 = vec;
	    vec2 = vec + (1,1,1)/2.;
	    
	    draw(vec..vec+(j1,0,0),gray(0.9)+thick1,lit);
	    draw(vec..vec+(0,j2,0),gray(0.9)+thick1,lit);
	    draw(vec..vec+(0,0,j3),gray(0.9)+thick1,lit);
	    
	    //draw(vec2..vec2+(j1,0,0),gray(0.9)+thick2,lit);
	    //draw(vec2..vec2+(0,j2,0),gray(0.9)+thick2,lit);
	    //draw(vec2..vec2+(0,0,j3),gray(0.9)+thick2,lit);

	    if((i1+i2+i3)%2 ==0)
	      {
		draw(shift(vec1)*Zinc,rgb(0.8,0,0)+linewidth(4.0),lit); // Z
		if (j1*j2*j3 == 1)
		  {
		    pnb = magenta+thick3;
		    vec1 = vec2 + (-1,-1,-1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (1,1,-1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (1,-1,1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (-1,1,1)/2.;draw(vec1--vec2,pnb,lit);
		  }
	      }
	    else
	      {
		if (j1*j2*j3 == 1)
		  {
		    pnb = cyan+thick3;
		    vec1 = vec2 + (1,-1,-1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (-1,1,-1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (1,1,1)/2.;draw(vec1--vec2,pnb,lit);
		    vec1 = vec2 + (-1,-1,1)/2.;draw(vec1--vec2,pnb,lit);
		  }
	      }
	    if (j1*j2*j3 == 1)
	      {
		draw(shift(vec2)*Sulf,rgb(0,0.8,0)+linewidth(4.0),lit); // X
	      }
	    //draw(shift(vec2)*Sulf,rgb(0,0.8,0)+linewidth(4.0),lit); // X
	  }
      }
  }
