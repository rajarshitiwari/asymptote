import graph;
import math;
import grid3;
import graph3;
import contour;
import tube;
//dotgranularity=0;// Render dots as spheres.
real f1(real x)
{real f,x0,scale;
  x0 = 0;
  scale = 1;
  if (x <= x0)
    {f = exp(-(x-x0)^2/scale^2);}
  else{f = 0.0;}
  return f;}
real f2(real x)
{real f,x0,scale;
  x0 = 1;
  scale = 1;
  if (x >= x0)
    {f = exp(-(x-x0)^2/scale^2);}
  else{f = 0.0;}
  return f;}
size(12cm,0);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(2);
pen thick2=linewidth(3);
real a,b,x;

a = -3;
b = 7;
draw(graph(f1,a,b),red);
draw(graph(f2,a,b),blue);

yaxis();
//real f1(real x,real x0,real scale)
//{real f;
//  if (x <= x0)
//    {f = exp(-(x-x0)^2/scale^2);}
//  else{f = 0.0;}
//  return f;}
//real f2(real x,real x0,real scale)
//{real f;
//  if (x >= x0)
//    {f = exp(-(x-x0)^2/scale^2);}
//  else{f = 0.0;}
//  return f;}
