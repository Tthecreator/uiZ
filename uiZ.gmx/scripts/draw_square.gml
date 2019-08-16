///draw_square(x1,y1,x2,y2,color,alpha)
/*
Does the same as game maker's draw_rectangle, but this one is compatible with the uiz shaders.
Always try to use this function instead of draw_rectangle if you are making a uiZ object.
*/
draw_set_color(argument4)
draw_set_alpha(argument5);
draw_rectangle(argument0,argument1,argument2,argument3,0);
//draw_sprite_ext(spr_square,0,argument0,argument1,(argument2-argument0+1)/sprite_get_width(spr_square),(argument3-argument1+1)/sprite_get_height(spr_square),0,argument4,argument5)
