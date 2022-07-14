import graph;
import settings;
outformat='pdf';

size(18cm,10cm); 

real potential(real x) {return x^2;}


pen pn1;
pen pn2;

real a1=0.03;
real a2=0.03;

int n=50;
for (int i=n;i>=1;--i)
  {
    pn1=rgb(0.,i/n,0.); pn2=rgb(0.,0.,i/n);
    filldraw(graph(potential,-i/n,-a1)--(-a1,potential(i/n))--cycle,blue);
    filldraw((a2,potential(i/n))--graph(potential,a2,i/n)--cycle,red);
  }

pn1=rgb(0,0,0)+linewidth(3);
draw(graph(potential,-1.2,1.2),pn1);

xaxis(pn1,Arrow(15,30,Fill));
yaxis(pn1,Arrow(15,30,Fill));

for (int i=1;i<=n;++i)
  {
    pn1=rgb(0,0,i/n)+linewidth(15*(n-i)/n);
    pn2=rgb(i/n,0,0)+linewidth(15*(n-i)/n);
    draw((0.35,0.4)--(0.35,0.9),pn2,Arrow(45,30*(n-i)/n,Fill));
    draw((-0.35,0.8)--(-0.35,0.3),pn1,Arrow(45,30*(n-i)/n,Fill));
  }


for (int i=1;i<=n;++i)
  {
    pn1=rgb(0.,i/n,0.)+linewidth(5*(n-i)/n);
    draw((-1,potential(-1))--(1,potential(1)),pn1);
  }

label("{$\Large \mu$}",(1,potential(1)),E,rgb(0,0,0)+fontsize(50));
label("{$\Large \epsilon_{k}$}",(0,1.5),E,rgb(0,0,0)+fontsize(50));
label("{$\Large k$}",(0.3,-0.1),E,rgb(0,0,0)+fontsize(50));



//filldraw(graph(potential,-1,-a1)--(-a1,1)--cycle,blue);
//filldraw((a2,1)--graph(potential,a2,1)--cycle,red);

//draw((0.35,0.4)--(0.35,0.9),rgb(0.5,0,0)+linewidth(15),Arrow(45,30,Fill));
//draw((-0.35,0.8)--(-0.35,0.3),rgb(0,0,0.5)+linewidth(15),Arrow(45,30,Fill));

/*
  int n=30;
  real a=1.5;
  real width=2a/n;
  
  guide hat;
  path solved;
  
  for(int i=0; i <= n; ++i)
  {
  real t=-a+i*width;
  pair z=(t,potential(t));
  hat=hat..z;
  solved=solved..z;
  }
*/

//draw("$y=1+x^2$",graph(potential,-2,1));

//dot(hat,red);
//draw(solved,dashed);
