import fontsize;
import settings;
outformat="pdf";

size(16cm,16cm);

int i1,i2,j1,j2,n;
pair x,a1,a2;
pen pn1,pn2,pn3;
n = 1;
real theta;

a1=(1.,0.);
a2=(0.,1.);
pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1)
  {if (i1 == n){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= n ; ++i2)
      {if (i2 == n){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	
	for (int i=1;i<=100;++i)
	  {
	    pn1=gray(i/100.)+linewidth(15*(100-i)/100);
	    draw(x..x+j2*a2,pn1);
	    draw(x..x+j1*a1,pn1);
	  }

	for (int i=1;i<=100;++i)
	  {
	    pn1=rgb(0.,i/100.,0.)+linewidth(50*(100-i)/100.);
	    dot(x-(i/10000.,0),pn1);
	  }
	
      }
  }

label("$\epsilon_i$",(0,0),SW,fontsize(72)+rgb(0,0.6,0));
label("$\epsilon_i$",(1,0),SE,fontsize(72)+rgb(0,0.6,0));
label("$\epsilon_i$",(1,1),NE,fontsize(72)+rgb(0,0.6,0));
label("$\epsilon_i$",(0,1),NW,fontsize(72)+rgb(0,0.6,0));

label("$t_{ij}$",(0.5,0.0),N,fontsize(72)+gray(0.3));
label("$t_{ij}$",(1.0,0.5),W,fontsize(72)+gray(0.3));
label("$t_{ij}$",(0.5,1.0),S,fontsize(72)+gray(0.3));
label("$t_{ij}$",(0.0,0.5),E,fontsize(72)+gray(0.3));
