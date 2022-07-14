import three;
import math;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

surface Fe = scale3(0.07)*unitsphere;
surface Cm = scale3(0.03)*unitsphere;
surface Sphere = scale3(0.7)*unitsphere;

int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;

size3(16cm,16cm,16cm);
pen thick1=linewidth(0.5);
pen thick2=linewidth(2);
pen thick3=linewidth(4);
pen thick4=linewidth(7);
triple vec,vec1,vec2;
triple x,xc,x1,x2,x3,x4,x5,x6,orig;

n=2;
pen pn1,pn2,pn3,pn4;
pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

light lit=currentlight;
pen cl=rgb(0,0,0.9);
pen cl1=rgb(0.9,0,0);
pen cl2=rgb(0,0.9,0);

//currentprojection=perspective(10,13,n/2+1,autoadjust=true);
//currentprojection=perspective(n/2,0,n/2,center=true);
//currentprojection=perspective(n,n/2,n/2,center=true);
//currentprojection=perspective(camera=(-0.8,-14.0,2.5),up=(-0.5,0.0,0.0),target=(2.,2.,2.),zoom=1,angle=20.,autoadjust=true);


currentprojection=perspective(4.93360187746781,2.28456994214418,1.57923324388331,autoadjust=true);




triple A0=(0,0,0),A1=(1,1,0),A2=(1,0,1),A3=(0,1,1);
triple A4=(0,1,-1),A5=(1,-1,0),A6=(-1,0,1);
xc = (1.0,1.0,1.0);
x1 = (0.5,1.0,1.0);
//label("{\bf Fe}",x1,rgb(0,0,0)+fontsize(60)); // label
x2 = (1.0,0.5,1.0);
//label("{\bf F\small{e}}",x2,rgb(1,1,1)+fontsize(32)); // label
x3 = (1.5,1.0,1.0);
//label("{\bf F\small{e}}",x3,rgb(1,1,1)+fontsize(32)); // label
x4 = (1.0,1.5,1.0);
//label("{\bf F\small{e}}",x4,rgb(1,1,1)+fontsize(32)); // label
x5 = (1.0,1.0,0.5);
//label("{\bf F\small{e}}",x5,rgb(1,1,1)+fontsize(32)); // label
x6 = (1.0,1.0,1.5);
//label("{\bf F\small{e}}",x6,rgb(1,1,1)+fontsize(32)); // label
orig = (0,0,0);
label("{\bf O}",orig,rgb(1,1,1)+fontsize(40)); // label


for (int i1 = 0; i1 <= n; ++i1)
  {if (i1 == n) {j1 = 0;}else {j1 = 1;}
    if (i1 == 0) {k1 = 0;}else {k1 = 1;}
    for (int i2 = 0; i2 <= n; ++i2)
      {if (i2 == n) {j2 = 0;}else {j2 = 1;}
	if (i2 == 0) {k2 = 0;}else {k2 = 1;}
	for (int i3 = 0; i3 <= n; ++i3)
	  {if (i3 == n) {j3 = 0;}else {j3 = 1;}
	    if (i3 == 0) {k3 = 0;}else {k3 = 1;}
	    draw((i1,i2,i3)--(i1+j1,i2,i3),gray(1)+thick1,lit);
	    draw((i1,i2,i3)--(i1,i2+j2,i3),gray(1)+thick1,lit);
	    draw((i1,i2,i3)--(i1,i2,i3+j3),gray(1)+thick1,lit);
	    x = (i1,i2,i3);
	    if((i1+i2+i3)%2 ==0)
	      {
		//x1 = x+0.5*A0-(1,1,1)/4;
		//x2 = x+0.5*A1-(1,1,1)/4;
		//x3 = x+0.5*A2-(1,1,1)/4;
		//x4 = x+0.5*A3-(1,1,1)/4;
		//draw(x1--x2,cl+thick2,lit);draw(x1--x3,cl+thick2,lit);draw(x1--x4,cl+thick2,lit);
		//draw(x2--x3,cl+thick2,lit);draw(x2--x4,cl+thick2,lit);draw(x3--x4,cl+thick2,lit);

		//draw(x2--x2+0.5*(j1*j2)*A1,cl1+thick3,lit); // red-black
		//draw(x3--x3+0.5*(j1*j3)*A2,cl1+thick3,lit); // green-black
		//draw(x4--x4+0.5*(j2*j3)*A3,cl1+thick3,lit); // blue-black

		//draw(x2--x2+0.5*(j2*k3)*A4,cl1+thick3,lit); // red-green
		//draw(x3--x3+0.5*(j1*k2)*A5,cl1+thick3,lit); // green-blue
		//draw(x4--x4+0.5*(k1*j3)*A6,cl1+thick3,lit);  // blue-red
		
		//draw(surface(x1--x2--x3--cycle),pn1);
		//draw(surface(x1--x3--x4--cycle),pn2);
		//draw(surface(x1--x4--x2--cycle),pn3);
		//draw(surface(x2--x3--x4--cycle),pn4);

		//draw(shift(x1)*Fe,rgb(0,0,0)+linewidth(4.0));
		//draw(shift(x2)*Fe,rgb(0.8,0,0)+linewidth(4.0));
		//draw(shift(x3)*Fe,rgb(0,0.8,0)+linewidth(4.0));
		//draw(shift(x4)*Fe,rgb(0,0,0.8)+linewidth(4.0));
	      }
	  }
      }
  }

draw(shift(xc)*Cm,rgb(0,0,0)+linewidth(5.0));
draw(shift(x1)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(x2)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(x3)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(x4)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(x5)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(x6)*Fe,rgb(1,0,0)+linewidth(5.0));
draw(shift(orig)*Cm,rgb(0,0,0)+linewidth(5.0));

// DRAW PATHS
draw(Label("$z$",2,fontsize(50)),orig--(0,0,2.1),blue+dashed+linewidth(2.0),Arrow3);
draw(Label("$x$",2,fontsize(50)),orig--(2.1,0,0),blue+dashed+linewidth(2.0),Arrow3);
draw(Label("$y$",2,fontsize(50)),orig--(0,2.1,0),blue+dashed+linewidth(2.0),Arrow3);
// DRAW RCM
draw(Label("$Rcm$",1.6,fontsize(30)),orig--xc,green+dashed+linewidth(3.0),Arrow3);
draw(Label("Vcm",1.6,fontsize(30)),xc--xc+(-0.8,0,0),green+dashed+linewidth(3.0),Arrow3);
draw(Label("Lcm",1.6,fontsize(30)),xc--xc+3*(0,-0.4,0.4),blue+linewidth(3.0),Arrow3);
//draw(arc(0.45,0.4,150,30),thick3,Arrow(30,120,Fill));
//draw(xc+4*(0,-0.4,0.4)--xc+4*(0,0,0.1),blue+linewidth(1.0),Arrow3);

//draw((0,0,0)--(n,0,0)--(n,n,0)--(0,n,0)--(0,0,0)--(0,0,n)--(0,n,n)--(0,n,0),rgb(0,0,0)+thick2);
//draw((n,0,0)--(n,0,n)--(n,n,n)--(n,n,0),rgb(0,0,0)+thick2);
draw(x1--x4,rgb(0.9,0.1,0.4)+thick4);
draw(x1--x2,rgb(0.9,0.1,0.4)+thick4);
draw(x2--x3,rgb(0.9,0.1,0.4)+thick4);
draw(x3--x4,rgb(0.9,0.1,0.4)+thick4);
draw(x1--x5,rgb(0.9,0.1,0.4)+thick4);
draw(x2--x5,rgb(0.9,0.1,0.4)+thick4);
draw(x3--x5,rgb(0.9,0.1,0.4)+thick4);
draw(x4--x5,rgb(0.9,0.1,0.4)+thick4);
draw(x1--x6,rgb(0.9,0.1,0.4)+thick4);
draw(x2--x6,rgb(0.9,0.1,0.4)+thick4);
draw(x3--x6,rgb(0.9,0.1,0.4)+thick4);
draw(x4--x6,rgb(0.9,0.1,0.4)+thick4);

draw(shift(xc)*Sphere,white+opacity(0.3)+linewidth(5.0));
//draw((0,n,n)--(n,n,n),rgb(0,0,0)+thick2);

// DRAW E FIELDS
draw((0,0.2,0)--(2,0.2,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,0.4,0)--(2,0.4,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,0.6,0)--(2,0.6,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,0.8,0)--(2,0.8,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,1.0,0)--(2,1.0,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,1.2,0)--(2,1.2,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,1.4,0)--(2,1.4,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw((0,1.6,0)--(2,1.6,0),red+dashed+linewidth(4.0),Arrow3(30,12));
draw(Label("\bf E",2,fontsize(50)),(0,1.8,0)--(2,1.8,0),red+dashed+linewidth(4.0),Arrow3(30,12));

// Define function: given radius, A, B, C
// returns arc in angle ABC with specified radius
path3 anglearc(real radius, triple A, triple B, triple C) {
  triple center = B;
  triple start = B + radius * unit(A-B);
  return arc(center, start, C,cross(A-B, C-B),CCW);
}

// Now, use the function to label an angle:
//draw(anglearc(0.4, xc+4*(0.1,0,0), xc+4*(0,-0.4,0.4), xc+4*(-0.1,-0.4,0.4)), L=Label("$\omega$", align=SW));
//draw(anglearc(0.12, xc+2.5*(0.8,0.4,0.7), xc+2.5*(0,-0.35,0.35), xc+1.5*(-1.2,-1.4,0.7)), linewidth(2)+black, L=Label("$\omega$", align=SW),Arrow3);
//draw(arc3(xc+2.5*(0.8,0.4,0.7), 0, pi),linewidth(2)+black, L=Label("$\omega$", align=SW),Arrow3);

//guide3 v1=xc--xc+3*(0,-0.4,0.4);
//guide3 v2=(0.5,0.5,0.5)--(1,1,1);
//draw(v1,blue,Arrow3);
//draw(v2,blue,Arrow3);
//guide3 alphaArc=arc(point(v1,0),point(v1,0.5));
//draw(alphaArc,red+linewidth(2),Arrows3);
path3 g=arc(xc+1.5*(0,-0.4,0.4),0.2,90.,0.,50,90);
//g=rotate(60,(1,-1,0),xc)*g;
draw(g,blue+linewidth(2),Arrows3(20),currentlight);
