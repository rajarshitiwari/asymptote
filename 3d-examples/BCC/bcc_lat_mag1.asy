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
//render=0;

outformat="html";// replace pdf with png for png fig //

// to draw 3D spheres. change scale to increase/decrease size.
surface Mo = scale3(0.06)*unitsphere;
surface Fe = scale3(0.06)*unitsphere;

//background=rgb(0,0,0);
int n,j1,j2,j3;

size3(16cm,16cm,18cm); // size of the figures //
//size3(8cm,8cm,9cm); // size of the figures //

// pen is the data structure to define line thickness, color opacity etc.
pen thick1=linewidth(1.5);
pen thick2=linewidth(1.5);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4;

//3D vectors
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

n=3;
//currentprojection=perspective(-1,-0.6,2,center=true);
currentprojection=perspective(-1,-1.4,1.4,center=true);
light lit=currentlight;

//draw(surface(A1--A2--A3--cycle),pn1);draw(surface(A1--A3--A4--cycle),pn2);
//draw(surface(A1--A4--A2--cycle),pn3);draw(surface(A2--A3--A4--cycle),pn4);

//draw(A1--A2--A3--A4--A2--A3--A4,rgb(0.9,0.,0)+thick2);

//draw(A1..A2,cl+thick2,lit);draw(A1..A3,cl+thick2,lit);draw(A1..A4,cl+thick2,lit);
//draw(A2..A3,cl+thick2,lit);draw(A2..A4,cl+thick2,lit);draw(A3..A4,cl+thick2,lit);
currentprojection =
  perspective(camera=(5.798469868556706,-6.978648421643896,3.3186440574564076),
	      up=(-0.000621564920217976,0.0012376703988248106,0.005721741135573029),
	      target=(1.161049,1.164062,1.05352), zoom=1,
	      angle=23.58678739439001, autoadjust=true);

currentprojection = orthographic(15,4,4,center=true);

path3 pth1,pth2,pth3;
triple vec, xi;
triple b1 = (0, 0, 0);
triple b2 = (0.5, 0.5, 0.5);
pen scolor;
axes3();

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    xi = (i1, i2, i3);
	    //if((i1+i2+i3)%2 ==1) // one fcc sub-lattice
	    // it shifts the sphere 'Mo' defined at origin to (i1,i2,i3) and then draws it
	    // with pen of green color and linewidth 1.0.
	    draw(shift(xi + b1)*Fe, gray(0.9)+linewidth(1.0));
	    //vec=(2.*unitrand()-1.,2.*unitrand()-1.,2.*unitrand()-1.);
	    //vec=expi(unitrand()*pi,unitrand()*2*pi);vec=expi(unitrand()*pi,unitrand()*2*pi);

	    if ((i1+i2)%2 == 0)
	      {
		vec=expi(0, 0); scolor = rgb(1.0,0.0,0.0)+linewidth(5);
	      }
	    else
	      {
	    	vec=expi(pi, 0); scolor = rgb(0.4,0.4,1.0)+linewidth(5);
	      }
	    draw(xi+b1-0.25*vec..xi+b1+0.3*vec, scolor, Arrow3(21), lit);
	    
	    pth1 = xi+b1..xi+b1+(j1, 0, 0); // pth1 is a 'path' from (i1,i2,i3) to (i1+j1,i2,i3)
	    pth2 = xi+b1..xi+b1+(0 ,j2, 0);
	    pth3 = xi+b1..xi+b1+(0 , 0,j3);

	    draw(pth1,gray(1)+thick1,lit);
	    draw(pth2,gray(1)+thick1,lit);
	    draw(pth3,gray(1)+thick1,lit);
	  }
      }
  }

--n;

for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n){j3 = 0;}else{j3 = 1;}
	    xi = (i1, i2, i3);

	    draw(shift(xi + b2)*Mo, gray(0.9)+linewidth(1.0));
	    if ((i1+i2)%2 == 0)
	      {
		vec=expi(0, 0); scolor = rgb(1.0,0.0,0.0)+linewidth(5);
	      }
	    else
	      {
	    	vec=expi(pi, 0); scolor = rgb(0.4,0.4,1.0)+linewidth(5);
	      }
	    draw(xi+b2-0.25*vec..xi+b2+0.3*vec, scolor, Arrow3(21),lit);
	    pth1 = xi+b2..xi+b2+(j1, 0, 0); // pth1 is a 'path' from (i1,i2,i3) to (i1+j1,i2,i3)
	    pth2 = xi+b2..xi+b2+(0 ,j2, 0);
	    pth3 = xi+b2..xi+b2+(0 , 0,j3);

	    draw(pth1,gray(1)+thick1,lit);
	    draw(pth2,gray(1)+thick1,lit);
	    draw(pth3,gray(1)+thick1,lit);

	  }
      }
  }



real max = n + 1.5;
xaxis3("$x$",-0.5, max, red  , Arrow3(6));
yaxis3("$y$",-0.5, max, green, Arrow3(6));
zaxis3("$z$",-0.5, max, blue , Arrow3(6));
bbox(rgb(0,0,0),Fill);
