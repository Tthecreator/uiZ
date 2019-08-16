///uiz_mouse_isonobject()
/*
Returns whether the mouse is over a certain object and excludes frames.(only works for the object with the lowest depth, see "Mouse in general")
Has some variants that also check if a certain button has been pressed like:
-uiz_mouse_isonobject (only checks hovering)
-uiz_mouse_isonobject_pressingleft (uses mouse_check_button, not mouse_check_pressed)
-uiz_mouse_isonobject_pressingright (uses mouse_check_button, not mouse_check_pressed)<
-uiz_mouse_isonobject_releasedleft (uses mouse_check_released)
-uiz_mouse_isonobject_releasedright (uses mouse_check_released)
If you want to check for the object you're working on, you can use "uiz_mouse_isonobject_(id)" 
*/
if global.mouseoverobject=argument0 then{return 1;}else{return 0;}
