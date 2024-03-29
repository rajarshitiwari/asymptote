import settings;
outformat="pdf";

size(16cm, 16cm);

int i1, i2, j1, j2, k1, k2, num, num1, num2, numit;
pair x, a1, a2;
pair c1=(0, 0), c2=(0.5, 0), c3=(0, 0.5);
pen pn1, pn2, pn3;
num = 4;
num1 = num;
num2 = num;
numit=10;
real theta;

a1=(1., 0.);
a2=(0., 1.);
pn1=red+linewidth(10);
pn2=blue+linewidth(8);
pn3=rgb(0, 0.7, 0.3)+linewidth(3);
j1=1;
j2=1;

// draw the neighbours
for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;};if (i1 == 0){k1 = 0;}else{k1 = 1;}
    for (i2 = 0; i2 <= num2 ; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;};if (i2 == 0){k2 = 0;}else{k2 = 1;}
	x=i1*a1+i2*a2;
	for (int i=1;i<=numit;++i)
	  {
	    pn1=gray(i/numit)+linewidth(7*(numit-i)/numit);
	    draw(x..x+j2*a2, pn1);
	    draw(x..x+j1*a1, pn1);
	  }
	// next neighbours
	if (j1 * j2 == 1)
	  for (int i=1;i<=numit;++i)
	    {
	      pn1=gray(i/numit)+linewidth(3*(numit-i)/numit);
	      draw(x+c2..x+c3, pn1);
	      draw(x+c2..x+c3+a1, pn1);
	      draw(x+c3..x+c2+a2, pn1);
	    }
	if ( k1 * j2 == 1)
	  for (int i=1;i<=numit;++i)
	    {
	      pn1=gray(i/numit)+linewidth(3*(numit-i)/numit);
	      draw(x+c3..x+c2-a1+a2, pn1);
	    }
      }	
  }

// draw the sites
for (i1 = 0; i1 <= num1; ++i1)
  {if (i1 == num1){j1 = 0;}else{j1 = 1;}
    for (i2 = 0; i2 <= num2; ++i2)
      {if (i2 == num2){j2 = 0;}else{j2 = 1;}
	x=i1*a1+i2*a2;
	
	// red site
	for (int i=1;i<=numit;++i)
	  {
	    pn1=rgb(i/numit, 0., 0.)+linewidth((24-(num1+num2)/2)*(numit-i)/numit);
	    dot(x+c1-(i/2000., 0), pn1);
	  }
	// green site
	if (j1 == 1)
	  for (int i=1;i<=numit;++i)
	    {
	      pn1=rgb(0., 0., i/numit)+linewidth((21-(num1+num2)/2)*(numit-i)/numit);
	      dot(x+c2-(i/2000., 0), pn1);
	    }
	
	// blue site
	if (j2 == 1)
	  for (int i=1;i<=numit;++i)
	    {
	      pn1=rgb(0., i/numit, 0.)+linewidth((21-(num1+num2)/2)*(numit-i)/numit);
	      dot(x+c3-(i/2000., 0), pn1);
	    }
      }
  }


