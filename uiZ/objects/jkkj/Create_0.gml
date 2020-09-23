/// @description Insert description here
// You can write your code in this editor
//show_debug_overlay(true);
game_set_speed(1200, gamespeed_fps);
uiz_init();
var w = uiz_window_create(0.5, fc, 0.5, fc);
uiz_fix(w);

var o = uiz_c(obj_uiZ_drawdslist);
uiz_setParent(o, w);
uiz_position_t(o, uiz_fill, uiz_fill);

uselist=ds_list_create()
ds_list_add(uselist,"hello","this","is","an","item")
usesprlist=ds_list_create()
ds_list_add(usesprlist,spr_uiZ_button,spr_uiZ_buttons_load,spr_uiZ_folder,-1,spr_uiZ_buttons_switch)
uiz_drawdslist_setlist(o, uselist, usesprlist, -1);

uiz_fix(o);

uiz_fix(w);
