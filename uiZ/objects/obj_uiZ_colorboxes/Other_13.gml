globalvar colorlist;
//kmouseover=uiz_mouse_isOver_object_leftCheck(id)

oldselpos=selpos;
updated=0;
selpos=-1;
if ds_exists(colorlist,ds_type_list) then{
sz=ds_list_size(colorlist)


if kmouseover>0 then{
//check y
var mx=uiz_getmouse_x()-rx
var my=uiz_getmouse_y()-ry
var py=(my-bb) div (bh+bb);
var bh1=(bh+bb)*py+bb;
var bh2=bh1+bh;
selpos=py*3
var u=0
if point_in_rectangle(mx,my,width*(1/10),bh1,width*(3/10),bh2) then{u=1}else{
if point_in_rectangle(mx,my,width*(4/10),bh1,width*(6/10),bh2) then{u=1;selpos+=1}else{
if point_in_rectangle(mx,my,width*(7/10),bh1,width*(9/10),bh2) then{u=1;selpos+=2}else{selpos=-1;}}}
update=u;
selected=sz-1-selpos;
if kmouseover=3 then{updated=u;}

}
}

//sdbm("oldsel: ",oldselpos, "selpos: ",selpos);

if (oldselpos!=selpos or last_kmouseover != kmouseover) and selpos>=0 and selpos<sz then{
    bh1=round(ry+(bh+bb)*((selpos) div 3)+bb)
    bh2=round(bh1+bh)
    if bh1<=rly then{        
        switch(selpos mod 3){
        case 0:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(1/10)),bh1,round(rx+width*(3/10))+1,bh2+1)
        break;
        case 1:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(4/10)),bh1,round(rx+width*(6/10))+1,bh2+1)
        break;
        case 2:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(7/10)),bh1,round(rx+width*(9/10))+1,bh2+1)
        break;
        }
    }
}

if oldselpos!=selpos and oldselpos>=0 and oldselpos<sz then{
    bh1=round(ry+(bh+bb)*((oldselpos) div 3)+bb)
    bh2=round(bh1+bh)
    if bh1<=rly then{        
        switch(oldselpos mod 3){
        case 0:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(1/10))-1,bh1-1,round(rx+width*(3/10))+1,bh2+1)
        break;
        case 1:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(4/10))-1,bh1-1,round(rx+width*(6/10))+1,bh2+1)
        break;
        case 2:
        uiz_updater_FixViews_area_selfmarked(round(rx+width*(7/10))-1,bh1-1,round(rx+width*(9/10))+1,bh2+1)
        break;
        }
    }
}
last_kmouseover = kmouseover;

