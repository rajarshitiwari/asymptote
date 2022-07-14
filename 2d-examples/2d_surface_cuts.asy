import settings;
outformat="pdf";

size(48cm,16cm);

import "myfunctions.asy" as myfunctions;
// void draw_label(pair x, real sz, pen col, string ss)
// {
//   pen pn;
//   int n=10;
//   for (int i=1;i<=n;++i)
//     {
//       pn=(i/n)^2*col+linewidth(sz*(n-i)/n);
//       dot(x-(i/(20.*n),0),pn);
//     }
//   label(ss, x, white+fontsize(sz*2));
// }

// void draw_dot(pair x, real sz, pen col){
//   pen pn;
//   int n=30;
//   for (int i=1;i<=n;++i){
//     pn=(i/n)*col+linewidth(sz*(n-i)/n);
//     dot(x-(i/(20.*n),0),pn);
//   }
// }

// void draw_bond(path x, real sz, pen col){
//   pen pn;
//   int n=10;
//   for (int i=1;i<=n;++i){
//     pn=(i/n)*col+linewidth(sz*(n-i)/n);
//     draw(x,pn);
//   }
// }


int i1,i2,j1,j2, k1,k2,n;
pair x,a1,a2;
pen pn1,pn2,pn3;
n = 11;
real theta;

a1=(1.,0.);
a2=(0.,1.);
pn1=red+linewidth(3);
pn2=blue+linewidth(2);
pn3=rgb(0,0.7,0.3)+linewidth(3);


pn1 = red;
draw_dot((4,6), 15, pn1);
draw_dot((6,5), 15, pn1);
draw_dot((7.5,2.5), 15, pn1);
draw_dot((2.5,8.5), 15, pn1);


j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=i1*a1+i2*a2;
    //
    if (i1 + i2 <= n-2){
      if (i1 + i2 + 1> n-2)
	{k1 = 0; k2 = 0;}
      else
	{k1 = 1; k2 = 1;}
      //	    
      pn1=gray(1);
      draw_bond(x..x+k2*j2*a2, 3, pn1);
      draw_bond(x..x+k1*j1*a1, 3, pn1);
      
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}
label("\bf Plane (110)", (n/2, -1), fontsize(32));

j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=i1*a1+i2*a2;
    //
    if (i1 + i2 >= n+1){
      pn1=gray(1);
      draw_bond(x..x+j2*a2, 3, pn1);
      draw_bond(x..x+j1*a1, 3, pn1);
      //
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}



pair x0 = (n+0.5*n, 0);

pn1=red;
draw_dot(x0 + (3,6), 15, pn1);
draw_dot(x0 + (7,5), 15, pn1);
draw_dot(x0 + (0.5,6.5), 15, pn1);
draw_dot(x0 + (2,7), 15, pn1);
draw_dot(x0 + (8,4), 15,pn1);

j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=x0 + i1*a1+i2*a2;
    //
    if (i1 + 3*i2 <= 2*n-3){
      if (i1 + 3*i2 + 1> 2*n-3)
	{ k1 = 0;}
      else
	{k1 = 1;}
      if (i1 + 3*i2 + 3> 2*n-3)
	{k2 = 0;}
      else
	{k2 = 1;}
      //      
      pn1=gray(1);
      draw_bond(x..x+k2*j2*a2, 3, pn1);
      draw_bond(x..x+k1*j1*a1, 3, pn1);
      //
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}
label("\bf Plane (120)", x0 + (n/2, -1), fontsize(32));

j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=x0 + i1*a1+i2*a2;
    //
    if (i1 + 3*i2 >= 2*n+2){
      pn1=gray(1);
      draw_bond(x..x+j2*a2, 3, pn1);
      draw_bond(x..x+j1*a1, 3, pn1);
      //      
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}








pair x0 = (2*n+n, 0);
pn1=red;
draw_dot(x0 + (5,5), 15, pn1);
draw_dot(x0 + (8,5), 15, pn1);
draw_dot(x0 + (2.5,5), 15, pn1);

j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=x0 + i1*a1+i2*a2;
    //
    if (i2  <= n/2-1){
      if (i2 + 1> n/2-1)
	{ k2 = 0;}
      else
	{k2 = 1;}
      //
      pn1=gray(1);
      draw_bond(x..x+k2*j2*a2, 3, pn1);
      draw_bond(x..x+j1*a1, 3, pn1);
      //
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}

label("\bf Plane (010)", x0 + (n/2, -1), fontsize(32));

j1=1;
j2=1;
for (i1 = 0; i1 <= n; ++i1){
  if (i1 == n){j1 = 0;}else{j1 = 1;}
  for (i2 = 0; i2 <= n ; ++i2){
    if (i2 == n){j2 = 0;}else{j2 = 1;}
    x=x0 + i1*a1+i2*a2;
    //
    if (i2 >= n/2+1){
      pn1=gray(1);
      draw_bond(x..x+j2*a2, 3, pn1);
      draw_bond(x..x+j1*a1, 3, pn1);
      //
      pn1 = ( (i1+i2)%2==1 ) ? green : blue; // true : false //
      draw_dot(x, 15, pn1);
    }
  }
}

