function scr_sort_drawvalues_background(argument0, argument1) {
	var dy=window_get_height()-row*32
	var dyl=dy+32
	draw_set_color(c_white)
	draw_set_alpha(0.25)
	draw_rectangle(argument0*32,dy,argument1*32+32,dyl,0)
	//draw_square(argument0*32,dy,argument1*32+32,dyl,c_white,0.25)
	draw_set_color(c_black)
	draw_set_alpha(0.25)
	for(i=argument0;i<=argument1;i++){
	draw_rectangle(i*32,dy,i*32+32,dyl,1)
	draw_text(i*32+10,dy+10,string_hash_to_newline(arr[i]))
	}
	draw_set_alpha(1)
	draw_text(argument1*32+64,dy+10,string_hash_to_newline(pivot))
	draw_text(argument1*32+96,dy+10,string_hash_to_newline(put))



}
