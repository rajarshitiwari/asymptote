
size(4.0cm,4.0cm);

pair a1,a2,a3,a4;
import settings;

outformat="pdf";

pen pn1;

a1=(0,0);
a2=(1,0);
a3=(1,1);
a4=(0,1);

draw(a1--a2--a3--a4--a1,rgb(0,0,1)+linewidth(3));
draw(a1--a3,rgb(0,0.8,0)+linewidth(3));
//draw(a2--a4,rgb(0,0.8,0)+linewidth(3));

label("$J_1$",(0.6,0),N,blue+fontsize(24));
label("$J_2$",(0.5,0.6),N,rgb(0,0.8,0)+fontsize(24));


for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
    dot(a1-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
    dot(a2-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
    dot(a3-(i/1000.,0),pn1);
  }
for (int i=1;i<=10;++i)
  {
    pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
    dot(a4-(i/1000.,0),pn1);
  }
