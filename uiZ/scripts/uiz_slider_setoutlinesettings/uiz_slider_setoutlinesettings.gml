/// @description uiz_slider_setoutlinesettings(instanceid,width[3],color left[c_aqua],color right[c_orange])
/// @param instanceid
/// @param width[3]
/// @param color left[c_aqua]
/// @param color right[c_orange]
function uiz_slider_setoutlinesettings(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.outlinewidth=argument1;
	argument0.coloroutline1=argument2;
	argument0.coloroutline2=argument3;





}
