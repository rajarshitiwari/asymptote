import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Zinc = scale3(0.1)*unitsphere;
surface Sulf = scale3(0.05)*unitsphere;
surface zz = scale3(0.05)*unitsphere;
int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(1);
pen thick2=linewidth(3);
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
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));
pen cl=rgb(0.0,0.0,0.9);
// draw(surface(A1--A2--A3--cycle),pn1);
// draw(surface(A1--A3--A4--cycle),pn2);
// draw(surface(A1--A4--A2--cycle),pn3);
// draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

//draw(A1..A2,cl+thick1,lit);draw(A1..A3,cl+thick1,lit);draw(A1..A4,cl+thick1,lit);
//draw(A2..A3,cl+thick1,lit);draw(A2..A4,cl+thick1,lit);draw(A3..A4,cl+thick1,lit);

//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
currentprojection=perspective(n/2,0,n/2,center=true);
//currentprojection=perspective(-n/2,-n/2-0.5,n/2+0.5,center=true);
//currentprojection=perspective(camera=(-0.8,-14.0,2.5),up=(-0.5,0.0,0.0),target=(2.,2.,2.),zoom=1,angle=20.,autoadjust=true);

light lit=currentlight;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    if (i1 == 0) {k1 = 0;}else {k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	if (i2 == 0) {k2 = 0;}else {k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else {k3 = 1;}
	    draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.9)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.9)+thick1,lit);
	    draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.9)+thick1,lit);
	    if((i1+i2+i3)%2 ==0)
	      {
		vec = (i1,i2,i3);
		vec1 = vec;
		vec2 = vec + (1,1,1)/2;
		draw(shift(vec1)*Zinc,rgb(0.8,0,0)+linewidth(4.0),lit); // Y
		if (j1*j2*j3 == 1)
		  {
		    draw(shift(vec2)*Sulf,rgb(0,0.8,0)+linewidth(4.0),lit); // X
		    //draw(shift(vec+(1,1,1))*zz,rgb(0,0,0.8)+linewidth(4.0),lit); // Z
		    pnb = gray(0.3)+thick3;
		    draw(vec1--vec2,pnb,lit);
		    vec1 = vec + (1,1,1)/2;
		    vec2 = vec1 + (-1,1,1)/2;draw(vec1--vec2,pnb,lit);
		    vec2 = vec1 + (1,-1,1)/2;draw(vec1--vec2,pnb,lit);
		    vec2 = vec1 + (1,1,-1)/2;draw(vec1--vec2,pnb,lit);

		    //
		    pnb = rgb(0.2,1,0.2)+thick2;
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + k1*k2*(-1,-1, 0); draw(vec1--vec2,pnb,lit);
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + k1*k3*(-1, 0,-1); draw(vec1--vec2,pnb,lit);
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + k2*k3*( 0,-1,-1); draw(vec1--vec2,pnb,lit);
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + j1*j2*(-1, 1, 0); draw(vec1--vec2,pnb,lit);
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + j1*k3*( 1, 0,-1); draw(vec1--vec2,pnb,lit);
		    //vec1 = vec+(1,1,1)/2; vec2 = vec1 + k2*j3*( 0,-1, 1); draw(vec1--vec2,pnb,lit);

		    //draw(surface(vec+A1--vec+A2--vec+A3--cycle),pn1);
		    //draw(surface(vec+A1--vec+A2--vec+A3--vec+a4--cycle),pn1);
		    //draw(surface(vec+A1--vec+A3--vec+A4--cycle),pn2);
		    //draw(surface(vec+A1--vec+A4--vec+A2--cycle),pn3);
		    //draw(surface(vec+A2--vec+A3--vec+A4--cycle),pn4);
		    
		  }
		pnb = rgb(1,0.2,0.2)+thick2;
		// vec1 = vec; vec2 = vec + j1*j2*( 1, 1, 0); draw(vec1--vec2,pnb,lit);
		// vec1 = vec; vec2 = vec + j1*j3*( 1, 0, 1); draw(vec1--vec2,pnb,lit);
		// vec1 = vec; vec2 = vec + j2*j3*( 0, 1, 1); draw(vec1--vec2,pnb,lit);
		// vec1 = vec; vec2 = vec + k1*j2*(-1, 1, 0); draw(vec1--vec2,pnb,lit);
		// vec1 = vec; vec2 = vec + j1*k3*( 1, 0,-1); draw(vec1--vec2,pnb,lit);
		// vec1 = vec; vec2 = vec + k2*j3*( 0,-1, 1); draw(vec1--vec2,pnb,lit);
	      }
	  }
      }
  }

// draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),rgb(0,0,0)+thick2);
// draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),rgb(0,0,0)+thick2);
// draw((0,0,n)--(n,0,n),rgb(0,0,0)+thick2);
// draw((0,n,n)--(n,n,n),rgb(0,0,0)+thick2);
