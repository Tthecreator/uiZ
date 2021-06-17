/// @description uiz_mouse_isOver_canvas(object)
/// @param object
function uiz_mouse_isOver_canvas(argument0) {
	/*Returns wether the mouse is over a certain canvas.(only works for the object with the lowest depth, see "Mouse in general")
	Has some variants that also check if a certain button has been pressed like:
	-uiz_mouse_isOver_canvas (only checks hovering)
	-uiz_mouse_isOver_canvas_pressingLeft (uses mouse_check_button, not mouse_check_pressed)
	-uiz_mouse_isOver_canvas_pressingRight (uses mouse_check_button, not mouse_check_pressed)<
	-uiz_mouse_isOver_canvas_releasedLeft (uses mouse_check_released)
	-uiz_mouse_isOver_canvas_releasedRight (uses mouse_check_released)
	For this to work, you need to find the frame in which your object is placed (if any).
	*/
	if global.mouseovercanvas=argument0 then{return 1;}else{return 0;}



}
