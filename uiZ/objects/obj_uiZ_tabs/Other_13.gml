//var oldMouseSel=mouseSel;
//var oldMouseSelX=mouseSelX;
//var oldMouseSelX2=mouseSelX2;
var mouseSel = -1;
var mouseSelX = 0;
var mouseSelX2 = 0;
if ds_exists(tablist,ds_type_list) and ds_exists(spacinglist,ds_type_list) then{
var sz=ds_list_size(tablist)
var tot=0;
for(var i=0;i<sz;i++){
var w=spacinglist[| i];
if uiz_getmouse_x()>sx+tot and uiz_getmouse_x()<sx+tot+w then{
mouseSel=i;
mouseSelX=sx+tot;
mouseSelX2=sx+tot+w;
break;
}
tot+=w;
}
}

if mouseSel!=ms then{

oldms = ms;
oldmsX = msX;
oldmsX2 = msX2;
ms = mouseSel;
msX = mouseSelX;
msX2 = mouseSelX2;


if selected!=ms && ms!=-1 then{
//sdbm("new",msX,ry,msX2,rly)
uiz_updater_FixViews_area_selfmarked(msX,ry,msX2,rly);
draw_new=true;
}
if selected!=oldms && oldms!=-1 then{
uiz_updater_FixViews_area_selfmarked(oldmsX,ry,oldmsX2,rly);
draw_old=true;
}


}

/*
if (kmouseover=uiz_mousepressed || kmouseover=0) && mouseSel!=-1 && draw_new=false then{
uiz_updater_FixViews_area_selfmarked(msX,ry,msX2,rly);
draw_new=true;
}
*/

//if kmouseover=0 then{}

if kmouseover=4 && selected!=mouseSel && mouseSel!=-1 then{//click on tab
oldselected=selected;
selected=mouseSel;
uiz_updater_FixViews_area_selfmarked(selmsX,ry,selmsX2,rly);
draw_sel=true;
if draw_new=false then{
uiz_updater_FixViews_area_selfmarked(msX,ry,msX2,rly);
draw_new=true;
}



}

/* */
/*  */
