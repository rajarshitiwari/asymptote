import settings;
outformat="pdf";

size(16cm,16cm);

int i1,i2,j1,j2,n;
pair x,a1,a2;
pen pn1,pn2,pn3;
n = 6;
real theta;
int num=10;
a1=(1.,0.);
a2=(0.,1.);

label("$(\bf a)$",(-0.7,6),fontsize(16));
label("$(\bf b)$",(6.7,6),fontsize(16));


pn1=red+linewidth(10);
pn2=gray(0.6)+linewidth(3);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	
	draw(x..x+j2*a2,pn2);
	draw(x..x+j1*a1,pn2);
      }
  }

for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	for (int i=1;i<=num;++i)
	  {
	    if((i1+i2)%2==1)
	      {
		pn1=rgb(0.,i/num,0.)+linewidth(10*(num-i)/num);
	      }
	    else
	      {
		pn1=rgb(0.,0.,i/num)+linewidth(10*(num-i)/num);
	      }
	    dot(x-(i/2000.,0),pn1);
	  }
	
      }
  }


int i1,i2,j1,j2,n;
pair x,a1,a2,p1,p2;
pen pn1,pn2,pn3;
n = 3;
real theta;

a1=(1.,0.);a2=(-0.5,sqrt(3.)/2.);
theta = 2*pi/3.;

pn1=red+linewidth(10);
pn2=gray(0.6)+linewidth(3);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;
theta = pi/3.;
p1 = (0,0);
p2 = (cos(theta),sin(theta));
a1=(1.,0.);a2=(0.,2*sin(theta));
for (i1 = 0; i1 <= 2*n; ++i1)
  {if (i1 == 2*n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2+(7,0);

	draw(x+p1..x+p2,pn2);
	draw(x+p1..x+j1*a1,pn2);
	draw(x+p2..x+p2+j1*a1,pn2);
	draw(x+p2..x+j1*a1,pn2);
	draw(x+p2..x+j2*a2,pn2);
	draw(x+p2..x+p2+j1*j2*p2,pn2);


	for (int i=1;i<=num;++i)
	  {
	    pn1=rgb(0,i/num,0.)+linewidth(10*(num-i)/num);
	    dot(x+p1-(i/1000.,0),pn1);
	    dot(x+p2-(i/1000.,0),pn1);
	  }
      }
  }

// if ((i1)%3==0)
//   {
//     for (int i=1;i<=num;++i)
//       {
// 	pn1=rgb(0,i/num,0.)+linewidth(10*(num-i)/num);
// 	dot(x+p1-(i/1000.,0),pn1);
// 	//dot(x+p2-(i/1000.,0),pn1);
//       }
//   }
// else if ((i1)%3==1)
//   {
//     for (int i=1;i<=num;++i)
//       {
// 	pn1=rgb(i/num,.0,0.)+linewidth(10*(num-i)/num);
// 	//dot(x+p1-(i/1000.,0),pn1);
// 	dot(x+p2-(i/1000.,0),pn1);
//       }
//   }
