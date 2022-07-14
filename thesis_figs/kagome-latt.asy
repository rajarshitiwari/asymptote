import settings;
outformat="pdf";

size(16cm,16cm);

int i1,i2,j1,j2,k1,k2,nn1,nn2;
pair x,a1,a2;
pen pn1,pn2,pn3;
nn1=5;
nn2=11;
real theta;
int numit;
numit=10;
theta = 2*pi/3;

a1 = (1,0);
a2 = (0,2*sin(theta));

pn1=red+linewidth(10);
pn2=gray(0.5)+linewidth(4);
pn3=rgb(0,0.7,0.3)+linewidth(3);
j1=1;
j2=1;
k1=1;
k2=1;
pair p1,p2,p3;
p1 = (0,0);
p2 = (cos(theta),sin(theta));

for (i1 = 0; i1 <= nn2; ++i1)
  {
    if (i1 == nn2){j1 = 0;}else{j1 = 1;}
    if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (i2 = 0; i2 <= nn1 ; ++i2)
      {
	if (i2 == nn1){j2 = 0;}else{j2 = 1;}
	if (i2 == 0){k2 = 0;}else{k2 = 1;}
	x=i1*a1+i2*a2;
	draw(x+p1..x+j1*a1,pn2);
	if (i1%2==0)
	  {
	    if (i2%2==0)
	      {
		draw(x+p1..x+p1+j1*p2,pn2);
		draw(x+p1..x+p1-k2*p2,pn2);
		draw(x+p2..x+p2+j1*(cos(theta/2),sin(theta/2)),pn2);
		draw(x+p2..x+p2-k1*(cos(theta/2),sin(theta/2)),pn2);
	      }
	  }
	else
	  {
	    if (i2%2==1){
	      draw(x+p1..x+p1+p2,pn2);
	      draw(x+p1..x+p1-j1*p2,pn2);
	      draw(x+p2..x+p2+j2*(cos(theta/2),sin(theta/2)),pn2);
	      draw(x+p2..x+p2-k1*(cos(theta/2),sin(theta/2)),pn2);
	    }
	  }
      }
  }


for (i1 = 0; i1 <= nn2; ++i1)
  {if (i1 == nn2){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= nn1 ; ++i2)
      {if (i2 == nn1){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	for (int i=1;i<=numit;++i)
	  {pn1=rgb(0,i/numit,0.)+linewidth(10*(numit-i)/numit);dot(x+p1-(i/1000.,0),pn1);}
	if (i1%2==0)
	  {
	    if (i2%2==0)
	      {
		for (int i=1;i<=numit;++i)
		  {pn1=rgb(0,0,i/numit)+linewidth(10*(numit-i)/numit);dot(x+p2-(i/1000.,0),pn1);}
	      }
	  }
	else
	  {
	    if (i2%2==1)
	      {
		for (int i=1;i<=numit;++i)
		  {pn1=rgb(0,0,i/numit)+linewidth(10*(numit-i)/numit);dot(x+p2-(i/1000.,0),pn1);}
	      }
	  }
      }
  }













































// for (int i=1;i<=numit;++i)
//   {
//     pn1=rgb(0,0,i/numit)+linewidth(20*(numit-i)/numit);
//     dot(x-(i/(20.*numit),0),pn1);

//   }
// for (int i=1;i<=numit;++i)
//   {
//     if (j1 != 0)
//       {
// 	pn1=rgb(0,i/numit,0)+linewidth(20*(numit-i)/numit);
// 	dot(x+0.5*a1-(i/(20.*numit),0),pn1);
//       }
//     if (j2 != 0)
//       {
// 	pn1=rgb(i/numit,0,0)+linewidth(20*(numit-i)/numit);
// 	dot(x+0.5*a2-(i/(20.*numit),0),pn1);
//       }
//   }
