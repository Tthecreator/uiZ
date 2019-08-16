///if screen was resized
//to be executed from obj_uiZ_controller
if (window_w!=window_get_width() || window_h!=window_get_height()){
sdbm("Window has different size!");
uiz_resetwindowsize();
window_w = window_get_width();
window_h = window_get_height();
width=window_w;
height=window_h;
iwidth=width;
iheight=height;
rlx=width
rly=height

if uiz_dpi_type=2 and uiz_dp_window_w>0 and uiz_dp_window_h>0 then{
uiz_dp_window_w = window_w/uiz_dp;
uiz_dp_window_h = window_h/uiz_dp;
}

resetSurfaces=true;

//uiz_updater_FixViews_addsquare(0,0,window_w,window_h);
uiz_fixchildren(id,true);
uiz_updateall=true;

}
