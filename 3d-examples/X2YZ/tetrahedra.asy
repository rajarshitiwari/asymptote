// import three;
// import math;
// import graph3;
// import contour;
// import tube;
// import fontsize;
// import settings;
// outformat="pdf";

// surface Mo = scale3(0.1)*unitsphere;
// surface Fe = scale3(0.1)*unitsphere;

// int j1,j2,j3,k1,k2,k3;

// size3(16cm,16cm,16cm);
// pen thick1=linewidth(4);
// pen thick2=linewidth(2);
// pen thick3=linewidth(10);
// triple x,vec0,vec,vec1,vec2;

// pen pn1,pn2,pn3,pn4;
// triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

// pn1 = .5*green+.5*white+opacity(.5);
// pn2 = .5*green+.5*white+opacity(.5);
// pn3 = .5*green+.5*white+opacity(.5);
// pn4 = .5*green+.5*white+opacity(.5);
// light lit=currentlight;
// pen cl=rgb(0.0,0.8,0.0);
// draw(surface(A1--A2--A3--cycle),pn1);
// draw(surface(A1--A3--A4--cycle),pn2);
// draw(surface(A1--A4--A2--cycle),pn3);
// draw(surface(A2--A3--A4--cycle),pn4);

// draw(A1..A2,cl+thick1,lit);draw(A1..A3,cl+thick1,lit);draw(A1..A4,cl+thick1,lit);
// draw(A2..A3,cl+thick1,lit);draw(A2..A4,cl+thick1,lit);draw(A3..A4,cl+thick1,lit);


// //light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
// currentprojection=perspective(0.4,-1.7,1.5,center=true);
// //currentprojection=perspective(camera=(0.4,-1.7,1.39),up=(0,0.001,0.003),target=(0.5,0.5,0.5),zoom=1,angle=47,autoadjust=false);
// light lit=currentlight;

// pen pv,pnFe;
// pv = rgb(1,0.0,0.)+thick3;
// pnFe=rgb(0.4,0.8,0);
// real back,forth;
// back=0.25;forth=0.35;
// vec0=(-0.5,0.5,1);
// vec0=vec0/length(vec0);



// x=(0,0,0);
// draw(shift(x)*Fe,pnFe+linewidth(4.0));
// vec = vec0;
// vec1 = x-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,pv,Arrow3(50),lit);

// x=(1,1,0);
// draw(shift(x)*Fe,pnFe+linewidth(4.0));
// vec = -vec0;
// vec1 = x-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,pv,Arrow3(50),lit);
// vec = vec0;x=x+(0.05,0.0,0.05);
// vec1 = x+-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,rgb(0,0,1)+thick3,Arrow3(50),lit);


// x=(1,0,1);
// draw(shift(x)*Fe,pnFe+linewidth(4.0));
// vec = vec0;
// vec1 = x-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,pv,Arrow3(50),lit);
// vec = -vec0;x=x+(0.05,0.0,0.05);
// vec1 = x+-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,rgb(0,0,1)+thick3,Arrow3(50),lit);

// x=(0,1,1);
// draw(shift(x)*Fe,pnFe+linewidth(4.0));
// vec = -vec0;
// vec1 = x-back*vec;
// vec2 = x+forth*vec;
// draw(vec1..vec2,pv,Arrow3(50),lit);

// int n=1;
// cl=gray(0.5);
// draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),cl+thick2);
// draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),cl+thick2);
// draw((0,0,n)--(n,0,n),cl+thick2);
// draw((0,n,n)--(n,n,n),cl+thick2);

// //label("?",(n,0,n),fontsize(40));
// //label("?",(n,0,n)+(0.0,-0.12,0.03),rgb(1,1,1)+fontsize(64));
// //label("?",(n,n,0)+(0.0,-0.12,0.03),rgb(1,1,1)+fontsize(64));
// x=(n,0,n)+(0.0,-0.12,0.03);
// draw(shift(x)*scale3(0.03)*(rotate(85,(1,0,0))*extrude("?",2Z)),gray(1));
// x=(n,n,0)+(0.0,-0.12,0.03);
// draw(shift(x)*scale3(0.03)*(rotate(85,(1,0,0))*extrude("?",2Z)),gray(1));


import three;
import math;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;

int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(1);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
n=3;
pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

light lit=currentlight;
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));
pen cl=rgb(0.0,0.0,0.9);
draw(surface(A1--A2--A3--cycle),pn1);
draw(surface(A1--A3--A4--cycle),pn2);
draw(surface(A1--A4--A2--cycle),pn3);
draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

draw(A1..A2,cl+thick1,lit);draw(A1..A3,cl+thick1,lit);draw(A1..A4,cl+thick1,lit);
draw(A2..A3,cl+thick1,lit);draw(A2..A4,cl+thick1,lit);draw(A3..A4,cl+thick1,lit);

//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
//currentprojection=perspective(n/2,0,n/2,center=true);
currentprojection=perspective(-n/2,-n/2-0.5,n/2+0.5,center=true);
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
		draw(shift((i1,i2,i3))*Fe,rgb(0,0.8,0)+linewidth(4.0));
	      }
	  }
      }
  }

draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),rgb(0,0,0)+thick2);
draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),rgb(0,0,0)+thick2);
draw((0,0,n)--(n,0,n),rgb(0,0,0)+thick2);
draw((0,n,n)--(n,n,n),rgb(0,0,0)+thick2);
