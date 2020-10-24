/// @description uiz_window_setMinimizeButtonSettings(instanceid, sprite, normal color[c_white], mouse over color[c_white], mouse click color[c_white])
/// @param instanceid
/// @param  sprite
/// @param  normal color[c_white]
/// @param  mouse over color[c_white]
/// @param  mouse click color[c_white]
function uiz_window_setMinimizeButtonSettings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.button_minimize_sprite=argument1;
	argument0.button_minimize_color_normal=argument2;
	argument0.button_minimize_color_over=argument3;
	argument0.button_minimize_color_in=argument4;




}
