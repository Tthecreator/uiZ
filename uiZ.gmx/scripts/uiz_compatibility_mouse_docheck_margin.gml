if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx-argument0,cntnx),max(ry-argument1,cntny),min(rlx+argument2,cntnlx),min(rly+argument3,cntnly)) then{
global.mouseover=id;global.mouseovermydepth=depth;
global.mouseoverobject=id;global.mouseoverobjectmydepth=depth;
}
//dbm("To be rewritten, uiz_compatibility_mouse_docheck_margin")
/*
gml_pragma("forceinline");
if global.mousefrozen=0 and global.wasmousefrozen=false and global.uiz_mouseswipeclick=false then{
globalvar mouseover,mouseovermydepth,mouseoverdone;
//sdbm(global.mouseoverdone)
if mouseoverdone=0 then{
global.mouseoverobject=0
global.mouseoverobjectmydepth=0
global.mouseoverwindow=0
global.mouseoverwindowmydepth=0
global.mouseoverframe=0
global.mouseoverframemydepth=0
global.mouseoverscrollframe=0
global.mouseoverscrollframemydepth=0
global.mouseover=0
global.mouseovermydepth=0
global.mouseoverdone=1
//sdbm("crap has been reset")
}
var pir=point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx-argument0,cntnx),max(ry-argument1,cntny),min(rlx+argument2,cntnlx),min(rly+argument3,cntnly))

if (mouseover=0 or mouseovermydepth>mydepth) and pir then{mouseover=id mouseovermydepth=mydepth}
if object_index=obj_uiZ_frame or object_index=obj_uiZ_slideframe or object_index=obj_uiZ_windowholder or object_index=obj_uiZ_surfaceholder then{
if object_index=obj_uiZ_windowholder then{
globalvar mouseoverwindow,mouseoverwindowmydepth
if (mouseoverwindow=0 or mouseoverwindowmydepth>mydepth) and pir then{mouseoverwindow=id mouseoverwindowmydepth=mydepth}
//globalvar mouseoverobject,mouseoverobjectmydepth;
//if (mouseoverobject=0 or mouseoverobjectmydepth>mydepth) and pir then{mouseoverobject=id mouseoverobjectmydepth=mydepth}
}
if object_index=obj_uiZ_frame and (scrolly=true or scrollx=true) then{
globalvar mouseoverscrollframe,mouseoverscrollframemydepth
if (mouseoverscrollframe=0 or mouseoverscrollframemydepth>mydepth) and pir then{mouseoverscrollframe=id mouseoverscrollframemydepth=mydepth}
}
globalvar mouseoverframe,mouseoverframemydepth;
if (mouseoverframe=0 or mouseoverframemydepth>mydepth) and pir then{mouseoverframe=id mouseoverframemydepth=mydepth}
}else{

globalvar mouseoverobject,mouseoverobjectmydepth;
if (mouseoverobject=0 or mouseoverobjectmydepth>mydepth) and pir then{mouseoverobject=id mouseoverobjectmydepth=mydepth}
}



/*
if (mouseover=0 or mouseovermydepth>mydepth) and point_in_rectangle(mouse_x,mouse_y,rx-argument0,ry-argument1,rlx+argument2,rly+argument3)then{mouseover=id mouseovermydepth=mydepth}
if object_index=obj_uiZ_slideframe or object_index=obj_uiZ_frame or object_index=obj_uiZ_windowholder or object_index=obj_uiZ_surfaceholder then{
globalvar mouseoverframe,mouseoverframemydepth;
if (mouseoverframe=0 or mouseoverframemydepth>mydepth) and point_in_rectangle(mouse_x,mouse_y,rx-argument0,ry-argument1,rlx+argument2,rly+argument3)then{mouseoverframe=id mouseoverframemydepth=mydepth}
}else{
globalvar mouseoverobject,mouseoverobjectmydepth;
if (mouseoverobject=0 or mouseoverobjectmydepth>mydepth) and point_in_rectangle(mouse_x,mouse_y,rx-argument0,ry-argument1,rlx+argument2,rly+argument3)then{mouseoverobject=id mouseoverobjectmydepth=mydepth}
}
*/









//}


