if ds_exists(uselist,ds_type_list) then{
//handle scrollbar
if doscroll=true then{
var update = uiz_drawscrollbar_vertical_step(rlx-scrollwidth+1,ry,rlx,rly,scroll,scrollheight,true,scrollspeed,scrollbarAnimation, scrollbarAnimationTime)
if update then{
oldaddy=addy;
addy=-uiz_drawscrollbar_getValue(scroll)
if addy!=oldaddy then{
updater_old=-1;
updater_new=-1;
sel=-1;
selected=-1;
oldvalid=false;
uiz_updater_FixView_NoMove();
uiz_drawdslist_checkview();
}else{
//uiz_updater_FixViews_area_selfmarked(rlx-scrollwidth,ry,rlx,rly);
}
updatescroll=true
}
}
}

