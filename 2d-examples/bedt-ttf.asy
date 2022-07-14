
size(16cm,16cm);

pair O,a1,a2,b1,b2,c1,c2;
pen pn;

pn=linewidth(5);
O=(0,0);
a1=(1,0);
a2=(0,1);
real r=1.4;
b1=(sqrt(3.)/2.,-1./2.);
b2=(sqrt(3.)/2.,1./2.);
c1=r*(1/sqrt(2.),-1/sqrt(2.));
c2=r*(1/sqrt(2.),1/sqrt(2.));

draw(-a1--O--a2--(a2-a1),pn);
draw(b1+b2-(0.05,0)--b1+b2+a2-(0.05,0),pn);
draw(b1+b2+(0.05,0)--b1+b2+a2+(0.05,0),pn);

draw(a2-c1--a2--a2+b2--a2+b2+b1--a2+2*b2+b1--a2+2*b2+b1+c1,pn);

draw(-c2--O--b1--b1+b2--2*b1+b2--2*b1+b2+c2,pn);
