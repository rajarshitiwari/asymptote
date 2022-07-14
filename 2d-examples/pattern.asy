size(16cm,16cm);
import patterns;
import settings;
outformat='pdf';
add("tile",tile());
add("filledtilewithmargin",tile(6mm,4mm,red,Fill),(1mm,1mm),(1mm,1mm));
add("checker",checker());
add("brick",brick());

real s=4;
filldraw(unitsquare,pattern("filledtilewithmargin"));
//("filledtilewithmargin")
//("checker")
//("brick")
