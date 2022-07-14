import three;
import solids;
import settings;
outformat="pdf";

surface Mo = scale3(0.1)*unitsphere;
surface Su = scale3(0.1)*unitsphere;

size(24cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=rgb(0,0.9,0)+linewidth(10);
pn3=gray(0.6)+linewidth(3);
pn4=gray(0.6)+linewidth(1);

int i1,i2;
int l1,l2;
int r1,r2;
int n1,n2;
triple ar,b1,b2,a1,a2,a3,a4,vz;
real aa,theta, sz;

aa = 1.0;
n1 = 8;n2 = 8;

sz = 0.4;

b1 = aa*(sqrt(3.0),0,0);
b2 = 0.5*aa*(sqrt(3.0),3.0,0);
light lit=currentlight;
currentprojection=perspective(5,-7,12,center=true);

for(i1 = 0; i1 < n1; ++i1)
  {
    for(i2 = 0; i2 < n2; ++i2)
      {
        ar = i1*b1+i2*b2;
        a1 = ar;
        a2 = ar+aa*(0,1,0);
        while (a1.x/sqrt(3.0) > n1 - 1)
          {a1 = a1 - n1*b1;}
        while (a2.x/sqrt(3.0) > n1 - 1)
          {a2 = a2 - n1*b1;}

	vz = (0,0,sz);
	draw(a1--a2+vz,pn3,lit);
        draw(a1--a2-b2+b1+vz,pn3,lit);
        draw(a1--a2-b2+vz,pn3,lit);

	vz = (0,0,-sz);
	draw(a1--a2+vz,pn3,lit);
        draw(a1--a2-b2+b1+vz,pn3,lit);
        draw(a1--a2-b2+vz,pn3,lit);

        //draw(a1--a1+b1,pn4,lit);
        //draw(a1--a1+b2,pn4,lit);
        //draw(a1+b1--a1+b2,pn4,lit);

	//draw(a2--a2+b1,pn4,lit);
        //draw(a2--a2+b1-b2,pn4,lit);
        //draw(a2+b1--a2+b1-b2,pn4,lit);

	//draw(surface(a1--a1+b1--a1+b2--cycle),pn1+opacity(0.3));
	//draw(surface(a1--a1+b2--a1+b2-b1--cycle),pn2+opacity(0.3));

      }
  }

for(i1 = 0; i1 < n1; ++i1)
  {
    for(i2 = 0; i2 < n2; ++i2)
      {
	ar = i1*b1+i2*b2;
	a1 = ar;
	a2 = ar+aa*(0,1,0);
	while (a1.x/sqrt(3.0) > n1 - 1)
	  {a1 = a1 - n1*b1;}
	while (a2.x/sqrt(3.0) > n1 - 1)
	  {a2 = a2 - n1*b1;}
	draw(shift(a1)*Mo,pn1);

	vz = (0,0, sz); draw(shift(a2+vz)*Su,pn2);
	vz = (0,0,-sz); draw(shift(a2+vz)*Su,pn2);
      }
  }

//draw((0,0)--b1,Arrow());
//draw((0,0)--b2,Arrow());
