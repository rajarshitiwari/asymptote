import three;
import math;
import graph3;
import contour;
import tube;

//import settings;
//outformat="png";

surface Mo = scale3(0.05)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
int n;
int j1,j2,j3,k1,k2,k3;
pen thick1=linewidth(3);
pen thick2=linewidth(2);
triple xi,x,vec,vec1,vec2;
light lit=currentlight;
triple f1,f2,f3,f4;
triple m1,m2,m3,m4;
triple a1,a2,a3;

size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
currentprojection=perspective(15,15.5,n/2+0.5,center=true);

n=2;

a1 = (2,0,0);a2 = (0,2,0);a3 = (0,0,2);

f1 = (0,0,0);
f2 = (1,1,0);
f3 = (1,0,1);
f4 = (0,1,1);

m1 = (1,0,0);
m2 = (0,1,0);
m3 = (1,1,1);
m4 = (0,0,1);

for (int i1 = 0; i1 <= n; ++i1)
  {
    if (i1 == 4*n-1) {j1 = 0;}else{j1 = 1;}
    if (i1 == 0) {k1 = 0;}else{k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {
	if (i2 == 4*n-1) {j2 = 0;}else{j2 = 1;}
	if (i2 == 0) {k2 = 0;}else{k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {
	    if (i3 == 4*n-1) {j3 = 0;}else{j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else{k3 = 1;}
	    xi = i1*a1+i2*a2+i3*a3;

	    draw(shift(xi+f1)*Fe,blue+linewidth(4.0));
	    draw(shift(xi+f2)*Fe,blue+linewidth(4.0));
	    draw(shift(xi+f3)*Fe,blue+linewidth(4.0));
	    draw(shift(xi+f4)*Fe,blue+linewidth(4.0));

	    draw(shift(xi+m1)*Mo,green+linewidth(7.0));
	    draw(shift(xi+m2)*Mo,green+linewidth(7.0));
	    draw(shift(xi+m3)*Mo,green+linewidth(7.0));
	    draw(shift(xi+m4)*Mo,green+linewidth(7.0));

	    draw(xi+f1--xi+f1+(1,0,0),gray(0.8)+thick1,lit);
	    draw(xi+f1--xi+f1+(0,1,0),gray(0.8)+thick1,lit);
	    draw(xi+f1--xi+f1+(0,0,1),gray(0.8)+thick1,lit);
	    draw(xi+f2--xi+f2-(1,0,0),gray(0.8)+thick1,lit);
	    draw(xi+f2--xi+f2-(0,1,0),gray(0.8)+thick1,lit);
	    draw(xi+f2--xi+f2+(0,0,1),gray(0.8)+thick1,lit);
	    draw(xi+f3--xi+f3-(1,0,0),gray(0.8)+thick1,lit);
	    draw(xi+f3--xi+f3+(0,1,0),gray(0.8)+thick1,lit);
	    draw(xi+f3--xi+f3-(0,0,1),gray(0.8)+thick1,lit);
	    draw(xi+f4--xi+f4+(1,0,0),gray(0.8)+thick1,lit);
	    draw(xi+f4--xi+f4-(0,1,0),gray(0.8)+thick1,lit);
	    draw(xi+f4--xi+f4-(0,0,1),gray(0.8)+thick1,lit);

	    draw(xi+m1--xi+m2,green+thick2,lit);
	    draw(xi+m1--xi+m3,green+thick2,lit);
	    draw(xi+m1--xi+m4,green+thick2,lit);
	    draw(xi+m2--xi+m3,green+thick2,lit);
	    draw(xi+m2--xi+m4,green+thick2,lit);
	    draw(xi+m3--xi+m4,green+thick2,lit);

	    // Draw(xi+m1--xi+m1+( 1, 1, 0),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1,-1, 0),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1, 0, 1),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1, 0,-1),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 0, 1, 1),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 0, 1,-1),green+thick2,lit);

	    // draw(xi+m2--xi+m2+( 1, 1, 0),green+thick2,lit);
	    // draw(xi+m2--xi+m2+( 1,-1, 0),green+thick2,lit);
	    // draw(xi+m2--xi+m2+( 1, 0, 1),green+thick2,lit);
	    // draw(xi+m2--xi+m2+( 1, 0,-1),green+thick2,lit);
	    // draw(xi+m2--xi+m2+( 0, 1, 1),green+thick2,lit);
	    // draw(xi+m2--xi+m2+( 0, 1,-1),green+thick2,lit);

	    // draw(xi+m3--xi+m3+( 1, 1, 0),green+thick2,lit);
	    // draw(xi+m3--xi+m3+( 1,-1, 0),green+thick2,lit);
	    // draw(xi+m3--xi+m3+( 1, 0, 1),green+thick2,lit);
	    // draw(xi+m3--xi+m3+( 1, 0,-1),green+thick2,lit);
	    // draw(xi+m3--xi+m3+( 0, 1, 1),green+thick2,lit);
	    // draw(xi+m3--xi+m3+( 0, 1,-1),green+thick2,lit);

	    // draw(xi+m4--xi+m4+( 1, 1, 0),green+thick2,lit);
	    // draw(xi+m4--xi+m4+( 1,-1, 0),green+thick2,lit);
	    // draw(xi+m4--xi+m4+( 1, 0, 1),green+thick2,lit);
	    // draw(xi+m4--xi+m4+( 1, 0,-1),green+thick2,lit);
	    // draw(xi+m4--xi+m4+( 0, 1, 1),green+thick2,lit);
	    // draw(xi+m4--xi+m4+( 0, 1,-1),green+thick2,lit);

	  }
      }
  }

	    // draw(xi+f1-k1*(1,0,0)--xi+f1+j1*(1,0,0),gray(0.8)+thick1,lit);
	    // draw(xi+f1-k2*(0,1,0)--xi+f1+j2*(0,1,0),gray(0.8)+thick1,lit);
	    // draw(xi+f1-k3*(0,0,1)--xi+f1+j3*(0,0,1),gray(0.8)+thick1,lit);
	    // draw(xi+f2-k1*(1,0,0)--xi+f2+j1*(1,0,0),gray(0.8)+thick1,lit);
	    // draw(xi+f2-k2*(0,1,0)--xi+f2+j2*(0,1,0),gray(0.8)+thick1,lit);
	    // draw(xi+f2-k3*(0,0,1)--xi+f2+j3*(0,0,1),gray(0.8)+thick1,lit);
	    // draw(xi+f3-k1*(1,0,0)--xi+f3+j1*(1,0,0),gray(0.8)+thick1,lit);
	    // draw(xi+f3-k2*(0,1,0)--xi+f3+j2*(0,1,0),gray(0.8)+thick1,lit);
	    // draw(xi+f3-k3*(0,0,1)--xi+f3+j3*(0,0,1),gray(0.8)+thick1,lit);
	    // draw(xi+f4-k1*(1,0,0)--xi+f4+j1*(1,0,0),gray(0.8)+thick1,lit);
	    // draw(xi+f4-k2*(0,1,0)--xi+f4+j2*(0,1,0),gray(0.8)+thick1,lit);
	    // draw(xi+f4-k3*(0,0,1)--xi+f4+j3*(0,0,1),gray(0.8)+thick1,lit);

	    //draw(xi+f1--xi+f2--xi+f3--xi+f4--xi+f1--xi+f3--xi+f2--xi+f4,blue+thick2,lit);
	    //draw(xi+m1--xi+m2--xi+m3--xi+m4--xi+m1--xi+m3--xi+m2--xi+m4,green+thick2,lit);

	    // draw(xi+m1--xi+m1+(-1, 1, 0),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 0, 1, 1),green+thick2,lit);
	    // draw(xi+m1--xi+m1+(-1, 0, 1),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1, 1, 0),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1,-1, 0),green+thick2,lit);
	    // draw(xi+m1--xi+m1+( 1, 0, 1),green+thick2,lit);
