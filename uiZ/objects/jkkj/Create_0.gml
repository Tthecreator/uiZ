/// @description Insert description here
// You can write your code in this editor
//show_debug_overlay(true);
game_set_speed(1200, gamespeed_fps);
uiz_init();
var w = uiz_window_create(0.5, fc, 0.5, fc);
uiz_fix(w);

/*
var f = uiz_c(obj_uiZ_frame);
uiz_setParent(f, w);
uiz_position_t(f, uiz_fill, uiz_fill);
uiz_frame_setscrollable(f, true, true);
uiz_fix(f);
*/

var o = uiz_c(obj_uiZ_textarea);
uiz_setParent(o, w);
uiz_position_t(o, uiz_fill, uiz_fill);
uiz_fix(o);


//uiz_position_t(o, uiz_snapleft, uiz_snaptop);
//uiz_size(o, 10, dp, 10, dp);

/*
uselist=ds_list_create()
ds_list_add(uselist,"hello","this","is","an","item")
uiz_mousebutton_setlist(o, uselist,-1, -1);
*/
/*
usesprlist=ds_list_create()
ds_list_add(usesprlist,spr_uiZ_button,spr_uiZ_buttons_load,spr_uiZ_folder,-1,spr_uiZ_buttons_switch)
uiz_dropdown_setlist(o, uselist, -1);
*/


//uiz_fix(f);


