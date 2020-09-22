if hasmouse=true then{
//value=clamp(value-(global.lastmousemovedx/(width-w)),0,1);
value=clamp(((uiz_getmouse_x()-rx-snapx)/(width-w)),0,1)
}else{
//handle animation
if anim=1 then{
animationcount+=uiz_sc(animationtime);
value=oldvalue+uiz_animation_getFunction(animationcount,animation)*(newvalue-oldvalue)
update=1;
if animationcount>=1 then{
animationcount=0;
anim=0;
updated=1;
update=0;

uiz_updater_unstep();

}

}else{
uiz_updater_unstep();
}
}
uiz_updater_FixViews_area_selfmarked(p1x-bkmar,p1y-bkmar,p2x+bkmar,p2y+bkmar);
pm1x=p1x-bkmar-3;
pm2x=p2x+bkmar+2;
uiz_slickslider_calcKnobPoints();
uiz_updater_FixViews_area_selfmarked(p1x-bkmar,p1y-bkmar,p2x+bkmar,p2y+bkmar);
pm1x=min(pm1x,p1x-bkmar-3);
pm2x=max(pm2x,p2x+bkmar+2);
pm1x=clamp(pm1x,rx+linemargin,rlx-linemargin);
pm2x=clamp(pm2x,rx+linemargin,rlx-linemargin);

