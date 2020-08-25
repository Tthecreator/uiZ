///uiz_draw_spriteButton(x1,y1,x2,y2,color,oncolor,incolor,sprite,alpha)
/*
Draws a quick button without any text, at specified position.
Color is the normal color
Oncolor is the color of the button when the mouse is over it.
Incolor is the color of the button when the mouse is pressing it.
Normally returns 0, but 1 when the mouse is released.
Only works for uiZ object, as it uses some code to check some things.
uses image index 0 when mouse is not over; 1 when mouse is over; 2 when mouse is pressing the button.
*/
var color=argument4
var ret=0;
var spr=0;
if global.mouseoverobject=id and 
point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),argument0,argument1,argument2,argument3) then{
color=argument5
spr=1;
if mouse_check_button(mb_left) then{
ret=1
spr=2;
color=argument6
}
if mouse_check_button_released(mb_left) then{ret=2;}
}
draw_sprite_ext(argument7,spr,argument0,argument1,(argument2-argument0)/sprite_get_width(argument7),(argument3-argument1)/sprite_get_height(argument7),0,color,argument8)
return ret;
