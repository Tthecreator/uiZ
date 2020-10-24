updated=0;
var pf=round((width-slidersz)*invalue);
var pl=pf+round(slidersz)
var ucolor_old=ucolor;
if kmouseover>0 then{
uiz_set_cursor(cr_handpoint)
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),pf+sx,sy+height/2-sliderh/2,pl+sx,sy+height/2+sliderh/2+1) then{
ucolor=slidercoloron
uiz_updater_FixViews_area_selfmarked(pf+rx,ry+height/2-sliderh/2,pl+rx,ry+height/2+sliderh/2+1);
}

if kmouseover>1 then{
ucolor=slidercolorin

if selected=false then{
snappoint=slidersz/2;
updated=1;
update=1;
uiz_updater_step()
uiz_slider_select(id)}
}
}else{
ucolor=slidercolor;
uiz_updater_FixViews_area_selfmarked(pf+rx,ry+height/2-sliderh/2,pl+rx,ry+height/2+sliderh/2+1);
}



