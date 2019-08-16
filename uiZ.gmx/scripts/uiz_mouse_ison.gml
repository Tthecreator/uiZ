///uiz_mouse_ison(object)
/*
Returns whether the mouse is over a certain object.(only works for the object with the lowest depth, see "Mouse in general")
Has some variants that also check if a certain button has been pressed like:
-uiz_mouse_ison (only checks hovering)
-uiz_mouse_ison_pressingleft (uses mouse_check_button, not mouse_check_pressed)
-uiz_mouse_ison_pressingright (uses mouse_check_button, not mouse_check_pressed)<
-uiz_mouse_ison_releasedleft (uses mouse_check_released)
-uiz_mouse_ison_releasedright (uses mouse_check_released)
If you want to check for the object you're working with, you can use "uiz_mouse_ison_(id)" 
*/
if global.mouseover=argument0 then{return 1;}else{return 0;}
