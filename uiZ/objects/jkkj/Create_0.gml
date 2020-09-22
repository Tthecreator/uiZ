/// @description Insert description here
// You can write your code in this editor
//show_debug_overlay(true);
game_set_speed(1200, gamespeed_fps);
uiz_init();
var w = uiz_window_create(0.5, fc, 0.5, fc);
uiz_fix(w);

var o = uiz_c(obj_uiZ_colorbox);
uiz_setParent(o, w);
uiz_position_t(o, uiz_fill, uiz_fill);
uiz_fix(o);

uiz_fix(w);
