/// @description uiz_textarea_setfont(instanceid,font[-1])
/// @param instanceid
/// @param font[-1]
function uiz_textarea_setfont(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.font=argument1;
	draw_set_font(argument1);
	argument0.fontHeight = string_height(string_hash_to_newline("{|}"));



}
