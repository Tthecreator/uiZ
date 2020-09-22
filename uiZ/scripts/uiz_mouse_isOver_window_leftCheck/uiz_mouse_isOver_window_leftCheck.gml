/// @description uiz_mouse_isOver_window_leftCheck(object)
/// @param object
function uiz_mouse_isOver_window_leftCheck(argument0) {
	if global.mouseoverwindow=argument0 then{
	if mouse_check_button_pressed(mb_left) then{return 3;}
	if mouse_check_button_released(mb_left) then{return 4;}
	if mouse_check_button(mb_left) then{return 2;}else{return 1;}
	}else{return 0;}



}
