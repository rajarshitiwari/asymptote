import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Nitrogen = scale3(0.03)*unitsphere;
surface Titanium = scale3(0.04)*unitsphere;
int n;
int j1, j2, j3, k1, k2, k3;

//size(12cm,0);
size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(3);
pen thick2=linewidth(2);
pen thick3=linewidth(5);
triple x0, vec,vec1,vec2;
n=2;
currentprojection=perspective(4,-13,n/2+0.5,center=true);
light lit=currentlight;
pen pn1,pn2;
pn1 = .5*red+.5*white+opacity(.5);


triple c1, c2, c3;
c1 = (0.5, 0.0, 0.0);
c2 = (0.0, 0.5, 0.0);
c3 = (0.0, 0.0, 0.5);


for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    if (i1 == 0) {k1 = 0;}else {k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else {j2 = 1;}
	if (i2 == 0) {k2 = 0;}else {k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else {k3 = 1;}
	    x0 = (i1, i2, i3);

	    draw(surface(x0--x0+c1--x0+c2--cycle), pn1);
	    draw(surface(x0--x0+c2--x0+c3--cycle), pn1);
	    draw(surface(x0--x0+c3--x0+c1--cycle), pn1);
	    draw(surface(x0+c1--x0+c2--x0+c3--cycle), pn1);
	    
	    draw(shift(x0)*Nitrogen,rgb(0.,0.8,0.2)+linewidth(3.0));
	    //draw(x0..x0+(j1, 0, 0),gray(0.7)+thick1,lit);
	    //draw(x0..x0+( 0,j2, 0),gray(0.7)+thick1,lit);
	    //draw(x0..x0+( 0, 0,j3),gray(0.7)+thick1,lit);


	    pn2 = gray(0.7)+thick2;
	    if (j1*j2==1) {draw(x0+c1..x0+c2,pn2,lit);} // 1-2
	    if (j2*j3==1) {draw(x0+c2..x0+c3,pn2,lit);} // 2-3
	    if (j3*j1==1) {draw(x0+c3..x0+c1,pn2,lit);} // 3-1

	    //pn2 = green+thick2;
	    if (j1*k2==1) {draw(x0+c1..x0-c2,pn2,lit);}
	    if (j2*k3==1) {draw(x0+c2..x0-c3,pn2,lit);}
	    if (j3*k1==1) {draw(x0+c3..x0-c1,pn2,lit);}

	    //pn2 = blue+thick2;
	    if (k1*j2==1) {draw(x0-c1..x0+c2,pn2,lit);}
	    if (k2*j3==1) {draw(x0-c2..x0+c3,pn2,lit);}
	    if (k3*j1==1) {draw(x0-c3..x0+c1,pn2,lit);}

	    //pn2 = red+thick2;
	    if (k1*k2==1) {draw(x0-c1..x0-c2,pn2,lit);}
	    if (k2*k3==1) {draw(x0-c2..x0-c3,pn2,lit);}
	    if (k3*k1==1) {draw(x0-c3..x0-c1,pn2,lit);}

	    if (j1 == 1){draw(shift(x0+c1)*Titanium,rgb(0.,0.3,1.0)+linewidth(3.0));}
	    if (j2 == 1){draw(shift(x0+c2)*Titanium,rgb(0.,0.3,1.0)+linewidth(3.0));}
	    if (j3 == 1){draw(shift(x0+c3)*Titanium,rgb(0.,0.3,1.0)+linewidth(3.0));}
	  }
      }
  }

