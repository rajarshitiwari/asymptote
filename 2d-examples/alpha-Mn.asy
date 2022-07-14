import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

triple rotatez(triple v, real theta)
{
  triple z;
  z = (v.x*Cos(theta)-v.y*Sin(theta),v.x*Sin(theta)+v.y*Cos(theta),v.z);
  return z;
}

surface Mn = scale3(0.06)*unitsphere;

int lsize,j1,j2,j3,k1,k2,k3;
triple p1,p2,p3,p4,xp1,xp2,xp3,xp4,xx;

size(16cm,0);

pen thick1=linewidth(2);
pen thick2=linewidth(5);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4,penoctahedron;

lsize=3;
currentprojection=orthographic(0,0,-1,center=true);
currentprojection=orthographic(
camera=(2.18005596897284,2.24604341448732,-6.93793100144205),
up=(-0.0163291034642439,-0.000341243815584526,0.000135496631531827),
target=(2.25,2.25,1.5),
zoom=1);


light lit=currentlight;

path3 pth1,pth2,pth3;

bbox(rgb(0,0,0),Fill);

pn1 = blue+linewidth(2.0);
pn2 = blue+linewidth(3.0);

p1 = (-0.5, 0.0,0);p1 = rotatez(p1,-22.5);
p2 = ( 0.0,-0.5,0);p2 = rotatez(p2,-22.5);
p3 = ( 0.5, 0.0,0);p3 = rotatez(p3,-22.5);
p4 = ( 0.0, 0.5,0);p4 = rotatez(p4,-22.5);

real theta,scal;
scal = 1.5;
for (int i1 = 0; i1 <= lsize; ++i1)
  {
    if (i1 == lsize){j1 = 0;}else{j1 = 1;}
    if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (int i2 = 0; i2 <= lsize; ++i2)
     {
       if (i2 == lsize){j2 = 0;}else{j2 = 1;}
       if (i2 == 0){k2 = 0;}else{k2 = 1;}
       for (int i3 = 0; i3 <= lsize; ++i3)
        {
          if (i3 == lsize){j3 = 0;}else{j3 = 1;}
          if (i3 == 0){k3 = 0;}else{k3 = 1;}

          xx = (scal*i1,scal*i2,i3);
          theta = i3%2 * 45.0;
          xp1 = xx + rotatez(p1,theta);
          xp2 = xx + rotatez(p2,theta);
          xp3 = xx + rotatez(p3,theta);
          xp4 = xx + rotatez(p4,theta);
          draw(shift(xp1)*Mn,pn1);
          draw(shift(xp2)*Mn,pn1);
          draw(shift(xp3)*Mn,pn1);
          draw(shift(xp4)*Mn,pn1);
          
          draw(xp1--xp2--xp3--xp4--cycle,pn2);

          if (i3%2==1)
            {
              draw(xp1--xx-(0,0,k3)+p2--xp2,pn2);
              draw(xp2--xx-(0,0,k3)+p3--xp3,pn2);
              draw(xp3--xx-(0,0,k3)+p4--xp4,pn2);
              draw(xp4--xx-(0,0,k3)+p1--xp1,pn2);
            }
          //draw(xp1--xx-(0,0,k3)+p2,pn2);
          //draw(xp2--xx-(0,0,k3)+p3,pn2);
          //draw(xp3--xx-(0,0,k3)+p4,pn2);
          //draw(xp4--xx-(0,0,k3)+p1,pn2);

          //pth1=(i1-0.5,i2,i3)..(i1+0.5,i2,i3);pth2=(i1,i2-0.5,i3)..(i1,i2+0.5,i3);pth3=(i1,i2,i3-0.5)..(i1,i2,i3+0.5);
          //draw(pth1);
        }
     }
  }
