import settings;
outformat="jpg";
//size(16cm,16cm);
size(800pt,800pt);
int n,maxn;
pair a1,a2,a3;
pair c1,c2,c3,c4;
pen pn;

maxn=1000;
for (n=1;n<=maxn;++n)
  {
    pn=linewidth(n*2/maxn)+rgb(0,n/maxn,0);
    a1 = (-n/2.,-n/(2*sqrt(3.)));
    a2 = (n/2.,-n/(2*sqrt(3.)));
    a3 = (0,n/sqrt(3.));
    
    // lower part
    c1 = a1;
    c2 = a2;
    c3 = c2 + (0,-n);
    c4 = c1 + (0,-n);
    
    draw(c1--c2--c3--c4--cycle,pn);
    
    // left part
    
    c1 = a1;
    c2 = rotate(60,(a1))*(n/2.,-n/(2*sqrt(3.)));
    c3 = rotate(60,(a1))*(n/2.,n/sqrt(3.));
    c4 = rotate(60,(a1))*(-n/2.,n/sqrt(3.));

    draw(c1--c2--c3--c4--cycle,pn);
    
    // right part
    
    c1 = a2;
    c2 = rotate(-60,(a2))*(-n/2.,-n/(2*sqrt(3.)));
    c3 = rotate(-60,(a2))*(-n/2.,n/sqrt(3.));
    c4 = rotate(-60,(a2))*(n/2.,n/sqrt(3.));
    
    draw(c1--c2--c3--c4--cycle,pn);
  }


//draw(a1--a2--a3--cycle,pn);
