import three;
import solids;
import settings;
outformat="pdf";

size(16cm);
pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=gray(0.6)+linewidth(3);
pn2=gray(0.6)+linewidth(1);

int i1,i2;
int l1,l2;
int r1,r2;
int n1,n2;
pair ar,b1,b2,vec;
real scale,theta;
//bbox(currentpicture,green);
scale = 1.0;
n1 = 12;n2 = n1;

b1 = (1,0);
b2 = (0,1);

for(i1 = 0; i1 < n1; ++i1)
  {if(i1 == n1 - 1){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < n2; ++i2)
      {
        if(i2 == n2 - 1){r2 = 0;}else{r2 = 1;}
        if(i2 == 0){l2 = 0;}else{l2 = 1;}
        ar = i1*b1+i2*b2;
        draw(ar--ar+(r1,0),pn2);
        if ((i1+i2)%2 == 0)
          {vec = r2*(0, 1); pn1=blue+linewidth(10);}
        else
          {vec = l2*(0,-1); pn1=rgb(0,0.9,0)+linewidth(10);}
        draw(ar--ar+vec,pn2);
        dot(ar,pn1);

        draw(ar--ar+r1*r2*(1,1),pn3);
        draw(ar--ar+r1*l2*(1,-1),pn3);

        if (r1*r2 == 1)
          {
            fill(ar--ar+(1,0)--ar+(1,1)--ar+(0,1)--cycle,pn1+opacity(0.1));
          }
      }
  }

