///uiz_back_circlestitch_specialmargins([n])
//draws the edges, background and all other stuff for uiz objects, using either sprites or colors.

bkcol=clamp(bkcol,0,16777215)
bkmar=max(bkmar,0)
if sprite_exists(bkspr) then{
texture_set_repeat(0)
draw_set_color(bkcol)

var nwidth=floor(width-bkmar*2);
var nheight=floor(height-bkmar*2);
var nrx=floor(rx+bkmar);
var nry=floor(ry+bkmar);
var nrlx=floor(rlx-bkmar);
var nrly=floor(rly-bkmar);
var nsw=sprite_get_width(bkspr)
var nsh=sprite_get_height(bkspr)

switch(sprite_texturemode){
case uiz_texturemode_fill:
var szx=1
var szy=1
break;
case uiz_texturemode_tile:
var szx=nwidth/nsw
var szy=nheight/nsh
break;
case uiz_texturemode_tilefit:
var szx=floor(nwidth/nsw);
var szy=floor(nheight/nsh);
break;
default:
szx=1
szy=1
break;
}
//middle
if (nwidth>0 or nheight>0) and sprite_get_number(bkspr)>=9 then{
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,8))
draw_vertex_texture(nrx,nry,0,0)
draw_vertex_texture(nrx,nrly,0,szy)
draw_vertex_texture(nrlx,nry,szx,0)
draw_vertex_texture(nrlx,nrly,szx,szy)
draw_primitive_end()
}
var bbr=sprite_get_bbox_right(bkspr)+1
var bbb=sprite_get_bbox_bottom(bkspr)+1
var nwidth=floor(width-bkmar*2-bbr*2);
var nheight=floor(height-bkmar*2-bbb*2);
var nrx2=floor(rx+bkmar+bbr);
var nry2=floor(ry+bkmar+bbb);
var nrlx2=floor(rlx-bkmar-bbr);
var nrly2=floor(rly-bkmar-bbb);
var border_txm;
if border_texturemode=-1 then{border_txm=sprite_texturemode;}else{border_txm=border_texturemode;}
//new values for borders
if border_txm>-1 then{
switch(border_txm){
case uiz_texturemode_fill:
var szx=1
var szy=1
break;
case uiz_texturemode_tile:
var szx=nwidth/nsw
var szy=nheight/nsh
break;
case uiz_texturemode_tilefit:
var szx=(nwidth/nsw);
var szy=(nheight/nsh);
break;
}
}

if border_txm=uiz_texturemode_fill then{
draw_sprite_stretched(bkspr,0,nrx2,nry-nsh,nwidth,sprite_get_height(bkspr))//top

draw_sprite_stretched(bkspr,2,nrx2,nrly,nwidth,sprite_get_height(bkspr))//bottom

draw_sprite_stretched(bkspr,3,nrx-nsw,nry2,sprite_get_width(bkspr),nheight)//left

draw_sprite_stretched(bkspr,1,nrlx,nry2,sprite_get_width(bkspr),nheight)//right
}else{
/*
//top

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,0))
draw_vertex_texture((nrx2),(nry-nsh),0,0)
draw_vertex_texture((nrx2),(nry),0,1)
draw_vertex_texture((nrlx2),(nry-nsh),szx,0)
draw_vertex_texture((nrlx2),(nry),szx,1)
draw_primitive_end()



//bottom

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,2))
draw_vertex_texture((nrx2),(nrly),0,0)
draw_vertex_texture((nrx2),(nrly+nsh),0,1)
draw_vertex_texture((nrlx2),(nrly),szx,0)
draw_vertex_texture((nrlx2),(nrly+nsh),szx,1)
draw_primitive_end()

//right

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,1))
draw_vertex_texture((nrlx),(nry2),0,0)
draw_vertex_texture((nrlx),(nrly2),0,szy)
draw_vertex_texture((nrlx+nsw),(nry2),1,0)
draw_vertex_texture((nrlx+nsw),(nrly2),1,szy)
draw_primitive_end()

//left

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,3))
draw_vertex_texture((nrx-nsw),(nry2),0,0)
draw_vertex_texture((nrx-nsw),(nrly2),0,szy)
draw_vertex_texture((nrx),(nry2),1,0)
draw_vertex_texture((nrx),(nrly2),1,szy)
draw_primitive_end()
*/
uiz_draw_sprite_tiles(bkspr,0,nrx,nry-nsh,nrlx,nry,szx,1,bkcol,alpha,0,0)//top
uiz_draw_sprite_tiles(bkspr,2,nrx,nrly,nrlx,nrly+nsh,szx,1,bkcol,alpha,0,0)//bottom
uiz_draw_sprite_tiles(bkspr,1,nrlx,nry,nrlx+nsw,nrly,szx,1,bkcol,alpha,0,0)//right
uiz_draw_sprite_tiles(bkspr,3,nrx-nsw,nry,nrx,nrly,szx,1,bkcol,alpha,0,0)//left
}

//top-left
draw_sprite_ext(bkspr,4,(nrx2-nsw),(nry2-nsh),1,1,0,bkcol,1)
//top right
draw_sprite_ext(bkspr,5,(nrlx2),(nry2-nsh),1,1,0,bkcol,1)
//bottom right
draw_sprite_ext(bkspr,6,(nrlx2),(nrly2),1,1,0,bkcol,1)
//bottom left
draw_sprite_ext(bkspr,7,(nrx2-nsw),(nrly2),1,1,0,bkcol,1)

}
//draw_set_alpha(1)
