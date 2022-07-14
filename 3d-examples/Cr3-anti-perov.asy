import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Tc = scale3(0.03)*unitsphere;
surface O = scale3(0.03)*unitsphere;

int n,j1,j2,j3;
triple o1, o2, o3, o4, o5, o6, xi;

size(16cm,0);

pen thick1=linewidth(2);
pen thick2=linewidth(1.5);
pen cl=rgb(0.0,0.0,0.9);
pen pnr, png, pnb, penoctahedron;

pnr = red+opacity(1);
png = green+opacity(1);
pnb = blue+opacity(1);

n=2;
currentprojection=perspective(100,4,2,center=true);
light lit=currentlight;

path3 pth1,pth2,pth3;

bbox(rgb(0,0,0),Fill);

o1 = (0.5,0,0);o2 = -o1;o3 = (0,0.5,0);o4 = -o3;o5 = (0,0,0.5);o6 = -o5;


for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    xi = (i1, i2, i3);
	    draw(shift(xi)*Tc, black);
	    penoctahedron=gray(1.0)+thick1;

	    pth1 = xi - o1..xi + o1;
	    pth2 = xi - o3..xi + o3;
	    pth3 = xi - o5..xi + o5;

	    draw(shift(xi + o1)*O, pnr);
	    //draw(shift(xi + o2)*O,pink);
	    draw(shift(xi + o3)*O,png);
	    //draw(shift(xi + o4)*O,pink);
	    draw(shift(xi + o5)*O,pnb);
	    //draw(shift(xi + o6)*O,pink);
	    
	    // simple cubic bonds //
	    //draw(pth1,penoctahedron,lit);draw(pth2,penoctahedron,lit);draw(pth3,penoctahedron,lit);

	    pth1=xi + o1--xi + o3--xi + o5--xi + o1;
	    draw(pth1,pink+thick2,lit);
	    pth1=xi + o2--xi + o4--xi + o6--xi + o2;
	    draw(pth1,pink+thick2,lit);
	    pth1=xi + o5--xi + o4--xi + o1;
	    draw(pth1,pink+thick2,lit);
	    pth1=xi + o3--xi + o2--xi + o5;
	    draw(pth1,pink+thick2,lit);
	    pth1=xi + o1--xi + o6--xi + o3;
	    draw(pth1,pink+thick2,lit);

	    
	    //pth1=xi + o6--xi + o1--xi + o4--xi + o6;
	    //pth2=xi + o2--xi + o4--xi + o5--xi + o1;
	    //pth3=xi + o3--xi + o5--xi + o2--xi + o3;
	    //draw(pth1--pth2--pth3--xi+o6,pink+thick2,lit);
	  }
      }
  }



/*
  label("O",xi+o1+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
  label("O",xi+o2+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
  label("O",xi+o3+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
  label("O",xi+o4+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
  label("O",xi+o5+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
  label("O",xi+o6+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
*/
//label("B",xi+(0.1,0.04,0.04),rgb(1,1,1)+fontsize(22));
//label("A",(i1+0.5,i2+0.5,i3+0.5)+(0.2,0.05,0.05),rgb(1,1,1)+fontsize(32));
