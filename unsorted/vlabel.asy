import graph;
import patterns;
usepackage("mathrsfs");

unitsize(2cm,1.5cm);
real xmin=-1,xmax=5;
real ymin=-1,ymax=5;

// Definition of fonctions f and g :
real f1(real x)
{
  if (x <= 0)
    {return exp(-x^2/0.10);}else{return 0;}
}
real f2(real x)
{
  if (x <= 0)
    {return -exp(-x^2/0.10);}else{return 0;}
}
real f3(real x)
{
  if (x >= 0.5)
    {return exp(-(x-0.5)^2/0.10);}else{return 0;}
}
real f4(real x)
{
  if (x >= 0.5)
    {return -exp(-(x-0.5)^2/0.10);}else{return 0;}
}


// Trace the curves :
path p1=graph(f1,xmin,xmax,n=400);
path p2=graph(f2,xmin,xmax,n=400);
path p3=graph(f3,xmin,xmax,n=400);
path p4=graph(f4,xmin,xmax,n=400);
//p1=p1*rotate(90);
draw(p1,linewidth(1bp));
draw(p2,linewidth(1bp));
draw(p3,linewidth(1bp));
draw(p4,linewidth(1bp));
xlimits(xmin,xmax,Crop);
ylimits(ymin,ymax,Crop);

fill(p1--cycle,rgb(1,0,0));
fill(p2--cycle,rgb(0,0,1));
fill(p3--cycle,rgb(1,0,0));
fill(p4--cycle,rgb(0,0,1));


//graph(f1,1,4);
//graph(f2,1,4);
//dot((0,0));
// The axis.
//xequals(Label("$y$",align=W),0,ymin=ymin-0.25, ymax=ymax+0.25,Ticks(NoZero,pTick=nullpen, ptick=grey),p=linewidth(1pt), Arrow(2mm));
//yequals(Label("$x$",align=S),0,xmin=xmin-0.25, xmax=xmax+0.25,Ticks(NoZero,pTick=nullpen, ptick=grey),p=linewidth(1pt), Arrow(2mm));

//labelx(Label("$O$",NoFill), 0, SW);
//draw(Label("$\vec{\imath}$",align=S,UnFill),(0,0)--(1,0),scale(2)*currentpen,Arrow);
//draw(Label("$\vec{\jmath}$",align=W,UnFill),(0,0)--(0,1),scale(2)*currentpen,Arrow);
