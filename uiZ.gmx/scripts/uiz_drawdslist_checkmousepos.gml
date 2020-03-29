///uiz_drawdslist_checkmousepos()
//INTERNAL SCRIPT BY UIZ, PLEASE DON'T USE.
var h=starth
var strh;
if endlistat>=ds_list_size(uselist) then{endlistat=ds_list_size(uselist)-1;}
for(var i=startlistat;i<=endlistat;i++){
strh=string_height(string(uselist[| i]))
//check if selected
var pit=point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,ry+addy+h,rlx-scrollwidth-1,ry+h+addy+strh);
osel=sel;
var upd=false;
if pit {
sel=i;
if osel!=sel then{
//update
uiz_drawdslist_updateviews(true,rx,ry+addy+h,rlx-scrollwidth-1,ry+h+addy+strh,osel,sel)
break;
}
var oselected=selected;
if mouse_check_button(mb_left) then{
selected=i;
if keepselection=true then{keepselected=i;}
if oselected!=selected then{
//update
uiz_drawdslist_updateviews(true,sx,sy+addy+h,slx-scrollwidth-2,sy+h+addy+strh,oselected,selected)
break;
}
}else{
if keepselection=false and selected=i then{
//update
uiz_drawdslist_updateviews(false,sx,sy+addy+h,slx-scrollwidth-2,sy+h+addy+strh,oselected,selected)
selected=-1;
keepselected=-1;
break;
}
}
}
if addy+h>parent.height then{break;}
h+=margin+strh
}
