///uiz_frame_setscroll(instanceid, orientation)
//instanceid: id of an obj_uiZ_frame to modify
//orientation: either uiz_horizontal (for x-axis scrolling) or uiz_vertical (for y-axis scrolling)
//returns how many pixels are scrollable in the frame. (the maximum position (plus width/height) of objects in the frame minus the size of the frame itself.)
if argument1=uiz_horizontal then{
    return abs(argument0.mscrollbarx);
}else{
    return abs(argument0.mscrollbary);
}
