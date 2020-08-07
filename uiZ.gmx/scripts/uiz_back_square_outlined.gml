///uiz_back([n])
/*
Alike uiz_back_square, but this one has a single pixel black outline.
*/
draw_square(rx+bkmar,ry+bkmar,rlx-bkmar,rly-bkmar,bkcol,alpha)
draw_set_color(c_black)
draw_rectangle(rx+bkmar,ry+bkmar,rlx-bkmar-1,rly-bkmar-1,true)
