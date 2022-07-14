

// useful modules
import three;
import math;
import grid3;
import graph3;
import contour;
import tube;
//

// for exporting figure to high quality pdf, png etc //
import settings;
outformat="pdf";// replace pdf with png for png fig //

// to draw 3D spheres. change scale to increase/decrease size.
surface Mo = scale3(0.06)*unitsphere;
surface Fe = scale3(0.11)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size3(16cm,16cm,18cm); // size of the figures //

// pen is the data structure to define line thickness, color opacity etc.
pen thick1=linewidth(3);
pen thick2=linewidth(3);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;

//3D vectors
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

n=2;
//currentprojection=perspective(-1,-0.6,2,center=true);
currentprojection=perspective(-1,-1.4,1.4,center=true);
light lit=currentlight;

draw(surface(A1--A2--A3--cycle),pn1);draw(surface(A1--A3--A4--cycle),pn2);
draw(surface(A1--A4--A2--cycle),pn3);draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

draw(A1..A2,cl+thick2,lit);draw(A1..A3,cl+thick2,lit);draw(A1..A4,cl+thick2,lit);
draw(A2..A3,cl+thick2,lit);draw(A2..A4,cl+thick2,lit);draw(A3..A4,cl+thick2,lit);

path3 pth1,pth2,pth3;
triple vec;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    if((i1+i2+i3)%2 ==1) // one fcc sub-lattice
	      {
		draw(shift((i1,i2,i3))*Mo,green+linewidth(1.0));
		// it shifts the sphere 'Mo' defined at origin to (i1,i2,i3) and then draws it
		// with pen of green color and linewidth 1.0.
	      }
	    else // other fcc sublattice
	      {
		draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
		//vec=(2.*unitrand()-1.,2.*unitrand()-1.,2.*unitrand()-1.);
		//vec=(vec.x/sqrt(vec.x^2+vec.y^2+vec.z^2),vec.y/sqrt(vec.x^2+vec.y^2+vec.z^2),vec.z/sqrt(vec.x^2+vec.y^2+vec.z^2));
		vec=expi(unitrand()*pi,unitrand()*2*pi);vec=expi(unitrand()*pi,unitrand()*2*pi);
		vec=expi(unitrand()*pi,unitrand()*2*pi);vec=expi(unitrand()*pi,unitrand()*2*pi);
		//random unit vector vec
		draw((i1,i2,i3)-0.25*vec..(i1,i2,i3)+0.45*vec,rgb(1.0,0.0,0.0)+linewidth(5),Arrow3(30),lit);
	      }
	    pth1=(i1,i2,i3)..(i1+j1,i2,i3); // pth1 is a 'path' from (i1,i2,i3) to (i1+j1,i2,i3)
	    pth2=(i1,i2,i3)..(i1,i2+j2,i3);
	    pth3=(i1,i2,i3)..(i1,i2,i3+j3);
	    draw(pth1,gray(0.5)+thick1,lit);
	    draw(pth2,gray(0.5)+thick1,lit);
	    draw(pth3,gray(0.5)+thick1,lit);
	  }
      }
  }
bbox(rgb(0,0,0),Fill);
