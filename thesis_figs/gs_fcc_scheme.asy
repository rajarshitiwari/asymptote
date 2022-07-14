import settings;
import fontsize;
outformat="pdf";

size(16cm,16cm);

pair a1,a2;
pen pn1,pn2;
int num = 10;
real U1,U2,U3,Uc;

U1 = 4; U2 = 7; U3 = 15; Uc = 6;

pn2 = linewidth(10);

label("$U$=0",(0,1),fontsize(24));
a1=(0,0); a2=(U1,0);
pn1=rgb(0,1,0) + pn2;
draw(a1--a2,pn1);
label("$U_{c1}$",a2+(0,1),fontsize(24));

a1=(U1,0); a2=(Uc,0);
pn1=rgb(0,0.6,0.) + pn2;
draw(a1--a2,pn1);
label("$U_c$",a2-(0,1),fontsize(24));

a1=(Uc,0); a2=(U2,0);
pn1=rgb(0.6,0,0) + pn2;
draw(a1--a2,pn1);
label("$U_{c2}$",a2+(0,1),fontsize(24));

a1=(U2,0); a2=(U3,0);
pn1=rgb(1,0,0) + pn2;
draw(a1--a2,pn1);
label("$U\sim 30$",a2+(0,1),fontsize(24));

// a1=(U3,0); a2=(25,0);
// pn1=rgb(0,0,1) + pn2;
// draw(a1--a2,pn1);

//label("$U$",a2+(0,1),fontsize(24));


// for (int i=1;i<=num;++i)
//   {
//     pn1=rgb(0,i/num,0.)+linewidth(10*(num-i)/num);
//     draw(a1--a2,pn1);
//   }
