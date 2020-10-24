/// @description uiz_drawsprite_setsprite(instanceid,sprite[spr_uiz_designerlogo,image[0])
/// @param instanceid
/// @param sprite[spr_uiz_designerlogo
/// @param image[0]
function uiz_drawsprite_setsprite(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.sprite_index=argument1;
	argument0.image_index=argument2;



}
