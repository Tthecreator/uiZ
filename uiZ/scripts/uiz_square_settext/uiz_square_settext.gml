/// @description uiz_square_settext(instanceid,text[""])
/// @param instanceid
/// @param text[""]
function uiz_square_settext(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.text=argument1;
	uiz_updater_FixViews_with(argument0);



}
