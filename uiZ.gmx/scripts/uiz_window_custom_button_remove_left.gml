///uiz_wndow_custom_button_remove_left(window,position)
//removes a button from the left side of the window.
//WARNING: This will change up all the position ID's of other buttons.
with(argument0){
    ds_list_delete(custom_buttons_left_sprite,argument1);
    ds_list_delete(custom_buttons_left_color_normal,argument1);
    ds_list_delete(custom_buttons_left_color_over,argument1);
    ds_list_delete(custom_buttons_left_color_in,argument1);
    ds_list_delete(custom_buttons_left_state,argument1);
    ds_list_delete(custom_buttons_left_script,argument1);
}
