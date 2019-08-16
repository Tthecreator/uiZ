///uiz_back()
//draws the edges, background and all other stuff for uiz objects, using either sprites or colors.
texture_set_repeat(1)

sprite_normal=spr_uiZ_border;
color_normal=c_white;
texmode_normal=uiz_texturemode_fill;
sprite_margin=3;


sprite_normal_back=-1;
color_normal_back=-1;
texmode_normal_back=uiz_texturemode_tilefit;

sprite_normal_left=-1;
color_normal_left=-1;
texmode_normal_left=uiz_texturemode_tilefit;

sprite_normal_right=-1;
color_normal_right=-1;
texmode_normal_right=uiz_texturemode_tilefit;

sprite_normal_bottom=-1;
color_normal_bottom=uiz_gray;
texmode_normal_bottom=uiz_texturemode_tilefit;

sprite_normal_top=-1;
color_normal_top=uiz_gray;
texmode_normal_top=uiz_texturemode_tilefit;


/*
sprite_normal_=-1;
color_normal_=uiz_gray;
texmode_normal_=uiz_texturemode_tilefit;
*/


var spr_normal=sprite_normal;
var spr_back=sprite_normal_back;
var spr_left=sprite_normal_left;
var spr_right=sprite_normal_right;
var spr_top=sprite_normal_top;
var spr_bottom=sprite_normal_bottom;

var col_normal=color_normal;
var col_back=color_normal_back;
var col_left=color_normal_left;
var col_right=color_normal_right;
var col_top=color_normal_top;
var col_bottom=color_normal_bottom;

//calculate width
var nwidth=width;
var nrx=rx;
var nrlx=rlx;
if sprite_exists(spr_left) then{var t=sprite_get_width(spr_left); nrx+=t; nwidth-=t}else{nwidth-=sprite_margin; nrx+=sprite_margin;}
if sprite_exists(spr_right) then{var t=sprite_get_width(spr_right); nrlx-=t; nwidth-=t}else{nwidth-=sprite_margin; nrlx-=sprite_margin;}

//calculate height
var nheight=height;
var nry=ry;
var nrly=rly;
if sprite_exists(spr_top) then{var t=sprite_get_height(spr_top); nry+=t; nheight-=t}else{nheight-=sprite_margin; nry+=sprite_margin;}
if sprite_exists(spr_bottom) then{var t=sprite_get_height(spr_bottom); nrly-=t; nheight-=t}else{nheight-=sprite_margin; nrly-=sprite_margin;}

if spr_back>-1 then{uspr=spr_back}else{uspr=spr_normal}

//draw main background
if sprite_exists(uspr) and (uspr=spr_back or sprite_get_number(uspr)>=9) then{
var nsw=sprite_get_width(uspr)
var nsh=sprite_get_height(uspr)
switch(max(texmode_normal,texmode_normal_back)){
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
break;
}


//draw background primitive
draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(uspr,8))
draw_vertex_texture(nrx,nry,0,0)
draw_vertex_texture(nrx,nrly,0,szy)
draw_vertex_texture(nrlx,nry,szx,0)
draw_vertex_texture(nrlx,nrly,szx,szy)
draw_primitive_end()

}else{draw_square(rx,ry,rlx,rly,color_normal_back,alpha)}
///END drawing background

