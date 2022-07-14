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

int i1,i2,i3;
int l1,l2;
int r1,r2;
int nd,nl,nc1,nc2,nc3;
pair orig,vec,ar,x1,x2,xp1,xp2;
real scale,psize,e1,e2,U1,U2;

orig = (2.0,0);
scale = 1;
psize = 14;
nl = 5 ; nd = 5; nc1 = 1; nc2 = 2; nc3 = 2;


e1=0;e2=e1;

// NL right
for(i3 = -nc3; i3 <= nc3; ++i3)
  {
    for(i2 = -nc2; i2 <= nc2; ++i2)
      { 
	for(i1 = 0; i1 <= nd; ++i1)
	  {
	    ar = orig + i3*(0.5,-0.5) + i2*(0,1) + i1*(1,0)+(nd+nc1+2.5,0);
	    for(int i=1;i<=100;++i)
	      {			// grey
		pn1=gray(i/100.)+linewidth(psize*(100-i)/100.);
		dot(ar-(i/10000.,0),pn1);

	      }
	  }
      }
  }

// ND right
for(i3 = -nc3; i3 <= nc3; ++i3)
  {
    for(i2 = -nc2; i2 <= nc2; ++i2)
      { 
	for(i1 = 0; i1 <= nd; ++i1)
	  {
	    ar = orig + i3*(0.5,-0.5) + i2*(0,1) + i1*(1,0)+(nc1+1.5,0);
	    for(int i=1;i<=100;++i)
	      {			// green
	     	pn1=rgb(0,i/100.,0)+linewidth(psize*(100-i)/100.);
		dot(ar-(i/10000.,0),pn1);
	      }
	  }
      }
  }


// NC
for(i3 = -nc3; i3 <= nc3; ++i3)
  {
    for(i2 = -nc2; i2 <= nc2; ++i2)
      { 
	for(i1 = -nc1; i1 <= nc1; ++i1)
	  {
	    ar = orig + i3*(0.5,-0.5) + i2*(0,1) + i1*(1,0);
	    for(int i=1;i<=100;++i)
	      {			// red
		pn1=rgb(i/100.,0,0)+linewidth(psize*(100-i)/100.);
		dot(ar-(i/10000.,0),pn1);
	      }
	  }
      }
  }

// ND left
for(i3 = -nc3; i3 <= nc3; ++i3)
  {
    for(i2 = -nc2; i2 <= nc2; ++i2)
      { 
	for(i1 = 0; i1 <= nd; ++i1)
	  {
	    ar = orig + i3*(0.5,-0.5) + i2*(0,1) - i1*(1,0)-(nc1+1.5,0);
	    for(int i=1;i<=100;++i)
	      {			// green
	     	pn1=rgb(0,i/100.,0)+linewidth(psize*(100-i)/100.);
		dot(ar-(i/10000.,0),pn1);
	      }
	  }
      }
  }

// NL left 
for(i3 = -nc3; i3 <= nc3; ++i3)
  {
    for(i2 = -nc2; i2 <= nc2; ++i2)
      { 
	for(i1 = 0; i1 <= nd; ++i1)
	  {
	    ar = orig + i3*(0.5,-0.5) + i2*(0,1) - i1*(1,0)-(nd+nc1+2.5,0);
	    for(int i=1;i<=100;++i)
	      {			// grey
		pn1=gray(i/100.)+linewidth(psize*(100-i)/100.);
		dot(ar-(i/10000.,0),pn1);
	      }
	  }
      }
  }



label("$\sf\bf QD$",orig+(-nc3/2,nc2+nc3/2+1.5),fontsize(18));
label("$\overbrace{\qquad\qquad}_{}$",orig+(-nc3/2,nc2+nc3/2+0.5),fontsize(18));

label("$\underbrace{\quad\quad\quad\quad\quad\quad}_{N_D}$",orig+(-nd/2-nc3+0.5,-nc2-nc3/2 - 1),fontsize(18));
label("$\underbrace{\quad\quad\quad\quad\quad\quad}_{N_D}$",orig+(nd+nc3/2-0.3,-nc2-nc3/2 - 1),fontsize(18));

label("$\underbrace{\quad\quad\quad\quad\quad\quad}_{N_L}$",orig+(-nl/2-nd-nc3*1.5,-nc2-nc3/2 - 1),fontsize(18));
label("$\underbrace{\quad\quad\quad\quad\quad\quad}_{N_L}$",orig+(nl/2+nd+nc3*2+0.5,-nc2-nc3/2 - 1),fontsize(18));


x1 = (-nd-nl-nc3-2,0)-(-0.5,0) -(0,2);
x2 = x1+(1,0);
pn2=gray(0.)+linewidth(3)+brown; draw(x1--x2,pn2);

x1 = (-nd-nl+1-nc3-2,0)-(0,2);
x2 = x1+(0,1.5);
pn2=gray(0.)+linewidth(2)+brown; draw(x1--x2--x2+(1,0),pn2);
xp1 = x2+(0.5,0);
//label("$\bf P_i$",xp1+(0.7,0.5),fontsize(24)+brown);

x1 = (-nd-nl-nc3-2,0)-(-0.75,0.3)-(0,2);
x2 = x1+(0.5,0);
pn2=gray(0.)+linewidth(3)+brown; draw(x1--x2,pn2);

x1 = x1 + (0.25,0);
x2 = x1 - (0,2+nc2);
pn2=gray(0.)+linewidth(2)+brown; draw(x1--x2,pn2);
label("$\bf V_{sd}$",x1+(-1.1,-0.7),fontsize(18)+brown);

x1 = x2;
x2 = x1 + (2*nl+2*nd+2*nc3+3*nc2+1,0);
pn2=gray(0.)+linewidth(2)+brown; draw(x1--x2,pn2);

xp2 = 0.5*(x1+x2);
draw(xp2--xp2+(0,3),pn2);
label("$\bf V_g$",xp2+(1,1.5),fontsize(18)+brown);

x1 = x2;
x2 = x1 + (0,4+2*nc1);
xp2 = x2-(1,0);
pn2=gray(0.)+linewidth(2)+brown; draw(x1--x2--xp2,pn2);
//label("$\bf P_i$",xp2+(-0.7,0.3),fontsize(24)+brown);


//label("connected \\to probe",xp1+(4,0.5+nc2+nc3),fontsize(18)+brown);
