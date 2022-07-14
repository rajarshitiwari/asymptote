import settings;
outformat="pdf";

size(8cm,8cm);
/*One can see this graphe drawed with my package HERE*/
import graph;
import patterns;
usepackage("mathrsfs");

unitsize(1.5cm,1cm);
real xmin=0,xmax=1.0;
real ymin=0,ymax=1.5;

// Definition of fonctions f and g :
real f(real x) {if (x>=0) return max(1-x^2,0); else return 0;}
real g(real x) {if (x>=0) return max(1.5-x^3-3.1*x^2,0); else return 0;}

path vline1=(0,1)--(0,1.5);
path vline2=(0.638,0)--(1,0);
path vline3=(0,1)--(0,0)--(0.638,0);
//add("hachure2",hatch(0.5mm));
add("checker",checker(0.5mm));
fill(buildcycle(vline1,graph(f,0,1),graph(g,0,0.638)),rgb(0.0,0.4,0.6));//NMI
fill(buildcycle(vline2,graph(f,0,1),graph(g,0,0.638)),rgb(0.0,0.6,0.4));//MM
fill(buildcycle(vline3,graph(f,0,1),graph(g,0,0.638)),rgb(0.8,0.2,0.2));//MI

// Trace the curves :
path Cf=graph(f,xmin,xmax,n=100);
path Cg=graph(g,xmin,xmax,n=100);
draw(Cf,linewidth(1)+rgb(0.6,0,0));
label("Gap closing $T_{cl}$",(0.4,1.73),rgb(0,0,0.6));
draw((0.33,1.63)--(0.23,1.35),rgb(0,0,0.6),Arrow);
draw(Cg,linewidth(1)+rgb(0,0,0.6));
label("Magnetic $T_{c}$",(1.17,0.8),rgb(0.6,0,0));
draw((1.1,0.7)--(0.8,0.4),rgb(0.6,0,0),Arrow);

xlimits(xmin,xmax+0.5,Crop);
ylimits(ymin,ymax+0.5,Crop);

labelx(Label("$O$",NoFill), 0, SW);
dot((0,0));
label("$MM$",(0.75,0.16),rgb(1,1,1));
label("$MI$",(0.25,0.4),rgb(1,1,1));
label("$NMI$",(0.15,1.15),rgb(1,1,1));
label("$NMM$",(0.9,1.3),rgb(0,0,0));

yaxis( "$T$",Left, fontsize(18),Arrow );
xaxis( "$t'$",Bottom, fontsize(18),Arrow );

