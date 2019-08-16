///uiz_back([n])
/*
//draws the edges, background and all other stuff for uiz objects, using either sprites or colors.

bkcol=clamp(bkcol,0,16777215)
bkmar=max(bkmar,0)
if sprite_exists(bkspr) then{
texture_set_repeat(1)
draw_set_color(bkcol)
//get all the textures
var tex0,tex1,tex2,tex3,tex4,tex5,tex6,tex7,tex8;
var tex0w,tex1w,tex2w,tex3w,tex4w,tex5w,tex6w,tex7w;
var tex0h,tex1h,tex2h,tex3h,tex4h,tex5h,tex6h,tex7h;
var sprw,sprh;
sprw=sprite_get_width(bkspr)
sprh=sprite_get_height(bkspr)
tex0=sprite_get_texture(bkspr,0)
tex1=sprite_get_texture(bkspr,1)
tex2=sprite_get_texture(bkspr,2)
tex3=sprite_get_texture(bkspr,3)
tex4=sprite_get_texture(bkspr,4)
tex5=sprite_get_texture(bkspr,5)
tex6=sprite_get_texture(bkspr,6)
tex7=sprite_get_texture(bkspr,7)
tex8=sprite_get_texture(bkspr,8)
/*
tex0w=texture_get_width(tex0)*sprw;
tex1w=texture_get_width(tex1)*sprw;
tex2w=texture_get_width(tex2)*sprw;
tex3w=texture_get_width(tex3)*sprw;
tex4w=texture_get_width(tex4)*sprw;
tex5w=texture_get_width(tex5)*sprw;
tex6w=texture_get_width(tex6)*sprw;
tex7w=texture_get_width(tex7)*sprw;

tex0h=texture_get_height(tex0)*sprh;
tex1h=texture_get_height(tex1)*sprh;
tex2h=texture_get_height(tex2)*sprh;
tex3h=texture_get_height(tex3)*sprh;
tex4h=texture_get_height(tex4)*sprh;
tex5h=texture_get_height(tex5)*sprh;
tex6h=texture_get_height(tex6)*sprh;
tex7h=texture_get_height(tex7)*sprh;
*/

//tex0w=sprite_get_bbox_right()

var texuv=sprite_get_uvs(bkspr,0)
sdbm(texture_get_height(tex0),texture_get_texel_height(tex0),texture_get_texel_height(tex0)*sprite_get_height(bkspr),texuv[0],texuv[1],texuv[2],texuv[3])

/*
tex0w=texture_get_texel_width(tex0)
tex1w=texture_get_texel_width(tex1)
tex2w=texture_get_texel_width(tex2)
tex3w=texture_get_texel_width(tex3)
tex4w=texture_get_texel_width(tex4)
tex5w=texture_get_texel_width(tex5)
tex6w=texture_get_texel_width(tex6)
tex7w=texture_get_texel_width(tex7)

tex0h=texture_get_texel_height(tex0)
tex1h=texture_get_texel_height(tex1)
tex2h=texture_get_texel_height(tex2)
tex3h=texture_get_texel_height(tex3)
tex4h=texture_get_texel_height(tex4)
tex5h=texture_get_texel_height(tex5)
tex6h=texture_get_texel_height(tex6)
tex7h=texture_get_texel_height(tex7)
*//*
//sdbm(tex0h,tex1h,tex2h,tex3h)
var nwidth=round(width-bkmar*2-tex1w-tex3w);
var nheight=round(height-bkmar*2-tex0h-tex2h);
var nrx=round(rx+bkmar+tex1w);
var nry=round(ry+bkmar+tex0h);
var nrlx=round(rlx-bkmar-tex3w);
var nrly=round(rly-bkmar-tex2h);
var nsw=texture_get_width(tex8);
var nsh=texture_get_height(tex8);

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
default:
szx=1
szy=1
break;
}
//sdbm(szy)
//middle
/*
if nwidth>0 or nheight>0 then{
draw_primitive_begin_texture(pr_trianglestrip,tex8)
draw_vertex_texture(nrx,nry,0,0)
draw_vertex_texture(nrx,nrly,0,szy)
draw_vertex_texture(nrlx,nry,szx,0)
draw_vertex_texture(nrlx,nrly,szx,szy)
draw_primitive_end()
}
*//*
var border_txm;
if border_texturemode=-1 then{border_txm=sprite_texturemode;}else{border_txm=border_texturemode;}
//sdbm("bordertxm",border_txm)
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
var szx=round(nwidth/nsw);
var szy=round(nheight/nsh);
break;
}
}

if border_txm=uiz_texturemode_fill then{
//sdbm("loading texturemodefill")
////WAS HERE
nrx=round(rx+bkmar+tex4w);
nwidth=round(width-bkmar*2-tex4w-tex5w);
var nry=round(ry+bkmar);
draw_square(nrx,nry,nrx+nwidth,nry+tex0h,c_red,1)
draw_set_alpha(0.3)
uiz_draw_texture_stretched(tex4,nrx,nry,nwidth,tex0h)//top
draw_set_alpha(1)
//sdbm(tex0,nrx,nry,nwidth,tex0h)
//uiz_draw_texture_stretched(tex2,nrx,nrly,nwidth,sprite_get_height(bkspr))//bottom

//uiz_draw_texture_stretched(tex3,nrx-nsw,nry,sprite_get_width(bkspr),nheight)//left

//uiz_draw_texture_stretched(tex1,nrlx,nry,sprite_get_width(bkspr),nheight)//right
}else{
//top
nwidth=round(width-bkmar*2-tex4w-tex5w);
nrx=round(rx+bkmar+tex4w);
//nry=round(ry+bkmar+tex0h);
nrlx=round(rlx-bkmar-tex5w);
//nrly=round(rly-bkmar-tex2h);
nsw=texture_get_width(tex0);
//nsh=texture_get_height(tex8);
if border_txm>-1 then{
switch(border_txm){
case uiz_texturemode_tile:
var szx=nwidth/nsw
break;
case uiz_texturemode_tilefit:
var szx=round(nwidth/nsw);
break;
}
}
draw_primitive_begin_texture(pr_trianglestrip,tex0)
draw_vertex_texture((nrx),(nry-nsh),0,0)
draw_vertex_texture((nrx),(nry),0,1)
draw_vertex_texture((nrlx),(nry-nsh),szx,0)
draw_vertex_texture((nrlx),(nry),szx,1)
draw_primitive_end()



//bottom
nwidth=round(width-bkmar*2-tex6w-tex7w);
nrx=round(rx+bkmar+tex7w);
//nry=round(ry+bkmar+tex0h);
nrlx=round(rlx-bkmar-tex6w);
//nrly=round(rly-bkmar-tex2h);
nsw=texture_get_width(tex2);
//nsh=texture_get_height(tex8);
if border_txm>-1 then{
switch(border_txm){
case uiz_texturemode_tile:
var szx=nwidth/nsw
break;
case uiz_texturemode_tilefit:
var szx=round(nwidth/nsw);
break;
}
}


draw_primitive_begin_texture(pr_trianglestrip,tex2)
draw_vertex_texture((nrx),(nrly),0,0)
draw_vertex_texture((nrx),(nrly+nsh),0,1)
draw_vertex_texture((nrlx),(nrly),szx,0)
draw_vertex_texture((nrlx),(nrly+nsh),szx,1)
draw_primitive_end()

//right
//nwidth=round(width-bkmar*2-tex4w-tex5w);
nheight=round(height-bkmar*2-tex5w-tex6w);
//nrx=round(rx+bkmar+tex4w);
nry=round(ry+bkmar+tex5h);
//nrlx=round(rlx-bkmar-tex5w);
nrly=round(rly-bkmar-tex6h);
//nsw=texture_get_width(tex0);
nsh=texture_get_height(tex1);
if border_txm>-1 then{
switch(border_txm){
case uiz_texturemode_tile:
var szy=nheight/nsh;
break;
case uiz_texturemode_tilefit:
var szy=round(nheight/nsh);
break;
}
}

draw_primitive_begin_texture(pr_trianglestrip,tex1)
draw_vertex_texture((nrlx),(nry),0,0)
draw_vertex_texture((nrlx),(nrly),0,szy)
draw_vertex_texture((nrlx+nsw),(nry),1,0)
draw_vertex_texture((nrlx+nsw),(nrly),1,szy)
draw_primitive_end()

//left

//nwidth=round(width-bkmar*2-tex4w-tex5w);
nheight=round(height-bkmar*2-tex4w-tex7w);
//nrx=round(rx+bkmar+tex4w);
nry=round(ry+bkmar+tex4h);
//nrlx=round(rlx-bkmar-tex5w);
nrly=round(rly-bkmar-tex7h);
//nsw=texture_get_width(tex0);
nsh=texture_get_height(tex3);
if border_txm>-1 then{
switch(border_txm){
case uiz_texturemode_tile:
var szy=nheight/nsh;
break;
case uiz_texturemode_tilefit:
var szy=round(nheight/nsh);
break;
}
}

draw_primitive_begin_texture(pr_trianglestrip,tex3)
draw_vertex_texture((nrx-nsw),(nry),0,0)
draw_vertex_texture((nrx-nsw),(nrly),0,szy)
draw_vertex_texture((nrx),(nry),1,0)
draw_vertex_texture((nrx),(nrly),1,szy)
draw_primitive_end()
}

//top-left
//draw_sprite_ext(bkspr,4,(nrx-nsw),(nry-nsh),1,1,0,bkcol,1)
var nwidth=round(width-bkmar*2);
var nheight=round(height-bkmar*2);
var nrx=round(rx+bkmar);
var nry=round(ry+bkmar);
var nrlx=round(rlx-bkmar);
var nrly=round(rly-bkmar);
uiz_draw_texture_stretched(tex4,nrx-tex3w,nry-tex0h,tex4w,tex4h)
//top right
//draw_sprite_ext(bkspr,5,(nrlx),(nry-nsh),1,1,0,bkcol,1)
uiz_draw_texture_stretched(tex5,nrlx-tex5w+tex1w,nry-tex0h,tex5w,tex5h)
//bottom right
//draw_sprite_ext(bkspr,6,(nrlx),(nrly),1,1,0,bkcol,1)
uiz_draw_texture_stretched(tex6,nrlx-tex6w+tex1w,nry-tex6h-tex2h,tex6w,tex6h)
//bottom left
//draw_sprite_ext(bkspr,7,(nrx-nsw),(nrly),1,1,0,bkcol,1)
uiz_draw_texture_stretched(tex7,nrx-tex3w,nry-tex6h-tex2h,tex7w,tex7h)
}
//draw_set_alpha(1)
