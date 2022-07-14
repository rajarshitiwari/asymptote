import graph3;
import palette;
import contour3;
size(16cm);

real f(real x, real y, real z) {
  return cos(x)*sin(y)+cos(y)*sin(z)+cos(z)*sin(x);
}

surface sf=surface(contour3(f,(-2pi,-2pi,-2pi),(2pi,2pi,2pi),12));
sf.colors(palette(sf.map(abs),Gradient(red,green)));
draw(sf,nolight);
