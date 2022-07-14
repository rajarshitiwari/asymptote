import settings;
outformat="pdf";

size(32cm,16cm);

int i1,i2,j1,j2,n;
pair x,a1,a2,vec;
pen pn1,pn2,pn3;
n = 3;
real theta;

a1=(1.,0.);
a2=(0.,1.);
pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;

int conv(real x)
{
  if(x > 0.5)
    {return 1;}
  else
    {return 0;}
}

theta = pi/3.;
vec = 0.8*(cos(theta),sin(theta));

for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2+(n+1,1.5);
	for (int i=1;i<=100;++i)
	  {
	    pn1=rgb(0.,0.,i/100.)+linewidth(10*(100-i)/100);
	    draw(x..x+j2*a2,pn1);
	    draw(x..x+j1*a1,pn1);
	  }
      }
  }


for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2+(n+1,1.5);
	for (int i=1;i<=100;++i)
	  {
	    pn1=rgb(0.,i/100.,0.)+linewidth(30*(100-i)/100.);
	    dot(x-(i/2000.,0),pn1);
	  }
	vec = (2*((i1+i2)%2)-1)*0.8*(cos(theta),sin(theta));
	for (int i=1;i<=100;++i)
	  {
	    pn1=rgb(i/100.,0.,0.)+linewidth(10*(100-i)/100.);
	    draw(x-0.3*vec..x+0.6*vec,pn1,Arrow(30,30*(100-i)/100.,Fill));
	  }
      }
  }




/*
for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0.,0.)+linewidth(30*(100-i)/100.);
    dot(x-(i/2000.,0),pn1);
  }
*/
