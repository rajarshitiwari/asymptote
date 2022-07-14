import settings;
outformat="eps";

int i;
real n;
pen pn;
pair a,b;

n=100;
size(16cm);

a=-(0.1,0.1)/sqrt(2);
b=-(1,1)/sqrt(2);
for (i=1;i<=n;++i)
  {
    //////////////////////////////////////////////
    pn=rgb(i/n,0.0,0.0)+linewidth(30*(n-i)/n); // for color gradiant
    //////////////////////////////////////////////
    //pn=gray(i/n)+linewidth(30*(n-i)/n);
    draw(a--b,pn,Arrow(100,30*(1 - i/n)));
  }

a=(0,0.1);
b=(0,1);
for (i=1;i<=n;++i)
  {
    //////////////////////////////////////////////
    pn=rgb(i/n,0.0,0.0)+linewidth(30*(n-i)/n); // for color gradiant
    //////////////////////////////////////////////
    //pn=gray(i/n)+linewidth(30*(n-i)/n);
    draw(a--b,pn,Arrow(100,30*(1 - i/n)));
  }

a=(0.1,0);
b=(1,0);
for (i=1;i<=n;++i)
  {
    //////////////////////////////////////////////
    pn=rgb(i/n,0.0,0.0)+linewidth(30*(n-i)/n); // for color gradiant
    //////////////////////////////////////////////
    //pn=gray(i/n)+linewidth(30*(n-i)/n);
    draw(a--b,pn,Arrow(100,30*(1 - i/n)));
  }
bbox(white,Fill);
