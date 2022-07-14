import three;
import math;
import graph3;
import contour;
import tube;

surface O = scale3(0.05)*unitsphere;
surface Ni = scale3(0.1)*unitsphere;
int n,n1,n2,n3;
int j1,j2,j3;

size3(16cm,16cm,16cm);
defaultrender=render(compression=Zero,merge=true);
pen thick1=linewidth(3);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;

n=4;

currentprojection=perspective(15,16,n/2+0.5,center=true);
light lit=currentlight;

triple a1,a2,a3,a4,b1,b2,b3,b4;
triple A1,A2,A3,x;

A1 = (4,0,0);A2 = (2,2,0); A3 = (1,0,1);

a1 = (0,0,0);a2 = (2,0,0);
a3 = (1,1,0);a4 = (3,1,0);
b1 = (1,0,0);b2 = (3,0,0);
b3 = (0,1,0);b4 = (2,1,0);
vec1 = (0,0,1);vec2 = -(0,0,1);

n1 = 1;n2 = 2;n3 = 4;

for (int i1 = 0; i1 <= n1; ++i1)
  {
    for (int i2 = 0; i2 <= n2; ++i2)
      {
	for (int i3 = 0; i3 <= n3; ++i3)
	  {
	    x = i1*A1+i2*A2+i3*A3;
	    draw(shift(x+a1)*O,rgb(0.,0.8,0.2));
	    draw(shift(x+a2)*O,rgb(0.,0.8,0.2));
	    draw(shift(x+a3)*O,rgb(0.,0.8,0.2));
	    draw(shift(x+a4)*O,rgb(0.,0.8,0.2));

	    draw(shift(x+b1)*Ni,rgb(0.,0.6,1.0));
	    draw(shift(x+b2)*Ni,rgb(0.,0.6,1.0));
	    draw(shift(x+b3)*Ni,rgb(0.,0.6,1.0));
	    draw(shift(x+b4)*Ni,rgb(0.,0.6,1.0));
		    
	  }
      }
  }


//vec1 = (i1,i2,i3)-0.25*vec;
//vec2 = (i1,i2,i3)+0.55*vec;
//draw(vec1..vec2,rgb(0.1,0.1,0.9)+thick3,Arrow3(30),lit);
//draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.7)+thick1,lit);
//draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.7)+thick1,lit);
//draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.7)+thick1,lit);

