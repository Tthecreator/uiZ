///uiz_mouse_isonobject_leftcheck(object)
/*
Returns wether the mouse is over a certain object. This can be any type of object.
For the returnvalue of the leftcheck script:
A returnvalue of 0 or uiz_nomouse means no mouse.
A returnvalue of 1 or uiz_mouseover means the mouse hovers over the object.
A returnvalue of 2 or uiz_mouseclick means the mouse hovers over the object and the left mouse button is being held.
A returnvalue of 3 or uiz_mousepressed means the mouse hovers over the object and the left mouse button has just been pressed.
A returnvalue of 4 or uiz_mousereleased means the mouse hovers over the object and the left mouse button has just been released.
If you want to check for the object you're working on, you can use "uiz_mouse_isonobject_leftcheck(id)" 
*/
//if global.mouseoverobject=argument0 then{
if global.mouseover=argument0 then{
if global.mousedirectoverobject=true or global.enablemousedirectoverobjectcheck=false then{
if mouse_check_button_pressed(mb_left) or obj_uiZ_controller.mousePressed=true then{return 3;}
if mouse_check_button_released(mb_left) or obj_uiZ_controller.mouseReleased=true then{return 4;}
if mouse_check_button(mb_left) then{return 2;}
return 1;
}

}else{return 0;}
