/// @description uiz_background_topbar_texturemode(instanceid,sprite[uiz_texturemode_fill],[border[-1]])
/// @param instanceid
/// @param sprite[uiz_texturemode_fill]
/// @param [border[-1]]
function uiz_background_topbar_texturemode() {
	argument[0].topbar_sprite_texturemode=argument[1]
	if argument_count>2 then{
	argument[0].topbar_border_texturemode=argument[2]
	}



}
