import graph;
import fontsize;
import settings;
outformat='pdf';

size(10cm,10cm); 

real dosi(real x)
{real a=2,b=0.8,c=1/sqrt(b);
  if (abs(x-a) <=b )
    {
      return c*sqrt(b^2 - (x-a)^2);
    }
  else if (abs(x+a) <= b)
    {
      return c*sqrt(b^2 - (x+a)^2);
    }
    {
      return 0;
    }
}


pen pn1,pn2,pn3;

real a1=0.03;
real a2=0.03;

int n=100;

pn1=rgb(1,0,0)+linewidth(2);
pn2=rgb(0,1,0)+linewidth(2);
pn3=rgb(0,0,0)+linewidth(1);

//draw(graph(dosm,-1.,1.),pn1);
filldraw(graph(dosi,-3.2,3.2,2*n)--cycle,pn2+opacity(0.5));

xaxis(pn3,Arrow(15,10,Fill));
yaxis(pn3,Arrow(15,10,Fill));


//label("{$\Large \mu$}",(1,dosm(1)),E,rgb(0,0,0)+fontsize(50));
label("{$D(\omega)$}",(0,1.5),E,rgb(0,0,0)+fontsize(15));
label("{$\omega$}",(0.7,-0.2),E,rgb(0,0,0)+fontsize(15));
dot("{$\frac{U}{2}$}",(2,0.),SE,rgb(0,0,0)+linewidth(7)+fontsize(15));
dot("{$-\frac{U}{2}$}",(-2,0.),SW,rgb(0,0,0)+linewidth(7)+fontsize(15));

label("Insulator",(-2,1.5),fontsize(15));
