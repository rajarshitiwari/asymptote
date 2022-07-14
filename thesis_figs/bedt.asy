import fontsize;
import settings;
outformat='pdf';
size(16cm);

int num;
pair orig,pos,vec;
real scale,angle;
pen pn1 = linewidth(2);

label("\sf BEDT-TTF",(-0.6,-0.5),E,fontsize(24));

orig = (0,0);
pos = orig;
vec = (1,0);
scale = 1;
num = 6;
angle = 360/num;
for (int i = 0; i < num; ++i)
  {				// first hexagon
    pos = pos + scale * vec;
    draw(orig--pos,pn1);
    if (i==2){label("$\sf S$",orig,E,fontsize(24));}
    if (i==5){label("$\sf S$",orig,W,fontsize(24));}
    orig = pos;
    vec = rotate(angle)*vec;
  }

orig = (0,sqrt(3)); 
pos = orig;
draw(orig+(0.1,0.1)--orig+vec+(-0.1,0.1),pn1); // the double bond
num = 5;
angle = 360/num;
for (int i = 0; i < num; ++i)
  {				// second pentagon
    pos = pos + scale * vec;
    draw(orig--pos,pn1);
    if (i==2){label("$\sf S$",orig,E,fontsize(24));}
    if (i==4){label("$\sf S$",orig,W,fontsize(24));}
    orig = pos;
    vec = rotate(angle)*vec;
  }

orig = (0.5,sqrt(3)+0.5*Tan(angle));
vec = (0,1);
draw(orig--orig+vec,pn1);	// third line
draw(orig+(-0.1,0.1)--orig+vec+(-0.1,-0.1),pn1); // the double bond

orig = orig + vec;
pos = orig;
num = 5;
angle = 360/num;
vec = rotate(-3*360/(4*num))*vec;
for (int i = 0; i < num; ++i)
  {				// fourth pentagon
    pos = pos + scale * vec;
    draw(orig--pos,pn1);
    if (i==1){label("$\sf S$",orig,E,fontsize(24));}
    if (i==4){label("$\sf S$",orig,W,fontsize(24));}
    orig = pos;
    vec = rotate(angle)*vec;
  }

orig = orig + (-0.5,0.5*Tan(angle));
pos = orig;
vec = (1,0);
draw(orig+(0.1,-0.1)--orig+vec+(-0.1,-0.1),pn1);
num = 6;
angle = 360/num;
for (int i = 0; i < num; ++i)
  {				// fifth hexagon
    pos = pos + scale * vec;
    draw(orig--pos,pn1);
    if (i==2){label("$\sf S$",orig,E,fontsize(24));}
    if (i==5){label("$\sf S$",orig,W,fontsize(24));}
    orig = pos;
    vec = rotate(angle)*vec;
  }
