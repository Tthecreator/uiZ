/*
if uiz_cntn() then{
uiz_containend()
}
*/
//sdbm(surface)
if surface_exists(surface) then{
var w=surface_get_width(surface);
var h=surface_get_height(surface);
xc=width/w;
yc=height/h;
var p1=max(0,cntnx-rx);
var p2=max(0,cntny-ry);
var pex=max(rx,cntnx);
var pey=max(ry,cntny);
//sdbm(p1/xc,p2/yc,min(w,(cntnlx-p1)/xc),min(h,(cntnly-p2)/yc),"pos:",rx,ry,rlx,rly,width,height)
draw_surface_part_ext(surface,p1/xc,p2/yc,min(w,(min(rlx,cntnlx)-pex)/xc),min(h,(min(rly,cntnly-cntny)-pey)/yc),pex,pey,xc,yc,color,alpha)
}
/*
draw_set_color(c_black)
draw_rectangle(rx,ry,rlx,rly,1)
draw_set_color(c_white)
draw_rectangle(cntnx,cntny,cntnlx,cntnly,1)
*/

/* */
/*  */
