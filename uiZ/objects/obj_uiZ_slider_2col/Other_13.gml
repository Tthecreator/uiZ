var ucolor_old=ucolor;
var pf=round((width-slidersz)*invalue);
var pl=pf+round(slidersz)
if kmouseover=1 and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),pf+sx,sy+height/2-sliderh/2,pl+sx,sy+height/2+sliderh/2+1) then{
ucolor=slidercoloron
}else{
ucolor=slidercolor
}
if ucolor!=ucolor_old then{

uiz_updater_FixViews_area_selfmarked(pf+rx,ry+height/2-sliderh/2,pl+rx,ry+height/2+sliderh/2+1);
}

