import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.05)*unitsphere;
surface Fe = scale3(0.05)*unitsphere;

//background=rgb(0,0,0);
int n,n1,n2,n3,j1,j2,j3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(2);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;
triple A1=(2,0,0),A2=(1,1,0),A3=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=2;n1 = n;n2 = 2*n; n3=3*n;
currentprojection=perspective(-1,-1.4,1.6,center=true);
light lit=currentlight;
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));

path3 pth1,pth2,pth3;

triple x,x1,x2;


surface ellipsoid(triple v1,triple v2,triple v3,real l1,real l2, real l3, triple pos=O) {
  transform3 T = copy(identity4);
  T[0][0] = l1*v1.x;
  T[1][0] = l1*v1.y;
  T[2][0] = l1*v1.z;
  T[0][1] = l2*v2.x;
  T[1][1] = l2*v2.y;
  T[2][1] = l2*v2.z;
  T[0][2] = l3*v3.x;
  T[1][2] = l3*v3.y;
  T[2][2] = l3*v3.z;
  T[0][3] = pos.x;
  T[1][3] = pos.y;
  T[2][3] = pos.z;
  return T*unitsphere;
}

surface ell = ellipsoid( (1,0,0), (0,1,0), (0,0,1), 0.8, 0.2, 0.2, O);

for (int i1 = 1; i1 <= n1; ++i1)
  {//if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 1; i2 <= n2; ++i2)
      {//if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 1; i3 <= n3; ++i3)
	  {//if (i3 == n){j3 = 0;}else{j3 = 1;}
	    x = i1*A1 + i2*A2 + i3*A3;
	    write(x);write(x+(1,0,0));
	    x1 = x;
	    x2 = x+(1,0,0);
	    draw(shift(0.5*(x1+x2))*ell,red+opacity(0.5));
	    draw(shift(x2)*Fe,blue+linewidth(4.0));
	    draw(shift(x1)*Mo,green+linewidth(7.0));
	    pth1=x1..x2; draw(pth1,gray(0.5)+thick1,lit);
	    pth1=x2..x2+(1,0,0); draw(pth1,gray(0.5)+thick1,lit);
	    pth1=x1..x1+(0,1,0); draw(pth1,gray(0.5)+thick1,lit);
	    pth1=x2..x2+(0,1,0); draw(pth1,gray(0.5)+thick1,lit);
	    
	    pth1=x1..x1+(0,0,1); draw(pth1,gray(0.5)+thick1,lit);
	    pth1=x2..x2+(0,0,1); draw(pth1,gray(0.5)+thick1,lit);

	    //pth1=(i1,i2,i3)..(i1+j1,i2,i3);
	    //pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    //pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    //draw(pth1,gray(0.5)+thick1,lit);
	    //draw(pth2,gray(0.5)+thick1,lit);
	    //draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }
bbox(rgb(0,0,0),Fill);
