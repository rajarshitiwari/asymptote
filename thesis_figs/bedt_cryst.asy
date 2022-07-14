import three;
import math;
import graph3;
import contour;
import tube;
import solids;
import fontsize;
import settings;
outformat='pdf';
size(16cm);
light lit=currentlight;
void bedt (pair orig)
{
  pair orig0;
  int num;
  pair orig,pos,vec;
  real scale,angle;
  pen pn1 = linewidth(2);
  orig0 = orig;
  pos = orig0;
  vec = (1,0);
  scale = 1;
  num = 6;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// first hexagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn1);
      if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      if (i==5){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle)*vec;
    }
  orig0 = orig + (0,sqrt(3)); 
  pos = orig0;
  draw(orig0+(0.1,0.1)--orig0+vec+(-0.1,0.1),pn1); // the double bond
  num = 5;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// second pentagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn1);
      if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      if (i==4){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle)*vec;
    }
  orig0 = orig + (0.5,sqrt(3)+0.5*Tan(angle));
  vec = (0,1);
  draw(orig0--orig0+vec,pn1);	// third line
  draw(orig0+(-0.1,0.1)--orig0+vec+(-0.1,-0.1),pn1); // the double bond
  orig0 = orig0 + vec;
  pos = orig0;
  num = 5;
  angle = 360/num;
  vec = rotate(-3*360/(4*num))*vec;
  for (int i = 0; i < num; ++i)
    {				// fourth pentagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn1);
      if (i==1){label("$\sf S$",orig0,E,fontsize(24));}
      if (i==4){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle)*vec;
    }
  orig0 = orig0 + (-0.5,0.5*Tan(angle));
  pos = orig0;
  vec = (1,0);
  draw(orig0+(0.1,-0.1)--orig0+vec+(-0.1,-0.1),pn1);
  num = 6;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// fifth hexagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn1);
      if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      if (i==5){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle)*vec;
    }
}

void bedt_3d (triple orig,pen pn_bedt)
{
  triple orig0,pos,vec;
  int num;
  real angle,scale;
  light lit=currentlight;
  orig0 = orig;
  pos = orig0;
  vec = (1,0,0);
  scale = 1;
  num = 6;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// first hexagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn_bedt,lit);
      //if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      //if (i==5){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle,(0,0,1))*vec;
    }
  orig0 = orig + (0,sqrt(3),0); 
  pos = orig0;
  draw(orig0+(0.1,0.1,0)--orig0+vec+(-0.1,0.1,0),pn_bedt,lit); // the double bond
  num = 5;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// second pentagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn_bedt,lit);
      //if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      //if (i==4){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle,(0,0,1))*vec;
    }
  orig0 = orig + (0.5,sqrt(3)+0.5*Tan(angle),0);
  vec = (0,1,0);
  draw(orig0--orig0+vec,pn_bedt,lit);	// third line
  draw(orig0+(-0.1,0.1,0)--orig0+vec+(-0.1,-0.1,0),pn_bedt,lit); // the double bond
  orig0 = orig0 + vec;
  pos = orig0;
  num = 5;
  angle = 360/num;
  vec = rotate(-3*360/(4*num),(0,0,1))*vec;
  for (int i = 0; i < num; ++i)
    {				// fourth pentagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn_bedt,lit);
      //if (i==1){label("$\sf S$",orig0,E,fontsize(24));}
      //if (i==4){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle,(0,0,1))*vec;
    }
  orig0 = orig0 + (-0.5,0.5*Tan(angle),0);
  pos = orig0;
  vec = (1,0,0);
  draw(orig0+(0.1,-0.1,0)--orig0+vec+(-0.1,-0.1,0),pn_bedt,lit);
  num = 6;
  angle = 360/num;
  for (int i = 0; i < num; ++i)
    {				// fifth hexagon
      pos = pos + scale * vec;
      draw(orig0--pos,pn_bedt,lit);
      //if (i==2){label("$\sf S$",orig0,E,fontsize(24));}
      //if (i==5){label("$\sf S$",orig0,W,fontsize(24));}
      orig0 = pos;
      vec = rotate(angle,(0,0,1))*vec;
    }
}

//bedt((0,0));
triple orig3;
pen pn1 = linewidth(3)+gray(0.5);

int num = 2;
int i1,i2;
real xsc=10,ysc=10;
currentprojection=orthographic(91,16,5,center=true);
for (i1 = 0; i1 <= num; ++i1)
  {
    for (i2 = 0; i2 <= num; ++i2)
      {
	orig3 = (0,xsc*i1,ysc*i2);
	bedt_3d(orig3,pn1);
	orig3 = orig3 + (0,0,0.5);
	bedt_3d(orig3,pn1);
      }
  }
  





