/// @description uiz_checkbox_setspritecolor(instanceid,sprite color[c_white],sprite on color[c_white],sprite in color[c_white])
/// @param instanceid
/// @param sprite color[c_white]
/// @param sprite on color[c_white]
/// @param sprite in color[c_white]
function uiz_checkbox_setspritecolor(argument0, argument1, argument2, argument3) {
	//#wiki https://git.tthecreator.win/TtheCreator/uiz/wikis/checkbox
	gml_pragma("forceinline");
	argument0.spritecolor=argument1;
	argument0.spriteoncolor=argument2;
	argument0.spriteincolor=argument3;



}
