//if inframe=0 then{draw_set_alpha(0.1)}else{
//draw_set_alpha(image_alpha)}
if uiz_cntn() then{
//draw_set_color(color)
uiz_km_setColor(color,oncolor,incolor)
//draw_rectangle(rx,ry,rlx,rly,0)
//draw_sprite_part(sprite,0,0,0,width,height,rx,ry)
var nwidth=width-leftbordermargin-rightbordermargin;
var nheight=height-topbordermargin-bottombordermargin;
var nrx=rx+leftbordermargin;
var nry=ry+topbordermargin;
var nrlx=rlx-rightbordermargin;
var nrly=rly-bottombordermargin;
var nsw=sprite_get_width(sprite)
var nsh=sprite_get_height(sprite)
switch(texturemode){
case uiz_texturemode_fill:
var szx=1
var szy=1
break;
case uiz_texturemode_tile:
var szx=nwidth/nsw
var szy=nheight/nsh
break;
case uiz_texturemode_tilefit:
var szx=round(nwidth/nsw);
var szy=round(nheight/nsh);
break;
default:
szx=1
szy=1
}
texture_set_repeat(1)

//middle
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite,0))
draw_vertex_texture(nrx,nry,0,0)
draw_vertex_texture(nrx,nrly,0,szy)
draw_vertex_texture(nrlx,nry,szx,0)
draw_vertex_texture(nrlx,nrly,szx,szy)
draw_primitive_end()
//top
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite,1))
draw_vertex_texture(nrx,nry-nsh,0,0)
draw_vertex_texture(nrx,nry,0,1)
draw_vertex_texture(nrlx,nry-nsh,szx,0)
draw_vertex_texture(nrlx,nry,szx,1)
draw_primitive_end()
//bottom
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite,3))
draw_vertex_texture(nrx,nrly,0,0)
draw_vertex_texture(nrx,nrly+nsh,0,1)
draw_vertex_texture(nrlx,nrly,szx,0)
draw_vertex_texture(nrlx,nrly+nsh,szx,1)
draw_primitive_end()
//right
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite,2))
draw_vertex_texture(nrlx,nry,0,0)
draw_vertex_texture(nrlx,nrly,0,szy)
draw_vertex_texture(nrlx+nsw,nry,1,0)
draw_vertex_texture(nrlx+nsw,nrly,1,szy)
draw_primitive_end()
//left
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite,4))
draw_vertex_texture(nrx-nsw,nry,0,0)
draw_vertex_texture(nrx-nsw,nrly,0,szy)
draw_vertex_texture(nrx,nry,1,0)
draw_vertex_texture(nrx,nrly,1,szy)
draw_primitive_end()
//top-left
draw_sprite_ext(sprite,5,nrx-nsw,nry-nsh,1,1,0,uiz_km_retval(color,oncolor,incolor),1)
//top right
draw_sprite_ext(sprite,6,nrlx,nry-nsh,1,1,0,uiz_km_retval(color,oncolor,incolor),1)
//bottom right
draw_sprite_ext(sprite,7,nrlx,nrly,1,1,0,uiz_km_retval(color,oncolor,incolor),1)
//bottom left
draw_sprite_ext(sprite,8,nrx-nsw,nrly,1,1,0,uiz_km_retval(color,oncolor,incolor),1)


draw_set_alpha(1)

}
uiz_containend()

