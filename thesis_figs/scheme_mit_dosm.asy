import graph;
import fontsize;
import settings;
outformat='pdf';

size(10cm,10cm); 

real dosm(real x)
{real a=0,b=1;
  if (abs(x-a) <= b)
    {
      return sqrt(b^4-(x-a)^4);
    }
  else
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
filldraw(graph(dosm,-1.5,1.5,n)--cycle,pn1+opacity(0.5));

xaxis(pn3,Arrow(15,10,Fill));
yaxis(pn3,Arrow(15,10,Fill));


//label("{$\Large \mu$}",(1,dosm(1)),E,rgb(0,0,0)+fontsize(50));
label("{$D(\omega)$}",(0,1.5),E,rgb(0,0,0)+fontsize(15));
label("{$\omega$}",(2.2,-0.2),E,rgb(0,0,0)+fontsize(15));

label("~~~~~Metal",(-2,1.5),fontsize(15));
