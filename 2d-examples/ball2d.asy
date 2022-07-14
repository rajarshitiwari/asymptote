import settings;
outformat="png";

int i;
real n;
pen pn;
pair orig;
n=500;

for (i=1;i<=n;++i)
  {
    //////////////////////////////////////////////
    // pn=rgb(i/n,0.0,1.-i/n)+linewidth((n-i)); // for color gradiant
    //////////////////////////////////////////////

    pn=gray(i/n)+linewidth((n-i));
    orig=(0,0);
    dot(orig,pn);
  }
