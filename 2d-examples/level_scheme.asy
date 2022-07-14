
size(16cm,16cm);

pair a1,a2;
pen pn1;

pn1 = linewidth(1.2);

a1 = (0,0);
a2 = (0,20);
draw(a1--a2,pn1,Arrow);
a1 = a1 + (3,0);
a2 = a2 + (3,0);
draw(a1--a2,pn1,Arrow);
