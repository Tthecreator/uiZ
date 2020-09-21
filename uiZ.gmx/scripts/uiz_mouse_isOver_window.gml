///uiz_mouse_isOver_window(object)
/*Returns wether the mouse is over a certain frame.(only works for the object with the lowest depth, see "Mouse in general")
Has some variants that also check if a certain button has been pressed.
For this to work, you need to find the frame in which your object is placed (if any).
*/
if global.mouseoverwindow=argument0 then{return 1;}else{return 0;}
