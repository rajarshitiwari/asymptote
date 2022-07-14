import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Fe = scale3(0.05)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(3);
pen thick2=linewidth(1.5);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=0.5*(1,1,0),A3=0.5*(1,0,1), A4=0.5*(0,1,1);
triple B1=0.5*(1,0,0),B2=0.5*(0,1,0),B3=0.5*(0,0,1);
triple x;

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=2;
currentprojection=perspective(1,-5,1.2,center=true);
light lit=currentlight;
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

path3 pth1,pth2,pth3;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    x = (i1,i2,i3);
	    draw(shift(x+A1)*Fe,green);
	    if (j1*j2==1)
	      {
		pth1=x+B1..x+A2+B2; draw(pth1,gray(0.7)+thick2,lit);
		pth2=x+B2..x+A2+B1; draw(pth2,gray(0.7)+thick2,lit);
		draw(shift(x+A2)*Fe,green);
	      }
	    
	    if (j1*j3==1)
	      {
		pth1=x+B3..x+A3+B1; draw(pth1,gray(0.7)+thick2,lit);
		pth2=x+B1..x+A3+B3; draw(pth2,gray(0.7)+thick2,lit);
		draw(shift(x+A3)*Fe,green);
	      }
	    
	    if (j2*j3==1)
	      {
		pth1=x+B3..x+A4+B2; draw(pth1,gray(0.7)+thick2,lit);
		pth2=x+B2..x+A4+B3; draw(pth2,gray(0.7)+thick2,lit);
		draw(shift(x+A4)*Fe,green);
	      }

	    if (j1==1)
	      {
		draw(shift(x+B1)*Fe,green);
	      }
	    if (j2==1)
	      {
		draw(shift(x+B2)*Fe,green);
	      }
	    if (j3==1)
	      {
		draw(shift(x+B3)*Fe,green);
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
bbox(rgb(0,0,0),Fill);
