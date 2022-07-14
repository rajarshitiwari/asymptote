import three;
import math;
//import graph3;
//import contour;
//import tube;

import bsp;
import animate;
import settings;
outformat="gif";

surface Fe = scale3(0.05)*unitsphere;

int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(0.5);
pen thick2=linewidth(2);
pen thick3=linewidth(4);
triple vec,vec1,vec2;
triple x,x1,x2,x3,x4;

n=2;
pen pn1,pn2,pn3,pn4;
pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

light lit=currentlight;
pen cl=rgb(0,0,0.9);
pen cl1=rgb(0.9,0,0);
pen cl2=rgb(0,0.9,0);

//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
//currentprojection=perspective(n/2,0,n/2,center=true);
currentprojection=perspective(n,n/2,n/2,center=true);
//currentprojection=perspective(camera=(-0.8,-14.0,2.5),up=(-0.5,0.0,0.0),target=(2.,2.,2.),zoom=1,angle=20.,autoadjust=true);

triple A0=(0,0,0),A1=(1,1,0),A2=(1,0,1),A3=(0,1,1);
triple A4=(0,1,-1),A5=(1,-1,0),A6=(-1,0,1);


real shft= 0.1;

// coordinates for pyrhoclore lattice //
triple c1p=(-1,-1,-1)/4, c2p=( 1, 1,-1)/4, c3p=( 1,-1, 1)/4, c4p=(-1, 1, 1)/4;
// coordinates for heusler lattice //
triple c1h=(0,0,0), c2h=( 1, 0, 0), c3h=( 1, 1, 1)/2, c4h=( 1, -1, 1)/2;

triple c1, c2, c3, c4;

animation aa;
int num_anim = 10;

for (int ianim = 0; ianim <= num_anim; ++ianim)
  {
    shft = (ianim*1.0)/num_anim;

    c1 = c1p + shft*(c1h - c1p);
    c2 = c2p + shft*(c2h - c2p);
    c3 = c3p + shft*(c3h - c3p);
    c4 = c4p + shft*(c4h - c4p);
    save();
    
    for (int i1 = 0; i1 <= n; ++i1)
      {if (i1 == n) {j1 = 0;}else {j1 = 1;}
	if (i1 == 0) {k1 = 0;}else {k1 = 1;}
	for (int i2 = 0; i2 <= n; ++i2)
	  {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	    if (i2 == 0) {k2 = 0;}else {k2 = 1;}
	    for (int i3 = 0; i3 <= n; ++i3)
	      {if (i3 == n) {j3 = 0;}else {j3 = 1;}
		if (i3 == 0) {k3 = 0;}else {k3 = 1;}
		draw((i1,i2,i3)--(i1+j1,i2,i3),gray(1)+thick1,lit);
		draw((i1,i2,i3)--(i1,i2+j2,i3),gray(1)+thick1,lit);
		draw((i1,i2,i3)--(i1,i2,i3+j3),gray(1)+thick1,lit);
		x = (i1,i2,i3);
		if((i1+i2+i3)%2 ==0)
		  {
		    //x1 = x+0.5*A0-(1,1,1)/4; x2 = x+0.5*A1-(1,1,1)/4; x3 = x+0.5*A2-(1,1,1)/4; x4 = x+0.5*A3-(1,1,1)/4;
		    x1 = x+c1; x2 = x+c2; x3 = x+c3; x4 = x+c4;
		    
		    // intracell bond //
		    draw(x1--x2,cl+thick2,lit);draw(x1--x3,cl+thick2,lit);draw(x1--x4,cl+thick2,lit);
		    draw(x2--x3,cl+thick2,lit);draw(x2--x4,cl+thick2,lit);draw(x3--x4,cl+thick2,lit);
		    
		    // inter-cell bond //
		    //draw(x2--x2+(j1*j2)*(c2-c1),cl1+thick3,lit); // red-black
		    //draw(x3--x3+(j1*j3)*(c3-c1),cl1+thick3,lit); // green-black
		    //draw(x4--x4+(j2*j3)*(c4-c1),cl1+thick3,lit); // blue-black
		    //draw(x2--x2+(j2*k3)*(c2-c3),cl1+thick3,lit); // red-green
		    //draw(x3--x3+(j1*k2)*(c3-c4),cl1+thick3,lit); // green-blue
		    //draw(x4--x4+(k1*j3)*(c4-c2),cl1+thick3,lit);  // blue-red
		    
		    draw(surface(x1--x2--x3--cycle),pn1);
		    draw(surface(x1--x3--x4--cycle),pn2);
		    draw(surface(x1--x4--x2--cycle),pn3);
		    draw(surface(x2--x3--x4--cycle),pn4);
		    
		    draw(shift(x1)*Fe,rgb(0,0,0)+linewidth(4.0));
		    draw(shift(x2)*Fe,rgb(0.8,0,0)+linewidth(4.0));
		    draw(shift(x3)*Fe,rgb(0,0.8,0)+linewidth(4.0));
		    draw(shift(x4)*Fe,rgb(0,0.8,0)+linewidth(4.0));
		    
		  }
	      }
	  }
      }
    aa.add();    
    restore();
  }
aa.movie(loops=10,delay=50);

//draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),rgb(0,0,0)+thick2);
//draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),rgb(0,0,0)+thick2);
//draw((0,0,n)--(n,0,n),rgb(0,0,0)+thick2);
//draw((0,n,n)--(n,n,n),rgb(0,0,0)+thick2);
