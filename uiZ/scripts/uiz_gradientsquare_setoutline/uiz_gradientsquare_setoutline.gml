/// @description uiz_gradientsquare_setoutline(instanceid,enable,top-left[c_maroon],top-right[c_red],bottom-left[c_yellow],bottom-right[c_orange])
/// @param instanceid
/// @param enable
/// @param top-left[c_maroon]
/// @param top-right[c_red]
/// @param bottom-left[c_yellow]
/// @param bottom-right[c_orange]
function uiz_gradientsquare_setoutline(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.outline=argument1;
	argument0.color5=argument2;
	argument0.color6=argument3;
	argument0.color7=argument4;
	argument0.color8=argument5;



}
