import fontsize;
import settings;
outformat="pdf";

import settings;
outformat="pdf";

size(32cm,16cm);

int i1,i2,j1,j2,k1,k2,n;
int n1,n2,m1,m2;
pair x0,x,a1,a2,a3,vec;
pen pn1,pn2,pn3,pn4,pn5;
n = 40;
real space,upshift;

pn1=rgb(1,0,0)+linewidth(10);
pn2=rgb(0,0.8,0)+linewidth(10);
pn3=rgb(0,0,1)+linewidth(10);
pn4=rgb(1,0.5,1)+linewidth(10);
pn5=brown+linewidth(10);


Square planner
vec = (1,0); space = 0.5;upshift = -1.5;
x0=(0,0);
x=x0+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn1);

x=x0 + vec + (space,0)+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn2);

x=x0 + 2*(vec + (space,0)) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn3);

space = 0.7;upshift = 1.5;
x=x0 + (space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn4);

x=x0 + vec + 2*(space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn5);


/////////////////
// Tetrahedral //
/////////////////

vec = (1,0); space = 0.5;upshift = 1;
x0+=(5,0);
x=x0+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn1);

x=x0 + vec + (space,0)+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn2);

x=x0 + 2*(vec + (space,0)) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn3);

space = 0.7;upshift = -1;
x=x0 + (space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn4);

x=x0 + vec + 2*(space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn5);

////////////////
// Octahedral //
////////////////

vec = (1,0); space = 0.5;upshift = -1.5;
x0+=(5,0);
x=x0+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn1);

x=x0 + vec + (space,0)+(0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn2);

x=x0 + 2*(vec + (space,0)) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn3);

space = 0.7;upshift = 1.5;
x=x0 + (space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn4);

x=x0 + vec + 2*(space,0) + (0,upshift);
a1=x;a2=x+vec;draw(a1--a2,pn5);


// for (int i=1;i<=10;++i)
//   {
//     pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
//     dot(x-(i/1000.,0),pn1);
//   }

