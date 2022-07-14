
size(6cm,6cm);

pair a,b,c;

a = (0,0);
b = (1,1);

dot(a,linewidth(15));
dot(b,linewidth(15));
label("($\frac{2\pi}{3}$,$\frac{2\pi}{3}$)",a,SW);
label("($\pi$,$\pi$)",b,NE);
draw(a--b,linewidth(3));
c=(0.5,0.7);
draw(a..c..b,linewidth(3));
label("$U>6$",(0.7,0.5),S);
label("$U\le 6$",(0.2,0.8),S);
