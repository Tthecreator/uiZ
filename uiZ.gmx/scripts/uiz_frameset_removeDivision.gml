///uiz_frameset_removeDivision(anchorid)
/*
Removes an previousely created anchor and puts a frame(sometimes another anchor if there is an anchor in frameat[0]) in its place, effectively removing a division in a frameset.
Children will be adopted by the new frame (and sometimes anchor). 
*/
with(argument0){
if object_index=obj_uiZ_framerowanchor or object_index=obj_uiZ_framecolanchor then{
if divisions>0 then{
//find divisions under devision
for(var i=0;i<divisions;i++){
//scroll trough to find non-frames
var o=frameat[i];
if instance_exists(o) and (o.object_index=obj_uiZ_framerowanchor or o.object_index=obj_uiZ_framecolanchor) then{
uiz_frameset_removeDivision(o);
}
}
//1,2
//get new main frame
var m=frameat[0]
//destroy all frames
for(var i=1;i<divisions;i++){
uiz_children_adopt(frameat[i],m)
uiz_destroyobject(frameat[i])
}
//3
uiz_setParent(m,parent)
uiz_children_adopt(id,parent)
uiz_frameset_forceFixSize(parent);
//4
parent.frameat[inlistpos]=m;
m.inlistpos=inlistpos;
uiz_destroyobject(id)
}
}
}
