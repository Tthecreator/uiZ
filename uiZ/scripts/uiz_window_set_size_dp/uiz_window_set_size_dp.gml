/// @description uiz_window_set_size_dp(widht,height)
/// @param widht
/// @param height
function uiz_window_set_size_dp(argument0, argument1) {
	window_set_size(argument0*uiz_dp,argument1*uiz_dp)
	with(obj_uiZ_controller){
	uiz_dp_window_w=argument0;
	uiz_dp_window_h=argument1;
	}



}
