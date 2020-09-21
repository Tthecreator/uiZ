///uiz_sliderstruct_setframe(instance id, new frame number)
with(argument0){
if hasmouse=true then{hasmouse=false; global.mousefrozen=false;}
if frame!=argument1 then{
//sdbm("testing move back",linearvalue,frame-argument1,frame,argument1,oldclickframe,dir)
//&& sign(frame-argument1)!=dir
if linearvalue!=0 && linearvalue!=1  && argument1=oldclickframe then{// && abs(frame-argument1)=1
//sdbm("moving back!");
moveback=-1;
//var tempframe=newframe;
//newframe=oldframe;
//oldframe=tempframe;
//dir=-dir;
oldclickframe=frame;
frame=argument1;
}else{
//check if we need to queue a place
if linearvalue!=0 && linearvalue!=1 then{
queuedframe=argument1
if sign(frame-argument1)!=dir then{
moveback=-1;
}else{
moveback=1;
}
}else{
moveback=1;


if oldframe!=newframe and instance_exists(oldframe) then{
uiz_destroyObject(oldframe)
}
oldframe=newframe;
//create newframe
newframe=uiz_c(obj_uiZ_frame)
uiz_setParent(newframe,id)
//sdbm("create new frame 2")
newframe.posinframex=uiz_snapleft;
newframe.posinframey=uiz_snaptop;
newframe.posvalwtype=fc;
newframe.posvalhtype=fc;
newframe.posvalw=1;
newframe.posvalh=1;


if frame>argument1 then{
dir=1;
//move from the left/top
if horizontal=true then{
newframe.setpointx=uiz_right;
newframe.posinframex=uiz_snapleft;
}else{
//vertical
newframe.posinframey=uiz_snaptop;
newframe.setpointy=uiz_bottom;
}
}else{
//move from the right/bottom
dir=-1;
if horizontal=true then{
newframe.setpointx=uiz_left;
newframe.posinframex=uiz_snapright;
}else{
//vertical
newframe.setpointy=uiz_top;
newframe.posinframey=uiz_snapbottom;
}
}
uiz_fixframepos(newframe)
linearvalue=0;
update=true;
oldclickframe=frame;
frame=argument1;
}
}


}
}
