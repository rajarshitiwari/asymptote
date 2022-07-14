import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.5)*unitsphere;


//background=rgb(0,0,0);
int n,j1,j2,j3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(3);
pen thick2=linewidth(1);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;
triple A1,A2,A3,A4;

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
currentprojection=perspective(-1,-1.4,1.6,center=true);
light lit=currentlight;

real Theta, Phi, dtheta, dphi;
triple xvec;

int numtheta = 64;
int numphi;

dtheta = pi/numtheta;

for (int i1 = 0; i1 <= numtheta; ++i1)
  {
    Theta = i1*dtheta;
    int numphi=(int) (2 * numtheta * sin(Theta));
    dphi = 2*pi/max(numphi,1);
    for (int i2 = 0; i2 < numphi; ++i2)
      {
	Phi = i2*dphi;
	xvec = (sin(Theta)*cos(Phi),sin(Theta)*sin(Phi),cos(Theta)); 
	A1 = xvec;
	xvec = (sin(Theta)*cos(Phi+dphi),sin(Theta)*sin(Phi+dphi),cos(Theta)); 
	A2 = xvec;
	xvec = (sin(Theta+dtheta)*cos(Phi+dphi),sin(Theta+dtheta)*sin(Phi+dphi),cos(Theta+dtheta)); 
	A3 = xvec;
	xvec = (sin(Theta+dtheta)*cos(Phi),sin(Theta+dtheta)*sin(Phi),cos(Theta+dtheta)); 
	A4 = xvec;
	
	if ((i1+i2)%2==1)
	  {
	    pn1 = .5*green+.5*white+opacity(1);
	  }
	else
	  {
	    pn1 = .5*red+.5*white+opacity(1);
	  }
	draw(surface(A1--A2--A3--A4--cycle),pn1);
	//draw(A1--A2--A3--A4--cycle,pn1+thick2,lit);
      }
  }
//draw(shift((0,0,0))*Mo,green+linewidth(7.0));
//bbox(rgb(0,0,0),Fill);
