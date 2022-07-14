import three;
import solids;
import settings;
outformat="pdf";

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
pair orig,vec,ar,x1,x2;
real scale,e1,e2,U1,U2;

orig = (2.0,0);
scale = 0.7;
n = 2 ; twon = 2 * n;


e1=0;e2=3;

label("$\epsilon_1+\frac{U_1}{2}$",(0,e1));
label("$\epsilon_2+\frac{U_2}{2}$",(0,e2));

for(i1 = 0; i1 < twon; ++i1)
  {
    if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    if (i1 == 0){r1 = 0;}else{r1 = 1;}
    if (i2 == 0){r2 = 0;}else{r2 = 1;}

    ar = orig+2*(i1,e1);
    // lines
    pn1=blue+linewidth(1);
    pn2=red+linewidth(1);
    vec=(scale,-0.1);x1=ar + (-scale,-0.1);x2=ar + (scale,-0.1); draw(x1--x2,pn1);
    vec=(scale,0.1);x1=ar + (-scale,0.1);x2=ar + (scale,0.1); draw(x1--x2,pn2);
    // point
    pn1=rgb(0.3,0.3,0.3)+linewidth(6); dot(ar,pn1);

    ar = orig+(2*i1+1,e2);
    // lines
    pn1=blue+linewidth(1);
    pn2=red+linewidth(1);
    vec=(scale,-0.1);x1=ar + (-scale,-0.1);x2=ar + (scale,-0.1); draw(x1--x2,pn1);
    vec=(scale,0.1);x1=ar + (-scale,0.1);x2=ar + (scale,0.1); draw(x1--x2,pn2);
    
    // point
    pn1=rgb(0.,1,0.)+linewidth(5);
    dot(ar,pn1);

    
  }




// for (int i=1;i<=100;++i)
//   {			// lines
//     pn2=rgb(0,0,i/100.)+linewidth(3*(100-i)/100.);
//     vec=(1,0);draw(ar..ar+vec,pn2);
//     vec=-(1,0);draw(ar..ar+vec,pn2);
//   }

// for (int i=1;i<=100;++i)
//   {			// red
//     pn1=rgb(i/100.,0.,0.)+linewidth(6*(100-i)/100.);
//     x=ar;dot(x-(i/2000.,0),pn1);
//   }
