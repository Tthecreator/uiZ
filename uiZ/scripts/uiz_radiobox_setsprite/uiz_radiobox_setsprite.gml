/// @description uiz_radiobox_setsprite(instanceid,sprite[-1],image[0],color[c_white],mouse over color[c_white],mouse click color[c_white])
/// @param instanceid
/// @param sprite[-1]
/// @param image[0]
/// @param color[c_white]
/// @param mouse over color[c_white]
/// @param mouse click color[c_white]
function uiz_radiobox_setsprite(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.sprite=argument1;
	argument0.spriteimg=argument2;
	argument0.spritecolor=argument3;
	argument0.spriteoncolor=argument4;
	argument0.spriteincolor=argument5;




}
