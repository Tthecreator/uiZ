//if global.mouseoverwindow!=id then{
if kmouseover=0 then{
loverbut=-1;
if
button_cross_state!=0 or
button_maximize_state!=0 or
button_minimize_state!=0 then{
button_cross_state=0;
button_maximize_state=0;
button_minimize_state=0;
var buttonssize=(button_cross+button_maximize+button_minimize)
uiz_updater_FixViews_area(ilx-bars*buttonssize,ry,ilx,iy-1);//REENABLE//
}
}


