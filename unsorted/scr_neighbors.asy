import graph;

pair o,n11,n12,n13,n14,n21,n22,n23,n24,n31,n32,n33,n34,n41,n42,n43,n44,n45,n46,n47,n48;

pen pn1,pn2,pn3,pn4,pn5;
pn1=magenta+linewidth(2.0);
pn2=blue+linewidth(2.0);
pn3=red+linewidth(2.0);
pn4=green+linewidth(3.0);
pn5=black+linewidth(10.0);
o=(0,0);
n11=(-1,-1);n12=(1,1);n13=(-1,1);n14=(1,-1);
n21=(2,0);n22=(-2,0);n23=(0,2);n24=(0,-2);
n31=2*n11;n32=2*n12;n33=2*n13;n34=2*n14;
n41=(3,1);n42=(-3,-1);n43=(3,-1);n44=(-3,1);
n45=(1,3);n46=(-1,-3);n47=(1,-3);n48=(-1,3);

size(18cm,18cm);
label("(0,0)",o,NE);
label("(0,2)",n23,NE);
label("(1,3)",n45,NE);
label("(1,1)",n12,NE);
label("(2,2)",n32,NE);

draw(o--n11,pn1,Arrow);draw(o--n12,pn1,Arrow);draw(o--n13,pn1,Arrow);draw(o--n14,pn1,Arrow);
draw(o--n21,pn2,Arrow);draw(o--n22,pn2,Arrow);draw(o--n23,pn2,Arrow);draw(o--n24,pn2,Arrow);
draw(o--n31,pn3,Arrow);draw(o--n32,pn3,Arrow);draw(o--n33,pn3,Arrow);draw(o--n34,pn3,Arrow);
draw(o--n41,pn4,Arrow);draw(o--n42,pn4,Arrow);draw(o--n43,pn4,Arrow);draw(o--n44,pn4,Arrow);
draw(o--n45,pn4,Arrow);draw(o--n46,pn4,Arrow);draw(o--n47,pn4,Arrow);draw(o--n48,pn4,Arrow);

dot(o,pn5);
dot(n11,pn5);dot(n12,pn5);dot(n13,pn5);dot(n14,pn5);
dot(n21,pn5);dot(n22,pn5);dot(n23,pn5);dot(n24,pn5);
dot(n31,pn5);dot(n32,pn5);dot(n33,pn5);dot(n34,pn5);
dot(n41,pn5);dot(n42,pn5);dot(n43,pn5);dot(n44,pn5);
dot(n45,pn5);dot(n46,pn5);dot(n47,pn5);dot(n48,pn5);
