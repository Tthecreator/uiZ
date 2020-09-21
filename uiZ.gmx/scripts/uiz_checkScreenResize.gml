///if screen was resized
//to be executed from obj_uiZ_controller
var ww = window_get_width();
var wh = window_get_height();
if (ww % 2 == 1){--ww;}
if (wh % 2 == 1){--wh;}
if (window_w!=ww || window_h!=wh) && (ww!=0 && wh!=0){
sdbm("[uiZ:Info]Screen has been resized");
uiz_resetwindowsize();
window_w = ww;
window_h = wh;
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
uiz_fixChildren(id,true);
uiz_updateall=true;

}
