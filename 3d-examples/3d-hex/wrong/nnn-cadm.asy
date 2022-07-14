import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Ox = scale3(0.03)*unitsphere;
surface cube = scale3(0.5)*unitcube;
int lsize,j1,j2,j3,k1,k2,k3;

size(16cm,0);
real aa = 1.0, bb = 1.0, cc = 1.0;
pen thick1=linewidth(1)+gray(0.5);
pen thick2=linewidth(2)+blue;
lsize=1;
currentprojection=perspective(aa*0.7,-bb*4,cc*1.,center=true);

light lit=currentlight;

path3 pth1,pth2,pth3;

int flag = 1;

triple x,vec1,vec2,vec3;
triple a1,a2,a3,b1,b2,b3;

a1=0.5*(0,0,0); a2=0.5*(aa,bb,0); a3=0.5*(0,bb,cc);
b1=0.5*(0,0,cc); b2=0.5*(aa,0,0); b3=0.5*(aa,bb,cc);

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
	    x = (aa*i1,bb*i2,cc*i3);

	    draw(shift(x)*(scale(aa,bb,cc)*cube),rgb(0,0,0)+opacity(1)+linewidth(0.5),surfacepen=green+opacity(0.3));
	    vec1 = 0.5*(j1*aa,0,0); vec2 = 0.5*(0,j2*bb,0); vec3 = 0.5*(0,0,j3*cc);


	    pth1 = x+a1--x+a2--x+a3--cycle;
	    draw(pth1,thick2,lit);
	    pth2 = x+b1--x+b2--x+b3--cycle;
	    draw(pth2,thick2,lit);

	    // first three xy plane: a2,b3
	    if (j1*j2==1)
	      {
	    	pth1 = x+a2--x+a2+0.5*(aa,bb,0);
	    	draw(pth1,thick2,lit);
	    	pth1 = x+b3--x+b3+0.5*(aa,bb,0);
	    	draw(pth1,thick2,lit);
	      }
	    if (j1==1)
	      {
	    	pth2 = x+a2--x+a2+0.5*(aa,-bb,0);
	    	draw(pth2,thick2,lit);
	    	pth2 = x+b3--x+b3+0.5*(aa,-bb,0);
	    	draw(pth2,thick2,lit);
	      }
	    if (j2==1)
	      {
		pth3 = x+a2--x+a2+0.5*(-aa,bb,0);
		draw(pth3,thick2,lit);
		pth3 = x+b3--x+b3+0.5*(-aa,bb,0);
		draw(pth3,thick2,lit);
	      }

	    // second three yz plane: a3,b3
	    if (j2*j3==1)
	      {
	    	pth1 = x+a3--x+a3+0.5*(0,bb,cc);
	    	draw(pth1,thick2,lit);
	    	pth1 = x+b3--x+b3+0.5*(0,bb,cc);
	    	draw(pth1,thick2,lit);
	      }
	    if (j3==1)
	      {
	    	pth2 = x+a3--x+a3+0.5*(0,-bb,cc);
	    	draw(pth2,thick2,lit);
	    	pth2 = x+b3--x+b3+0.5*(0,-bb,cc);
	    	draw(pth2,thick2,lit);
	      }
	    if (j2==1)
	      {
		pth3 = x+a3--x+a3+0.5*(0,bb,-cc);
		draw(pth3,thick2,lit);
		pth3 = x+b3--x+b3+0.5*(0,bb,-cc);
		draw(pth3,thick2,lit);
	      }

	    // third three zx plane: a3,b1
	    if (j3==1)
	      {
	    	pth1 = x+a3--x+a3+0.5*(aa,0,cc);
	    	draw(pth1,thick2,lit);
	    	pth1 = x+b1--x+b1+0.5*(aa,0,cc);
	    	draw(pth1,thick2,lit);
	      }
	    if (k1*j3==1)
	      {
	     	pth2 = x+a3--x+a3+0.5*(-aa,0,cc);
	     	draw(pth2,thick2,lit);
	     	pth2 = x+b1--x+b1+0.5*(-aa,0,cc);
	     	draw(pth2,thick2,lit);
	      }
	    if (k1==1)
	      {
	     	pth3 = x+a3--x+a3+0.5*(-aa,00,-cc);
	     	draw(pth3,thick2,lit);
	     	pth3 = x+b1--x+b1+0.5*(-aa,0,-cc);
	     	draw(pth3,thick2,lit);
	      }
	    
	    
	    // label("A1",x+a1+(0,-0.1,0),red+fontsize(18));
	    // label("A2",x+a2+(0,-0.1,0),red+fontsize(18));
	    // label("A3",x+a3+(0,-0.1,0),red+fontsize(18));
	    // label("B1",x+b1+(0,-0.1,0),blue+fontsize(18));
	    // label("B2",x+b2+(0,-0.1,0),blue+fontsize(18));
	    // label("B3",x+b3+(0,-0.1,0),blue+fontsize(18)); 
	    draw(shift(x+a1)*Ox,blue); draw(shift(x+a2)*Ox,blue); draw(shift(x+a3)*Ox,blue);
	    draw(shift(x+b1)*Ox,red); draw(shift(x+b2)*Ox,red); draw(shift(x+b3)*Ox,red);
	  }
      }
  }

