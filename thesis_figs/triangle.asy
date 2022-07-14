import fontsize;
// import settings;
// outformat="pdf";

// size(12cm,12cm);

// int n;
// pair x,a1,a2,a3,vec;
// pen pn1,pn2,pn3;
// n = 3;
// real theta;


import settings;
outformat="pdf";

size(32cm,16cm);

int i1,i2,j1,j2,k1,k2,n;
int n1,n2,m1,m2;
pair x,a1,a2,a3,vec;
pen pn1,pn2,pn3;
n = 40;
real theta;

a1=(1.,0.);a2=(-0.5,sqrt(3.)/2.);
theta = 2pi/3.;
a1=(1.,0.);a2=(cos(theta),sin(theta));
pn1=red+linewidth(10);
pn2=gray(0.5)+linewidth(3);
pn3=rgb(0,0.7,0.3)+linewidth(3);

n1 = 0;
n2 = 7;
m1 = 0;
m2 = 7;

for (i1 = n1; i1 <= n2; ++i1)
  {if (i1 == n2){j1 = 0;}else{j1 = 1;}
    if (i1 == n1){k1 = 0;}else{k1 = 1;}

    for (i2 = m1; i2 <= m2 ; ++i2)
      {if (i2 == m2){j2 = 0;}else{j2 = 1;}
	if (i2 == m1){k2 = 0;}else{k2 = 1;}

	x=i1*a1+i2*a2;
	
	if ((i1 <= n2 && i1>= n1 ) && (i2 <= m2 && i2>= m1 ))
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

pair a0=(-4,1);


a1=(0,0.)+a0;
a2=(2,0)+a0;
a3=(1,sqrt(3))+a0;
pn1=red+linewidth(2);
pn2=blue+linewidth(2);
pn3=rgb(0,0.7,0.3)+linewidth(1);

for (int i=1;i<=100;++i)
  {
    pn1=gray(i/100.)+linewidth(7*(100-i)/100);
    draw(a1--a2--a3--cycle,pn1);
  }

x=a1;
for (int i=1;i<=100;++i)
  {
    pn1=rgb(0.,i/100.,0.)+linewidth(20*(100-i)/100.);
    dot(x-(i/20000.,0),pn1);
  }
vec = 0.8*(0,2);
for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0.,0.)+linewidth(5*(100-i)/100.);
    draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(100-i)/100.,Fill));
  }

x=a2;
for (int i=1;i<=100;++i)
  {
    pn1=rgb(0.,i/100.,0.)+linewidth(20*(100-i)/100.);
    dot(x-(i/20000.,0),pn1);
  }
vec = -0.8*(0,2);
for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0.,0.)+linewidth(5*(100-i)/100.);
    draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(100-i)/100.,Fill));
  }

x=a3;
for (int i=1;i<=100;++i)
  {
    pn1=rgb(0.,i/100.,0.)+linewidth(20*(100-i)/100.);
    dot(x-(i/20000.,0),pn1);
  }
vec = -0.8*(0,2);
x=a3+(0.1,0);
for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0.,0.)+linewidth(5*(100-i)/100.);
    draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(100-i)/100.,Fill));
  }
vec = 0.8*(0,2);
x=a3-(0.1,0);
for (int i=1;i<=100;++i)
  {
    pn1=rgb(i/100.,0.,0.)+linewidth(5*(100-i)/100.);
    draw(x-0.2*vec..x+0.3*vec,pn1,Arrow(20,30*(100-i)/100.,Fill));
  }

x=a3+(0.4,0.02);
for (int i=1;i<=100;++i)
  {
    pn1=gray(0.6*i/100.)+fontsize(60);
    label("?",x+(i/10000.),pn1);
  }





















//if (j1 == 1 && j2 == 1)
//  {
// label("$t$",x+0.5*a1,N,blue+fontsize(32));
// label("$t$",x+0.5*a1+a2,N,blue+fontsize(32));
// label("$t$",x+0.5*a2,E,blue+fontsize(32));
// label("$t$",x+a1+0.5*a2,E,blue+fontsize(32));
// label("$t'$",x+0.5*(a1+a2),SE,rgb(0,0.5,0)+fontsize(32));
//  }


