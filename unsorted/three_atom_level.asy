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



////////////////
// The B site //
////////////////

x = (2,0);
for (int i=1;i<=n;++i)		// classical spin down
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
