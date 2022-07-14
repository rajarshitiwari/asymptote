import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

size(16cm,0);

real aa = 1.0, bb = 1.0, cc = 1.0;
pen thick1=linewidth(1)+gray(0.5);
pen thick2=linewidth(2)+blue;

pen pnsurf;
//currentprojection=perspective(aa*1.5,-bb*3.2,cc*1.2,center=true);
currentprojection=orthographic(aa*1.5,-bb*3.2,cc*1.2,center=true);
currentprojection=orthographic(2.7,-3.9,2.2,center=true);
light lit=currentlight;

surface Ox = scale3(0.03)*unitsphere;
surface cube = scale3(0.5)*unitcube;
int lsize,j1,j2,j3,k1,k2,k3;

lsize=1;

path3 pth1,pth2,pth3;

int flag, ii;

triple x,vec,vecp1,vecp2,vecp3,vecm1,vecm2,vecm3;
real a=0.5,b=0.5,c=0.5;
//int[] jj={0,0,0},kk={0,0,0};
triple a1,a2,a3,a4,a5,a6,a7,a8;
a1 = 0.5*(-1, 1,-1);
a2 = 0.5*( 1, 1,-1);
a3 = 0.5*( 1, 1, 1);
a4 = 0.5*(-1, 1, 1);
a5 = 0.5*(-1,-1, 1);
a6 = 0.5*(-1,-1,-1);
a7 = 0.5*( 1,-1,-1);
a8 = 0.5*( 1,-1, 1);


for (int i1 = 0; i1 <= lsize; ++i1)
  {
    if (i1 == lsize){j1 = 0;}else{j1 = 1;}
    if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (int i2 = 0; i2 <= lsize; ++i2)
      {
	if (i2 == lsize){j2 = 0;}else{j2 = 1;}
	if (i2 == 0){k2 = 0;}else{k2 = 1;}
	for (int i3 = 0; i3 <= lsize; ++i3)
	  {
	    if (i3 == lsize){j3 = 0;}else{j3 = 1;}
	    if (i3 == 0){k3 = 0;}else{k3 = 1;}
	    int jj[] = {j1,j2,j3};
	    int kk[] = {k1,k2,k3};
	    x = 2*(aa*i1,bb*i2,cc*i3);

	    //draw(shift(x-0.5*(1,1,1))*(scale(2,2,2)*cube),rgb(0.0,1,0.0)+opacity(0.5)+linewidth(1));
	    draw(x+a1--x+a2--x+a3--x+a4--x+a5--x+a6--x+a7--x+a8);
	    //draw(shift(x+a1)*Ox,red); draw(shift(x+a2)*Ox,red); draw(shift(x+a3)*Ox,red); draw(shift(x+a4)*Ox,red);
	    //draw(shift(x+a5)*Ox,red); draw(shift(x+a6)*Ox,red); draw(shift(x+a7)*Ox,red); draw(shift(x+a8)*Ox,red);
	    label("{\bf 1}",x+a1,blue+fontsize(18));
	    label("{\bf 2}",x+a2,blue+fontsize(18));
	    label("{\bf 3}",x+a3,blue+fontsize(18));
	    label("{\bf 4}",x+a4,blue+fontsize(18));
	    label("{\bf 5}",x+a5,blue+fontsize(18));
	    label("{\bf 6}",x+a6,blue+fontsize(18));
	    label("{\bf 7}",x+a7,blue+fontsize(18));
	    label("{\bf 8}",x+a8,blue+fontsize(18));
	    
	    // within unit cell //
	    path3 pth1; pen thick1=linewidth(1)+gray(0.5);
	    //pth1=x+b1--x+b2; draw(pth1,thick1,lit);
	    if (i1==0 && i2==0 && i3==0) {label("(0,0,0)",(i1,i2,i3));}
	    if (i1==lsize && i2==lsize && i3==lsize) {label("(n,n,n)",x);}
	  }
      }
  }

	    
	    
	    //label("A1",x+a1+(0,-0.1,0),red+fontsize(18));
	    //label("A2",x+a2+(0,-0.1,0),red+fontsize(18));
	    //label("A3",x+a3+(0,-0.1,0),red+fontsize(18));
	    //label("B1",x+b1+(0,-0.1,0),blue+fontsize(18));
	    //label("B2",x+b2+(0,-0.1,0),blue+fontsize(18));
	    //label("B3",x+b3+(0,-0.1,0),blue+fontsize(18));
