import graph;
import patterns;
size(10cm,10cm);
import settings;
outformat="pdf";
//real f(real t) {return 1+cos(t);}
//path g=polargraph(f,0,2pi,operator ..)--cycle;
//filldraw(g,pink);
//xaxis("$x$",above=true);
//yaxis("$y$",above=true);
//dot("$(a,0)$",(1,0),N);
//dot("$(2a,0)$",(2,0),N+E);
int n = 10;

draw((0,0)--(n,0)--(n,n)--(0,n)--cycle);
filldraw((0,0)--(n,0)--(n,n)--(0,n)--cycle,gray(0.9));

path d1 = (1,1)..(2,1)..(4,2)..(3,2)..(2,5)..(2,2)..cycle;
filldraw(d1,green);
label("A$_1$",(2,4),fontsize(24));
path d2;

d2 = (6,4)..(7,6)..(7,4)..(8,7)..(9,8)..(7,8)..(6,6)..cycle;
filldraw(d2,red);
label("A$_2$",(8,8),fontsize(24));

label("PM",(4,8),fontsize(24));

