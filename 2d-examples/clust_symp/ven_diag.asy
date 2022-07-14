size(6cm,6cm);
import settings;
outformat='pdf';

/* This code comes from The Official Asymptote Gallery */
    
usepackage("ocg");
settings.tex="pdflatex";

//size(0,150);

pen colour1=red;
pen colour2=green;
pen colour3=blue;

pair z0=(0,0);
pair z1=(-1,0);
pair z2=(1,0);
pair z3=(0,sqrt(3));
real r=1.5;
path c1=circle(z1,r);
path c2=circle(z2,r);
path c3=circle(z3,r);

//begin("A");

//end();
fill(c1,colour1);
fill(c2,colour2);
fill(c3,colour3);

picture intersection;
fill(intersection,c1,colour1+colour2+colour3);
fill(intersection,c1,colour1+colour2);
fill(intersection,c2,colour2+colour3);
fill(intersection,c3,colour3+colour1);
clip(intersection,c2);

add(intersection);

draw(c1);
draw(c2);
draw(c3);
label("$A$",z1);

begin("B");
label("$B$",z2);
end();

pair z=(0,-2);
real m=3;
margin BigMargin=Margin(0,m*dot(unit(z1-z),unit(z0-z)));

draw(Label("$A\cap B$",0),conj(z)--z0,Arrow,BigMargin);
draw(Label("$A\cup B$",0),z--z0,Arrow,BigMargin);
draw(z--z1,Arrow,Margin(0,m));
draw(z--z2,Arrow,Margin(0,m));

