import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";


int n,n1,n2,n3,j1,j2,j3,k1,k2,k3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(1);
pen thick2=linewidth(1);


n=8;n1 = n;n2 = n;

path pth1,pth2;

pair x,x1,x2;


for (int i1 = 0; i1 <= n1; ++i1)
  { j1 = (i1==n1) ? 0 : 1; k1 = (i1==0) ? 0 : 1;
    for (int i2 = 0; i2 <= n2; ++i2)
      { j2 = (i2==n2) ? 0 : 1; k2 = (i2==0) ? 0 : 1;
	x = (i1,i2); //i1*A1 + i2*A2;
	x1 = x; x2 = x + 0.5*(1,1);
		    
	// Fe-Mn hopping //
	pth1=x1..x1+j1*j2*0.5*( 1, 1);draw(pth1,gray(0.5)+thick2);
	pth1=x1..x1+j1*k2*0.5*( 1,-1);draw(pth1,gray(0.5)+thick2);
	pth1=x1..x1+k1*k2*0.5*(-1,-1);draw(pth1,gray(0.5)+thick2);
	pth1=x1..x1+k1*j2*0.5*(-1, 1);draw(pth1,gray(0.5)+thick2);
	// simple cubic paths, Mn Ge hopping //
	pth1=x1..x1+(j1,0); draw(pth1,gray(0.5)+thick1);
	pth2=x1..x1+(0,j2); draw(pth2,gray(0.5)+thick1);
	
	//pth1=x2..x2+(j1,0); draw(pth1,gray(0.5)+thick1);
	//pth2=x2..x2+(0,j2); draw(pth2,gray(0.5)+thick1);
	
      }
  }




for (int i1 = 0; i1 <= n1; ++i1)
  { j1 = (i1==n1) ? 0 : 1; k1 = (i1==0) ? 0 : 1;
    for (int i2 = 0; i2 <= n2; ++i2)
      { j2 = (i2==n2) ? 0 : 1; k2 = (i2==0) ? 0 : 1;
	x = (i1,i2); //i1*A1 + i2*A2;
	x1 = x; x2 = x + 0.5*(1,1);
	if ((i1+i2)%2==0)
	  {
	    dot(x,red+linewidth(7.0));
	    
	    dot(x+0.5*(1,1),green+linewidth(7.0));
	    
	  } else
	  {
	    dot(x,blue+linewidth(7.0));
	    
	    dot(x+0.5*(1,1),black+linewidth(7.0));
	  }
	
      }
  }


bbox(rgb(0,0,0),Fill);
