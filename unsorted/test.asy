import three;
import graph3;
unitsize(1cm);
size(18cm,18cm);
currentprojection=perspective(10,5,5);
triple A1=(0,0,0),A2=(1,1,0),A3=(1,0,1), A4=(0,1,1);
//path3[] sq=A4--A1--A2--A3--A4--A2^^A--A3;
draw(surface(A1--A2--A3--cycle),.5*blue+.5*white+opacity(.5));
draw(surface(A1--A3--A4--cycle),.5*yellow+.5*white+opacity(.5));
draw(surface(A1--A4--A2--cycle),.5*red+.5*white+opacity(.5));
draw(surface(A2--A3--A4--cycle),.5*green+.5*white+opacity(.5));

//draw(sq,blue+3bp);
//dot(sq);dot(O);
//label("$O$",O,E);label("$A4$",D,N);label("$A1$",A1,SE);label("$A2$",B,E);label("$A3$",A3,W+S);
//label(XY()*scale3(6)*"$D$",(A+B+A3)/3);
