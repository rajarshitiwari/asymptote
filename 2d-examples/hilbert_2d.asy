

import settings;
outformat="pdf";

size(12cm,16cm);

int niter = 6, ndim = 2;

pair x0, x1;

//rotate/flip a quadrant appropriately
pair rot(int n, pair p, int rx, int ry) {
  if (ry == 0) {
    if (rx == 1) {
      p = (n-1 - p.x, n-1 - p.y);
    }
    //Swap x and y
    pair pp;
    pp = p;
    p = (pp.y, pp.x);
  }
  return p;
}

/*
//convert (x,y) to d
int xy2d (int n, int x, int y) {
  int rx, ry, s, d=0;
  for (s=n/2; s>0; s/=2) {
    rx = (x & s) > 0;
    ry = (y & s) > 0;
    d += s * s * ((3 * rx) ^ ry);
    rot(n, x, y, rx, ry);
  }
  return d;
}
*/


//convert d to (x,y)
pair d2xy(int n, int d, pair p) {
  int rx, ry, s, t=d;
  p = (0, 0);
  for (s=1; s<n; s*=2) {
    rx = AND(1 , (int)(t/2));
    ry = AND(1 , (int)(t ^ rx));
    p = rot(s, p, rx, ry);
    
    p += (s * rx, s * ry);
    t = (int) (t/4);
  }
  return p;
}

for (int i = 0; i < 2^niter; ++i)
  {
    x1 = d2xy(niter, d=i, p=x0);
    write(x1-x0);
    draw(x0--x1, red+linewidth(1.0));
    x0 = x1;
  }

