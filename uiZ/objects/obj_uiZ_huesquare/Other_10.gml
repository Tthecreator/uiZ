//sdbm("drawing again!",irandom(9))
if uiz_cntn() then{
//sdbm("HSV:",h,s,v)
//draw_square(rx,ry,rlx,rly,irandom(c_white),1);
draw_hueSquare(rx,ry,width,height,v/255);
//sdbm("udpating s;hti",irandom(9))

updated=0;

var uh=rx+inh/255*width
var us=rly-ins/255*height

draw_square(uh-squaresize,us-squaresize,uh+squaresize,us+squaresize,icolor,1)

uiz_containend()
}




