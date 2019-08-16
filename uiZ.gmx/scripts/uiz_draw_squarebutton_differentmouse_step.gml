///uiz_draw_squarebutton_differentmouse_step(mx1,my1,mx2,my2)
/*
handles step code for a quick button without any text, at specified position.
Is a version of uiz_draw_squarebutton, but allows you to give it specific values to mark the area where the button will react to the mouse.
Color is the normal color
Oncolor is the color of the button when the mouse is over it.
Incolor is the color of the button when the mouse is pressing it.
Normally returns 0, 1 when the mouse hovers, 2 if clicked and 3 if released.
Only works for uiZ object, as it uses some code to check some things.
There is a _indenpenent version, which can be called from a non-uiZ object.
*/
var ret=0;
if global.mouseover=id and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),argument0,argument1,argument2,argument3) then{
uiz_set_cursor(cr_handpoint);
ret=1;
if mouse_check_button(mb_left) then{ret=2}
if mouse_check_button_released(mb_left) then{ret=3;}
}
return ret;
