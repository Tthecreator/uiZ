///uiz_win31_createwindow_size(parent,name,scroll,sizex,sizetypex,sizey,sizetypey)
//this is a template
///create window
var win;
win=uiz_window_create(argument3,argument4,argument5,argument6)
uiz_setparent(win,argument0);
//with(win){uiz_window_fixadddepth()}
win.posinframex=uiz_center
win.posinframey=uiz_center
win.setpointx=uiz_middle;
win.setpointy=uiz_middle;
win.autoupdatescrollx=true;
win.autoupdatescrolly=true;
//change buttons
win.button_maximize_sprite=spr_uiZ_win31_maximize;
win.button_minimize_sprite=spr_uiZ_win31_minimize;
//change text
win.windowtext=argument1
uiz_win31_stylewindow(win);
uiz_depth_foreground(win);
if argument2=true then{
    //add option button
    uiz_win31_addmenulist(win)
}
uiz_fixwindowpos(win)
uiz_fixchildren(win,true)



return win;
