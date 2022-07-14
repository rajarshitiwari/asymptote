import graph;
import fontsize;
import settings;
outformat='pdf';

size(10cm,5cm); 

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

real fermi_sea(real x)
{ 
  return x/4 - 0.5;
}


pen pn1,pn2,pn3;

real a1=0.03;
real a2=0.03;

int n=100;

pn1=rgb(1,0,0)+linewidth(2);
pn2=rgb(0,1,0)+linewidth(2);
pn3=rgb(0,0,0)+linewidth(1);

//filldraw(graph(dosm,-1.5,1.5,n)--cycle,pn1+opacity(0.5));
//filldraw(graph(dosi,-3.2,3.2,2*n)--cycle,pn2+opacity(0.5));

xaxis(pn3,Arrow(15,10,Fill));
yaxis(pn3,Arrow(15,10,Fill));

draw((0,0.2)--(2,0.2));
draw(graph(fermi_sea,0,3.2,2*n)--cycle,pn3+opacity(0.5));

//label("{$\Large \mu$}",(1,dosm(1)),E,rgb(0,0,0)+fontsize(50));
label("Energy",(0,0.5),E,rgb(0,0,0)+fontsize(15));
dot("{$U$}",(2,0.),SE,rgb(0,0,0)+linewidth(7)+fontsize(15));

//label("Insulator",(-2,1.5));
