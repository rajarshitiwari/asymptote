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
pen thick1=linewidth(2);
pen thickx=linewidth(2)+red;
pen thicky=linewidth(2)+green;
pen thickz=linewidth(2)+blue;

pen pnsurf;
//currentprojection=perspective(aa*1.5,-bb*3.2,cc*1.2,center=true);
//currentprojection=orthographic(aa*1.5,-bb*3.2,cc*1.2,center=true);
//currentprojection=orthographic(-2,1,1,center=true);
//currentprojection=perspective(-10,5,3,center=true);

light lit=currentlight;

surface Ox = scale3(0.05)*unitsphere;
surface cube = scale3(0.5)*unitcube;
int lsize,j1,j2,j3,k1,k2,k3;

path3 pth1,pth2,pth3;

triple x,vec,dirv,vecp1,vecp2,vecp3,vecm1,vecm2,vecm3;
real theta = 0;
real thetai, phii;
triple a1, a2, a3, a4, b1, b2;
real a=0.5,b=0.5,c=0.5;


x = (0,0,0);//-(1,1,1);

thetai = 0.5*pi;
phii   = 0;
vec = (cos(thetai),cos(phii)*sin(thetai),sin(phii)*sin(thetai));
dirv = (-vec.y,vec.x,vec.z);
//write((i1,i2,i3)); write(vec);
a1 = 0.5*(-vec.x-vec.y, -vec.y+vec.x, -1);
a2 = 0.5*(+vec.x-vec.y, +vec.y+vec.x, -1);
a3 = 0.5*(+vec.x-vec.y, +vec.y+vec.x,  1);
a4 = 0.5*(-vec.x-vec.y, -vec.y+vec.x,  1);
b1 = 0.5*(+vec.x+vec.y, +vec.y-vec.x, -1);
b2 = 0.5*(-vec.x+vec.y, -vec.y-vec.x,  1);

// cube //
draw(shift(x-0.5*(1,1,1))*(scale(2,2,2)*cube),rgb(0.0,1,0.0)+opacity(0.1)+linewidth(1));

draw(shift(x+a1)*Ox,green); draw(shift(x+a2)*Ox,green); draw(shift(x+a3)*Ox,green); draw(shift(x+a4)*Ox,green);
draw(shift(x+b1)*Ox,green); draw(shift(x+b2)*Ox,green);
// within unit cell //
pth1=x+a1--x+a2--x+a3--x+a4--cycle; draw(pth1,thick1,lit);
//draw(surface(pth1),pnsurf+opacity(0.5));
pth1=x+a2--x+b1; draw(pth1,thick1,lit);
pth1=x+a4--x+b2; draw(pth1,thick1,lit);
