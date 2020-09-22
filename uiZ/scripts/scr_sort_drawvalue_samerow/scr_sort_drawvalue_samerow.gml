function scr_sort_drawvalue_samerow(argument0) {
	//row++
	var dy=window_get_height()-row*32
	var dyl=dy+32
	draw_set_color(c_white)
	draw_rectangle(argument0*32,dy,argument0*32+32,dyl,0)
	///draw_square(argument0*32,dy,argument0*32+32,dyl,c_white,1)
	draw_set_color(c_black)
	draw_rectangle(argument0*32,dy,argument0*32+32,dyl,1)
	draw_text(argument0*32+10,dy+10,string_hash_to_newline(arr[argument0]))



}
