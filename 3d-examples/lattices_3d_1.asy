import three;
import math;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

size3(16cm,16cm,16cm);


label("{\bf (c)}",(0.5,3.2,2.5),fontsize(32),Billboard);

//surface Mo = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;

int n,n1,n2,n3;
int j1,j2,j3,k1,k2,k3;


pen thick1=linewidth(1);
pen thick2=linewidth(3);
pen thick3=linewidth(5);
triple vec,vec1,vec2;
n=3;
pen pn1,pn2,pn3,pn4;
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);

pn1 = .5*green+.5*white+opacity(.5);
pn2 = .5*green+.5*white+opacity(.5);
pn3 = .5*green+.5*white+opacity(.5);
pn4 = .5*green+.5*white+opacity(.5);

light lit=currentlight;
pen cl=rgb(0.0,0.0,0.9);
//currentprojection=perspective(-n/2,-n/2-0.5,n/2+0.5,center=true);
currentprojection=perspective(-n,-n,n/2+0.5,center=true);

light lit=currentlight;

	for(int i1 = 0; i1 < n; ++i1)
	{
		if (i1 == n-1){j1 = 0;}
		else {j1 = 1;}
		if (i1 == 0) {k1 = 0;}
		else {k1 = 1;}
		
		for(int i2 = 0; i2 < n; ++i2)
		{
			if (i2 == n-1) {j2 = 0;}
			else {j2 = 1;}
			if (i2 == 0) {k2 = 0;}
			else {k2 = 1;}
		
			for(int i3 = 0; i3 < n; ++i3)
			{
				if (i3 == n-1) {j3 = 0;}
				else {j3 = 1;}
				if (i3 == 0) {k3 = 0;}
				else {k3 = 1;}
	    
				draw((i1,i2,i3)..(i1+j1,i2,i3),gray(0.9)+thick1,lit);
				draw((i1,i2,i3)..(i1,i2+j2,i3),gray(0.9)+thick1,lit);
				draw((i1,i2,i3)..(i1,i2,i3+j3),gray(0.9)+thick1,lit);
	    
				if((i1+i2+i3)%2 ==0)
				{
					draw(shift((i1,i2,i3))*Fe,rgb(0,0.8,0)+linewidth(4.0));
				}
			}
		}
	}
