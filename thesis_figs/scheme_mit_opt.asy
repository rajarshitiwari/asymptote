import graph;
import settings;
outformat='pdf';

size(10cm,10cm); 

real optm(real x)
{real a=0.0,b=0.3;
  return exp(-(x-a)^2/b^2)/0.4;
}

real opti(real x)
{real a=1.5,b=0.5;
  return exp(-(x-a)^2/b^2);
}


pen pn1,pn2,pn3;

real a1=0.03;
real a2=0.03;

int n=100;

pn1=rgb(1,0,0)+linewidth(2);
pn2=rgb(0,1,0)+linewidth(2);
pn3=rgb(0,0,0)+linewidth(2);

//draw(graph(optm,-1.,1.),pn1);
filldraw(graph(optm,0,3,n)--(0,0)--cycle,pn1+opacity(0.5));
filldraw(graph(opti,0,3,2*n)--(0,0)--cycle,pn2+opacity(0.5));

xaxis(pn3,Arrow(15,20,Fill));
yaxis(pn3,Arrow(15,20,Fill));


//label("{$\Large \mu$}",(1,optm(1)),E,rgb(0,0,0)+fontsize(50));
label("{$\sigma(\omega)$}",(.0,2.8),E,rgb(0,0,0)+fontsize(20));
label("{$\omega$}",(3,-0.1),SE,rgb(0,0,0)+fontsize(20));
dot("{$U$}",(1.5,0.),SE,rgb(0,0,0)+linewidth(7)+fontsize(20));

label("Metal",(0.5,1.8),fontsize(20));
label("Insulator",(1.8,1.2),fontsize(20));
