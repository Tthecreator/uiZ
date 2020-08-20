///uiz_frameset_setFrameSize(divisionid,frame where 0 is the first frame top/left,value,valuetype[px dp fc xtra])
/*
Allows you to set the size of a frame in a frameset, AFTER you used any of the uiz_framedivision...() functions.
0-divisionid: The id of the anchor, not the frame or a frameset.
1-frame: Which framenumber you want to change where 0 is the first frame top/left.
2-value: the new size the frame should be.
3-valuetype: what type of value argument2 (value) is.
*/
with(argument0){
isize[argument1]=argument2
isizetype[argument1]=argument3
}
uiz_frameset_forceFixSize(argument0);
