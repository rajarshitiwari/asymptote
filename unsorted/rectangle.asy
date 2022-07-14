
int n1,n2;
real a,b;
pair a1,a2,a3,a4;
pen pn1;

import settings;
outformat="jpg";
size(800,1000);
n1 = 0;
n2 = 100;
for(int i=n1;i<=n2;++i)
  {
    a = 10.0*i/n2;
    b = 8.0*i/n2;
    a1 = (-a,-b);
    a2 = (a,-b);
    a3 = (a,b);
    a4 = (-a,b);
    pn1=rgb(1.*i/n2,0,0)+linewidth(2);
    draw(a1--a2--a3--a4--a1,pn1);
  }
