import three;
import settings;
outformat="pdf";


size(16cm,16cm);


surface ww = scale3(0.3)*unitsphere;
surface te = scale3(0.2)*unitsphere;

light lit=currentlight;

int i1,i2, i3, j1, j2, j3, num1, num2, num3;
triple x,a1,a2,a3, c1, c2;
pen pn1,pn2,pn3, pb;
num1 = 6; num2 = 6; num3 = 0;
real theta, phi;

theta = 60;
a1 = (1.0,0,0);
a2 = (Cos(theta),Sin(theta),0);

//a1=(1.0, 0.0, 0.0);
//a2=(0.0, 1.0, 0.0);
a3=(0.0, 0.0, 4.0);


c1 = (Cos(theta),Sin(theta),0);
c2 = (c1.x,-c1.y, 0);


pn1=red+linewidth(10);
pn2=green+linewidth(8);
pn3=rgb(0,0.7,0.3)+linewidth(1);
pb=gray(0.7)+linewidth(1);


currentprojection=orthographic(0,0,1);
//currentprojection=perspective(0,0,100);

j1=1;
j2=1;

triple ww, te1, te2;
real x1,x2,shft = 0.2;
x1 = 0.5;//*0.5;
x2 = 0.5;//*0.5;

theta = 30; phi = 30;
//te1 = 0.5*a1.x*(Sin(theta)*Cos(phi), Sin(theta)*Sin(phi), Cos(theta));
te1 = (0.5*Cos(phi), 0.5*Sin(phi), Cos(theta));
te2 = -te1;

//theta = -45.0; phi = 45.0;
// te1 = rotate(theta,(0,0,1))*te1;
// te2 = rotate(theta,(0,0,1))*te2;
// te1 = rotate(phi,(0,1,0))*te1;
// te2 = rotate(phi,(0,1,0))*te2;

triple shftv = a1.x*shft*(1,0,0);

for (i3 = 0; i3 <= num3; ++i3)
  {if (i3 == num3){j3 = 0;}else{j3 = 1;}

    
    for (i1 = 0; i1 <= num1; ++i1)
      {if (i1 == num1){j1 = 0;}else{j1 = 1;}
        for (i2 = 0; i2 <= num2 ; ++i2)
          {if (i2 == num2){j2 = 0;}else{j2 = 1;}
            x=i1*a1+i2*a2+i3*a3 + (-1)**(i3)*shftv;

	    while (x.x > num1 - 1)
	      {x = x - num1*a1;}
	    
	    // bonds //

	    // W-Te bonds
	    draw(x--x+te1,pb, lit);
	    draw(x--x+te2,pb, lit);
	    draw(x+te1--x+a2,pb, lit);
	    draw(x+te2--x-a2,pb, lit);

	    // draw(x+w1--x+w1+te5,pb, lit);
	    // draw(x+w1--x+w1+te6,pb, lit);
            
            // draw(x+w2--x+w1+te1,pb, lit);
            // draw(x+w2--x+w1+te3,pb, lit);
	    // draw(x+w2--x+w1+te1+a2,pb, lit);
            // draw(x+w2--x+w1+te5+a1,pb, lit);
            // draw(x+w2--x+w1+te2+a1+a2,pb, lit);
            // draw(x+w2--x+w1+te2+a1,pb, lit);
	    //

	    // W-W bonds
	    draw(x--x+a1,pb,lit);
	    draw(x--x+a2,pb,lit);
	    draw(x--x-a1+a2,pb,lit);
	    
	    // draw(x+c1--x+c1+a2,pb,lit);
	    // draw(x+c1--x+a1,pb,lit);
	    // draw(x+c1--x+a2,pb,lit);
	    //

	    // Te-Te bonds
	    //draw(x+te1--x+te2+a1,pb,lit);
	    
	    // draw(x+w1+te2--x+w1+te2+a2,pb,lit);
	    // draw(x+w1+te3--x+w1+te4,pb,lit);
	    // draw(x+w1+te5--x+w1+te6,pb,lit);
	    // draw(x+w1+te2--x+w1+te5,pb,lit);
	    // draw(x+w1+te2--x+w1+te6,pb,lit);
	    // draw(x+w1+te2--x+w1+te3,pb,lit);
	    // draw(x+w1+te2--x+w1+te4,pb,lit);
	    // draw(x+w1+te1--x+w1+te5+a1,pb,lit);
	    // draw(x+w1+te1--x+w1+te6+a1,pb,lit);
	    //




	    
	    // sites //
            
            draw(shift(x)*ww,pn1, lit);
	    draw(shift(x+te1)*ww,pn2, lit);
	    draw(shift(x+te2)*ww,pn2, lit);
	    //draw(shift(x+c1+te1)*ww,pn2, lit);
	    //draw(shift(x+c1+te2)*ww,pn2, lit);
	    
            //draw(shift(x+w1+te1)*te, pn2, lit);
            //draw(shift(x+w1+te2)*te, pn2, lit);
            //draw(shift(x+w1+te3)*te, pn2, lit);
            //draw(shift(x+w1+te4, pn2, lit);
	    //draw(shift(x+w1+te5)*te, pn2, lit);
            //draw(shift(x+w1+te6)*te, pn2, lit);
            
            
          }
      }
  }
