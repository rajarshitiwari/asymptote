import settings;
outformat="pdf";
size(6cm,15cm);

//outformat="png";
//size(600,1500);

import fontsize;
int i;
int niter;
pen pn;
pair a,b;

pen csg=rgb(.8046875, 0.8984375, 0.046875);

real width=150, height=60;
real h1=0.3, h2=0.75;

pair A1, A2, A3, A4;

A1 = (0, 0);
A2 = (width, 0);
A3 = (width, height);
A4 = (0, height);





draw(A1--A2--A2--A3--A4--cycle, white);

filldraw(h1*A4--A2+h1*A4--A2+h2*A4--h2*A4--cycle, csg, csg+linewidth(0.1));

niter=300;
for (i=0; i<niter; ++i)
  {
    label(0.7*A2 + 0.5*A4 + (0, 6)+0.15*(-6*i, 12*i)/niter, "COMPUTATIONAL", ((i/niter)**1.5)*red+fontsize(9));
    label(0.7*A2 + 0.5*A4 - (0, 6)+0.15*(-6*i, 12*i)/niter, "SPINTRONICS", ((i/niter)**1.5)*red+fontsize(9));
    //label((0.7*A2 + 0.5*A4 + (0, 6)+0.15*(-6*i, 12*i)/niter), minipage("COMPUTATIONAL"), rgb(i/niter, 0, 0)+fontsize(9));
    //label((0.7*A2 + 0.5*A4 - (-3, 6)+0.15*(-6*i, 12*i)/niter), minipage("SPINTRONICS"), rgb(i/niter, 0, 0)+fontsize(9));
  }
//label(0.7*A2 + 0.5*A4 + (0, 6), "COMPUTATIONAL", black+fontsize(9));
//label(0.7*A2 + 0.5*A4 - (0, 6), "SPINTRONICS", black+fontsize(9));

label(0.7*A2 + 0.15*A4 + (0, 3), "SANVITO RESEARCH GROUP", red+fontsize(5));
label(0.7*A2 + 0.15*A4 - (0, 3), "TRINITY COLLEGE DUBLIN", blue+fontsize(5));

path pth;


niter=100;
for (i=0;i<=niter;++i)
  {
    //////////////////////////////////////////////
    pn = ((1-i/niter) + 0.5*(i/niter)) * csg; // for color gradiant
    //////////////////////////////////////////////
    //pn=gray(i/n)+linewidth(30*(n-i)/n);
    //draw(a--b,pn,Arrow(10,0.1*(1 - i/n)));
    //filldraw(h1*A4--A2+h1*A4--A2+h2*A4--h2*A4--cycle, csg, pn+linewidth(0.1));
    pth = h1*A4--A2+h1*A4--A2+h2*A4--h2*A4--cycle;
    draw(pth,pn+linewidth(0.1));
  }

pair t1, t2, t3;
t1 = (0.12*width, 0.30*height);
t2 = (0.30*width, 0.30*height);
t3 = (0.21*width, 0.69*height);
for (i=0;i<=niter;++i)
  {
    draw(shift(t1)*scale(18*(1-i/niter))*polygon(6), ((i/niter)**0.5)*csg+linewidth(0.3));
    draw(shift(t2)*scale(18*(1-i/niter))*polygon(6), ((i/niter)**0.5)*csg+linewidth(0.3));
    draw(shift(t3)*scale(18*(1-i/niter))*polygon(6), ((i/niter)**0.5)*csg+linewidth(0.3));
  }

niter=30;
for (i=0;i<=niter;++i)
  {
    pn=gray(i/niter)+linewidth(6*(niter-i)/niter); // for color gradiant
    draw(t1-(0, 6)--t1+(0, 6), pn, arrow=Arrow(6,30*(1 - i/niter)));
    draw(t2+(0, 6)--t2-(0, 6), pn, arrow=Arrow(6,30*(1 - i/niter)));
    draw(t3-(0, 6)--t3+(0, 6), pn, arrow=Arrow(6,30*(1 - i/niter)));
    //draw(t1-(0, 6)--t1+(0, 6), pn, arrow=ArcArrow(SimpleHead));
  }
bbox(white,Fill);
