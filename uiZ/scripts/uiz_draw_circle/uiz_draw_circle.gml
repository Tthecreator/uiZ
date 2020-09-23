///@description a uiZ-shader compatible version of the draw_circle script
///@param x
///@param y
///@param r
///@param outline
///@param color
///@param alpha
function uiz_draw_circle(x, y, r, outline, color, alpha){
	//var segments = circ;
	var circumference = r * 2 * pi;
	var segments = circumference / 5;
	if argument3 then{//if outline
		draw_primitive_begin_texture(pr_linestrip, sprite_get_texture(spr_square, 0));
		for (var i=0; i<segments+1; ++i){
			draw_vertex_texture_colour(argument0 + cos((pi/segments) * i * 2)*argument2, argument1 + sin((pi/segments) * i * 2)*argument2, 0, 0, argument4, argument5);	
		}
	}else{
		draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(spr_square, 0));
		for (var i=0; i<segments+1; ++i){
			draw_vertex_texture_colour(argument0 + cos((pi/segments) * i * 2)*argument2, argument1 + sin((pi/segments) * i * 2)*argument2, 0, 0, argument4, argument5);	
			draw_vertex_texture_colour(argument0, argument1, 1, 1, argument4, argument5);	
		}
	}
	
	
	draw_primitive_end();
}