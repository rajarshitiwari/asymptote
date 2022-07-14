import three;
import solids;
import settings;
outformat="pdf";

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
pair ar,b1,b2,a1,a2,a3,a4,c1,c2,c3;
real aa,theta;


aa = 1.0; theta = 50;//pi/6.0;

n1 = 4;n2 = 8;

//b1 = aa*(sqrt(3.0),0);
//b2 = 0.5*aa*(sqrt(3.0),3.0);

b1 = aa*(2+2*Cos(theta),0);
b2 = aa*(0,2*Sin(theta));

c1 = aa*(Cos(theta),Sin(theta));
c2 = (c1.x,-c1.y);
c3 = (aa,0);

//b1 = rotate(30,(0,0))*b1;
//b2 = rotate(30,(0,0))*b2;

for(i1 = 0; i1 < n1; ++i1)
  {
    for(i2 = 0; i2 < n2; ++i2)
      {
        ar = i1*b1+i2*b2;
        a1 = ar;
        a2 = ar + c2;
        a3 = a2 + aa*(1,0);
        a4 = a3 + c1;

        //while (a1.x/sqrt(3.0) > n1 - 1)
        //  {a1 = a1 - n1*b1;}
        //while (a2.x/sqrt(3.0) > n1 - 1)
        //  {a2 = a2 - n1*b1;}

        draw(a1--a1+c1,pn3);
        draw(a1--a1+c2,pn3);
        draw(a1--a1-c3,pn3);

        draw(a3--a3+c1,pn3);
        draw(a3--a3+c2,pn3);
        draw(a3--a3-c3,pn3);
        
        //fill(a1--a1+b1--a1+b2--cycle,pn1+opacity(0.1));
        //fill(a1--a1+b2--a1+b2-b1--cycle,pn2+opacity(0.1));
      }
  }

for(i1 = 0; i1 < n1; ++i1)
  {
    for(i2 = 0; i2 < n2; ++i2)
      {
        ar = i1*b1+i2*b2;
        a1 = ar;
        a2 = ar + c2;
        a3 = a2 + aa*(1,0);
        a4 = a3 + c1;
        
        //while (a1.x/sqrt(3.0) > n1 - 1)
        //  {a1 = a1 - n1*b1;}
        //while (a2.x/sqrt(3.0) > n1 - 1)
        //  {a2 = a2 - n1*b1;}
        dot(a1,pn1);
        dot(a2,pn2);
        dot(a3,pn1);
        dot(a4,pn2);
      }
  }

//draw((0,0)--b1,Arrow());
//draw((0,0)--b2,Arrow());
