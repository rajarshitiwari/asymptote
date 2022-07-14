import settings;
outformat="pdf";

size(32cm,16cm);

int i1,i2,j1,j2,n;
pair x,a1,a2;
pen pn1,pn2,pn3;
n = 40;
real theta;

a1=(1.,0.);a2=(-0.5,sqrt(3.)/2.);
theta = 2pi/3.;
a1=(1.,0.);a2=(cos(theta),sin(theta));
pn1=red+linewidth(10);
pn2=blue+linewidth(3);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;
for (i1 = -n; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = -2*n; i2 <= 2*n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2+(n+1,1.5);
	
	if ((x.x <= 9 && x.x>1 ) && (x.y <= 7 && x.y>0 ))
	  {
	    //if (x.x == 9){j1=0;}
	    //if (x.y == 7){j2=0;}
	    
	    draw(x..x+j1*a1+j2*a2,pn2);
	    draw(x..x+j1*a1,pn2);
	    draw(x..x+j2*a2,pn2);
	    for (int i=1;i<=10;++i)
	      {
		pn1=rgb(i/10.,0.,0.)+linewidth(2*(10-i));
		dot(x-(i/1000.,0),pn1);
	      }
	  }
      }
  }

//if (j1 == 1 && j2 == 1)
//  {
// label("$t$",x+0.5*a1,N,blue+fontsize(32));
// label("$t$",x+0.5*a1+a2,N,blue+fontsize(32));
// label("$t$",x+0.5*a2,E,blue+fontsize(32));
// label("$t$",x+a1+0.5*a2,E,blue+fontsize(32));
// label("$t'$",x+0.5*(a1+a2),SE,rgb(0,0.5,0)+fontsize(32));
//  }

