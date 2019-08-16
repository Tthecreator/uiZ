///uiz_drawscrollbar_horizontal_step(rx,ry,rlx,rly,scroll,scrolllines,middlemousescroll,scrollspeed)
//return new value of scroll;
//object from which this is called from does need to be a uiz object, due to mouse checks.
/*
Will draw a scrollbar.
The "scroll=" part is important, see argument 7
Can create some weird effects if the vertical versions width is bigger than its height, and also if the height is bigger than then width for the horizontal version.
If not sure of the size use "uiz_drawscrollbar" which does a check which direction the scrollbar fits the best. 0-3: position: From where to where the bar would be drawn, in real x coordinates.
4-scroll: A special value that should be the same variable as returned by the draw_scrollbar_ function. This is value that holds mouse data, and scrolldata.
On the scroll variable you can use "uiz_scrollbar_setvalue" and "uiz_scrollbar_getvalue" (same as "uiz_positify").
5-scrolllines: How many steps the scrollbar has. If you're drawing out a list, then this would be: "(your list size)-(how many list items fit on my object without scrolling)"
6-middlemousescroll: A bool value whether you want scrolling to be enabled. There is no mouse position checking for this value, so you'll have to program that yourself.
7-scrollspeed: how many scrolllines the middle mouse scroll wheel and/or the buttons should scroll every time you interact with them.


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


mstate codes:
.0-none
.1-left over
.2-left click
.3-right over
.4-right click
.5-bar over
.6-bar click
*/

var scroll=uiz_drawscrollbar_getScroll(argument4);
var scroll_old=scroll;
var scrollsel=uiz_sign(argument4);
var height=argument3-argument1;
var width=argument2-argument0;
var mstate=0;//abs(frac(argument4)*10);
var mstate_last=uiz_drawscrollbar_getMstate(argument4);
var oin=argument4-(frac(argument4*100))/100;//+0.003
var cheight=min(height,width/2)

//handle scrolling
if global.mouseoverobject=id and argument6=true then{
if mouse_wheel_down() then{scroll=clamp(scroll+argument7,0,argument5)}
if mouse_wheel_up() then{scroll=clamp(scroll-argument7,0,argument5)}
}
//handle mouse movement on the bar
if (global.mouseoverobject=id or global.mouseoverscrollframe=id) and uiz_getmouse_x()>argument0 and uiz_getmouse_x()<argument2 and (scrollsel=1 or (uiz_getmouse_y()>argument1 and uiz_getmouse_y()<argument3)) then{
//point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),argument0,argument1,argument2,argument3) then{
//left button
//sdbm("scroll left almost",uiz_getmouse_x(),argument0,argument0+height,height)
if scrollsel=-1 and uiz_getmouse_x()>argument0 and uiz_getmouse_x()<argument0+cheight then{
if mouse_check_button(mb_left) then{
scroll=clamp(scroll-argument7,0,argument5);
mstate=2;
}else{
mstate=1;
}
}else{
//right button
//sdbm("scroll right almost",uiz_getmouse_x(),argument2-height,argument2,height)
if scrollsel=-1 and uiz_getmouse_x()>argument2-cheight and uiz_getmouse_x()<argument2 then{
if mouse_check_button(mb_left) then{
scroll=clamp(scroll+argument7,0,argument5);
mstate=4;
}else{
mstate=3;
}
}else{
//bar dragging
var nwidth=width-height*2;
var barw=min(nwidth,max(50,floor(nwidth*(1/power(argument5,1/5)))));
var x4=floor(argument0+height+(scroll/argument5)*(nwidth-barw));
if scrollsel=1 or (global.mousefrozen=false and uiz_getmouse_x()>x4 and uiz_getmouse_x()<x4+barw) then{
//point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),x4,argument1,x4+barw,argument3)
if mouse_check_button(mb_left){
global.mousefrozen=true
scrollsel=1
//mouse safety
global.mousefrozensafety=1;
global.mousefrozensafetynumber=global.uiz_instep;

if uiz_getmouse_x()<argument0+height then{scroll=0;}else{//begin
if uiz_getmouse_x()>argument2-height then{scroll=argument5;}else{//end
scroll=clamp(round(scroll-(((global.lastmousemovedx)/(nwidth-barw))*argument5)),0,argument5)
}}
/*
if uiz_getmouse_x()<argument0+height then{scroll=0;}else{//begin
if uiz_getmouse_x()>argument2-height then{scroll=argument5;}else{//end
scroll=round(((uiz_getmouse_x()-argument0-height)/nwidth)*argument5)
}}
*/
mstate=6;
}else{
mstate=5;
//reset mouse
if scrollsel=1 then{scrollsel=0;global.mousefrozen=0;global.mousefrozensafety=0;}
}
}else{if global.mousefrozen=false and mouse_check_button_released(mb_left) and uiz_getmouse_x()>argument0+height and uiz_getmouse_x()<argument2-height then{
scroll=clamp(round(((uiz_getmouse_x()-argument0-height)/nwidth)*argument5),0,argument5)
}}
}
}
}
//finish
if scrollsel=1 then{
uiz_set_cursor(cr_handpoint)
out=round(scroll)+mstate/10+mstate_last/100;
}else{out=-1-round(scroll)-mstate/10-mstate_last/100;}
if oin!=out then{
var updated;
if scroll!=scroll_old then{
updated=5;
}else{
updated=3;
}
out+=updated/1000*uiz_sign(out);//let the other script know about the update
uiz_drawscrollbar_update_view(argument0,argument1,argument2,argument3,uiz_horizontal,mstate,mstate_last,updated);
}
return out;
