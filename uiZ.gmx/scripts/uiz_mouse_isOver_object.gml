///uiz_mouse_isOver_object()
/*
Returns whether the mouse is over a certain object and excludes frames.(only works for the object with the lowest depth, see "Mouse in general")
Has some variants that also check if a certain button has been pressed like:
-uiz_mouse_isOver_object (only checks hovering)
-uiz_mouse_isOver_object_pressingLeft (uses mouse_check_button, not mouse_check_pressed)
-uiz_mouse_isOver_object_pressingRight (uses mouse_check_button, not mouse_check_pressed)<
-uiz_mouse_isOver_object_releasedLeft (uses mouse_check_released)
-uiz_mouse_isOver_object_releasedRight (uses mouse_check_released)
If you want to check for the object you're working on, you can use "uiz_mouse_isonobject_(id)" 
*/
if global.mouseoverobject=argument0 then{return 1;}else{return 0;}
