import settings;
outformat="pdf";

size(8cm,16cm);

int i1,i2,j1,j2,k1,k2,num,num1,num2,numit;
pair x,a1,a2;
pen pn1,pn2,pn3;
num = 3;
num1 = num+3;
num2 = num;
numit=30;
real sh,sc;
pair A1,A2,A3,A4;
a1=(1.,0.);
a2=(0.,1.);
pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;

// draw the sites
for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	if ((i1+i2)%2==0)
	  {
	    for (int i=0;i<numit;++i) // blue/white square
	      {
		sh=i/numit;
		sc=1-sh;
		pn1=rgb(0,0,sh);
		//pn1=gray(sh);
		filldraw(box(x+(sh,sh),x+(1-sh,1-sh)),pn1+opacity(0.3));
	      }
	  }
	else
	  {
	    for (int i=0;i<numit;++i) // red/black square
	      {
		sh=i/numit;
		sc=1-sh;
		pn1=rgb(sh,0,0.5*sh);
		//pn1=gray(1-sh);
		filldraw(box(x+(sh,sh),x+(1-sh,1-sh)),pn1+opacity(0.3));
	      }
	  }
      }
  }

