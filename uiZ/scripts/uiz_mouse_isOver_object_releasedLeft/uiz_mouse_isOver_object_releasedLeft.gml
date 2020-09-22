/// @description uiz_mouse_isOver_object_releasedLeft(object)
/// @param object
function uiz_mouse_isOver_object_releasedLeft(argument0) {
	if global.mouseoverobject=argument0 and mouse_check_button_released(mb_left) then{return 1;}else{return 0;}



}
