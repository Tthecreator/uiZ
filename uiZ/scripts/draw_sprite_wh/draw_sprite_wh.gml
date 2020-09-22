/// @description draw_sprite_wh(sprite,img,x,y,w,h,rot,color,alpha)
/// @param sprite
/// @param img
/// @param x
/// @param y
/// @param w
/// @param h
/// @param rot
/// @param color
/// @param alpha
function draw_sprite_wh(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	//Draw a sprite at a certain pos of a certain width and height in pixels. 
	draw_sprite_ext(argument0,argument1,argument2,argument3,argument4/sprite_get_width(argument0),argument5/sprite_get_height(argument0),argument6,argument7,argument8)



}
