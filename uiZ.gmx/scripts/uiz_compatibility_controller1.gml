if depth<global.selectedwindowmydepth and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx-margin_normal,ry-margin_normal,rlx+margin_normal,rly+margin_normal) then{
global.selectedwindow=id;
global.selectedwindowmydepth=depth;
}
