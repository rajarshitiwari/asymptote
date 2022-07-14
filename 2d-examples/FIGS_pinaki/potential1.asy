import graph;
import settings;
outformat='pdf';

size(15cm,12cm,IgnoreAspect); 

real potential(real x) {real a,b,c;a=1.9;b=-2.1;c=0.3;return a+b*x+c*x^4;}

real wavef1(real x) {real t=0.1;return exp(-potential(x)/t)/sqrt(t);}
real wavef2(real x) {real t=0.5;return exp(-potential(x)/t)/sqrt(t);}


pen pn1;
pen pn2;

real a1=0.5;
real a2=1.75;

int n=50;

pn1=rgb(0.0,0.0,0)+linewidth(3);draw(graph(potential,a1-1,a2+0.4),pn1);
pn1=rgb(0.8,0.0,0)+linewidth(3);filldraw(graph(wavef2,a1-1,a2+1)--cycle,pn1+opacity(0.5));
pn1=rgb(0.0,0.8,0)+linewidth(3);filldraw(graph(wavef1,a1-1,a2+1)--cycle,pn1+opacity(0.5));

pn1=rgb(0,0,0)+linewidth(3);
xaxis(pn1,Arrow(15,30,Fill));
yaxis(pn1,Arrow(15,30,Fill));


label("{$\Large V(x)$}",(a2+0.4,potential(a2+0.35)),W,rgb(0,0,0)+fontsize(50));
label("{$e^{-\frac{V(x)}{T_1}}$}",(a2-0.45,wavef1(a2-0.45)),E,rgb(0,0.8,0)+fontsize(30));
label("{$e^{-\frac{V(x)}{T_2}}$}",(a2-0.1,wavef2(a2-0.15)),E,rgb(0.8,0,0)+fontsize(30));
label("{$T_2/T_1=5$}",(a1-0.4,potential(a1-0.8)),E,rgb(0,0,0)+fontsize(20));
label("{$x$}",(0.7,-0.1),S,rgb(0,0,0)+fontsize(50));
