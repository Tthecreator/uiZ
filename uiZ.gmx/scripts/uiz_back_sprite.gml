///uiz_back([n])
/*
Just draws a sprite, but sprite_texturemode still has effect on this background.


*/
if sprite_exists(bkspr) then{
var nwidth=floor(width-bkmar*2);
var nheight=floor(height-bkmar*2);
var nrx=floor(rx+bkmar);
var nry=floor(ry+bkmar);
var nrlx=floor(rlx-bkmar);
var nrly=floor(rly-bkmar);
var nsw=sprite_get_width(bkspr)
var nsh=sprite_get_height(bkspr)
var tex=sprite_get_texture(bkspr,0)
switch(sprite_texturemode){
case uiz_texturemode_fill:
//sdbm("drawing with color",bkcol);
//draw_set_color(bkcol)
//draw_set_alpha(alpha)
//draw_sprite_points(bkspr,0,nrx,nry,nrlx,nrly,0,bkcol,alpha)
//draw_sprite_points(bkspr,0,nrx,nry,nrlx,nrly)
draw_sprite_stretched_ext(bkspr,0,nrx,nry,nrlx-nrx,nrly-nry,bkcol,alpha);
break;
case uiz_texturemode_tile:
var szx=nwidth/nsw
var szy=nheight/nsh
uiz_draw_sprite_tiles(bkspr,0,nrx,nry,nrlx,nrly,szx,szy,bkcol,alpha,0,0)
break;
case uiz_texturemode_tilefit:
var szx=floor(nwidth/nsw);
var szy=floor(nheight/nsh);
uiz_draw_sprite_tiles(bkspr,0,nrx,nry,nrlx,nrly,szx,szy,bkcol,alpha,0,0)
break;
default:
szx=1
szy=1
break;
}
/*
if nwidth>0 or nheight>0 then{
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(nrx,nry,0,0)
draw_vertex_texture(nrx,nrly,0,szy)
draw_vertex_texture(nrlx,nry,szx,0)
draw_vertex_texture(nrlx,nrly,szx,szy)
draw_primitive_end()
}
*/


}

//draw_sprite_points(bkspr,0,rx,ry,rlx,rly,0,bkcol,alpha)
