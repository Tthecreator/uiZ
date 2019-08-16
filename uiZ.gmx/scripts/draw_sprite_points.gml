///draw_sprite_points(sprite,img,x1,y1,x2,y2)
/*
Draw a sprite at a certain pos to a certain pos.
(x1,y1) form the top left coordinates while (x2,y2) form the bottom right coordinates.
*/
//draw_sprite_ext(argument0,argument1,argument2,argument3,(argument4-argument2)/sprite_get_width(argument0),(argument5-argument3)/sprite_get_height(argument0),argument6,argument7,argument8)
//draw_set_color(argument7)
//draw_set_alpha(argument8)
var tex=sprite_get_texture(argument0,argument1)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(argument2,argument3,0,0)
draw_vertex_texture(argument2,argument5,0,1)
draw_vertex_texture(argument4,argument3,1,0)
draw_vertex_texture(argument4,argument5,1,1)
draw_primitive_end()
