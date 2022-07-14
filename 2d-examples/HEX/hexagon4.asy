import three;
import solids;
import settings;
outformat="pdf";

size(16cm);
pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=gray(0.6)+linewidth(3);

int i1,i2,i,j;
int l1,l2;
int r1,r2;
int n1,n2;
pair ar,b1,b2,c1,c2,vec;
real scale,theta;

//bbox(currentpicture,green);
scale = 1.0;
n1 = 12;n2 = n1;

b1 = (1,0);
b2 = (0,1);

c1 = (cos(pi/6.),sin(pi/6.));
c2 = (cos(pi/6.),-sin(pi/6.));

for(i1 = 0; i1 < n1; ++i1)
  {if(i1 == n1 - 1){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < n2; ++i2)
      {
	if(i2 == n2 - 1){r2 = 0;}else{r2 = 1;}
	if(i2 == 0){l2 = 0;}else{l2 = 1;}
	ar = i1*b1+i2*b2;

	i = (i1+i2)%2;
	if (i == 0)
	  {vec = r2*(0,1);j = 1;}
	else
	  {vec = l2*(0,-1);j = -1;}
	//dot(ar+j*(0,sin(pi/6.)),pn1);
	dot(ar,pn1);
	//draw(ar--ar+r1*(c1*i+(1-i)*c2),pn2);
	draw(ar--ar+r1*(1,0),pn2);
	draw(ar--ar+vec,pn2);
      }
  }

