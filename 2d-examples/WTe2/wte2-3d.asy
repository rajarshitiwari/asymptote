import three;
import settings;
outformat="pdf";


size(16cm,16cm);


surface ww = scale3(0.3)*unitsphere;
surface te = scale3(0.2)*unitsphere;

light lit=currentlight;

int i1,i2, i3, j1, j2, j3, num1, num2, num3;
triple x,a1,a2,a3;
pen pn1,pn2,pn3, pb;
num1 = 3; num2 = 6; num3 = 0;
real theta;


a1=(6.282, 0.   , 0.   );
a2=(0.   , 3.496, 0.   );
a3=(0.   , 0.   , 14.07);
pn1=red+linewidth(10);
pn2=green+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(1);
pb=gray(0.7)+linewidth(1);


currentprojection=orthographic(0,0,1);
//currentprojection=perspective(0,0,100);

j1=1;
j2=1;

triple w1, w2, te1, te2, te3, te4, te5, te6;
real x1,x2,x3,x4,yy,z1,z2,z3,z4,zw,shft = 0.2;
// x1 = a1.x*0.3;
// x2 = a1.x*0.1;
// x3 = a1.x*0.3;
// x4 = a1.x*0.4;
// yy = a2.y*0.5;

x1 = a1.x*0.25640;
x2 = a1.x*0.10030;
x3 = a1.x*0.24780;
x4 = a1.x*0.39360;
yy = a2.y*0.5;

z1 = a3.z*0.15510;
z2 = a3.z*0.09650;
z3 = a3.z*0.14000;
z4 = a3.z*0.11070;
zw = a3.z*0.01490;
w1 = (0,0,0);
w2 = (0.36*a1.x,0.5*a2.y,-zw);
te1 = ( x1,  0, -z1);
te2 = (-x4,  0,  z2);
te3 = ( x2, yy,  z3);
te4 = ( x2,-yy,  z3);
te5 = (-x3, yy, -z4);
te6 = (-x3,-yy, -z4);

triple shftv = a1.x*shft*(1,0,0);

for (i3 = 0; i3 <= num3; ++i3)
  {if (i3 == num3){j3 = 0;}else{j3 = 1;}

    // if (i3 > 0){
    //   w2 = xscale3(-1)*w2;
    //   te1 = xscale3(-1)*te1;
    //   te2 = xscale3(-1)*te2;
    //   te3 = xscale3(-1)*te3;
    //   te4 = xscale3(-1)*te4;
    //   te5 = xscale3(-1)*te5;
    //   te6 = xscale3(-1)*te6;
    // }
    
    for (i1 = 0; i1 <= num1; ++i1)
      {if (i1 == num1){j1 = 0;}else{j1 = 1;}
        for (i2 = 0; i2 <= num2 ; ++i2)
          {if (i2 == num2){j2 = 0;}else{j2 = 1;}
            x=i1*a1+i2*a2+i3*a3 + (-1)**(i3)*shftv;
	    
	    // bonds //

	    // W-Te bonds
	    draw(x+w1--x+w1+te1,pb, lit);
            draw(x+w1--x+w1+te2,pb, lit);
            draw(x+w1--x+w1+te3,pb, lit);
            draw(x+w1--x+w1+te4,pb, lit);
	    draw(x+w1--x+w1+te5,pb, lit);
	    draw(x+w1--x+w1+te6,pb, lit);
            
            draw(x+w2--x+w1+te1,pb, lit);
            draw(x+w2--x+w1+te3,pb, lit);
	    draw(x+w2--x+w1+te1+a2,pb, lit);
            draw(x+w2--x+w1+te5+a1,pb, lit);
            draw(x+w2--x+w1+te2+a1+a2,pb, lit);
            draw(x+w2--x+w1+te2+a1,pb, lit);
	    //

	    // W-W bonds
	    draw(x+w1--x+w2,pb,lit);
	    draw(x+w1--x+w2-a2,pb,lit);
	    if (j2==1){
	      draw(x+w1--x+w1+a2,pb,lit);
	      draw(x+w2--x+w2+a2,pb,lit);
	    }//

	     // Te-Te bonds
	    draw(x+w1+te1--x+w1+te1+a2,pb,lit);
	    draw(x+w1+te2--x+w1+te2+a2,pb,lit);
	    draw(x+w1+te3--x+w1+te4,pb,lit);
	    draw(x+w1+te5--x+w1+te6,pb,lit);
	    draw(x+w1+te2--x+w1+te5,pb,lit);
	    draw(x+w1+te2--x+w1+te6,pb,lit);
	    draw(x+w1+te2--x+w1+te3,pb,lit);
	    draw(x+w1+te2--x+w1+te4,pb,lit);
	    draw(x+w1+te1--x+w1+te5+a1,pb,lit);
	    draw(x+w1+te1--x+w1+te6+a1,pb,lit);
	    //




	    
	    // sites //
            
            draw(shift(x+w1)*ww,pn1, lit);
            draw(shift(x+w2)*ww,pn1, lit);
            
            draw(shift(x+w1+te1)*te, pn2, lit);
            draw(shift(x+w1+te2)*te, pn2, lit);
            draw(shift(x+w1+te3)*te, pn2, lit);
            //draw(shift(x+w1+te4, pn2, lit);
	    draw(shift(x+w1+te5)*te, pn2, lit);
            //draw(shift(x+w1+te6)*te, pn2, lit);
            
            
          }
      }
  }
