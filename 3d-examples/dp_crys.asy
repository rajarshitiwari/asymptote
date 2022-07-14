import three;
import math;
import graph3;
import contour;
import tube;
currentprojection=perspective(10,0.5,0,center=true);

surface Sr = scale3(0.2)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
surface Mo = scale3(0.15)*unitsphere;
surface O = scale3(0.07)*unitsphere;

int n;
int j1,j2,j3;

//size(16cm);
size3(16cm,16cm,16cm);
//defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple xi,dxi;
n=1;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else
      {j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {	if (i2 == n) {j2 = 0;}else
	  {j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else
	      {j3 = 1;}
	    xi = (i1,i2,i3);
	    if((i1+i2+i3)%2 ==1)
	      {	draw(shift(xi)*Mo,green+linewidth(7.0));}
	    else
	      {	draw(shift(xi)*Fe,blue+linewidth(4.0));}
	    draw(shift(xi+0.5*(1,0,0))*O,pink+linewidth(4.0));
	    draw(shift(xi+0.5*(0,1,0))*O,pink+linewidth(4.0));
	    draw(shift(xi+0.5*(0,0,1))*O,pink+linewidth(4.0));
	    draw(shift(xi-0.5*(1,0,0))*O,pink+linewidth(4.0));
	    draw(shift(xi-0.5*(0,1,0))*O,pink+linewidth(4.0));
	    draw(shift(xi-0.5*(0,0,1))*O,pink+linewidth(4.0));

	    draw(xi..xi+(j1,0,0),gray(0.5)+thick1);
	    draw(xi..xi+(0,j2,0),gray(0.5)+thick1);
	    draw(xi..xi+(0,0,j3),gray(0.5)+thick1);

	    draw(xi..xi+0.5*(1,0,0),gray(0.5)+linewidth(4.0));
	    draw(xi..xi+0.5*(0,1,0),gray(0.5)+linewidth(4.0));
	    draw(xi..xi+0.5*(0,0,1),gray(0.5)+linewidth(4.0));
	    draw(xi..xi-0.5*(1,0,0),gray(0.5)+linewidth(4.0));
	    draw(xi..xi-0.5*(0,1,0),gray(0.5)+linewidth(4.0));
	    draw(xi..xi-0.5*(0,0,1),gray(0.5)+linewidth(4.0));
	  }
      }
  }

for (int i1 = 0; i1 < n; ++i1)
  {if (i1 == n) {j1 = 0;}else
      {j1 = 1;}
    for (int i2 = 0; i2 < n; ++i2)
      {	if (i2 == n) {j2 = 0;}else
	  {j2 = 1;}
	for (int i3 = 0; i3 < n; ++i3)
	  {if (i3 == n) {j3 = 0;}else
	      {j3 = 1;}
	    xi = (i1,i2,i3);
	    draw(shift(xi+0.5*(1,1,1))*Sr,red+linewidth(4.0));
	  }
      }
  }
