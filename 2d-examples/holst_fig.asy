import three;
import solids;
import settings;
outformat="pdf";

size(16cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=blue+linewidth(2);
pn3=green+linewidth(4);
pn4=green+linewidth(1.5);

int i1,i2;
int l1,l2;
int r1,r2;
int n,twon;
pair orig,vec,ar,x1,x2;
real scale,e1,e2,U1,U2;

orig = (2.0,0);
scale = 1;
n = 2 ; twon = 2 * n;


e1=0;e2=e1;

//label("$\epsilon_1+\frac{U_1}{2}$",(0,e1));
//label("$\epsilon_2+\frac{U_2}{2}$",(0,e2));

ar = orig;
// lines
pn2=gray(0.2)+linewidth(5);
vec=(scale,0);x1=ar ;x2=ar + (scale,0); draw(x1..0.5*(x1+x2)+(0,0.1)..x2,pn2);
label("$t$",ar+(0.5,0.14),gray(0.2)+fontsize(24));



label("$g,\omega_0$",ar+(0,0.1),rgb(0,0.6,0)+fontsize(24));
label("$\epsilon_1$",ar+(0,-0.08),rgb(0,0.6,0)+fontsize(24));
// point
//pn1=rgb(0.3,0.3,0.3)+linewidth(6); dot(ar,pn1);


for (int i=1;i<=100;++i)
  {			// green
    pn1=rgb(0,i/100.,0)+linewidth(20*(100-i)/100.);
    dot(ar-(i/10000.,0),pn1);
  }
ar = orig + (scale,0);
// point
// pn1=rgb(0.,1,0.)+linewidth(5);
// dot(ar,pn1);
label("$g,\omega_0$",ar+(0,0.1),rgb(1,0,0)+fontsize(24));
label("$\epsilon_2$",ar+(0,-0.08),rgb(1,0,0)+fontsize(24));
for (int i=1;i<=100;++i)
  {			// red
    pn1=rgb(i/100.,0.,0.)+linewidth(20*(100-i)/100.);
    dot(ar-(i/10000.,0),pn1);
  }

