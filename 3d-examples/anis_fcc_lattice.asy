import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mo = scale3(0.01)*unitsphere;
surface Fe = scale3(0.08)*unitsphere;

//background=rgb(0,0,0);
int num1,num2,num3,j1,j2,j3,k1,k2,k3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(1);
pen thick2=linewidth(3);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
num1=3;num2=6;num3=6;

//currentprojection=perspective(-1,-1.4,1.6,center=true);
currentprojection=perspective(4*num3,num2/2,num3/2,center=true);

light lit=currentlight;
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));

//draw(surface(A1--A2--A3--cycle),pn1);
//draw(surface(A1--A3--A4--cycle),pn2);
//draw(surface(A1--A4--A2--cycle),pn3);
//draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

//draw(A1..A2,cl+thick2,lit);draw(A1..A3,cl+thick2,lit);draw(A1..A4,cl+thick2,lit);
//draw(A2..A3,cl+thick2,lit);draw(A2..A4,cl+thick2,lit);draw(A3..A4,cl+thick2,lit);

path3 pth1,pth2,pth3;

for (int i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (int i2 = 0; i2 <= num2; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
	if (i2 == 0){k2 = 0;}else{k2 = 1;}
	for (int i3 = 0; i3 <= num3; ++i3)
	  {if (i3 == num3){j3 = 0;}else{j3 = 1;}
	    if (i3 == 0){k3 = 0;}else{k3 = 1;}
	    if((i1+i2+i3)%2 == 1)
	      {//dot((i1,i2,i3),green+linewidth(10.0));
		//draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	      }
	    else
	      {
		//dot((i1,i2,i3),blue+linewidth(6.0));
		draw(shift((i1,i2,i3))*Fe,rgb(0,1,0)+linewidth(4.0));
		if (j1*j2 == 1){ pth1=(i1,i2,i3)..(i1+j1,i2+j2,i3); draw(pth1,gray(1)+thick1,lit);}
		if (j1*j3 == 1){ pth1=(i1,i2,i3)..(i1+j1,i2,i3+j3); draw(pth1,gray(1)+thick1,lit);}
		if (j2*j3 == 1){ pth1=(i1,i2,i3)..(i1,i2+j2,i3+j3); draw(pth1,gray(1)+thick2,lit);}
		
		if (j1*k2 == 1){ pth1=(i1,i2,i3)..(i1+j1,i2-k2,i3); draw(pth1,gray(1)+thick1,lit);}
		if (j1*k3 == 1){ pth1=(i1,i2,i3)..(i1+j1,i2,i3-k3); draw(pth1,gray(1)+thick1,lit);}
		if (j2*k3 == 1){ pth1=(i1,i2,i3)..(i1,i2+j2,i3-k3); draw(pth1,gray(1)+thick2,lit);}
		
	      }
	    /*
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3);draw(pth1,gray(1)+thick1,lit);
	    pth2=(i1,i2,i3)..(i1,i2+j2,i3);draw(pth2,gray(1)+thick1,lit);
	    pth3=(i1,i2,i3)..(i1,i2,i3+j3);draw(pth3,gray(1)+thick1,lit);
	    */
	  }
      }
  }
bbox(rgb(0,0,0),Fill);
