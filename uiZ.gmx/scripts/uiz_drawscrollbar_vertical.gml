///uiz_drawscrollbar_vertical(frx,fry,frlx,frly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,scroll,scrolllines,middlemousescroll,scrollspeed)
//return new value of scroll;
//object from which this is called from does need to be a uiz object, due to mouse checks.
/*
Will draw a scrollbar.
The "scroll=" part is important, see argument 7
Can create some weird effects if the vertical versions width is bigger than its height, and also if the height is bigger than then width for the horizontal version.
If not sure of the size use "uiz_drawscrollbar" which does a check which direction the scrollbar fits the best. 0-3: position: From where to where the bar would be drawn, in real x coordinates.
4-scrollbarsprite: which sprite to use. The sprite should follow a few rules, listen further down in this page. 5-scrollbarcolor: which color blend the sprite should get.(may not apply to all parts)
6-scrollbacktexturemode: How sprites should be stretched/tiled. You can choose the constants: uiz_texturemode_fill, uiz_texturemode_tile, uiz_texturemode_tilefit.
7-scroll: A special value that should be the same variable as returned by the draw_scrollbar_ function. This is value that holds mouse data, and scrolldata.
On the scroll variable you can use "uiz_scrollbar_setvalue" and "uiz_scrollbar_getvalue" (same as "uiz_positify").
8-scrolllines: How many steps the scrollbar has. If you're drawing out a list, then this would be: "(your list size)-(how many list items fit on my object without scrolling)"
9-middlemousescroll: A bool value whether you want scrolling to be enabled. There is no mouse position checking for this value, so you'll have to program that yourself.
10-scrollspeed: how many scrolllines the middle mouse scroll wheel and/or the buttons should scroll every time you interact with them.


A valid scrollbar sprite holds the following images:
0. A button down sprite that also acts as a right button on horizontal scrollbars.
1. The same as 0, but then when the mouse hovers over it.
2. The same as 0, but then when the mouse clicks it.
3. A button up sprite that also acts as a left button on horizontal scrollbars.
4. The same as 3, but then when the mouse hovers over it.
5. The same as 3, but then when the mouse clicks it.
6.The top/left part of a scrollbar.
7. The same as 6, but then when the mouse hovers over it.
8. The same as 6, but then when the mouse clicks it.
9.The bottom/right part of a scrollbar.
10. The same as 9, but then when the mouse hovers over it.
11. The same as 9, but then when the mouse clicks it.
12.The middle part of a vertical scrollbar.
13. The same as 12, but then when the mouse hovers over it.
14. The same as 12, but then when the mouse clicks it.
15: A sprite to put on the middle of the scrollbar.
16: A background sprite for behind the scrollbar.
17.The middle part of a horizontal scrollbar.
18. The same as 17, but then when the mouse hovers over it.
19. The same as 17, but then when the mouse clicks it.

Note: you can use spr_uiZ_scrollbar as a reference.



*/
var frx=argument0;
var fry=argument1;
var frlx=argument2;
var frly=argument3;
var mrx=argument0-rx+sx;
var mry=argument1-ry+sy;
var mrlx=argument2-rx+sx;
var mrly=argument3-ry+sy;

var scrollbarwidth=frlx-frx;
var height=frly-fry;
var scrollbarsprite=argument4;
var scrollbarcolor=argument5
var scrollbarbacktexmode=argument6;
var scroll=uiz_positify(argument7);
var scrolllines=argument8;
//var domousescroll=argument9;
var scrollspeed=argument10;
if argument9=1 and global.mouseoverobject=id then{
//if mouse_wheel_down() then{scroll=clamp(scroll+1,0,scrolllines-scrollspeed)}
//if mouse_wheel_up() then{scroll=clamp(scroll-1,0,scrolllines-scrollspeed)}
if mouse_wheel_down() then{scroll=clamp(scroll+scrollspeed,0,scrolllines)}
if mouse_wheel_up() then{scroll=clamp(scroll-scrollspeed,0,scrolllines)}
}
//if domousescroll=1;
var scrollsel=uiz_sign(argument7)
if scrollbarwidth>0 and scrollbarsprite!=0 and sprite_exists(scrollbarsprite) then{
var simg;
//var p=parent
sw=scrollbarwidth/sprite_get_width(scrollbarsprite)
sh=scrollbarwidth/sprite_get_height(scrollbarsprite)
//top button
simg=3
//sdbm(uiz_getmouse_x(),uiz_getmouse_y(),mrx,mry,mrlx,mry+scrollbarwidth)
if (global.mouseoverobject=id or global.mouseoverscrollframe=id) and (global.mouseoverobject=id or global.mousefrozen=false) and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),mrx,mry,mrlx,mry+scrollbarwidth) then{
//sdbm("CAN EXECUT THIS SHIT!")
simg++
if mouse_check_button(mb_left){simg++}
//if mouse_check_button_released(mb_left){scroll=clamp(scroll-1,0,scrolllines-scrollspeed)}
if mouse_check_button_released(mb_left){scroll=clamp(scroll-scrollspeed,0,scrolllines)}
}
draw_sprite_ext(scrollbarsprite,simg,frx,fry,sw,sh,0,scrollbarcolor,1)
//buttom button
simg=0
if (global.mouseoverobject=id or global.mouseoverscrollframe=id) and (global.mouseoverobject=id or global.mousefrozen=false) and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),mrx,mrly-scrollbarwidth,mrlx,mrly) then{
simg++
if mouse_check_button(mb_left){simg++}
//bottom button
//if mouse_check_button_released(mb_left){scroll=clamp(scroll+1,0,scrolllines-scrollspeed)}
if mouse_check_button_released(mb_left){scroll=clamp(scroll+scrollspeed,0,scrolllines)}
}
draw_sprite_ext(scrollbarsprite,simg,frx,frly-scrollbarwidth,sw,sh,0,scrollbarcolor,1)

//draw the background
var nwidth=scrollbarwidth
var nheight=height-scrollbarwidth*2
switch(scrollbarbacktexmode){
case uiz_texturemode_fill:
var szx=1
var szy=1
break;
case uiz_texturemode_tile:
var szx=nwidth/sprite_get_width(scrollbarsprite)
var szy=nheight/sprite_get_height(scrollbarsprite)
break;
case uiz_texturemode_tilefit:
var szx=round(nwidth/sprite_get_width(scrollbarsprite));
var szy=round(nheight/sprite_get_height(scrollbarsprite));
break;
default:
szx=1
szy=1
}
draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(scrollbarsprite,16))
draw_vertex_texture(frx,fry+scrollbarwidth,0,0)
draw_vertex_texture(frlx,fry+scrollbarwidth,szx,0)
draw_vertex_texture(frx,frly-scrollbarwidth,0,szy)
draw_vertex_texture(frlx,frly-scrollbarwidth,szx,szy)
draw_primitive_end()
if scrolllines>0 then{
//draw the bar
var barheight=height-scrollbarwidth*2
//var barsize=min(barheight,max(min(50,height),barheight/(1/power(1/scrolllines,4))));
//var barsize=min(barheight,max(min(50,height),barheight*(power(scrolllines,-0.1))));
//var barsize=min(barheight,max(height/10,barheight*(power(scrolllines,-0.1))));
var barsize=clamp(barheight*(power(scrolllines,-0.01)),height/10,barheight);
var oversize=barheight-barsize
var sscroll=(oversize/scrolllines)*scroll
simg=0
if scrollsel=1 or ((global.mousefrozen=false and (global.mouseoverobject=id or global.mouseoverscrollframe=id)) and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),mrx,mry+scrollbarwidth+sscroll,mrlx,mry+sscroll+barsize+scrollbarwidth)) then{
simg++
if mouse_check_button(mb_left){
global.mousefrozen=1
scrollsel=1
simg++
scroll=round((sscroll-global.lastmousemovedy)/(oversize/scrolllines))
//sdbm(scroll,sscroll-global.lastmousemovedy,oversize,scrolllines,(sscroll-global.lastmousemovedy),oversize/scrolllines,scrolllines)
//scroll=max(0,min(1,scroll))
scroll=clamp(scroll,0,scrolllines)
addy=min(0,-scroll*(height-parent.height))
if uiz_getmouse_y()<fry then{scroll=0}
if uiz_getmouse_y()>frly then{scroll=scrolllines}


//checkuplist=1
global.mousefrozensafety=1;
global.mousefrozensafetynumber=global.uiz_instep;
}else{
if scrollsel=1 then{scrollsel=0;global.mousefrozen=0;global.mousefrozensafety=0;}
}

}

draw_sprite_ext(scrollbarsprite,6+simg,frx,fry+scrollbarwidth+sscroll,sw,sh,0,c_white,1)

draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(scrollbarsprite,12+simg))
draw_vertex_texture(frx,fry+scrollbarwidth*2+sscroll,0,0)
draw_vertex_texture(frlx,fry+scrollbarwidth*2+sscroll,1,0)
draw_vertex_texture(frx,fry+sscroll+barsize,0,1)
draw_vertex_texture(frlx,fry+sscroll+barsize,1,1)
draw_primitive_end()


draw_sprite_ext(scrollbarsprite,9+simg,frx,fry+sscroll+barsize,sw,sh,0,c_white,1)

draw_sprite_ext(scrollbarsprite,15,frx,(fry+scrollbarwidth+sscroll)+(barsize-scrollbarwidth)/2,sw,sh,0,c_white,1)
}
}
if scrollsel=1 then{
uiz_set_cursor(cr_handpoint)
return scroll;
}else{return -1-scroll;}
