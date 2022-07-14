import geometry;
import fontsize;
import settings;

outformat="pdf";

size(18cm,24cm,IgnoreAspect);

real a;
int fnsz;
pair x,y,z,x0,y0;
pen pn1,pn2;

string vac,upp,dwn,updwn;

/**/
vac="$\circ$";
upp="$\uparrow$";
dwn="$\downarrow$";
updwn="$\uparrow\downarrow$";
/**/

/**/
vac="$\circ$";
upp="$\leftarrow$";
dwn="$\rightarrow$";
updwn="$\rightleftharpoons$";
/**/

a=1;
pn1=rgb(0,0,0)+linewidth(3);
pn2=rgb(0,0,0)+linewidth(1.5);
fnsz=20;
//starting state
//---------------------------------------------------------------------
x0=(0,0);
x=x0+(0,0);y=x0+(a,a);z=(x+y)/2;
draw(box(x,y),pn1);label(vac,z,fontsize(fnsz));
x=x0+(0,a);y=x0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn1);label(dwn,z,fontsize(fnsz));
x=x0+(0,2*a);y=x0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn1);label(upp,z,fontsize(fnsz));
x=x0+(0,3*a);y=x0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn1);label(upp,z,fontsize(fnsz));
//---------------------------------------------------------------------
draw(x0+(1.4*a,2*a)--x0+(3.8*a,2*a),pn1,Arrow(20,30,Fill));

//---------------------------------------------------------------------

x0=x0+(4*a,0);
// First //
x=x0+(0,0);y=x0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=x0+(0,a);y=x0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=x0+(0,2*a);y=x0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=x0+(0,3*a);y=x0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));

draw(x0+(0.5*a,4.1*a)--x0+(0.5*a,4.5*a)--x0+(-1.5*a,4.5*a)--x0+(-1.5,8.0*a)--x0+(-0.2*a,8*a),pn1,Arrow(20,30,Fill));

y0=x0+(0.0*a,6.0*a);

x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));



label("+",x0+(2*a,2*a),fontsize(fnsz));
x0=x0+(3*a,0);
// Second //
x=x0+(0,0);y=x0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=x0+(0,a);y=x0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=x0+(0,2*a);y=x0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=x0+(0,3*a);y=x0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));

draw(x0+(0.5*a,-0.1*a)--x0+(0.5*a,-0.5*a)--x0+(-4.5*a,-0.5*a)--x0+(-4.5*a,-4.0*a)--x0+(-3.2*a,-4*a),pn1,Arrow(20,30,Fill));

y0=x0+(-3.0*a,-6.0*a);

x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));


label("+",x0+(2*a,2*a),fontsize(fnsz));
x0=x0+(3*a,0);
// Third //
x=x0+(0,0);y=x0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=x0+(0,a);y=x0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=x0+(0,2*a);y=x0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=x0+(0,3*a);y=x0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));

//draw(x0+(0.5*a,-0.1*a)--x0+(0.5*a,-1*a)--x0+(-8*a,-1*a)--x0+(-8*a,-10*a)--x0+(-6.3*a,-10*a),pn1,Arrow(20,30,Fill));
draw(x0+(0.5*a,-0.1*a)--x0+(0.5*a,-1*a)--x0+(-8*a,-1*a)--x0+(-8*a,-10*a)--x0+(-6.2*a,-10*a),pn1,Arrow(20,30,Fill));


y0=x0+(-6.0*a,-12*a);

x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));






label("+",x0+(2*a,2*a),fontsize(fnsz));
x0=x0+(3*a,0);
// Fourth //
x=x0+(0,0);y=x0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=x0+(0,a);y=x0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=x0+(0,2*a);y=x0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=x0+(0,3*a);y=x0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));

draw(x0+(0.5*a,4.1*a)--x0+(0.5*a,4.5*a)--x0+(-1.5*a,4.5*a)--x0+(-1.5*a,10.5*a)--
     x0+(-11*a,10.5*a)--x0+(-11*a,14*a)--x0+(-9.2*a,14*a),pn1,Arrow(20,30,Fill));



y0=x0+(-9.0*a,12*a);

x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(dwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
label("+",y0+(1.5*a,2*a),fontsize(fnsz));

y0=y0+(2*a,0);
x=y0+(0,0);y=y0+(a,a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));
x=y0+(0,a);y=y0+(a,2*a);z=(x+y)/2;
draw(box(x,y),pn2);label(updwn,z,fontsize(fnsz));
x=y0+(0,2*a);y=y0+(a,3*a);z=(x+y)/2;
draw(box(x,y),pn2);label(upp,z,fontsize(fnsz));
x=y0+(0,3*a);y=y0+(a,4*a);z=(x+y)/2;
draw(box(x,y),pn2);label(vac,z,fontsize(fnsz));


//rotate(90);


















//draw(x0+(2*a,2*a)--x0+(3*a,2*a),pn1,Arrow(20,30,Fill));

//draw(box(x,y),pn2);label(upp,(x+y)/2,fontsize(fnsz));
//draw(z-(0,0.4)..z+(0,0.4),pn1,Arrow(20,30,Fill));
