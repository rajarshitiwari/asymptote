import graph;
import palette;
import settings;

size(16cm,16cm);

int n=256;
real ninv=2pi/n,x,y;
real sig=0.01;
real[][] v=new real[2*n][2*n];


for(int i=-n; i < n; ++i)
  for(int j=-n; j < n; ++j)
    {
      //v[i][j]=sin(i*ninv)*cos(j*ninv);
      x=i/n;y=j/n;
      v[i+n][j+n]=2*exp(-(x^2+y^2)/sig);
    }

//pen[] Palette=BWRainbow();
//pen[] Palette=Gradient(256,rgb(0,0,0.5),rgb(0,0.5,0),yellow,orange,rgb(1,0,0));
pen[] Palette=Grayscale();
picture bar;

bounds range=image(v,(0,0),(2,2),Palette);

//ScaleZ(bar,0.1);

//palette(bar,"$S({\bf q})$",range,(0,0),(1cm,12cm),Right,Palette,PaletteTicks("$%#.1f$"));
//add(bar.fit(),point(E),30E);
