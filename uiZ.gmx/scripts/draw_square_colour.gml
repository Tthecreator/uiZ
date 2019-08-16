///draw_square_colour(x1,y1,x2,y2,color1,color2,color3,color4,outline,alpha)
/*
Does the same as game maker's draw_rectangle_colour, but this one is compatible with the uiz shaders.
Always try to use this function instead of draw_rectangle_colour if you are making an uiZ object.






*Fun note: one of the very few functions that use the British spelling of the word "colour/color", but just because game maker also uses it for this function.
I have nothing against either of these spellings, but I decided to generally use the word "color" instead of "colour" troughout this manual.
Why am I wasting my time writing this? 
*/
//draw_sprite_ext(spr_square,0,argument0,argument1,argument2-argument0,argument3-argument1,0,argument4,argument5)

if argument8=1 then{
draw_primitive_begin_texture(pr_linestrip,sprite_get_texture(spr_square,0))
draw_vertex_texture_colour(argument0,argument1,0,0,argument4,argument9)
draw_vertex_texture_colour(argument0,argument3,0,1,argument7,argument9)
draw_vertex_texture_colour(argument2,argument3,1,1,argument6,argument9)
draw_vertex_texture_colour(argument2,argument1,1,0,argument5,argument9)
draw_vertex_texture_colour(argument0,argument1,0,0,argument4,argument9)
draw_primitive_end()
}else{
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(spr_square,0))
draw_vertex_texture_colour(argument0,argument1,0,0,argument4,argument9)
draw_vertex_texture_colour(argument0,argument3,0,1,argument7,argument9)
draw_vertex_texture_colour(argument2,argument1,1,0,argument5,argument9)
draw_vertex_texture_colour(argument2,argument3,1,1,argument6,argument9)
draw_primitive_end()
}
