import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Ox = scale3(0.08)*unitsphere;
surface Mn = scale3(0.15)*unitsphere;

int n,j1,j2,j3;

size(16cm,0);
pen thick1=linewidth(5);
n=3;
currentprojection=perspective(n/2,-n,n/2.,center=true);

light lit=currentlight;

path3 pth1,pth2,pth3;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3);
	    pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    draw(pth1,gray(0.5)+thick1,lit);
	    draw(pth2,gray(0.5)+thick1,lit);
	    draw(pth3,gray(0.5)+thick1,lit);
	    if((i1+i2+i3)%2 ==1)
	      {draw(shift((i1,i2,i3))*Ox,green);}
	      //{label("O",(i1,i2,i3),green);}
	    else
	      {draw(shift((i1,i2,i3))*Mn,rgb(0.,0.6,1.0));}
	    //{label("M",(i1,i2,i3),blue+fontsize(24));}
	  }
      }
  }

draw((0,0,0)..(1,0,1),rgb(0.0,0.0,0.9)+linewidth(7),lit);
draw((2,0,0)..(1,0,1),rgb(0.0,0.0,0.9)+linewidth(7),lit);
draw((0,0,0)..(0,0,2),rgb(0.9,0.0,0.0)+linewidth(10),lit);
draw((0,0,0)..(2,0,0),rgb(0.9,0.0,0.0)+linewidth(10),lit);
