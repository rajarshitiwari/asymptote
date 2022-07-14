import three;
import math;
import grid3;
import graph3;
import contour;
import tube;
import fontsize;
import settings;
outformat="pdf";

size(16cm,16cm);

surface Fe = scale3(0.1)*unitsphere;
surface Mo = scale3(0.01)*unitsphere;

int i1,i2,i3,j1,j2,j3,k1,k2,k3,num,num1,num2,num3,numit;
triple x,a1,a2,a3;
pen pn1,pn2,pn3;
num = 2;
num1 = num;
num2 = num;
num3 = num;
numit=10;
real theta;

a1=(1,0,0);
a2=(0,1,0);
a3=(0,0,1);

pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;

currentprojection=perspective(-num,num/2,num/2,center=true);
light lit=currentlight;

pen thick1=linewidth(1);
pen thick2=linewidth(3);

// draw the neighbours
for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;};if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;};if (i2 == 0){k2 = 0;}else{k2 = 1;}
	for (i3 = 0; i3 <= num3 ; ++i3)
	  {if (i3 == num3){j3 = 0;}else{j3 = 1;};if (i3 == 0){k3 = 0;}else{k3 = 1;}
	    x=i1*a1+i2*a2+i3*a3;
	    draw(x--x+j1*a1,gray(0.5)+thick1,lit);
	    draw(x--x+j2*a2,gray(0.5)+thick1,lit);
	    draw(x--x+j3*a3,gray(0.5)+thick1,lit);
	    if((i1+i2+i3)%4==1 || (i1+i2+i3)%4 == 2)	// blue neighbour
	      {
	    	draw(x--x+j1*j2*(a1+a2),blue+thick2,lit);
	    	//draw(x--x-k1*k2*(a1+a2),blue+thick2,lit);
	    	draw(x--x+j2*j3*(a2+a3),blue+thick2,lit);
	    	//draw(x--x-k2*k3*(a2+a3),blue+thick2,lit);
	    	draw(x--x+j3*j1*(a3+a1),blue+thick2,lit);
	    	//draw(x--x-k3*k1*(a3+a1),blue+thick2,lit);

		draw(x--x+j1*k2*(a1-a2),blue+thick2,lit);
	    	//draw(x--x-k1*j2*(a1-a2),blue+thick2,lit);
	    	draw(x--x+j2*k3*(a2-a3),blue+thick2,lit);
	    	//draw(x--x-k2*j3*(a2-a3),blue+thick2,lit);
	    	draw(x--x+j3*k1*(a3-a1),blue+thick2,lit);
	    	//draw(x--x-k3*j1*(a3-a1),blue+thick2,lit);
	      }
	    else		// green neighbour
	      {
		//draw(x--x+j1*j2*(a1+a2),green+thick2,lit);
	    	//draw(x--x-k1*k2*(a1+a2),green+thick2,lit);
	    	//draw(x--x+j2*j3*(a2+a3),green+thick2,lit);
	    	//draw(x--x-k2*k3*(a2+a3),green+thick2,lit);
	    	//draw(x--x+j3*j1*(a3+a1),green+thick2,lit);
	    	//draw(x--x-k3*k1*(a3+a1),green+thick2,lit);
		
		//draw(x--x+j1*k2*(a1-a2),green+thick2,lit);
	    	//draw(x--x-k1*j2*(a1-a2),green+thick2,lit);
	    	//draw(x--x+j2*k3*(a2-a3),green+thick2,lit);
	    	//draw(x--x-k2*j3*(a2-a3),green+thick2,lit);
	    	//draw(x--x+j3*k1*(a3-a1),green+thick2,lit);
	    	//draw(x--x-k3*j1*(a3-a1),green+thick2,lit);
	      }
	  }	
      }
  }


// draw the sites
for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
 	for (i3 = 0; i3 <= num3; ++i3)
 	  {if (i3 == num3){j3 = 0;}else{j3 = 1;}
 	    x=i1*a1+i2*a2+i3*a3;
  	    if((i1+i2+i3)%2==1)	// blue site
 	      {
 		draw(shift((i1,i2,i3))*Fe,blue+linewidth(4.0));
 	      }
	    else		// green site
 	      {
		draw(shift((i1,i2,i3))*Mo,green+linewidth(7.0));
	      }
	  }
      }
  }

