///uiz_win31_creatwindow(window id)
//this is a template
///create window
var win;
var win=argument0;
//setup background
win.margin_normal=4;
win.topbarInside=true;
win.texturescript=uiz_back_circlestitch_specialmargins;
win.sprite_texturemode=uiz_texturemode_fill
win.sprite_normal=spr_uiZ_borderwin31;
win.sprite_over=spr_uiZ_borderwin31;
win.sprite_in=spr_uiZ_borderwin31;
win.sprite_out=spr_uiZ_borderwin31;
//setup topbar background
win.top_texturescript=uiz_back_square;
win.top_color_normal=c_gray;
win.top_margin_normal=0;
win.top_color_over=c_dkgray;
win.top_color_in=topcolor;
win.top_color_out=topcolor;
win.doublemargins=false;
uiz_window_setbuttons(win,false,true,true);
win.button_cross=false;
uiz_window_setTopBarSize(win,18,px);
win.barsize=18;
win.barsizevaltype=px;
//change buttons
//if instance_exists(win.maxim) then{win.maxim.sprite=spr_uiZ_win31_maximize;}
//if instance_exists(win.minim) then{win.minim.sprite=spr_uiZ_win31_minimize;}
win.maxim_sprite=spr_uiZ_win31_maximize;
win.minim_sprite=spr_uiZ_win31_minimize;
//change text
win.windowtextcolor=c_white
win.halign=fa_center
win.wholewidthalign=true;
