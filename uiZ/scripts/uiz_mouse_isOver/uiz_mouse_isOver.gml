/// @description uiz_mouse_isOver(object)
/// @param object
function uiz_mouse_isOver(argument0) {
	/*
	Returns whether the mouse is over a certain object.(only works for the object with the lowest depth, see "Mouse in general")
	Has some variants that also check if a certain button has been pressed like:
	-uiz_mouse_isOver (only checks hovering)
	-uiz_mouse_isOver_pressingLeft (uses mouse_check_button, not mouse_check_pressed)
	-uiz_mouse_isOver_pressingRight (uses mouse_check_button, not mouse_check_pressed)<
	-uiz_mouse_isOver_releasedLeft (uses mouse_check_released)
	-uiz_mouse_isOver_releasedRight (uses mouse_check_released)
	If you want to check for the object you're working with, you can use "uiz_mouse_ison_(id)" 
	*/
	if global.mouseover=argument0 then{return 1;}else{return 0;}



}
