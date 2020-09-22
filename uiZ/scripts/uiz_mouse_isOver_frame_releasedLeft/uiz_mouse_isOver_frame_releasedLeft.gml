/// @description uiz_mouse_isOver_frame_releasedLeft(object)
/// @param object
function uiz_mouse_isOver_frame_releasedLeft(argument0) {
	if global.mouseoverframe=argument0 and mouse_check_button_released(mb_left) then{return 1;}else{return 0;}



}
