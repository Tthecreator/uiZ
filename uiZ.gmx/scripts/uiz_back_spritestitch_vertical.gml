//var bkspr,bkcol;
var img=0;
/* 
The same as uiz_back_spritestitch_horizontal, but then rotated 90 degrees.
It is worth to not that requires a sprite that is horizontal. Meaning that you can give this mode the exact same sprite as on the horizontal spritestitch variant.

*/
/*
switch(argument0){
case 0:
var bkspr=sprite_normal;
var bkcol=color_normal;
var bkmar=margin_normal;
break;
case 1:
if sprite_over>-1 then{bkspr=sprite_over;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=6 then{img=3;}}
if color_over>-1 then{bkcol=color_over;}else{bkcol=color_normal;}
break;
case 2:
if sprite_in>-1 then{bkspr=sprite_in; }else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=9 then{img=6;}}
if color_in>-1 then{bkcol=color_in;}else{bkcol=color_normal;}
break;
case 3:
if sprite_out>-1 then{bkspr=sprite_out;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=12 then{img=9;}}
if color_out>-1 then{bkcol=color_out;}else{bkcol=color_normal;}
break;
}
*/
if sprite_exists(bkspr) then{
if width>=height/2 then{
//if the button is really narrow, and the bkspr doesn't accually fit
var wsc=width/sprite_get_width(bkspr);
var sprpx=(height*wsc)/sprite_get_height(bkspr);
//sdbm("doestn fit")
//draw_sprite_part_ext(bkspr,img,0,0,sprpx,height,rx,ry,hsc,hsc,bkcol,alpha)
//draw_sprite_part_ext(bkspr,img+2,sprite_get_height(bkspr)-sprpx,0,sprpx,height,rlx-width/2,ry,hsc,hsc,bkcol,alpha)
//draw_sprite_pos(bkspr,img,)
//texture_set_repeat(1)
draw_set_color(bkcol);
/*
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img))
draw_vertex_texture(rx,ry+height/2,1,sprpx)
draw_vertex_texture(rlx,ry+height/2,1,0)
draw_vertex_texture(rx,ry,0,sprpx)
draw_vertex_texture(rlx,ry,0,0)
draw_primitive_end()
*/
//sdbm(sprpx,height,wsc)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img))
draw_vertex_texture(rx,ry+height/2,sprpx,1)
draw_vertex_texture(rlx,ry+height/2,sprpx,0)
draw_vertex_texture(rx,ry,0,1)
draw_vertex_texture(rlx,ry,0,0)
draw_primitive_end()


/*
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img+2))
draw_vertex_texture(rx,rly,1,1)
draw_vertex_texture(rlx,rly,1,1-sprpx)
draw_vertex_texture(rx,rly-height/2,0,1)
draw_vertex_texture(rlx,rly-height/2,0,1-sprpx)
draw_primitive_end()
*/
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img+2))
draw_vertex_texture(rx,rly,1,1)
draw_vertex_texture(rlx,rly,1,0)
draw_vertex_texture(rx,rly-height/2,1-sprpx,1)
draw_vertex_texture(rlx,rly-height/2,1-sprpx,0)
draw_primitive_end()


}else{
//draw normally
var hsc=height/sprite_get_height(bkspr);
var wsc=width/sprite_get_width(bkspr)
draw_sprite_ext(bkspr,img+2,rx,ry+width,wsc,wsc,90,bkcol,alpha)
//draw_sprite_ext(bkspr,img+1,rx,ry+width*2+height-width*3,hsc-wsc*2,wsc,90,bkcol,alpha)

//draw middle part:
var nwidth=width-height*2
var nheight=height
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
var szx=round(nwidth/nsw);
var szy=round(nheight/nsh);
break;
}

draw_set_color(bkcol)
draw_set_alpha(alpha)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(bkspr,img+1))
draw_vertex_texture(rx,ry+width,0,szy)
draw_vertex_texture(rx,rly-width,szx,szy)
draw_vertex_texture(rlx,ry+width,0,0)
draw_vertex_texture(rlx,rly-width,szx,0)
draw_primitive_end()

draw_sprite_ext(bkspr,img,rx,rly,wsc,wsc,90,bkcol,alpha)
//draw_point(rx,ry+width*1)
//draw_point(rx,ry+width*1+4)
}
}
