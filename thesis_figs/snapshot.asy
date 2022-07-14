import settings;
outformat="pdf";

size(51cm,16cm);

int i1,i2,j1,j2,n;
pair x,q,v,x1,x2,orig;
real theta,clr;
pen pn1,pn2,pn3,pnv;
real dx=0.5;
n = 12;
path pth;

// pi pi
pth=(-dx,-dx)--(n+dx,-dx)--(n+dx,n+dx)--(-dx,n+dx)--cycle;
//label("(a)",(n/2,-1),font("Times")+fontsize(48));
draw(pth,linewidth(3)+black);
q = 2*pi*(6,6)/n;
pn1=black+linewidth(7);
pn2=blue+linewidth(1);
pn3=gray(0.6)+linewidth(1);
for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=(i1,i2);
	draw(x..x+(j1,j2),pn3);
	draw(x..x+(j1,0),pn2);
	draw(x..x+(0,j2),pn2);
	dot(x,pn1);
	////////////////////////////////////////////////////////
        // for (int i=1;i<=10;++i)			      //
	//   {						      //
	//     pn1=rgb(i/10.,0.,0.)+linewidth((10-i));	      //
	//     dot(x,pn1);				      //
	//   }						      //
        ////////////////////////////////////////////////////////
	theta=dot(q,(i1,i2));
	v=(cos(theta),sin(theta));
	x1=x-0.4*v;x2=x+0.4*v;clr=0.5*(1.0+cos(theta));
	pnv=rgb(0.8*clr,0.,1-clr)+linewidth(3);
	draw(x1--x2,pnv,Arrow(10,25));
      }
  }

// spiral
pth=(n+1.5-dx,-dx)--(2*n+1.5+dx,-dx)--(2*n+1.5+dx,n+dx)--(n+1.5-dx,n+dx)--cycle;
draw(pth,linewidth(3)+black);
q = 2*pi*(5,5)/n;
for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=(i1,i2)+(n+1+0.5,0);
	draw(x..x+(j1,j2),pn3);
	draw(x..x+(j1,0),pn2);
	draw(x..x+(0,j2),pn2);
	dot(x,pn1);
	theta=dot(q,(i1,i2));
	v=(cos(theta),sin(theta));
	x1=x-0.4*v;x2=x+0.6*v;clr=0.5*(1.0+cos(theta));
	pnv=rgb(0.8*clr,0.,1-clr)+linewidth(3);
	draw(x1--x2,pnv,Arrow(10,25));
      }
  }

//triangle
pth=(2*n+3-dx,-dx)--(3*n+3+dx,-dx)--(3*n+3+dx,n+dx)--(2*n+3-dx,n+dx)--cycle;
draw(pth,linewidth(3)+black);
q = 2*pi*(4,4)/n;
for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=(i1,i2)+(2*(n+1)+1.0,0);
	draw(x..x+(j1,j2),pn3);
	draw(x..x+(j1,0),pn2);
	draw(x..x+(0,j2),pn2);
	dot(x,pn1);
	theta=dot(q,(i1,i2));
	v=(cos(theta),sin(theta));
	x1=x-0.4*v;x2=x+0.5*v;clr=0.5*(1.0+cos(theta));
	pnv=rgb(0.8*clr,0,1-clr)+linewidth(3);
	draw(x1--x2,pnv,Arrow(10,25));
      }
  }

