import three;

import fontsize;
import settings;
outformat="pdf";

int conv(real x)
{
  if(x > 0.5)
    {return 1;}
  else
    {return 0;}
}

size(32cm,64cm);

int i1,i2,j1,j2,lsize;
pair x0,x,a1,a2,vec;
pen pn1,pn2,pn3;
lsize = 3;
real theta, vv, dotsep;
dotsep=0.4;
x0=(0,0);
vv = 2;
a1=(1.,0.);
a2=(0.,1.);

pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(3);

j1=1;
j2=1;


theta = 0;
vec = (cos(theta),sin(theta));

for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0,0)+linewidth(30*(100-i)/100.);
    dot(x0-(i/5000.,0),pn1);
  }

for (i1 = 1; i1 <= lsize; ++i1)
  {
    x=x0-(dotsep,0)+i1*a1;
    if (i1 < lsize){
      for (int i=1;i<=100;++i)
	{
	  pn1=rgb(0,i/100.,0)+linewidth(10*(100-i)/100.);
	  draw(x..x+vec,pn1);
	}
    }
    for (int i=1;i<=100;++i)
      {
	pn1=rgb(i/100.,0,0)+linewidth(20*(100-i)/100.);
	dot(x-(i/5000.,0),pn1);
      }
  }
label("$\mathbf{\epsilon_0}=0$",x0+(lsize/2,-0.2),S,fontsize(24));

for (i1 = 1; i1 <= lsize; ++i1)
  {
    x=x0+(dotsep,0)-i1*a1;
    if (i1 < lsize){
      for (int i=1;i<=100;++i)
	{
	  pn1=rgb(0,i/100.,0)+linewidth(10*(100-i)/100.);
	  draw(x..x-vec,pn1);
	}
    }
    for (int i=1;i<=100;++i)
      {
	pn1=rgb(i/100.,0,0)+linewidth(20*(100-i)/100.);
	dot(x-(i/5000.,0),pn1);
      }
  }
label("$\mathbf{\epsilon_0}=0$",x0+(-lsize/2,-0.2),S,fontsize(24));

real ww,dd;
pair orig;
ww = 0.3;
dd = 2.0;

orig = x0+(-lsize-dotsep,0);
draw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,dd)--orig+(-ww,dd)--cycle,pn3);
filldraw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,vv/2)--orig+(-ww,vv/2)--cycle,pn3);
label("$\mu_L$",orig+(0,vv/2),S,fontsize(18));

orig = x0+(+lsize+dotsep,0);
draw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,dd)--orig+(-ww,dd)--cycle,pn3);
filldraw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,-vv/2)--orig+(-ww,-vv/2)--cycle,pn3);
label("$\mu_R$",orig-(0,vv/2),S,fontsize(18));

draw(orig+(0,-vv/2)--orig+(0,vv/2),Arrows);
label("$V_{sd}$",orig,fontsize(24));

draw(x0-(lsize+1,0)--x0+(lsize+1,0),dotted);










////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

//vv=1.2;
x0=(lsize+5,0);








for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0,0)+linewidth(30*(100-i)/100.);
    dot(x0-(i/5000.,0),pn1);
  }

for (i1 = 1; i1 <= lsize; ++i1)
  {
    x=x0-(dotsep,0)+i1*a1+vv*a2/2;
    if (i1 < lsize){
      for (int i=1;i<=100;++i)
	{
	  pn1=rgb(0,i/100.,0)+linewidth(10*(100-i)/100.);
	  draw(x..x+vec,pn1);
	}
    }
    for (int i=1;i<=100;++i)
      {
	pn1=rgb(i/100.,0,0)+linewidth(20*(100-i)/100.);
	dot(x-(i/5000.,0),pn1);
      }
  }
label("$\mathbf{\epsilon_0=+\frac{V_{sd}}{2}}$",x0+(lsize/2,-0.2+vv/2),S,fontsize(24));

for (i1 = 1; i1 <= lsize; ++i1)
  {
    x=x0+(dotsep,0)-i1*a1-vv*a2/2;
    if (i1 < lsize){
      for (int i=1;i<=100;++i)
	{
	  pn1=rgb(0,i/100.,0)+linewidth(10*(100-i)/100.);
	  draw(x..x-vec,pn1);
	}
    }
    for (int i=1;i<=100;++i)
      {
	pn1=rgb(i/100.,0,0)+linewidth(20*(100-i)/100.);
	dot(x-(i/5000.,0),pn1);
      }
  }
label("$\mathbf{\epsilon_0=-\frac{V_{sd}}{2}}$",x0+(-lsize/2,-0.2-vv/2),S,fontsize(24));

orig = x0+(-lsize-dotsep,0);
draw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,dd)--orig+(-ww,dd)--cycle,pn3);
filldraw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,vv/2)--orig+(-ww,vv/2)--cycle,pn3);
label("$\mu_L$",orig+(0,vv/2),S,fontsize(18));

orig = x0+(+lsize+dotsep,0);
draw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,dd)--orig+(-ww,dd)--cycle,pn3);
filldraw(orig+(-ww,-dd)--orig+(ww,-dd)--orig+(ww,-vv/2)--orig+(-ww,-vv/2)--cycle,pn3);

label("$\mu_R$",orig-(0,vv/2),S,fontsize(18));
draw(x0-(lsize+1,0)--x0+(lsize+1,0),dotted);
