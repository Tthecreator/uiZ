///uiz_frame_setscroll(instanceid, orientation, value)
//instanceid: id of an obj_uiZ_frame to modify
//orientation: either uiz_horizontal (for x-axis scrolling) or uiz_vertical (for y-axis scrolling)
//value: a scroll value between 0 and the output of uiz_frame_getscrollableSpace.
with(argument0){
    if argument1 == uiz_horizontal then{
        addx = clamp(-argument2, mscrollbarx, 0);
        uiz_drawscrollbar_setvalue(uscrollx,-addx);
        uiz_drawscrollbar_update(uscrollx,rx,ily,rlx-scrollbarcorner_x,rly,uiz_horizontal)
    }else{
        addy = clamp(-argument2, mscrollbary, 0)
        uiz_drawscrollbar_setvalue(uscrolly,-addy);
        uiz_drawscrollbar_update(uscrolly,ilx,ry,rlx,rly-scrollbarcorner_y,uiz_vertical);
    }
    uiz_fixChildren(id,true);
    uiz_updater_FixViews();
}
