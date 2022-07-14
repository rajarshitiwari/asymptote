import settings;
outformat='pdf';
size(16cm,16cm);

int num = 5000;
pair orig,pos,vec;
real scale,angle;
pen pn1 = linewidth(1);
angle = 120;//360/num;
orig = (0,0);
pos = orig;
vec = (1,0);
scale = 1;
for (int i = 0; i < num; ++i)
  {
    pos = pos + scale * vec;
    draw(orig--pos,pn1);
    pn1=pn1+rgb(1/num,0,0);
    orig = pos;
    scale = 1.001*scale;
    vec = rotate(angle)*vec;
  }
