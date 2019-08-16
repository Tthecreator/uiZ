///uiz_mouse_isonwindow(object)
/*Returns wether the mouse is over a certain frame.(only works for the object with the lowest depth, see "Mouse in general")
Has some variants that also check if a certain button has been pressed like:
-uiz_mouse_isonframe (only checks hovering)
-uiz_mouse_isonframe_pressingleft (uses mouse_check_button, not mouse_check_pressed)
-uiz_mouse_isonframe_pressingright (uses mouse_check_button, not mouse_check_pressed)<
-uiz_mouse_isonframe_releasedleft (uses mouse_check_released)
-uiz_mouse_isonframe_releasedright (uses mouse_check_released)
For this to work, you need to find the frame in which your object is placed (if any).
*/
if global.mouseoverwindow=argument0 then{return 1;}else{return 0;}
