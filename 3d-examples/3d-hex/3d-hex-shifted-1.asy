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
//thickx = thick1; thicky = thick1; thickz = thick1;
pen pnsurf;
//currentprojection=perspective(aa*1.5,-bb*3.2,cc*1.2,center=true);
currentprojection=orthographic(aa*1.5,-bb*3.2,cc*1.2,center=true);

currentprojection=orthographic(
camera=(2.31120081984027,-43.1520228922772,2.7904841291823),
up=(0.00123317655930305,-3.51126249352966e-05,0.0429258374946092),
target=(2.765,2.765,2.815),
zoom=1);

light lit=currentlight;

surface Ox = scale3(0.03)*unitsphere;
surface cube = scale3(0.5)*unitcube;
int lsize,j1,j2,j3,k1,k2,k3;

triple rotatez(triple v, real theta)
{
  triple z;
  z = (v.x*Cos(theta)-v.y*Sin(theta),v.x*Sin(theta)+v.y*Cos(theta),v.z);
  return z;
}

lsize=2;

path3 pth1,pth2,pth3;

real flag1,flag2,flag3,flag;

triple x,vec,dirv,vecp1,vecp2,vecp3,vecm1,vecm2,vecm3;
real theta = 0;
real thetai, phii;
triple a1, a2, a3, a4, b1, b2;
triple a01, a02, a03, a04, b01, b02;
real a=0.5,b=0.5,c=0.5;
real sh=0.1;
triple da1,da2,da3,da4,db1,db2;
triple da01,da02,da03,da04,db01,db02;
da01 = (0,-sh,0);
da02 = (0,0,-sh);
da03 = (0,-sh,0);
da04 = (0,0,sh);
db01 = (-sh,0,sh);
db02 = (sh,0,-sh);
a01 = 0.5*(-1, 1,-1) + da01;
a02 = 0.5*( 1, 1,-1) + da02;
a03 = 0.5*( 1, 1, 1) + da03;
a04 = 0.5*(-1, 1, 1) + da04;
b01 = 0.5*( 1,-1,-1) + db01;
b02 = 0.5*(-1,-1, 1) + db02;



for (int i1 = 1; i1 <= lsize; ++i1)
  {
    if (i1 == lsize){j1 = 0;}else{j1 = 1;}
    if (i1 == 1){k1 = 0;}else{k1 = 1;}
    for (int i2 = 1; i2 <= lsize; ++i2)
      {
	if (i2 == lsize){j2 = 0;}else{j2 = 1;}
	if (i2 == 1){k2 = 0;}else{k2 = 1;}
	for (int i3 = 1; i3 <= lsize; ++i3)
	  {
	    if (i3 == lsize){j3 = 0;}else{j3 = 1;}
	    if (i3 == 1){k3 = 0;}else{k3 = 1;}
	    int jj[] = {j1,j2,j3};
	    int kk[] = {k1,k2,k3};
	    x = 2*(aa*i1,bb*i2,cc*i3)-(1,1,1);

	    thetai = pi*(i1+0.5*i3)+0.5*pi;
	    phii   = pi*(i1+i2);
	    vec = (cos(thetai),cos(phii)*sin(thetai),sin(phii)*sin(thetai));
	    dirv = (-vec.y,vec.x,vec.z);
	    //write((i1,i2,i3)); write(vec);
	    a1 = (a01.x*vec.x - a01.y*vec.y, a01.x*vec.y + a01.y*vec.x, a01.z);
	    a2 = (a02.x*vec.x - a02.y*vec.y, a02.x*vec.y + a02.y*vec.x, a02.z);
	    a3 = (a03.x*vec.x - a03.y*vec.y, a03.x*vec.y + a03.y*vec.x, a03.z);
	    a4 = (a04.x*vec.x - a04.y*vec.y, a04.x*vec.y + a04.y*vec.x, a04.z);
	    b1 = (b01.x*vec.x - b01.y*vec.y, b01.x*vec.y + b01.y*vec.x, b01.z);
	    b2 = (b02.x*vec.x - b02.y*vec.y, b02.x*vec.y + b02.y*vec.x, b02.z);

	    da1 = (da01.x*vec.x - da01.y*vec.y, da01.x*vec.y + da01.y*vec.x, da01.z);
	    da2 = (da02.x*vec.x - da02.y*vec.y, da02.x*vec.y + da02.y*vec.x, da02.z);
	    da3 = (da03.x*vec.x - da03.y*vec.y, da03.x*vec.y + da03.y*vec.x, da03.z);
	    da4 = (da04.x*vec.x - da04.y*vec.y, da04.x*vec.y + da04.y*vec.x, da04.z);
	    db1 = (db01.x*vec.x - db01.y*vec.y, db01.x*vec.y + db01.y*vec.x, db01.z);
	    db2 = (db02.x*vec.x - db02.y*vec.y, db02.x*vec.y + db02.y*vec.x, db02.z);

	    // if (abs(vec.x)<=0.0001  && vec.y ==  1){pnsurf=red;}
	    // if (vec.x==-1 && abs(vec.y) <= 0.0001){pnsurf=green;}
	    // if (abs(vec.x)<=0.0001  && vec.y == -1){pnsurf=blue;}
	    // if (vec.x==1  && abs(vec.y) <= 0.0001){pnsurf=yellow;}

	    // cube //
	    draw(shift(x-0.5*(1,1,1))*(scale(2,2,2)*cube),rgb(0.0,1,0.0)+opacity(0.3)+linewidth(1));

	    // vecp1 = 0.5*(j1*aa,0,0); vecp2 = 0.5*(0,j2*bb,0); vecp3 = 0.5*(0,0,j3*cc);
	    // vecm1 = 0.5*(k1*aa,0,0); vecm2 = 0.5*(0,k2*bb,0); vecm3 = 0.5*(0,0,k3*cc);
	    draw(shift(x+a1)*Ox,blue); draw(shift(x+a2)*Ox,blue); draw(shift(x+a3)*Ox,blue); draw(shift(x+a4)*Ox,blue);
	    draw(shift(x+b1)*Ox,red); draw(shift(x+b2)*Ox,red);
	    //draw(x..x+dirv,rgb(0.9,0.1,0.1)+thick1,Arrow3(30),lit);
	    // within unit cell //
	    pth1=x+a1--x+a2--x+a3--x+a4--cycle; draw(pth1,thick1,lit);//draw(surface(pth1),pnsurf+opacity(0.5));
	    pth1=x+a2--x+b1; draw(pth1,thick1,lit);
	    pth1=x+a4--x+b2; draw(pth1,thick1,lit);
	    // outside unit cell //
	    flag1 = abs(dirv.x)*(j1*(1+dirv.x)/2 + k1*(1-dirv.x)/2) + abs(dirv.y)*(j2*(1+dirv.y)/2 + k2*(1-dirv.y)/2);
	    flag2 = abs(vec.x)*(j1*(1+vec.x)/2 + k1*(1-vec.x)/2) + abs(vec.y)*(j2*(1+vec.y)/2 + k2*(1-vec.y)/2);
	    flag3 = abs(vec.x)*(j1*(1-vec.x)/2 + k1*(1+vec.x)/2) + abs(vec.y)*(j2*(1-vec.y)/2 + k2*(1+vec.y)/2);

	    // local x direction //
	    pth1=x+a2--x+a2+flag1*(dirv-da2+db1); draw(pth1,thickx,lit);
	    pth1=x+a4--x+a4+flag1*(dirv-da4+db2); draw(pth1,thickx,lit);
	    
	    // local y direction //
	    //flag = dirv.x*(i1%2)+dirv.y*(i2%2);write(flag);
	    if (abs(dirv.x)==1){flag = 1;}else {flag = 2;}
	    write((i1,i2,i3));
	    write(flag);
	    if ((i1+i2+i3)%2==1){
	      pth1=x+a2--x+a2+flag2*(vec-da2+rotate(180,(0,0,1))*db1); draw(pth1,thicky,lit);	    //pth1=x+b1--x+b1+flag2*(vec-db1); draw(pth1,thicky,lit);
	      pth1=x+a4--x+a4-flag3*(vec+da4-rotate(180,(0,0,1))*db2); draw(pth1,thicky,lit);	    //pth1=x+b2--x+b2-flag3*vec; draw(pth1,thicky,lit);
	    }
	    //pth1=x+a2--x+a2+flag2*(vec-dirv); draw(pth1,thicky,lit);
	    
	    // z direction //
	    if ((i1+i2)%2==0)
	      {
		if (j3 == 1){
		  pth1=x+a3--x+a3+(0,0,1)-da3+rotate(90,(0,0,1))*db1;draw(pth1,thickz,lit);
		  pth1=x+a4--x+a4+(0,0,1)-da4+rotate(90,(0,0,1))*da2;draw(pth1,thickz,lit);
		  pth1=x+b2--x+b2+(0,0,1)-db2+rotate(90,(0,0,1))*da1;draw(pth1,thickz,lit);
		}
	      }
	    else
	      {
		if (j3 == 1){
		  pth1=x+b2--x+b2+(0,0,1)-db2+rotate(-90,(0,0,1))*db1;draw(pth1,thickz,lit);
		  pth1=x+a3--x+a3+(0,0,1)-da3+rotate(-90,(0,0,1))*da1;draw(pth1,thickz,lit);
		}
	      }
	    
	    //if (i1==1 && i2==1 && i3==1) {label("(1,1,1)",x);}
	    //if (i1==lsize && i2==1 && i3==1) {label("(n,1,1)",x);}
	    //if (i1==lsize && i2==lsize && i3==lsize) {label("(n,n,n)",x);}
	    
	  }
      }
  }

pth1 = (0,0,0)--2*lsize*(1,0,0); draw(pth1,linewidth(2),Arrow3(15),lit);label("x",lsize*(1,0,0),S,fontsize(24));
pth1 = (0,0,0)--2*lsize*(0,1,0); draw(pth1,linewidth(2),Arrow3(15),lit);label("y",lsize*(0,1,0),W,fontsize(24));
pth1 = (0,0,0)--2*lsize*(0,0,1); draw(pth1,linewidth(2),Arrow3(15),lit);label("z",lsize*(0,0,1),W,fontsize(24));

