import three;
import solids;
import settings;
outformat="pdf";

size(8cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=blue+linewidth(2);
pn3=green+linewidth(4);
pn4=green+linewidth(1.5);

int i1,i2;
int l1,l2;
int r1,r2;
int n,twon;
pair vec,ar,x;
real scale,theta;

scale = 1.0;
n = 4 ; twon = 2 * n;

for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {
	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
	if (i2 == 0){r2 = 0;}else{r2 = 1;}
	ar = 2*(i1,i2);
	{
	  for (int i=1;i<=100;++i)
	    {			// lines
	      pn2=rgb(0.4,0.4,i/100.)+linewidth(3*(100-i)/100.);
	      vec=(1,0);draw(ar..ar+vec,pn2);
	      vec=(0,1);draw(ar..ar+vec,pn2);
	      vec=-(1,0);draw(ar..ar+vec,pn2);
	      vec=-(0,1);draw(ar..ar+vec,pn2);
	      draw(ar+(1,0)--ar+(0,1)--ar-(1,0)--ar-(0,1)--cycle,pn2);
	    }
	}
	for (int i=1;i<=100;++i)
	  {			// red
	    pn1=rgb(i/100.,0.,0.)+linewidth(6*(100-i)/100.);
	    x=ar;dot(x-(i/2000.,0),pn1);
	  }
	for (int i=1;i<=100;++i)
	  {			// green
	    pn3=rgb(0.,i/100.,0.)+linewidth(6*(100-i)/100.);
	    x=ar+(1,0);dot(x-(i/2000.,0),pn3);
	    x=ar+(0,1);dot(x-(i/2000.,0),pn3);
	    x=ar-(1,0);dot(x-(i/2000.,0),pn3);
	    x=ar-(0,1);dot(x-(i/2000.,0),pn3);
	  }
      }
  }
