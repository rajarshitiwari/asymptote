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
int nd,nl;
pair orig,vec,ar,x1,x2,xp1,xp2;
real scale,psize,e1,e2,U1,U2;

orig = (2.0,0);
scale = 1;
psize = 14;
nl = 5 ; nd = 5;


e1=0;e2=e1;

//label("$\epsilon_1+\frac{U_1}{2}$",(0,e1));
//label("$\epsilon_2+\frac{U_2}{2}$",(0,e2));

ar = orig ;
for (int i=1;i<=100;++i)
  {			// red
    pn1=rgb(i/100.,0,0)+linewidth(psize*(100-i)/100.);
    dot(ar-(i/10000.,0),pn1);
  }
label("$\sf\bf QD$",orig+(0,1.2),fontsize(18));
label("$\overbrace{}_{}$",orig+(0,0.5),fontsize(18));

for(i1 = 1; i1 < nd; ++i1)
  {
    //if (i1 == twon-1){l1 = 0;}else{l1 = 1;}
    //if (i1 == 0){r1 = 0;}else{r1 = 1;}

    //ar = orig+(2*i1,e2);
    // lines
    //pn2=gray(0.5)+linewidth(3);
    //vec=(scale,0);x1=ar ;x2=ar + (scale,0); draw(x1--x2,pn2);

    ar = orig+(i1,0);
    // point
    //pn1=rgb(0.3,0.3,0.3)+linewidth(6); dot(ar,pn1);
    for (int i=1;i<=100;++i)
      {			// red
	pn1=rgb(0,i/100.,0)+linewidth(psize*(100-i)/100.);
	dot(ar-(i/10000.,0),pn1);
      }
    ar = orig-(i1,0);
    // point
    //pn1=rgb(0.3,0.3,0.3)+linewidth(6); dot(ar,pn1);
    for (int i=1;i<=100;++i)
      {			// red
	pn1=rgb(0,i/100.,0)+linewidth(psize*(100-i)/100.);
	dot(ar-(i/10000.,0),pn1);
      }
  }

label("$\underbrace{\quad\quad\quad\quad\quad}_{N_D}$",orig-(nd/2,0.8),fontsize(18));
label("$\underbrace{\quad\quad\quad\quad\quad}_{N_D}$",orig+(nd/2,-0.8),fontsize(18));

label("$\underbrace{\quad\quad\quad\quad\quad\quad\quad}_{N_L}$",orig-(nl/2+nd-0.5,0.8),fontsize(18));
label("$\underbrace{\quad\quad\quad\quad\quad\quad\quad}_{N_L}$",orig+(nl/2+nd-0.5,-0.8),fontsize(18));

for(i1 = 0; i1 < nl; ++i1)
  {
    ar = orig + (nd,0) + (i1,0);
    for (int i=1;i<=100;++i)
      {			// red
	pn1=gray(i/100.)+linewidth(psize*(100-i)/100.);
	dot(ar-(i/10000.,0),pn1);
      }
    ar = orig - (nd,0) - (i1,0);
    for (int i=1;i<=100;++i)
      {			// red
	pn1=gray(i/100.)+linewidth(psize*(100-i)/100.);
	dot(ar-(i/10000.,0),pn1);
      }
  }


x1 = (-nd-nl,0)-(-0.5,0);
x2 = x1+(1,0);
pn2=gray(0.)+linewidth(3); draw(x1--x2,pn2);


x1 = (-nd-nl+1,0);
x2 = x1+(0,1.5);
pn2=gray(0.)+linewidth(2); draw(x1--x2--x2+(0.5,0),pn2);
xp1 = x2+(0.5,0);
label("$\bf P_i$",xp1+(0.7,0.5),fontsize(24));

x1 = (-nd-nl,0)-(-0.75,0.3);
x2 = x1+(0.5,0);
pn2=gray(0.)+linewidth(3); draw(x1--x2,pn2);




x1 = x1 + (0.25,0);
x2 = x1 - (0,2);
pn2=gray(0.)+linewidth(2); draw(x1--x2,pn2);
label("$\bf V_{sd}$",x1+(1,-0.7),fontsize(18));

x1 = x2;
x2 = x1 + (2*nl+2*nd+2,0);
pn2=gray(0.)+linewidth(2); draw(x1--x2,pn2);

x1 = x2;
x2 = x1 + (0,4);
xp2 = x2-(0.5,0);
pn2=gray(0.)+linewidth(2); draw(x1--x2--xp2,pn2);
label("$\bf P_i$",xp2+(-0.7,0.3),fontsize(24));

//label("$\epsilon_1,U_1$",ar+(0,0.2),rgb(0,0.6,0));

