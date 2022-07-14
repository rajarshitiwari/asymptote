import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Ball = scale3(0.07)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size3(16cm,16cm,18cm);
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
n=4;
currentprojection=perspective(-1,-0.6,2,center=true);
light lit=currentlight;

path3 pth1,pth2,pth3;
triple vec;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    draw(shift((i1,i2,i3))*Ball,green);
	    // pth1=(i1,i2,i3)..(i1+j1,i2,i3);
	    // pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    // pth3=(i1,i2,i3)..(i1,i2,i3+j3);

	    pth1=(i1,i2,i3)..(i1+1,i2,i3);
	    pth2=(i1,i2,i3)..(i1,i2+1,i3);
	    pth3=(i1,i2,i3)..(i1,i2,i3+1);

	    if ((i1+i2+i3)%2==1)
	      {
		pth1=(i1,i2,i3)..(i1,i2,i3);
	      }
	    else
	      {
		pth2=(i1,i2,i3)..(i1,i2,i3);
	      }
	    draw(pth1,gray(0.5)+thick1,lit);
	    draw(pth2,gray(0.5)+thick1,lit);
	    draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }
bbox(rgb(0,0,0),Fill);
