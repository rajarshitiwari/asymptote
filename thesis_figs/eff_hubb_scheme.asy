import fontsize;
import settings;
outformat="pdf";

size(32cm,16cm);

pair x,a1,a2,a3,vec;
pen pn1,pn2,pn3;
real sz=1.0;
int num=10;
pair a0=(0,0);


pn3 = rgb(1,0,0)+linewidth(6);

// first
a1=(0,0.)+a0;
a2=(1,0)+a0;

//for (int i=1;i<=num;++i)
//  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a3--a1--a2,pn1);draw(a3--a2,pn3);}

draw("$\frac{Um_1}{2}$",a1+(-0.2,0.5)--a1-(0.2,0.5),fontsize(40)+linewidth(2),Arrows(20,20,Fill),Bars,PenMargins);

draw("$\frac{Um_2}{2}$",a2-(-0.5,1)--a2+(0.5,1),fontsize(40)+linewidth(2),Arrows(20,20,Fill),Bars,PenMargins);
draw("$t$",a2--a1,linewidth(3)+dotted+fontsize(30),PenMargins);



x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = 1*(Cos(120),Sin(120));
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);label("$\vec{m}_1$",x+(0.02,0.2),pn1+fontsize(2.5*(num-i/num)));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = 2*(Cos(60),Sin(60));
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);label("$\vec{m}_2$",x+(0.1,0.4),pn1+fontsize(2.5*(num-i/num)));}
