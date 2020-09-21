///uiz_wndow_custom_button_create_right(window,sprite,color_normal,color_over,color_in,script)
//returns the position of the button starting at 0(from right to left)
//creates a new custom button at the right side of the window (a little to the left if other buttons already exist there)
//window: What window to add the button to
//sprite: The sprite that the button has
//color_normal: What color the button normally has
//color_over: What color the button has when the mouse is over it
//color_in: What color the button has when the mouse clicks the button
//script: What script should be called when the button is pressed. This script will be given the window id as argument0 and the button position as argument1.
with(argument0){
    var pos = ds_list_size(custom_buttons_right_sprite);
    ds_list_add(custom_buttons_right_sprite,argument1)
    ds_list_add(custom_buttons_right_color_normal,argument2)
    ds_list_add(custom_buttons_right_color_over,argument3)
    ds_list_add(custom_buttons_right_color_in,argument4)
    ds_list_add(custom_buttons_right_state,0)
    ds_list_add(custom_buttons_right_script,argument5)
    return pos;
}
