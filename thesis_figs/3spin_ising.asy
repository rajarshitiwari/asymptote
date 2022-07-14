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
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a3--a1--a2,pn1);draw(a3--a2,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}







//second
a0 += (3,0);
a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a1--a2--a3,pn1);draw(a1--a3,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}






//third
a0 += (3,0);
a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a2--a3--a1,pn1);draw(a2--a1,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}








//fourth
a0 += (3,0);
a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a3--a1--a2,pn1);draw(a3--a2,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}








//fifth
a0 += (3,0);
a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a1--a2--a3,pn1);draw(a1--a3,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}






//sixth
a0 += (3,0);
a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;

for (int i=1;i<=num;++i)
  {pn1=gray(i/num)+linewidth(7*(num-i)/num);draw(a2--a3--a1,pn1);draw(a2--a1,pn3);}
x=a1;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a2;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = sz*(0,2);
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}

x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(0.,i/num,0.)+linewidth(20*(num-i)/num);dot(x-(i/20000.,0),pn1);}
vec = -sz*(0,2);
x=a3;
for (int i=1;i<=num;++i)
  {pn1=rgb(i/num,0.,0.)+linewidth(5*(num-i)/num);draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(num-i)/num,Fill));}
