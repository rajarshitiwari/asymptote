import three;
import solids;
import settings;
outformat="pdf";

size(8cm);


path ellipse(pair c, real a, real b, real th)
{
  return rotate(th,c)*shift(c)*scale(a,b)*unitcircle;
}


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
pair a1,a2,p1,p2;

a1 = (1,0);
a2 = (0,1);

theta = atan(0.8)*180/pi;
scale = 1.0;
//n = 2 ; twon = 2 * n;
twon = 4;
for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {
	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
	if (i2 == 0){r2 = 0;}else{r2 = 1;}
	ar = i1*a1 + i2*a2;
	p1 = ar;		// site 1
	p2 = ar + 0.5*(a1+a2);	// site 2

	for (int i=1;i<=100;++i) // horizontal
	  {			// lines
	    pn2=gray(i/100.)+linewidth(3*(100-i)/100.);
	    vec=l1*a1;draw(p1..p1+vec,pn2);
	    vec=l2*a2;draw(p1..p1+vec,pn2);
	  }
	for (int i=1;i<=100;++i)
	  {			// lines
	    pn2=rgb(0,i/100.,i/100.)+linewidth(3*(100-i)/100.);
	    vec=(l1*l2)*1*(a1+a2);draw(p1..p1+vec,pn2);
	    vec=-(r1*l2)*1*(a1-a2);draw(p1..p1+vec,pn2);
	  }
      }
  }


for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {
	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
	if (i2 == 0){r2 = 0;}else{r2 = 1;}
	ar = i1*a1 + i2*a2;
	p1 = ar;		// site 1
	p2 = ar + 0.5*(a1+a2);	// site 2
	for (int i=1;i<=100;++i)
	  {			// red
	    pn1=rgb(i/100.,0.,0.)+linewidth(10*(100-i)/100.);
	    x=p1;dot(x-(i/5000.,0),pn1);
	  }
	if (l1*l2 != 0)
	  {
	    for (int i=1;i<=100;++i)
	      {			// green
		pn3=rgb(0.,i/100.,0.)+linewidth(10*(100-i)/100.);
		x=p2;dot(x-(i/5000.,0),pn3);
	      }
	  }
      }
  }

label("$J_1$",0.25*(a1+a2)+(-0.05,0),N,fontsize(14));
//label("$t'$",0.5*a2,W,fontsize(10));
label("$J_2$",0.5*a1,N,fontsize(14));
