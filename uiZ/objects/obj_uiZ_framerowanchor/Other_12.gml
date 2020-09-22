uiz_frameset_rowanchor_CalculateOverFrameBar();

//update view
var y1 = frameat[overframebar].rly;
var y2 = y1 + thickness;
var extendLeft = 0;
var extendRight = 0;
if parent.object_index = obj_uiZ_framecolanchor then {
    if inlistpos > 0 and parent.hasBar[inlistpos - 1] then {
        extendLeft = parent.thickness;
    }
    if inlistpos + 1 < parent.divisions and parent.hasBar[inlistpos] then {
        extendRight = parent.thickness;
    }
}
uiz_updater_FixViews_area_selfmarked(rx-extendLeft,y1,rlx+extendRight,y2);

switch(kmouseover){
    case uiz_mousepressed:
        if snaptomouse = 0 and hasBar[overframebar] then {
            snaptomouse = 1
            snaptobar = overframebar
            mousesnappoint = uiz_getmouse_y() - frameat[overframebar].rly;
            global.mousefrozen = 1
            lastmouse = uiz_getmouse_y()
            uiz_mouse_freeze();
            uiz_updater_step();
        }
    break;
}

