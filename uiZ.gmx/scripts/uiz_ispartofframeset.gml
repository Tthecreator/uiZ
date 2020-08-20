///uiz_frameset_isPartOf(object)
//returns frameset object if found, else -1.
/*
Checks for a frame or anchor whether it is inside a framesetstructure.
Returns frameset object if found, else -1.
*/
if instance_exists(argument0) then{
if argument0.object_index=obj_uiZ_frame then{
var op=argument0.parent;
if (op.object_index=obj_uiZ_frameset or op.object_index=obj_uiZ_framerowanchor or op.object_index=obj_uiZ_framecolanchor) then{
if op.object_index=obj_uiZ_frameset then{
if op.headframe=argument0 then{return op;}else{return -1;}
}else{
var bin=uiz_searchinarray(op.frameat,op.divisions,argument0)
if bin>-1 then{return uiz_frameset_getFrameSetMainObject(op);}else{return -1;}
}

}else{
return -1;
}
}else{
var op=argument0;
if op.object_index=obj_uiZ_frameset or op.object_index=obj_uiZ_framerowanchor or op.object_index=obj_uiZ_framecolanchor then{
return uiz_frameset_getFrameSetMainObject(op);
}

}
}
return -1;
