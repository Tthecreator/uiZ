/// @description uiz_window_setminimumsize(instanceid, width[0], widthtype[px], height[0], heighttype[px])
/// @param instanceid
/// @param  width[0]
/// @param  widthtype[px]
/// @param  height[0]
/// @param  heighttype[px]
function uiz_window_setminimumsize(argument0, argument1, argument2, argument3, argument4) {
	with(argument0){
	minwidth=argument1;
	minwidthtype=argument2;
	minheight=argument3;
	minheighttype=argument4;
	uiz_window_fixminwh()
	}



}
