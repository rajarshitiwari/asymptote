import three;
import settings;
outformat="pdf";
size(26cm,16cm);
pen pn1,pn2,pn3,pn4;
pn1=red+linewidth(8);
pn2=gray(0.5)+linewidth(1);
pn3=red+linewidth(2);
pn4=black+linewidth(3);

int i1,i2,i3,i,j1,j2,j3,j;
int n,twon,num;
pair vec;
real scale,rnum,theta;

scale = 0.6;
n = 8 ; twon = 2 * n;
srand(270219);

for(i1 = 0; i1 < twon; ++i1)
  {if (i1 == twon-1){j1 = 0;}else{j1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {if (i2 == twon-1){j2 = 0;}else{j2 = 1;}
	rnum=unitrand();
	theta=rnum*2*pi;
	vec = (cos(theta),sin(theta));
	draw((i1,i2)..(i1+j1,i2),pn2);
	draw((i1,i2)..(i1,i2+j2),pn2);
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(i/10.,0.,0.)+linewidth(0.5*(10-i));
	    draw((i1,i2)-0.4*scale*vec..(i1,i2)+0.8*scale*vec,pn1,Arrow(10,40*(10-i)/10,Fill));
	  }
	for (int i=1;i<=10;++i)
	  {
	    pn1=rgb(0.,0.,i/10.)+linewidth(0.6*(10-i));
	    dot((i1,i2)-(i/1000.,0),pn1);
	  }
      }
  }
