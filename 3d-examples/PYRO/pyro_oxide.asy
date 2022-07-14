import three;
import math;
import grid3;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

surface A = scale3(0.2)*unitsphere;
surface B = scale3(0.1)*unitsphere;
surface O = scale3(0.05)*unitsphere;
surface Op = scale3(0.05)*unitsphere;

int n,j1,j2,j3;
triple o1,o2,o3,o4,o5,o6,op;

size(16cm,0);

pen thick1=linewidth(2);
pen thick2=linewidth(5);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4,penoctahedron;

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=1;
currentprojection=perspective(10,4,2,center=true);
light lit=currentlight;

path3 pth1,pth2,pth3;

//bbox(rgb(0,0,0),Fill);

o1 = (0.5,0,0);
o2 = -o1;
o3 = (0,0.5,0);
o4 = -o3;
o5 = (0,0,0.5);
o6 = -o5;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {
		draw(shift((i1,i2,i3))*B,green+linewidth(7.0));
		penoctahedron=rgb(0,0.9,0)+thick2;
	      }
	    else
	      {
		draw(shift((i1,i2,i3))*B,blue+linewidth(4.0));
		penoctahedron=rgb(0,0,0.9)+thick2;
	      }
	    if (j1 * j2 * j3 == 1)
	      {
		draw(shift((i1+0.5,i2+0.5,i3+0.5))*A,red+linewidth(7.0));
	      }
	    pth1=(i1-0.5,i2,i3)..(i1+0.5,i2,i3);pth2=(i1,i2-0.5,i3)..(i1,i2+0.5,i3);pth3=(i1,i2,i3-0.5)..(i1,i2,i3+0.5);
	    draw(shift((i1,i2,i3)+o1)*O,pink);draw(shift((i1,i2,i3)+o2)*O,pink);
	    draw(shift((i1,i2,i3)+o3)*O,pink);draw(shift((i1,i2,i3)+o4)*O,pink);
	    draw(shift((i1,i2,i3)+o5)*O,pink);draw(shift((i1,i2,i3)+o6)*O,pink);
	  }
      }
  }

//draw(pth1,gray(0.5)+thick1,lit);draw(pth2,gray(0.5)+thick1,lit);draw(pth3,gray(0.5)+thick1,lit);
//draw(pth1,penoctahedron,lit);draw(pth2,penoctahedron,lit);draw(pth3,penoctahedron,lit);
//pth1=(i1,i2,i3)+o6--(i1,i2,i3)+o1--(i1,i2,i3)+o4--(i1,i2,i3)+o6;
//pth2=(i1,i2,i3)+o2--(i1,i2,i3)+o4--(i1,i2,i3)+o5--(i1,i2,i3)+o1;
//pth3=(i1,i2,i3)+o3--(i1,i2,i3)+o5--(i1,i2,i3)+o2--(i1,i2,i3)+o3;
//draw(pth1--pth2--pth3--(i1,i2,i3)+o6,pink+thick2,lit);
