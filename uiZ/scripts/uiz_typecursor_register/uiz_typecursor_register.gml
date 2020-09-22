/// @description uiz_typecursor_register(x1, y1, x2, y2, color, cursorwidth);
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  color
/// @param  cursorwidth
function uiz_typecursor_register(argument0, argument1, argument2, argument3, argument4, argument5) {
	with(obj_uiZ_controller){
	typecursor_enabled=true;
	typecursor_x1=argument0;
	typecursor_y1=argument1;
	typecursor_x2=argument2;
	typecursor_y2=argument3;
	typecursor_color=argument4;
	typecursor_width=argument5;
	}



}
