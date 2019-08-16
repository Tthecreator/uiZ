///uiz_draw_squarebutton_independent(x1,y1,x2,y2,color,oncolor,incolor,alpha)
/*
Draws a quick button without any text, at specified position.
Color is the normal color
Oncolor is the color of the button when the mouse is over it.
Oncolor is the color of the button when the mouse is pressing it.
Normally returns 0, but 1 when the mouse is released.
Can be called from any non-uiZ object.
For uiZ objects, use the non independent version. 
*/
var color=argument4
var ret=0;
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),argument0,argument1,argument2,argument3) then{
color=argument5
if mouse_check_button(mb_left) then{
ret=1
color=argument6
}
if mouse_check_button_released(mb_left) then{ret=2}
}
draw_square(argument0,argument1,argument2,argument3,color,argument7)
return ret;
