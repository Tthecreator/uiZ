///uiz_wndow_custom_button_edit_left(window,position,sprite,color_normal,color_over,color_in,script)
//creates a new custom button at the left side of the window (a little to the right if other buttons already exist there)
//window: What window to add the button to
//position: The position of the button of which you are trying to change it's appearance.
//sprite: The sprite that the button has
//color_normal: What color the button normally has
//color_over: What color the button has when the mouse is over it
//color_in: What color the button has when the mouse clicks the button
//script: What script should be called when the button is pressed. This script will be given the window id as argument0 and the button position as argument1.
with(argument0){
    custom_buttons_left_sprite[| argument1]=argument2;
    custom_buttons_left_color_normal[| argument1]=argument3;
    custom_buttons_left_color_over[| argument1]=argument4;
    custom_buttons_left_color_in[| argument1]=argument5;
    custom_buttons_left_script[| argument1]=argument2;
}
