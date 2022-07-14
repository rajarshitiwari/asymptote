size(12.0cm,4.0cm);

pair a0,a1,a2,a3,a4;
import settings;
outformat="pdf";

pen pn1;
real dotsize;
dotsize=1.5;

a0=(0,0);
a1=a0+(0,0);
a2=a0+(1,0);
a3=a0+(1,1);
a4=a0+(0,1);
draw(a1--a2--a3--a4--a1,rgb(0,0,1)+linewidth(3));
label("$t$",a0+(0.5,0),N,blue+fontsize(20));
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a1-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a2-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a3-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a4-(i/1000.,0),pn1);
  }
label("$(a)$",a0+(0.5,-0.4),fontsize(20));



a0=(2,0);
a1=a0+(0,0);
a2=a0+(1,0);
a3=a0+(1,1);
a4=a0+(0,1);
draw(a1--a2--a3--a4--a1,rgb(0,0,1)+linewidth(3));
draw(a1--a3,rgb(0,0.8,0)+linewidth(3));
draw(a2--a4,rgb(0,0.8,0)+linewidth(3));
label("$t$",a0+(0.5,0),N,blue+fontsize(20));
label("$t'$",a0+(0.5,0.6),N,rgb(0,0.8,0)+fontsize(20));
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a1-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a2-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a3-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a4-(i/1000.,0),pn1);
  }
label("$(b)$",a0+(0.5,-0.4),fontsize(20));


a0=(4,0);
a1=a0+(0,0);
a2=a0+(1,0);
a3=a0+(1,1);
a4=a0+(0,1);
draw(a1--a2--a3--a4--a1,rgb(0,0,1)+linewidth(3));
draw(a1--a3,rgb(0,0.8,0)+linewidth(3));
label("$t$",a0+(0.6,0),N,blue+fontsize(20));
label("$t'$",a0+(0.5,0.5),N,rgb(0,0.8,0)+fontsize(20));
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a1-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a2-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a3-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(dotsize*(10-i));
    dot(a4-(i/1000.,0),pn1);
  }
label("$(c)$",a0+(0.5,-0.4),fontsize(20));
