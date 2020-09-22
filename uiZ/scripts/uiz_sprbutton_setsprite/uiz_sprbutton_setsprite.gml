/// @description uiz_sprbutton_setsprite(instanceid,sprite[spr_uiZ_button],texturemode[uiz_texturemode_fill])
/// @param instanceid
/// @param sprite[spr_uiZ_button]
/// @param texturemode[uiz_texturemode_fill]
function uiz_sprbutton_setsprite(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.sprite=argument1;
	argument0.texturemode=argument2;



}
