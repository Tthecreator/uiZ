/// @description uiz_window_custom_button_create_left(window,sprite,color_normal,color_over,color_in,script)
/// @param window
/// @param sprite
/// @param color_normal
/// @param color_over
/// @param color_in
/// @param script
function uiz_window_custom_button_create_left(argument0, argument1, argument2, argument3, argument4, argument5) {
	//returns the position of the button starting at 0(from left to right)
	//creates a new custom button at the left side of the window (a little to the right if other buttons already exist there)
	//window: What window to add the button to
	//sprite: The sprite that the button has
	//color_normal: What color the button normally has
	//color_over: What color the button has when the mouse is over it
	//color_in: What color the button has when the mouse clicks the button
	//script: What script should be called when the button is pressed. This script will be given the window id as argument0 and the button position as argument1.
	with(argument0){
	    var pos = ds_list_size(custom_buttons_left_sprite);
	    ds_list_add(custom_buttons_left_sprite,argument1)
	    ds_list_add(custom_buttons_left_color_normal,argument2)
	    ds_list_add(custom_buttons_left_color_over,argument3)
	    ds_list_add(custom_buttons_left_color_in,argument4)
	    ds_list_add(custom_buttons_left_state,0)
	    ds_list_add(custom_buttons_left_script,argument5)
	    return pos;
	}



}
