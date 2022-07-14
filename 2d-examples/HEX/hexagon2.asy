import three;
import solids;
import settings;
outformat="pdf";

size(16cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=gray(0.6)+linewidth(3);

int i1,i2;
int l1,l2;
int r1,r2;
int n1,n2;
pair ar,b1,b2,a1,a2,a3,a4;
real scale,theta;

scale = 1.0;
n1 = 6;n2 = 2*n1-1;

b1 = (2,0);
b2 = (1,1);

for(i1 = 0; i1 < n1; ++i1)
  {
    for(i2 = 0; i2 < n2; ++i2)
      {
	ar = i1*b1+i2*b2;
	a1 = ar+(0,1);
	a2 = ar;
	a3 = ar+(1,0);
	a4 = a2+b1;
	while (a1.x > n1 - 1)
	  {a1 = a1 - n1*b1;}
	while (a2.x > n1 - 1)
	  {a2 = a2 - n1*b1;}
	while (a3.x > n1 - 1)
	  {a3 = a3 - n1*b1;}
	while (a4.x > n1 - 1)
	  {a4 = a4 - n1*b1;}

	draw(a1--a2--a3--a4,pn2);
	dot(a1,pn1);
	dot(a2,pn1);
	dot(a3,pn1);
      }
  }
