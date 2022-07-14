
import settings;
outformat="pdf";
size(12cm,12cm);

void distance(picture pic=currentpicture, pair A, pair B, Label L="", real n=0, pen p=currentpen) 
{
  real d=3mm;
  path g=A--B;
  transform T=shift(-n*d*unit(B-A)*I);
  pic.add(new void(frame f, transform t) {
      picture opic;
      path G=T*t*g;
      draw(opic,Label(L,Center,UnFill(1)),G,p,Arrows(NoFill),Bars,PenMargins); 
      add(f,opic.fit());
    });
  pic.addBox(min(g),max(g),T*min(p),T*max(p));
} 

real a=1;
pair a1,a2,a3,a4;

a1=(0,0);
a2=(a,0);
a3=(a,a);
a4=(0,a);

draw(a1--a2+(0.3,0),linewidth(3),Arrow(10,30,Fill));
draw(a1--a4+(0,0.3),linewidth(3),Arrow(10,30,Fill));
draw(a1--a2--a3--a1,linewidth(3));

draw(a1-(0,0.1)--a2-(0,0.1),linewidth(2),Arrows(10,30,Fill));
label("$\pi$",0.5*(a1+a2)-(0,0.12),N,fontsize(32));

draw(a1-(0.1,0)--a4-(0.1,0),linewidth(2),Arrows(10,30,Fill));
label("$\pi$",0.5*(a1+a4)-(0.12,0),E,fontsize(32));


label("$k_x$",a2+(0.3,0),E,fontsize(24));
label("$k_y$",a4+(0,0.3),N,fontsize(24));
dot(a1,rgb(1,0,0)+linewidth(10));
dot(a3,rgb(0,0.8,0)+linewidth(10));
dot(a2,rgb(0,0,1)+linewidth(10));

label("$\Gamma$",a1,SW,fontsize(32));
label("$K$",a2,SE,fontsize(32));
label("$M$",a3,NE,fontsize(32));

//distance(a1,a2,"$\pi$",2,linewidth(1)+fontsize(32));
//distance(a1,a4,"$\pi$",-2,linewidth(1)+fontsize(32));
