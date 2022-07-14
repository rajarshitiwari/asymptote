
#plot [-1.5:1.5][0:2] x**2 w l lw 2,x**2 w filledc y1=1

V(x)=x**2-x

f(x,y) = exp(-V(x)/y)/sqrt(y)

plot V(x) w l lw 2,f(x,.1) w l lw 2,f(x,.5) w l lw 2