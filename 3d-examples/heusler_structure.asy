import three;
import math;
import grid3;
import graph3;
import contour;
import tube;

import settings;
outformat="pdf";

surface Mn = scale3(0.1)*unitsphere;
surface Fe = scale3(0.1)*unitsphere;
surface Ge = scale3(0.1)*unitsphere;

//background=rgb(0,0,0);
int n,n1,n2,n3,j1,j2,j3,k1,k2,k3;

size(16cm,0);
//draw(unitcube,opacity(0.1));

pen thick1=linewidth(1);
pen thick2=linewidth(3);

//triple A1=(2,0,0),A2=(1,1,0),A3=(0,1,1);

n=2;n1 = n;n2 = n; n3=n;

currentprojection=perspective(2,-10,2,center=true);
light lit=currentlight;
//light(gray(0.0),specularfactor=3,viewport=true,(1,2,1));
//currentlight=light(gray(0.5),specularfactor=3,viewport=false,(0.5,-0.5,-0.25),(0.5,0.5,0.25),(0.5,0.5,1),(-0.5,-0.5,-1));

path3 pth1,pth2,pth3;

triple x,x1,x2;

for (int i1 = 0; i1 <= n1; ++i1)
  { j1 = (i1==n1) ? 0 : 1; k1 = (i1==0) ? 0 : 1;
    for (int i2 = 0; i2 <= n2; ++i2)
      { j2 = (i2==n2) ? 0 : 1; k2 = (i2==0) ? 0 : 1;
        for (int i3 = 0; i3 <= n3; ++i3)
          { j3 = (i3==n3) ? 0 : 1; k3 = (i3==0) ? 0 : 1;
            x = (i1,i2,i3); //i1*A1 + i2*A2 + i3*A3;
            x1 = x; x2 = x + 0.5*(1,1,1);
            if ((i1+i2+i3)%2==1)
              {
                draw(shift(x)*Ge,red+linewidth(7.0));

		if (j1*j2*j3==1)
		  {
		    draw(shift(x+0.5*(1,1,1))*Fe,green+linewidth(4.0));
		  }

              } else
              {
                draw(shift(x)*Mn,blue+linewidth(4.0));

		if (j1*j2*j3==1)
		  {
		    draw(shift(x+0.5*(1,1,1))*Fe,black+linewidth(4.0));
		  }
	      }
	    
                // Fe-Mn hopping //
                pth1=x1..x1+j1*j2*j3*0.5*( 1, 1, 1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+j1*k2*k3*0.5*( 1,-1,-1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+k1*k2*j3*0.5*(-1,-1, 1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+k1*j2*k3*0.5*(-1, 1,-1);draw(pth1,gray(0.5)+thick2,lit);
                // //
                pth1=x1..x1+k1*k2*k3*0.5*(-1,-1,-1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+k1*j2*j3*0.5*(-1, 1, 1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+j1*j2*k3*0.5*( 1, 1,-1);draw(pth1,gray(0.5)+thick2,lit);
                pth1=x1..x1+j1*k2*j3*0.5*( 1,-1, 1);draw(pth1,gray(0.5)+thick2,lit);

            
            
            //pth3=(i1,i2,i3)..(i1,i2,i3+j3);
            
            //draw(pth3,gray(0.5)+thick2,lit);
          
            // simple cubic paths, Mn Ge hopping //
            pth1=(i1,i2,i3)..(i1+j1,i2,i3); draw(pth1,gray(0.5)+thick1,lit);
            pth2=(i1,i2,i3)..(i1,i2+j2,i3); draw(pth2,gray(0.5)+thick1,lit);
            pth3=(i1,i2,i3)..(i1,i2,i3+j3); draw(pth3,gray(0.5)+thick1,lit);
          }
      }
  }
bbox(rgb(0,0,0),Fill);
