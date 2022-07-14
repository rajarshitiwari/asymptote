import three;
import solids;
import settings;
outformat="png";

size(16cm);

pen pn1,pn2,pn3,pn4;
pn1=blue+linewidth(10);
pn2=blue+linewidth(2);
pn3=green+linewidth(4);
pn4=green+linewidth(1.5);

int i1,i2;
int l1,l2;
int r1,r2;
int n,twon;
pair vec,ar,x;
real scale,theta;

scale = 1.0;
n = 12; twon = 2 * n;
int[] lat;
int niter=30;
int ir;
for (ir = 0; ir < twon*twon; ++ir)
  {lat.push((int)(2*unitrand()));}

for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    for(i2 = 0; i2 < twon; ++i2)
      {
	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
	if (i2 == 0){r2 = 0;}else{r2 = 1;}
	ar = (i1,i2);
	//ir = (int)(2*unitrand());
	ir = twon * i1 + i2;
	if (lat[ir] == 0)
	  {
	    pn1=gray(0.7)+linewidth(0.);
	    x=ar;filldraw(shift(x)*scale(0.8)*unitsquare,pn1);
	  }
	else
	  {
	    pn3=rgb(0.5,0.7,0.3)+linewidth(0.);
	    x=ar;filldraw(shift(x)*scale(0.8)*unitsquare,pn3);
	  }
      }
  }



// for(i1 = 0; i1 < twon; ++i1)
//   {
//     if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
//     if (i1 == 0){r1 = 0;}else{r1 = 1;}
//     for(i2 = 0; i2 < twon; ++i2)
//       {
// 	if (i2 == twon-1){l2 = 0;}else{l2 = 1;}
// 	if (i2 == 0){r2 = 0;}else{r2 = 1;}
// 	ar = (i1,i2);
// 	ir = (int)(2*unitrand());
// 	if (ir == 0)
// 	  {
// 	    for (int i=1;i<=niter;++i)
// 	      {			// red
// 		pn1=gray(i/niter)+linewidth(1*(niter-i)/niter);
// 		x=ar;draw(shift(x-(i/(20*niter),0))*unitsquare,pn1);
// 		pn1=gray(i/niter)+linewidth(5*(niter-i)/niter);
// 		x=ar;dot(x-(i/(20*niter),0),pn1);
// 	      }
// 	  }
// 	else
// 	  {
// 	    for (int i=1;i<=niter;++i)
// 	      {			// green
// 		//pn3=rgb(0.,i/niter,0.)+linewidth(2*(niter-i)/niter);
// 		//x=ar;draw(shift(x-(i/(20*niter),0))*unitsquare,pn3);
// 		pn3=rgb(0.,i/niter,0.)+linewidth(6*(niter-i)/niter);
// 		x=ar;dot(x-(i/(20*niter),0),pn3);
// 	      }
// 	  }
//       }
//   }
