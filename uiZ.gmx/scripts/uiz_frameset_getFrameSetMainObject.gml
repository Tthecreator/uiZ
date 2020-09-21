///uiz_frameset_getFramesetMainObject(object)
//finds an the frameset object of any frame, rowanchor or colanchor THAT IS PART OF THE FRAMESET STRUCTURE.
//if not sure if the object is part of a frameset structure use: uiz_ispartoffframeset, which returns what this script returns, only it does some checks and returns -1 if fails.
//this script returns -1 if it fails.
if instance_exists(argument0) and instance_exists(argument0.parent)
with(argument0){
if parent.object_index=obj_uiZ_frameset then{
return parent;
}else{
if parent.object_index=obj_uiZ_framerowanchor or parent.object_index=obj_uiZ_framecolanchor then{
return uiz_frameset_getFramesetMainObject(parent);
}else{
return -1;
}
}
}
