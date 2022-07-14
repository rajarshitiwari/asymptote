void draw_label(pair x, real sz, pen col, string ss)
{
  pen pn;
  int n=10;
  for (int i=1;i<=n;++i)
    {
      pn=(i/n)^2*col+linewidth(sz*(n-i)/n);
      dot(x-(i/(20.*n),0),pn);
    }
  label(ss, x, white+fontsize(sz*2));
}

void draw_dot(pair x, real sz, pen col){
  pen pn;
  int n=30;
  for (int i=1;i<=n;++i){
    pn=(i/n)*col+linewidth(sz*(n-i)/n);
    dot(x-(i/(20.*n),0),pn);
  }
}

void draw_bond(path x, real sz, pen col){
  pen pn;
  int n=10;
  for (int i=1;i<=n;++i){
    pn=(i/n)*col+linewidth(sz*(n-i)/n);
    draw(x,pn);
  }
}
