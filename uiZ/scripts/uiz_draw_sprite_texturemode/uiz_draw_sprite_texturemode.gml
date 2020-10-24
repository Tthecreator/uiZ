/// @description uiz_draw_sprite_texturemode(sprite, image, x1, y1, x2, y2, color, alpha, texturemode)
/// @param sprite
/// @param  image
/// @param  x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  color
/// @param  alpha
/// @param  texturemode
function uiz_draw_sprite_texturemode(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	switch(argument8){
	case uiz_texturemode_fill:
	draw_sprite_ext(argument0,argument1,argument2,argument3,(argument4-argument2)/sprite_get_width(argument0),(argument5-argument3)/sprite_get_height(argument0),0,argument6,argument7)
	break;
	case uiz_texturemode_tile:
	uiz_draw_sprite_tiles(argument0,argument1,argument2,argument3,argument4,argument5,(argument4-argument2)/sprite_get_width(argument0),(argument5-argument3)/sprite_get_height(argument0),argument6,argument7,0,0)
	break;
	case uiz_texturemode_tilefit:
	uiz_draw_sprite_tiles(argument0,argument1,argument2,argument3,argument4,argument5,round((argument4-argument2)/sprite_get_width(argument0)),round((argument5-argument3)/sprite_get_height(argument0)),argument6,argument7,0,0)
	break;
	}



}
