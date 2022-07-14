import grid3;

size(8cm,0,IgnoreAspect);
currentprojection=orthographic(1, 1, 1);
int n;
n=16;
limits((-n,-n,0), (0,n,n));

scale(Linear, Linear, Linear);
grid3(XZXgrid);
grid3(XYXgrid);
xaxis3(Label("$x$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
yaxis3(Label("$y$",position=EndPoint,align=S), Bounds(Min,Min), OutTicks());
zaxis3(Label("$z$",position=EndPoint,align=(0,0.5)+W), Bounds(Min,Min), OutTicks(beginlabel=false));
