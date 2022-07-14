
// set default line width to 0.8bp
currentpen = linewidth(0.8);

// scale all other defaults of the feynman module appropriately
//fmdefaults();

// define vertex and external points
size(12cm,12cm);

real L = 50;

pair zl = (-0.75*L,0);
pair zr = (+0.75*L,0);

pair xu = zl + L*dir(+120);
pair xl = zl + L*dir(-120);

pair yu = zr + L*dir(+60);
pair yl = zr + L*dir(-60);


// draw propagators and vertices

draw(xu--zl);
draw(zl--xl);

draw(zl--zr);

draw(yu--zr);
draw(zr--yl);

dot(zl);
dot(zr);


// draw momentum arrows and momentum labels

draw(xl--zl, Relative(left));
label(Label("$k'$",2RightSide), xl--zl);

label(Label("$k$",2LeftSide), xu--zl);

draw(zl--zr, Relative(left));
label(Label("$q$",2RightSide), zl--zr);

draw(zr--yu, Relative(right));
label(Label("$p'$",2LeftSide), zr--yu);

label(Label("$p$",2RightSide), zr--yl);


// draw particle labels

label("$e^-$", xu, left);
label("$e^+$", xl, left);

label("$\mu^+$", yu, right);
label("$\mu^-$", yl, right);
