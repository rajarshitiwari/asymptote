import fontsize;
import settings;
outformat="pdf";

size(32cm,16cm);

int i1,i2,j1,j2,k1,k2,n;
int n1,n2,m1,m2,numit;
pair x,a0,a1,a2,vec;
pen pn1,pn2,pn3;
real theta,vmag,backl,frontl;

a1=(1.,0.);a2=(0.,1.);
pn1=red+linewidth(10);
pn2=gray(0.5)+linewidth(3);
pn3=rgb(0,0.7,0.3)+linewidth(3);

vmag = 1.0;
frontl=0.4;
backl=0.2;
n = 4;
numit=10;
n1 = 0;
n2 = 4;
m1 = 0;
m2 = 4;


a0=(0,0);
label("...",a0+(-0.5,n/2),fontsize(30));
for (i1 = n1; i1 <= n2; ++i1)
  {if (i1 == n2){j1 = 0;}else{j1 = 1;}
    if (i1 == n1){k1 = 0;}else{k1 = 1;}
    for (i2 = m1; i2 <= m2 ; ++i2)
      {if (i2 == m2){j2 = 0;}else{j2 = 1;}
	if (i2 == m1){k2 = 0;}else{k2 = 1;}
	x=a0+i1*a1+i2*a2;
	draw(x..x+j1*a1,pn2);
	draw(x..x+j2*a2,pn2);
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(0,i/numit,0)+linewidth(1*(numit-i));
	    dot(x-(i/(numit*100),0),pn1);
	  }
	vec = vmag*(0,1);
	theta = unitrand()*2*pi;
	vec=(cos(theta),sin(theta))*vec;
	for (int i=1;i<=numit;++i)
	  {
	    pn1=rgb(i/numit,0,0)+linewidth(5*(numit-i)/numit);
	    draw(x-backl*vec..x+frontl*vec,pn1,Arrow(15,30*(numit-i)/numit,Fill));
	  }
      }
  }

a0=(n+1,0);
label("...",a0+(-0.5,n/2),fontsize(30));
for (i1 = n1; i1 <= n2; ++i1)
  {if (i1 == n2){j1 = 0;}else{j1 = 1;}
    if (i1 == n1){k1 = 0;}else{k1 = 1;}
    for (i2 = m1; i2 <= m2 ; ++i2)
      {if (i2 == m2){j2 = 0;}else{j2 = 1;}
	if (i2 == m1){k2 = 0;}else{k2 = 1;}
	x=a0+i1*a1+i2*a2;
	draw(x..x+j1*a1,pn2);
	draw(x..x+j2*a2,pn2);
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(0,i/numit,0)+linewidth(1*(numit-i));
	    dot(x-(i/(numit*100),0),pn1);
	  }
	vec = vmag*(0,1);
	theta = unitrand()*2*pi;
	vec=(cos(theta),sin(theta))*vec;
	for (int i=1;i<=numit;++i)
	  {
	    pn1=rgb(i/numit,0,0)+linewidth(5*(numit-i)/numit);
	    draw(x-backl*vec..x+frontl*vec,pn1,Arrow(15,30*(numit-i)/numit,Fill));
	  }
      }
  }

a0=(2*n+2,0);
label("...",a0+(-0.5,n/2),fontsize(30));
for (i1 = n1; i1 <= n2; ++i1)
  {if (i1 == n2){j1 = 0;}else{j1 = 1;}
    if (i1 == n1){k1 = 0;}else{k1 = 1;}
    for (i2 = m1; i2 <= m2 ; ++i2)
      {if (i2 == m2){j2 = 0;}else{j2 = 1;}
	if (i2 == m1){k2 = 0;}else{k2 = 1;}
	x=a0+i1*a1+i2*a2;
	draw(x..x+j1*a1,pn2);
	draw(x..x+j2*a2,pn2);
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(0,i/numit,0)+linewidth(1*(numit-i));
	    dot(x-(i/(numit*100),0),pn1);
	  }
	vec = vmag*(0,1);
	theta = unitrand()*2*pi;
	vec=(cos(theta),sin(theta))*vec;
	for (int i=1;i<=numit;++i)
	  {
	    pn1=rgb(i/numit,0,0)+linewidth(5*(numit-i)/numit);
	    draw(x-backl*vec..x+frontl*vec,pn1,Arrow(15,30*(numit-i)/numit,Fill));
	  }
      }
  }

a0=(3*(n+1),0);
label("...",a0+(-0.5,n/2),fontsize(30));
for (i1 = n1; i1 <= n2; ++i1)
  {if (i1 == n2){j1 = 0;}else{j1 = 1;}
    if (i1 == n1){k1 = 0;}else{k1 = 1;}
    for (i2 = m1; i2 <= m2 ; ++i2)
      {if (i2 == m2){j2 = 0;}else{j2 = 1;}
	if (i2 == m1){k2 = 0;}else{k2 = 1;}
	x=a0+i1*a1+i2*a2;
	draw(x..x+j1*a1,pn2);
	draw(x..x+j2*a2,pn2);
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(0,i/numit,0)+linewidth(1*(numit-i));
	    dot(x-(i/(numit*100),0),pn1);
	  }
	vec = vmag*(0,1);
	theta = unitrand()*2*pi;
	vec=(cos(theta),sin(theta))*vec;
	for (int i=1;i<=numit;++i)
	  {
	    pn1=rgb(i/numit,0,0)+linewidth(5*(numit-i)/numit);
	    draw(x-backl*vec..x+frontl*vec,pn1,Arrow(15,30*(numit-i)/numit,Fill));
	  }
      }
  }
a0=(4*(n+1),0);
label("...",a0+(-0.5,n/2),fontsize(30));
