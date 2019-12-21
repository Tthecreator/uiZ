///uiz_mouse_getStateWithin(x1,y1,x2,y2)
/*
returns the state of the mouse, given a set of coordinates
0: normal state
1: mouse over state
2: mouse in state

*/
if (uiz_getmouse_x()>argument0 && uiz_getmouse_x()<argument2 && uiz_getmouse_y()>argument1 && uiz_getmouse_y()<argument3){
if mouse_check_button_pressed(mb_left) then{
 return uiz_mousepressed;   
}
if mouse_check_button_released(mb_left) then{
 return uiz_mousereleased;   
}
if mouse_check_button(mb_left) then{
 return uiz_mouseclick;   
}
return uiz_mouseover;
}else{
return uiz_nomouse;
}
