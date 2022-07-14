import three;
import math;
import grid3;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

int n,j1,j2,j3;
triple o1,o2,o3,o4,o5,o6;

size(16cm);

pen thick1=linewidth(2);
pen thick2=linewidth(5);
pen cl=rgb(0.0,0.0,0.9);
pen pn1,pn2,pn3,pn4,penoctahedron;
pair x,vec;
real sph,stik;
vec = (0,1);
n = 100;
sph = 40;
////////////////
// The B site //
////////////////

x = (0,0);
for (int i=1;i<=n;++i)		// classical spin up
  {
    pn1=rgb(i/n,0.,0.)+linewidth(10*(n-i)/n);
    draw(x-0.2*vec..x+0.4*vec,pn1,Arrow(30,30*(n-i)/n,Fill));
  }

for (int i=1;i<=n;++i)		// B site ball
  {
    pn1=rgb(0.,0.,i/n)+linewidth(sph*(n-i)/n);
    dot(x-(i/2000.,0),pn1);
  }
label("{\bf B}",x,rgb(1,1,1)+fontsize(32)); // label

x += (0,0.7);
for (int i=1;i<=n;++i)		// horizontal line low
  {
    pn1=rgb(0.,0.,i/n)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
for (int i=1;i<=n;++i)		// electron spin down
  {
    pn1=rgb(i/n,0.,0.)+linewidth(8*(n-i)/n);
    draw(x+0.1*vec..x-0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }

x += (0,0.8);
for (int i=1;i<=n;++i)		// horizontal line high
  {
    pn1=rgb(0.,0.,i/n)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
for (int i=1;i<=n;++i)		// electron spin up
  {
    pn1=rgb(i/n,0.,0.)+linewidth(8*(n-i)/n);
    draw(x-0.1*vec..x+0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }

x += -(0,0.4);
draw(x-(0.3,0)..x+(2.5,0),rgb(0,0,0)+linewidth(3)+linetype(new real[] {0,2})); // bare level
label("{\bf $\epsilon_{B}$}",x-(0.4,0),fontsize(24));


//////////////////////
// The B prime site //
//////////////////////

x = (1,0);
for (int i=1;i<=n;++i)		// B' site ball
  {
    pn1=rgb(0.,i/n,0.)+linewidth(sph*(n-i)/n);
    dot(x-(i/2000.,0),pn1);
  }
label("{\bf B$'$}",x,rgb(1,1,1)+fontsize(32));

x += (0,0.35);
for (int i=1;i<=n;++i)		// horizontal line low
  {
    pn1=rgb(0.,i/n,0.)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
x += (0,0.07);
for (int i=1;i<=n;++i)		// horizontal line high
  {
    pn1=rgb(0.,i/n,0.)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
x += -(0.06,0);
for (int i=1;i<=n;++i)		// electronic spin up
  {
    pn1=rgb(0.,i/n,0.)+linewidth(8*(n-i)/n);
    draw(x-0.1*vec..x+0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }
x += (0.12,-0.07);
for (int i=1;i<=n;++i)		// electronic spin down
  {
    pn1=rgb(0.,i/n,0.)+linewidth(8*(n-i)/n);
    draw(x+0.1*vec..x-0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }


////////////////
// The B site //
////////////////

x = (2,0);
for (int i=1;i<=n;++i)		// classical spin down
  {
    pn1=rgb(i/n,0.,0.)+linewidth(10*(n-i)/n);
    draw(x+0.2*vec..x-0.4*vec,pn1,Arrow(30,30*(n-i)/n,Fill));
  }

for (int i=1;i<=n;++i)		// B site ball
  {
    pn1=rgb(0.,0.,i/n)+linewidth(sph*(n-i)/n);
    dot(x-(i/2000.,0),pn1);
  }
label("{\bf B}",x,rgb(1,1,1)+fontsize(32)); // label

x += (0,0.7);
for (int i=1;i<=n;++i)		// horizontal line low
  {
    pn1=rgb(0.,0.,i/n)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
for (int i=1;i<=n;++i)		// electronic spin up
  {
    pn1=rgb(i/n,0.,0.)+linewidth(8*(n-i)/n);
    draw(x-0.1*vec..x+0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }

x += (0,0.8);
for (int i=1;i<=n;++i)		// horizontal line high
  {
    pn1=rgb(0.,0.,i/n)+linewidth(10*(n-i)/n);
    draw(x-(0.3,0)..x+(0.3,0),pn1);
  }
for (int i=1;i<=n;++i)		// electronic spin down
  {
    pn1=rgb(i/n,0.,0.)+linewidth(8*(n-i)/n);
    draw(x+0.1*vec..x-0.2*vec,pn1,Arrow(20,30*(n-i)/n,Fill));
  }
x += (0.4,-0.4);
draw("JS",x-(0,0.4)..x+(0,0.4),rgb(0,0,0)+linewidth(3)+fontsize(24),Arrows(10,15),Bars(10));

x = (2.4,0.4);
draw("$\Delta$",x..x+(0,0.3),rgb(0,0,0)+linewidth(3)+fontsize(32),Arrows(10,15),Bars(10));

x = (0.65,0.35);
draw("$t$",x..x+(-0.55,0.3),rgb(0,0,0)+linewidth(3)+fontsize(32),Arrows(10,15));

x = (1.35,0.35);
draw("$t$",x+(0.56,1.1)..x,rgb(0,0,0)+linewidth(3)+fontsize(32)+linetype(new real[] {0,2,1,0}),Arrows(10,15));




x = (0,0.38);
draw(x-(0.3,0)..x+(2.5,0),rgb(0,0,0)+linewidth(3)+linetype(new real[] {0,2})); // bare level
label("{\bf $\epsilon_{B'}$}",x-(0.4,0),fontsize(24));

draw((-.5,-.45)--(2.7,-.45)--(2.7,1.75)--(-.5,1.75)--cycle,linewidth(3));
