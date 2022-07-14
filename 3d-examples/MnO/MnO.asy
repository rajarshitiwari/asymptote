import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

//import settings;
//outformat="png";

surface Ox = scale3(0.05)*unitsphere;
surface Mn = scale3(0.1)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(2);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
pen cl1=rgb(0.0,0.0,0.9);
pen cl2=rgb(0.9,0.0,0.0);

pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=3;
currentprojection=perspective(-2,-1.4,n/2.+0.5,center=true);
light lit=currentlight;

path3 pth1,pth2,pth3;
for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==1)
	      {
		draw(shift((i1,i2,i3))*Ox,green);
	      }
	    else
	      {
		draw(shift((i1,i2,i3))*Mn,blue);
	      }
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3);pth2=(i1,i2,i3)..(i1,i2+j2,i3);pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    draw(pth1,gray(0.5)+thick1,lit);draw(pth2,gray(0.5)+thick1,lit);draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }


triple B1=(1,0,0),B2=(0,1,0),B3=(0,0,1), B4=(1,1,1);
for (int i1 = 0; i1 < n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 < n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 < n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==0)
	      {
		pth1=(i1,i2,i3)..(i1+j1,i2+j2,i3);pth2=(i1,i2,i3)..(i1+j1,i2,i3+j3);pth3=(i1,i2,i3)..(i1,i2+j2,i3+j3);
		draw(pth1,cl1+thick2,lit);draw(pth2,cl1+thick2,lit);draw(pth3,cl1+thick2,lit);
		pth1=(i1+j1,i2+j2,i3)..(i1+j1,i2,i3+j3);pth2=(i1+j1,i2+j2,i3)..(i1,i2+j2,i3+j3);pth3=(i1+j1,i2,i3+j3)..(i1,i2+j2,i3+j3);
		draw(pth1,cl1+thick2,lit);draw(pth2,cl1+thick2,lit);draw(pth3,cl1+thick2,lit);
	      }
	    else
	      {
		pth1=(i1+j1,i2,i3)..(i1,i2+j2,i3);pth2=(i1+j1,i2,i3)..(i1,i2,i3+j3);pth3=(i1+j1,i2,i3)..(i1+j1,i2+j2,i3+j3);
		draw(pth1,cl1+thick2,lit);draw(pth2,cl1+thick2,lit);draw(pth3,cl1+thick2,lit);
		pth1=(i1,i2+j2,i3)..(i1,i2,i3+j3);pth2=(i1,i2+j2,i3)..(i1+j1,i2+j2,i3+j3);pth3=(i1,i2,i3+j3)..(i1+j1,i2+j2,i3+j3);
		draw(pth1,cl1+thick2,lit);draw(pth2,cl1+thick2,lit);draw(pth3,cl1+thick2,lit);
	      }
	  }
      }
  }

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==0)
	      {
		pth1=(i1,i2,i3)..(i1+2*j1,i2,i3);pth2=(i1,i2,i3)..(i1,i2+2*j2,i3);pth3=(i1,i2,i3)..(i1,i2,i3+2*j3);
		draw(pth1,cl2+thick3,lit);draw(pth2,cl2+thick3,lit);draw(pth3,cl2+thick3,lit);
	      }
	  }
      }
  }

//draw(A1..A2,cl1+thick2,lit);draw(A1..A3,cl1+thick2,lit);draw(A1..A4,cl1+thick2,lit);
//draw(A2..A3,cl1+thick2,lit);draw(A2..A4,cl1+thick2,lit);draw(A3..A4,cl1+thick2,lit);
//draw(B1..B2,cl2+thick2,lit);draw(B1..B3,cl2+thick2,lit);draw(B1..B4,cl2+thick2,lit);
//draw(B2..B3,cl2+thick2,lit);draw(B2..B4,cl2+thick2,lit);draw(B3..B4,cl2+thick2,lit);
