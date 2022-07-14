import three;
import math;
import grid3;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

surface Sr = scale3(0.12)*unitsphere;
surface Fe = scale3(0.07)*unitsphere;
surface Mo = scale3(0.1)*unitsphere;
surface O = scale3(0.05)*unitsphere;

int n,j1,j2,j3;
triple o1,o2,o3,o4,o5,o6;
real theta=pi/10;
real costh=cos(theta),sinth=sin(theta);
size(16cm,0);

pen thick1=linewidth(1.5);
pen thick2=linewidth(2);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4,penoctahedron;

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);
n=3;
currentprojection=perspective(5,100,5,center=true);
light lit=currentlight;

path3 pth1,pth2,pth3;

bbox(rgb(0,0,0),Fill);

// draw(o6--o1--o4--o6--o2--o4--o5--o1--o3--o5--o2--o3--o6,gray(0.5)+thick2,lit);
// draw(surface(o1--o4--o6--cycle),pn1);draw(surface(o2--o4--o6--cycle),pn1);
// draw(surface(o2--o3--o6--cycle),pn1);draw(surface(o1--o3--o6--cycle),pn1);
// draw(surface(o1--o4--o5--cycle),pn1);draw(surface(o2--o4--o5--cycle),pn1);
// draw(surface(o2--o3--o5--cycle),pn1);draw(surface(o1--o3--o5--cycle),pn1);

triple x,a1,a2,a3;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}

	    x = (i1*costh,i2,i3*costh);
	    if ((i1+i3)%2==1)
	      {
		o1 = (0.5*costh,0,0.5*sinth);o2 = -o1;
		o3 = (0,0.5,0);o4 = -o3;
		o5 = (0.5*sinth,0,-0.5*costh);o6 = -o5;
	      }
	    else
	      {
		o1 = (0.5*costh,0,-0.5*sinth);o2 = -o1;
		o3 = (0,0.5,0);o4 = -o3;
		o5 = (0.5*sinth,0,0.5*costh);o6 = -o5;
	      }
	    draw(shift(x)*Fe,green+linewidth(4.0));
	    penoctahedron=rgb(0,1,0)+thick2;
	    //label("B",x+(0.1,0.04,0.04),rgb(1,1,1)+fontsize(22));
	    if (j1 * j2 * j3 == 1)
	      {
		draw(shift(x+0.5*(costh,1,costh))*Sr,red+linewidth(7.0));
		//label("A",x+0.5*(costh,1,costh)+(0.2,0.05,0.05),rgb(1,1,1)+fontsize(32));
	      }
	    pth1=x+(-0.5*costh,0,0)..x+(0.5*costh,0,0);
	    pth2=x+(0,-0.5,0)..x+(0,0.5,0);
	    pth3=x+(0,0,-0.5*costh)..x+(0,0,0.5*costh);
	    //pth1=(i1-0.5,i2,i3)..(i1+0.5,i2,i3);pth2=(i1,i2-0.5,i3)..(i1,i2+0.5,i3);pth3=(i1,i2,i3-0.5)..(i1,i2,i3+0.5);
	    draw(shift(x+o1)*O,pink);draw(shift(x+o2)*O,pink);
	    draw(shift(x+o3)*O,pink);draw(shift(x+o4)*O,pink);
	    draw(shift(x+o5)*O,pink);draw(shift(x+o6)*O,pink);
	    //label("O",x+o1+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //label("O",x+o2+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //label("O",x+o3+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //label("O",x+o4+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //label("O",x+o5+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //label("O",x+o6+(0.06,0.02,0.02),rgb(1,1,1)+fontsize(15));
	    //draw(pth1,gray(0.5)+thick1,lit);draw(pth2,gray(0.5)+thick1,lit);draw(pth3,gray(0.5)+thick1,lit);
	    //draw(pth1,penoctahedron,lit);draw(pth2,penoctahedron,lit);draw(pth3,penoctahedron,lit);
	    pth1=x+o2..x..x+o1;
	    pth2=x+o4..x..x+o3;
	    pth3=x+o6..x..x+o5;

	    draw(pth1,penoctahedron,lit);draw(pth2,penoctahedron,lit);draw(pth3,penoctahedron,lit);
	    pth1=x+o6--x+o1--x+o4--x+o6;
	    pth2=x+o2--x+o4--x+o5--x+o1;
	    pth3=x+o3--x+o5--x+o2--x+o3;
	    draw(pth1--pth2--pth3--x+o6,pink+thick2,lit);
	    o1+=x;o2+=x;o3+=x;o4+=x;o5+=x;o6+=x;
	    draw(o6--o1--o4--o6--o2--o4--o5--o1--o3--o5--o2--o3--o6,gray(0.5)+thick2,lit);
	    draw(surface(o1--o4--o6--cycle),pn1);draw(surface(o2--o4--o6--cycle),pn1);
	    draw(surface(o2--o3--o6--cycle),pn1);draw(surface(o1--o3--o6--cycle),pn1);
	    draw(surface(o1--o4--o5--cycle),pn1);draw(surface(o2--o4--o5--cycle),pn1);
	    draw(surface(o2--o3--o5--cycle),pn1);draw(surface(o1--o3--o5--cycle),pn1);

	  }
      }
  }
