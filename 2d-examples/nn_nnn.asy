import three;
import solids;
import settings;
outformat="pdf";

size(16cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=blue+linewidth(2);
pn3=green+linewidth(10);
pn4=green+linewidth(2);

int i1,i2;
int l1,l2;
int r1,r2;
int n,twon;
pair vec,ar;
real scale,theta;

scale = 1.0;
n = 2 ; twon = 2 * n;

for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {
	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
	if (i2 == 0){r2 = 0;}else{r2 = 1;}
	ar = 2*(i1,i2);
	draw(ar--ar+(1,0),pn2);
	draw(ar--ar+(0,1),pn2);
	draw(ar--ar-(1,0),pn2);
	draw(ar--ar-(0,1),pn2);
	dot(ar,pn1);
	ar = 2*(i1,i2)+(1,1);
	draw(ar--ar+(1,0),pn4);
	draw(ar--ar+(0,1),pn4);
	draw(ar--ar-(1,0),pn4);
	draw(ar--ar-(0,1),pn4);
	dot(ar,pn3);
	ar = 2*(i1,i2);
	//dot(ar,black+linewidth(10));
	dot(ar+(1,0),black+linewidth(10));
	dot(ar+(0,1),black+linewidth(10));
	//dot(ar+(1,1),black+linewidth(10));
      }
  }
