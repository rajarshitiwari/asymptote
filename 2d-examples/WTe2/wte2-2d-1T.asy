import three;
import fontsize;
import roundedpath;
import settings;

outformat="pdf";

size(24cm);

int i1,i2,j1,j2,num1,num2;
pair x,a1,a2;
pen pn1,pn2,pn3;
num1 = 4; num2 = 6;
real theta;


void draw_gray(pair x, real sz)
{
  pen pn;
  int n=30;
  for (int i=1;i<=n;++i)
    {
      pn=gray((i/n)^2)+linewidth(sz*(n-i)/n);
      dot(x-(i/(20.*n),0),pn);
    }
}

void draw_gray_label(pair x, real sz, string ss)
{
  pen pn;
  int n=10;
  for (int i=1;i<=n;++i)
    {
      pn=gray((i/n)^2)+linewidth(sz*(n-i)/n);
      dot(x-(i/(20.*n),0),pn);
    }
  label(ss,x, white+fontsize(sz*2));
}

void draw_red(pair x, real sz)
{
  pen pn;
  int n=30;
  for (int i=1;i<=n;++i)
    {
      pn=rgb(i/n,0,0)+linewidth(sz*(n-i)/n);
      dot(x-(i/(20.*n),0),pn);
    }
}

void draw_green(pair x, real sz)
{
  pen pn;
  int n=10;
  for (int i=1;i<=n;++i)
    {
      pn=rgb(0.,i/n,0.)+linewidth(sz*(n-i)/n);
      dot(x-(i/(20.*n),0),pn);
    }
}

void draw_bond(path x, real sz)
{
  pen pn;
  int n=10;
  for (int i=1;i<=n;++i)
    {
      pn=gray(i/n)+linewidth(sz*(n-i)/n);
      draw(x,pn);
    }
}

a1=(6.282,0.);
a2=(0.,3.496);
pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=fontsize(15);
j1=1;
j2=1;


pair w1, w2, te1, te2, te3, te4, te5, te6;
real x1,x2,x3,x4,yy,yy,z1,z2;
// x1 = a1.x*0.3;
// x2 = a1.x*0.1;
// x3 = a1.x*0.3;
// x4 = a1.x*0.4;
// yy = a2.y*0.5;

x1 = a1.x*0.333333;
x2 = a1.x*0.166667;
x3 = a1.x*0.166667;
x4 = a1.x*0.333333;
yy = a2.y*0.5;

w1 = (0,0);
//w2 = (0.4*a1.x,0.5*a2.y);
w2 = (0.5*a1.x,0.5*a2.y);
te1 = ( x1,  0);
te2 = (-x4,  0);
te3 = ( x2, yy);
te4 = ( x2,-yy);
te5 = (-x3, yy);
te6 = (-x3,-yy);

real sx=0.12*a1.x,sy=0.21*a2.y;
path pth;

pair x0 = (0,0);


for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
        x=x0 + i1*a1+i2*a2;

	draw_bond(x+w1--x+w1+te1,3); // w1-te1
	draw_bond(x+w1--x+w1+te2,3); // w1-te2
	draw_bond(x+w1--x+w1+te3,3); // w1-te3
	draw_bond(x+w1--x+w1+te4,3); // w1-te4
	draw_bond(x+w1--x+w1+te5,3); // w1-te5
	draw_bond(x+w1--x+w1+te6,3); // w1-te6

	draw_bond(x+w2--x+w1+te1,3);
	draw_bond(x+w2--x+w1+te3,3);
	draw_bond(x+w2--x+w1+te1+a2,3);
	draw_bond(x+w2--x+w1+te5+a1,3);
	draw_bond(x+w2--x+w1+te2+a1+a2,3);
	draw_bond(x+w2--x+w1+te2+a1,3);

	// // W-W bonds
	// draw_bond(x+w1--x+w2,1.5);
	// draw_bond(x+w1--x+w2-a2,1.5);
	// if (j2==1){
	//   draw_bond(x+w1--x+w1+a2,1.5);
	//   draw_bond(x+w2--x+w2+a2,1.5);
	// }//

	// // Te-Te bonds
	// draw_bond(x+w1+te1--x+w1+te1+a2,1.5);
	// draw_bond(x+w1+te2--x+w1+te2+a2,1.5);
	// draw_bond(x+w1+te3--x+w1+te4,1.5);
	// draw_bond(x+w1+te5--x+w1+te6,1.5);
	// draw_bond(x+w1+te2--x+w1+te5,1.5);
	// draw_bond(x+w1+te2--x+w1+te6,1.5);
	// draw_bond(x+w1+te2--x+w1+te3,1.5);
	// draw_bond(x+w1+te2--x+w1+te4,1.5);
	// draw_bond(x+w1+te1--x+w1+te5+a1,1.5);
	// draw_bond(x+w1+te1--x+w1+te6+a1,1.5);
	
      }
  }


for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
        x=x0 + i1*a1+i2*a2;
	
	draw_gray(x+w1, 15);
        draw_gray(x+w2, 15);
	//
	label("\bf 1",x+w1,red+pn3);
	label("\bf 2",x+w2,red+pn3);

	draw_gray(x+w1+te1, 12);
	//draw_green(x+w1+te4, 6);
	draw_gray(x+w1+te5, 12);
	//draw_green(x+w1+te6, 4);
	
        label("\bf 1",x+w1+te1, green*0.6+pn3);
	label("\bf 4",x+w1+te5, green*0.6+pn3);

	pth=x+te2-(sx,sy)--x+te1+(sx,-sy)--x+w2+(sx,sy)--x+te5+(-sx,sy)--cycle;
	//filldraw(roundedpath(pth,0.3),yellow+opacity(1,blend="Screen"),gray(0.5));
	draw(roundedpath(pth,0.3),gray(0.5)+linewidth(2));

	draw_gray(x+w1+te2, 12);
        draw_gray(x+w1+te3, 12);
	label("\bf 2",x+w1+te2, green*0.8+pn3);
        label("\bf 3",x+w1+te3, green*0.8+pn3);
	

      }
  }

shipout("wte2-2d-1T-1.pdf");
erase(currentpicture);














x0 = (num1+2)*a1;


for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
        x=x0 + i1*a1+i2*a2;

	// W-W bonds
	// draw_bond(x+w1--x+w2,3);
	// draw_bond(x+w1--x+w2-a2,3);
	// if (j2==1){
	//   draw_bond(x+w1--x+w1+a2,3);
	//   draw_bond(x+w2--x+w2+a2,3);
	//   draw_bond(x+w2--x+w1+a1,3);
	//   draw_bond(x+w2--x+w1+a1+a2,3);
	// }//

	// Te-Te bonds
	// if all six were in a plane //
	// draw_bond(x+w1+te1--x+w1+te3,3); // te1-te3
	// draw_bond(x+w1+te3--x+w1+te5,3); // te3-te4
	// draw_bond(x+w1+te2--x+w1+te5,3); // te4-te2
	// draw_bond(x+w1+te1--x+w1+a1+te2,3); // te1-te2
	// draw_bond(x+w1+te3--x+w1+a2+te1,3); // te3-te1
	// draw_bond(x+w1+te5--x+w1+a2+te2,3); // te4-te2

	// three are above, three are below //
	// three below //
	draw_bond(x+w1+te1--x+w1+te5+a1,3); // te1-te4
	draw_bond(x+w1+te1--x+w1+te6+a1,3); // te1-te4
	draw_bond(x+w1+te1--x+w1+te1+a2,3); // te1-te1
	//
	draw_bond(x+w1+te5--x+w1+te1,3); // te4-te1
	draw_bond(x+w1+te5--x+w1+te1+a2,3); // te4-te1
	draw_bond(x+w1+te5--x+w1+te5+a2,3); // te4-te4
	// three above

	draw_bond(x+w1+te3--x+w1+te2+a1,4); // te3-te2
	draw_bond(x+w1+te3--x+w1+te2+a1+a2,4); // te3-te2
	draw_bond(x+w1+te3--x+w1+te3+a2,4); // te3-te3
	//
	draw_bond(x+w1+te2--x+w1+te3,4); // te2-te3
	draw_bond(x+w1+te2--x+w1+te3-a2,4); // te2-te3
	draw_bond(x+w1+te2--x+w1+te2+a2,4); // te2-te2

	
	
	
	
      }
  }


for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
        x=x0 + i1*a1+i2*a2;
	
	draw_gray(x+w1, 15);
        draw_gray(x+w2, 15);
	//
	label("\bf 1",x+w1,red+pn3);
	label("\bf 2",x+w2,red+pn3);

	draw_gray(x+w1+te1, 12);
	//draw_green(x+w1+te4, 6);
	draw_gray(x+w1+te5, 12);
	//draw_green(x+w1+te6, 4);
	
        label("\bf 1",x+w1+te1, green*0.6+pn3);
	label("\bf 4",x+w1+te5, green*0.6+pn3);

	pth=x+te2-(sx,sy)--x+te1+(sx,-sy)--x+w2+(sx,sy)--x+te5+(-sx,sy)--cycle;
	//filldraw(roundedpath(pth,0.3),yellow+opacity(0.3),gray(0.5));
	draw(roundedpath(pth,0.3),gray(0.5)+linewidth(3.0));

	draw_gray(x+w1+te2, 12);
        draw_gray(x+w1+te3, 12);
	label("\bf 2",x+w1+te2, green*0.8+pn3);
        label("\bf 3",x+w1+te3, green*0.8+pn3);
	

      }
  }

shipout("wte2-2d-1T-2.pdf");
