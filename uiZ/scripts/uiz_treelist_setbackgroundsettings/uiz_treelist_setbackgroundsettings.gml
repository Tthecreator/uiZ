/// @description uiz_treelist_setbackgroundsettings(instanceid, normal_color[c_white], mouse_over_color[c_black], mouse_click_color[c_black], mouse_drag_color[$ffd1ab], normal_alpha[0], mouse_over_alpha[0.5], mouse_in_alpha[1], mouse_drag_alpha[0.5])
/// @param instanceid
/// @param  normal_color[c_white]
/// @param  mouse_over_color[c_black]
/// @param  mouse_click_color[c_black]
/// @param  mouse_drag_color[$ffd1ab]
/// @param  normal_alpha[0]
/// @param  mouse_over_alpha[0.5]
/// @param  mouse_in_alpha[1]
/// @param  mouse_drag_alpha[0.5]
function uiz_treelist_setbackgroundsettings(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	gml_pragma("forceinline");
	argument0.backcolor=argument1;
	argument0.backoncolor=argument2;
	argument0.backincolor=argument3;
	argument0.backselcolor=argument4;
	argument0.backalpha=argument5;
	argument0.backonalpha=argument6;
	argument0.backselalpha=argument7;
	argument0.backdragalpha=argument8;




}
