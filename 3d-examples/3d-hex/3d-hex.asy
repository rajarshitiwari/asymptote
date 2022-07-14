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
pen thick1=linewidth(1);
pen thickx=linewidth(2)+red;
pen thicky=linewidth(2)+green;
pen thickz=linewidth(2)+blue;

pen pnsurf;
//currentprojection=perspective(aa*1.5,-bb*3.2,cc*1.2,center=true);
currentprojection=orthographic(aa*1.5,-bb*3.2,cc*1.2,center=true);

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

lsize=3;

path3 pth1,pth2,pth3;

real flag1,flag2,flag3;

triple x,vec,dirv,vecp1,vecp2,vecp3,vecm1,vecm2,vecm3;
real theta = 0;
real thetai, phii;
triple a1, a2, a3, a4, b1, b2;
real a=0.5,b=0.5,c=0.5;


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
	    a1 = 0.5*(-vec.x-vec.y, -vec.y+vec.x, -1);
	    a2 = 0.5*(+vec.x-vec.y, +vec.y+vec.x, -1);
	    a3 = 0.5*(+vec.x-vec.y, +vec.y+vec.x,  1);
	    a4 = 0.5*(-vec.x-vec.y, -vec.y+vec.x,  1);
	    b1 = 0.5*(+vec.x+vec.y, +vec.y-vec.x, -1);
	    b2 = 0.5*(-vec.x+vec.y, -vec.y-vec.x,  1);
	    
	    // if (abs(vec.x)<=0.0001  && vec.y ==  1){pnsurf=red;}
	    // if (vec.x==-1 && abs(vec.y) <= 0.0001){pnsurf=green;}
	    // if (abs(vec.x)<=0.0001  && vec.y == -1){pnsurf=blue;}
	    // if (vec.x==1  && abs(vec.y) <= 0.0001){pnsurf=yellow;}

	    // cube //
	    draw(shift(x-0.5*(1,1,1))*(scale(2,2,2)*cube),rgb(0.0,1,0.0)+opacity(0.5)+linewidth(1));

	    // vecp1 = 0.5*(j1*aa,0,0); vecp2 = 0.5*(0,j2*bb,0); vecp3 = 0.5*(0,0,j3*cc);
	    // vecm1 = 0.5*(k1*aa,0,0); vecm2 = 0.5*(0,k2*bb,0); vecm3 = 0.5*(0,0,k3*cc);
	    draw(shift(x+a1)*Ox,blue); draw(shift(x+a2)*Ox,blue); draw(shift(x+a3)*Ox,blue); draw(shift(x+a4)*Ox,blue);
	    draw(shift(x+b1)*Ox,red); draw(shift(x+b2)*Ox,red);
	    //draw(x..x+dirv,rgb(0.9,0.1,0.1)+thick1,Arrow3(30),lit);
	    // within unit cell //

	    pth1=x+a1--x+a2--x+a3--x+a4--cycle; draw(pth1,thick1,lit);
	    //draw(surface(pth1),pnsurf+opacity(0.5));
	    pth1=x+a2--x+b1; draw(pth1,thick1,lit);
	    pth1=x+a4--x+b2; draw(pth1,thick1,lit);
	    // outside unit cell //
	    flag1 = abs(dirv.x)*(j1*(1+dirv.x)/2 + k1*(1-dirv.x)/2) + abs(dirv.y)*(j2*(1+dirv.y)/2 + k2*(1-dirv.y)/2);
	    flag2 = abs(vec.x)*(j1*(1+vec.x)/2 + k1*(1-vec.x)/2) + abs(vec.y)*(j2*(1+vec.y)/2 + k2*(1-vec.y)/2);
	    flag3 = abs(vec.x)*(j1*(1-vec.x)/2 + k1*(1+vec.x)/2) + abs(vec.y)*(j2*(1-vec.y)/2 + k2*(1+vec.y)/2);
	    // local x direction //
	    pth1=x+a2--x+a2+flag1*dirv; draw(pth1,thickx,lit);
	    pth1=x+a4--x+a4+flag1*dirv; draw(pth1,thickx,lit);
	    
	    // local y direction //
	    pth1=x+a2--x+a2+flag2*vec; draw(pth1,thicky,lit);
	    pth1=x+b1--x+b1+flag2*vec; draw(pth1,thicky,lit);
	    pth1=x+a4--x+a4-flag3*vec; draw(pth1,thicky,lit);
	    pth1=x+b2--x+b2-flag3*vec; draw(pth1,thicky,lit);

	    // z direction //
	    if ((i1+i2)%2==0)
	      {
		pth1=x+a3--x+a3+(0,0,j3);draw(pth1,thickz,lit);
		pth1=x+a4--x+a4+(0,0,j3);draw(pth1,thickz,lit);
		pth1=x+b2--x+b2+(0,0,j3);draw(pth1,thickz,lit);
	      }
	    else
	      {
		pth1=x+b2--x+b2+(0,0,j3);draw(pth1,thickz,lit);
		pth1=x+a3--x+a3+(0,0,j3);draw(pth1,thickz,lit);
	      }
	    
	    if (i1==1 && i2==1 && i3==1) {label("(1,1,1)",x);}
	    if (i1==lsize && i2==1 && i3==1) {label("(n,1,1)",x);}
	    if (i1==lsize && i2==lsize && i3==lsize) {label("(n,n,n)",x);}
	    
	  }
      }
  }



























// void draw_points(triple orig, real angle, int flag)
// {
//   surface Ox = scale3(0.03)*unitsphere;
//   triple a1, a2, a3, a4, b1, b2;
//   real a=0.5,b=0.5,c=0.5;
//   a1 = (0,b,0)-0.5*(a,b,c);
//   a2 = (a,b,0)-0.5*(a,b,c);
//   a3 = (a,b,c)-0.5*(a,b,c);
//   a4 = (0,b,c)-0.5*(a,b,c);
//   b1 = (a,0,0)-0.5*(a,b,c);
//   b2 = (0,0,c)-0.5*(a,b,c);
//   a1 = ((-1)^flag)*rotatez(a1,angle);
//   a2 = ((-1)^flag)*rotatez(a2,angle);
//   a3 = ((-1)^flag)*rotatez(a3,angle);
//   a4 = ((-1)^flag)*rotatez(a4,angle);
//   b1 = ((-1)^flag)*rotatez(b1,angle);
//   b2 = ((-1)^flag)*rotatez(b2,angle);
//   draw(shift(orig+a1)*Ox,blue); draw(shift(orig+a2)*Ox,blue); draw(shift(orig+a3)*Ox,blue); draw(shift(orig+a4)*Ox,blue);
//   draw(shift(orig+b1)*Ox,red); draw(shift(orig+b2)*Ox,red);
//   // within unit cell //
//   path3 pth1; pen thick1=linewidth(1)+gray(0.5);
//   pth1=orig+a1--orig+a2--orig+a3--orig+a4--orig+a1; draw(pth1,thick1,lit);
//   pth1=orig+a2--orig+b1; draw(pth1,thick1,lit);
//   pth1=orig+a4--orig+b2; draw(pth1,thick1,lit);
//   // outside unit cell //
//   pth1=orig+a2--orig+a2+(a2-b1); draw(pth1,thick1,lit);
//   pth1=orig+a4--orig+a4+(a4-b2); draw(pth1,thick1,lit);
// }


	    // outside unit cell //
	    //pth1=x+a2..x+a2+vecp1; draw(pth1,thick1,lit);
	    //pth1=x+a2..x+a2+vecp2; draw(pth1,thick1,lit);
	    //pth2=x+a3..x+a3+vecp2; draw(pth2,thick1,lit);
	    //pth2=x+a3..x+a3+vecp3; draw(pth2,thick1,lit);
	    //pth3=x+b3..x+b3+vecp3; draw(pth3,thick1,lit);
	    
	    
	    //pth1 = x+a1--x+a2--x+a3--cycle; draw(pth1,thick2,lit);
	    //pth2 = x+b1--x+b2--x+b3--cycle; draw(pth2,thick2,lit);
	    
	    // // first three xy plane: a2,b3
	    // if (j1*j2==1)
	    //   {
	    // 	pth1 = x+a2--x+a2+0.5*(aa,bb,0);
	    // 	draw(pth1,thick2,lit);
	    // 	pth1 = x+b3--x+b3+0.5*(aa,bb,0);
	    // 	draw(pth1,thick2,lit);
	    //   }
	    // if (j1==1)
	    //   {
	    // 	pth2 = x+a2--x+a2+0.5*(aa,-bb,0);
	    // 	draw(pth2,thick2,lit);
	    // 	pth2 = x+b3--x+b3+0.5*(aa,-bb,0);
	    // 	draw(pth2,thick2,lit);
	    //   }
	    // if (j2==1)
	    //   {
	    // 	pth3 = x+a2--x+a2+0.5*(-aa,bb,0);
	    // 	draw(pth3,thick2,lit);
	    // 	pth3 = x+b3--x+b3+0.5*(-aa,bb,0);
	    // 	draw(pth3,thick2,lit);
	    //   }
	    
	    // // second three yz plane: a3,b3
	    // if (j2*j3==1)
	    //   {
	    // 	pth1 = x+a3--x+a3+0.5*(0,bb,cc);
	    // 	draw(pth1,thick2,lit);
	    // 	pth1 = x+b3--x+b3+0.5*(0,bb,cc);
	    // 	draw(pth1,thick2,lit);
	    //   }
	    // if (j3==1)
	    //   {
	    // 	pth2 = x+a3--x+a3+0.5*(0,-bb,cc);
	    // 	draw(pth2,thick2,lit);
	    // 	pth2 = x+b3--x+b3+0.5*(0,-bb,cc);
	    // 	draw(pth2,thick2,lit);
	    //   }
	    // if (j2==1)
	    //   {
	    // 	pth3 = x+a3--x+a3+0.5*(0,bb,-cc);
	    // 	draw(pth3,thick2,lit);
	    // 	pth3 = x+b3--x+b3+0.5*(0,bb,-cc);
	    // 	draw(pth3,thick2,lit);
	    //   }
	    
	    // // third three zx plane: a3,b1
	    // if (j3==1)
	    //   {
	    // 	pth1 = x+a3--x+a3+0.5*(aa,0,cc);
	    // 	draw(pth1,thick2,lit);
	    // 	pth1 = x+b1--x+b1+0.5*(aa,0,cc);
	    // 	draw(pth1,thick2,lit);
	    //   }
	    // if (k1*j3==1)
	    //   {
	    //  	pth2 = x+a3--x+a3+0.5*(-aa,0,cc);
	    //  	draw(pth2,thick2,lit);
	    //  	pth2 = x+b1--x+b1+0.5*(-aa,0,cc);
	    //  	draw(pth2,thick2,lit);
	    //   }
	    // if (k1==1)
	    //   {
	    //  	pth3 = x+a3--x+a3+0.5*(-aa,00,-cc);
	    //  	draw(pth3,thick2,lit);
	    //  	pth3 = x+b1--x+b1+0.5*(-aa,0,-cc);
	    //  	draw(pth3,thick2,lit);
	    //   }
	    
	    
	    //label("A1",x+a1+(0,-0.1,0),red+fontsize(18));
	    //label("A2",x+a2+(0,-0.1,0),red+fontsize(18));
	    //label("A3",x+a3+(0,-0.1,0),red+fontsize(18));
	    //label("B1",x+b1+(0,-0.1,0),blue+fontsize(18));
	    //label("B2",x+b2+(0,-0.1,0),blue+fontsize(18));
	    //label("B3",x+b3+(0,-0.1,0),blue+fontsize(18));
