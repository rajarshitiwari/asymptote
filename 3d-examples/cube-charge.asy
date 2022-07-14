import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.03)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size(16cm,0);
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
n=1;
//currentprojection=perspective(-2,-1.4,n/2.+0.5,center=true);
currentprojection=perspective(-6,6,3,center=true);
light lit=currentlight;


path3 pth1,pth2,pth3;
//draw(unitcube,rgb(1,0.4,0.4)+opacity(0.5));

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    //draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3);
	    pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    draw(pth1,gray(0.5)+thick1,lit);
	    draw(pth2,gray(0.5)+thick1,lit);
	    draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }

triple x1,x2,x3,x4,x5,x6,x7,x8;
x1=(0,0,0);draw(shift(x1)*Mo,red+linewidth(7.0));
x2=(1,0,0);draw(shift(x2)*Mo,red+linewidth(7.0));
x3=(1,1,0);draw(shift(x3)*Mo,red+linewidth(7.0));
x4=(0,1,0);draw(shift(x4)*Mo,red+linewidth(7.0));
x5=(0,0,1);draw(shift(x5)*Mo,red+linewidth(7.0));
x6=(1,0,1);draw(shift(x6)*Mo,red+linewidth(7.0));
x7=(1,1,1);draw(shift(x7)*Mo,red+linewidth(7.0));
x8=(0,1,1);draw(shift(x8)*Mo,red+linewidth(7.0));

triple y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12;
real a=0.5;

thick1=linewidth(3);
y1=(a,0,0); draw(shift(y1)*Mo,green+linewidth(7.0));
y2=(1,a,0); draw(shift(y2)*Mo,green+linewidth(7.0));
y3=(a,1,0); draw(shift(y3)*Mo,green+linewidth(7.0));
y4=(0,a,0); draw(shift(y4)*Mo,green+linewidth(7.0));

y5=(a,0,1); draw(shift(y5)*Mo,green+linewidth(7.0));
y6=(1,a,1); draw(shift(y6)*Mo,green+linewidth(7.0));
y7=(a,1,1); draw(shift(y7)*Mo,green+linewidth(7.0));
y8=(0,a,1); draw(shift(y8)*Mo,green+linewidth(7.0));

y9 =(0,0,a); draw(shift(y9)*Mo,green+linewidth(7.0));
y10=(1,0,a); draw(shift(y10)*Mo,green+linewidth(7.0));
y11=(1,1,a); draw(shift(y11)*Mo,green+linewidth(7.0));
y12=(0,1,a); draw(shift(y12)*Mo,green+linewidth(7.0));


thick1=linewidth(1);
// draw(x1--x3,red+thick1,lit);
// draw(x2--x4,red+thick1,lit);
// draw(x5--x7,red+thick1,lit);
// draw(x6--x8,red+thick1,lit);

// draw(x4--x5,red+thick1,lit);
// draw(x1--x8,red+thick1,lit);
// draw(x2--x7,red+thick1,lit);
// draw(x3--x6,red+thick1,lit);

// draw(x4--x7,red+thick1,lit);
// draw(x3--x8,red+thick1,lit);
// draw(x1--x6,red+thick1,lit);
// draw(x2--x5,red+thick1,lit);

thick1=linewidth(2);
// draw(x1--x7,red+thick1,lit);
// draw(x2--x8,red+thick1,lit);
// draw(x3--x5,red+thick1,lit);
// draw(x4--x6,red+thick1,lit);

thick1=linewidth(1);

// draw(y1--y2,green+thick1,lit);
// draw(y2--y3,green+thick1,lit);
// draw(y3--y4,green+thick1,lit);
// draw(y4--y1,green+thick1,lit);

// draw(y5--y6,green+thick1,lit);
// draw(y6--y7,green+thick1,lit);
// draw(y7--y8,green+thick1,lit);
// draw(y8--y5,green+thick1,lit);

// draw(y1--y10,green+thick1,lit);
// draw(y10--y5,green+thick1,lit);
// draw(y5--y9,green+thick1,lit);
// draw(y9--y1,green+thick1,lit);

// draw(y2--y11,green+thick1,lit);
// draw(y11--y6,green+thick1,lit);
// draw(y6--y10,green+thick1,lit);
// draw(y10--y2,green+thick1,lit);

// draw(y3--y12,green+thick1,lit);
// draw(y12--y7,green+thick1,lit);
// draw(y7--y11,green+thick1,lit);
// draw(y11--y3,green+thick1,lit);

// draw(y4--y9,green+thick1,lit);
// draw(y9--y8,green+thick1,lit);
// draw(y8--y12,green+thick1,lit);
// draw(y12--y4,green+thick1,lit);

thick1=linewidth(2);

// 12
// draw(y1--y5,green+thick1,lit);
// draw(y5--y7,green+thick1,lit);
// draw(y7--y3,green+thick1,lit);
// draw(y3--y1,green+thick1,lit);

// draw(y2--y6,green+thick1,lit);
// draw(y6--y8,green+thick1,lit);
// draw(y8--y4,green+thick1,lit);
// draw(y4--y2,green+thick1,lit);

// draw(y9--y10,green+thick1,lit);
// draw(y10--y11,green+thick1,lit);
// draw(y11--y12,green+thick1,lit);
// draw(y12--y9,green+thick1,lit);

// 48 
// draw(x1--y2,blue+thick1,lit); draw(x1--y3,blue+thick1,lit);
// draw(x2--y3,blue+thick1,lit); draw(x2--y4,blue+thick1,lit);
// draw(x3--y4,blue+thick1,lit); draw(x3--y1,blue+thick1,lit);
// draw(x4--y1,blue+thick1,lit); draw(x4--y2,blue+thick1,lit);

// draw(x5--y6,blue+thick1,lit); draw(x5--y7,blue+thick1,lit);
// draw(x6--y7,blue+thick1,lit); draw(x6--y8,blue+thick1,lit);
// draw(x7--y8,blue+thick1,lit); draw(x7--y5,blue+thick1,lit);
// draw(x8--y5,blue+thick1,lit); draw(x8--y6,blue+thick1,lit);

// draw(x1--y10,blue+thick1,lit); draw(x1--y5,blue+thick1,lit);
// draw(x2--y5,blue+thick1,lit); draw(x2--y9,blue+thick1,lit);
// draw(x6--y9,blue+thick1,lit); draw(x6--y1,blue+thick1,lit);
// draw(x5--y1,blue+thick1,lit); draw(x5--y10,blue+thick1,lit);

// draw(x3--y12,blue+thick1,lit); draw(x3--y7,blue+thick1,lit);
// draw(x4--y7,blue+thick1,lit); draw(x4--y11,blue+thick1,lit);
// draw(x8--y11,blue+thick1,lit); draw(x8--y3,blue+thick1,lit);
// draw(x7--y3,blue+thick1,lit); draw(x7--y12,blue+thick1,lit);

// draw(x1--y8,blue+thick1,lit); draw(x1--y12,blue+thick1,lit);
// draw(x5--y12,blue+thick1,lit); draw(x5--y4,blue+thick1,lit);
// draw(x8--y4,blue+thick1,lit); draw(x8--y9,blue+thick1,lit);
// draw(x4--y9,blue+thick1,lit); draw(x4--y8,blue+thick1,lit);

// draw(x2--y6,blue+thick1,lit); draw(x2--y11,blue+thick1,lit);
// draw(x6--y11,blue+thick1,lit); draw(x6--y2,blue+thick1,lit);
// draw(x7--y2,blue+thick1,lit); draw(x7--y10,blue+thick1,lit);
// draw(x3--y10,blue+thick1,lit); draw(x3--y6,blue+thick1,lit);
