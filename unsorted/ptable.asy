import math;
import contour;
import solids;
import palette;
import graph3;
import three;
import settings;

outformat="pdf";


size(20cm);

int num1, num2;

num1 = 20; num2 = 8;

triple A1, A2, x0;
real theta;

theta = pi/2.0;//pi/3.0;

A1 = (1.0,0.0,0.0);
A2 = (cos(theta), sin(theta),0.0);
int i1, i2, j1, j2, k1, k2;

path ell,rec;
pen pn1, pn2, pn3;

// path ellipse(pair c, real a, real b)
// {
//   return shift(c)*scale(a,b)*unitcircle;
// }
// void draw_patch(pair x0, real slnt, pen pn1, pen pn2)
// {
//   path rec, ell;
//   rec = x0--x0+A1--x0+A1+A2--x0+A2--cycle;
//   ell = ellipse(x0+0.5*(A1+A2),0.2,0.2);
//   rec = slant(slnt)*rec;
//   ell = slant(slnt)*ell;
//   filldraw(rec,pn2);
//   filldraw(ell,pn1);
// }

// path3 ellipse(triple c, real a, real b)
// {
//   return shift(c)*scale3(a,b)*unitcircle;
// }

real f(pair z)
{
  pair z0, z1;
  z0=(8,5); z1=(16,6);
  return 3*(exp(-abs(z-z0)^2)+exp(-abs(z-z1)^2));
}

real cc(triple z)
{return z.z;}

currentprojection=orthographic(6,-36,12);

void draw_patch(triple x0, pen pn1, pen pn2)
{
  path3 rec, ell;
  triple x;
  rec = x0--x0+A1--x0+A1+A2--x0+A2--cycle;
  x = x0+0.5*(A1+A2);
  real s=0.2;
  //ell = x0+(-s,0,0)..x0+(0,-s,0)..x+(s,0,0)..x+(0,s,0)..cycle;
  ell = (-s,0,0)..(0,-s,0)..(s,0,0)..(0,s,0)..cycle;
  //ellipse(x0+0.5*(A1+A2),0.2,0.2);
  //rec = slant(slnt)*rec;
  //ell = slant(slnt)*ell;
  draw(surface(rec),pn2+opacity(0.5));
  draw(rec,pn2);
  draw(surface(shift(x)*ell),pn1);
}


int grid[][] = {
  {1,1,1,1,1,1,1,2,2,2,2,1,1,1,2,2,2,2,2,2},
  {1,1,1,1,1,1,2,2,2,2,2,1,1,2,2,3,2,2,2,2},
  {2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
  {2,2,1,1,1,3,2,2,2,2,2,2,3,3,3,3,2,2,2,2},
  {2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,2,2,2,2},
  {2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,2,2,3,2},
  {2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,2,2,2,2,2},
  {2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,2,2,2},
};

write(grid);




for (i1 = 0; i1 < num1; ++i1)
  {
    for (i2 = 0; i2 < num2 ; ++i2)
      {
	x0=i1*A1+i2*A2;
	
	if (grid[i1][i2] == 1){
	  pn1 = black;
	  pn2 = blue;
	}
	else if (grid[i1][i2]==2){
	  pn1 = black;
	  pn2 = cyan;
	}
	else{
	  pn1 = white;
	  pn2 = white;
	}
	draw_patch(x0, pn1, pn2);
      }	
  }



//draw((-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle);

//draw(arc(0.12Z,0.2,90,60,90,25),ArcArrow3);

surface s=surface(f,(0,0),(num1,num2),nx=5,Spline);

xaxis3(Label("$\bf Z_A$"),black,Arrow3);
yaxis3(Label("$\bf Z_B$"),black,Arrow3);
zaxis3(XYZero(extend=true),black,Arrow3);

//s.colors(palette(s.map(cc),Gradient(green,yellow,red)));
s.colors(palette(s.map(cc),Wheel()));


//draw(shift((0,0,3))*s,lightgray,meshpen=black+thick(),nolight,render(merge=true));
draw(shift((0,0,3))*s,lightgray);


//label("$O$",O,-Z+Y,red);
