///uiz_win31_creatwindow(parent,name)
//this is a template
///create window
var win,mf;
win=uiz_window_create(0.6,fc,0.5,fc)
uiz_setparent(win,argument0)
win.posinframex=uiz_center
win.posinframey=uiz_center
win.setpointx=uiz_middle;
win.setpointy=uiz_middle;
mf=win.mainframe;
//setup background
win.texturescript=uiz_back_circlestitch_specialmargins;
win.sprite_texturemode=uiz_texturemode_fill
win.sprite_normal=spr_uiZ_borderwin31;
win.sprite_over=spr_uiZ_borderwin31;
win.sprite_in=spr_uiZ_borderwin31;
win.sprite_out=spr_uiZ_borderwin31;
//win.margin_out=0;
win.top_texturescript=uiz_back_square;
//setup topbar background
win.top_color_normal=c_gray;
win.top_margin_normal=0;
win.top_color_over=c_dkgray;
win.top_color_in=topcolor;
win.top_color_out=topcolor;
win.doublemargins=false;
win.button_cross=false;
win.barsize=18;
win.barsizevaltype=px;
//change buttons
win.maxim.sprite=spr_uiZ_win31_maximize;
win.minim.sprite=spr_uiZ_win31_minimize;
//change text
win.windowtext=argument1
win.windowtextcolor=c_white
win.halign=fa_center
win.wholewidthalign=true;
uiz_fixgeneralpos(win)
uiz_fixchildren(win,true)
//change frame options to be scrollable
mf.scrolly=true
mf.scrollx=true
//add option button
uiz_win32_addmenulist(win)
//debug
return win;
