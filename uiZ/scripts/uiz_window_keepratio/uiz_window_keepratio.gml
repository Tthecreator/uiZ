/// @description uiz_window_keepratio(instanceid, keepratio[false])
/// @param instanceid
/// @param  keepratio[false]
function uiz_window_keepratio(argument0, argument1) {
	gml_pragma("forceinline");
	with(argument0){
	keepratio=argument1;
	uiz_window_fixminwh()
	}



}
