/// @description uiz_drawsquare_colour(x1, y1, x2, y2, col1, col2, col3, col4, alpha)
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  col1
/// @param  col2
/// @param  col3
/// @param  col4
/// @param  alpha
function uiz_drawsquare_colour(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	//draw_primitive_begin(pr_trianglestrip)

	//draw_primitive_end()
	draw_sprite_general(spr_square,0,0,0,sprite_get_width(spr_square),sprite_get_height(spr_square),argument0,argument1,(argument2-argument0)/sprite_get_width(spr_square),(argument3-argument1)/sprite_get_height(spr_square),0,argument4,argument5,argument6,argument7,argument8)



}
