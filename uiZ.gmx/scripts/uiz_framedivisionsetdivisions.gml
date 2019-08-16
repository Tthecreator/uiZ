///uiz_framedivisionsetdivisions(divisionid,divisions,savechildren)
/*
Sets the amount of divisions of an anchor in a frameset.
Needs to have a division already, is not able to make new divisions on its own.
Can't set the frameset-size values of newly created frames, so you'll have to use: uiz_framedivision_setvalue.
Will destroy frames if the amount of divisions already there is lower than the amount specified.
0-divisionid: requires an anchor, not a frame or frameset.
1-divisions: the amount of new divisions it should have.
2-savechildren: Makes any children of frames that will be deleted children of the anchor, but not part of the frameset.
*/
if argument0.object_index=obj_uiZ_framerowanchor or argument0.object_index=obj_uiZ_framecolanchor then{
with(argument0){
if divisions<argument1 then{
for(var i=max(divisions,0);i<argument1;i++){
isize[i]=1
isizetype[i]=xtra
frameat[i]=uiz_frame_create()
uiz_setparent(frameat[i],id)
frameat[i].inlistpos=i;
}
}
if divisions>argument1 then{
for(var i=max(argument1,0);i<divisions;i++){
if argument2=true then{
uiz_children_adopt(frameat[i],argument0)
uiz_fixchildren(argument0,true)

}
uiz_destroyobject(frameat[i])
}
}

divisions=argument1;
if argument0.object_index=obj_uiZ_framerowanchor then{
uiz_framesetfixhorizontal(id)}else{
uiz_framesetfixvertical(id)
}
}
}
uiz_fixgeneralpos(argument0)
