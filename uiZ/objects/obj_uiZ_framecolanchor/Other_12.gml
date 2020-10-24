uiz_frameset_colanchor_CalculateOverFrameBar();

//update view
var x1 = frameat[overframebar].rlx;
var x2 = x1 + thickness;
var extendTop = 0;
var extendBottom = 0;
if parent.object_index = obj_uiZ_framerowanchor then {
    if inlistpos > 0 and parent.hasBar[inlistpos - 1] then {
        extendTop = parent.thickness;
    }
    if inlistpos + 1 < parent.divisions and parent.hasBar[inlistpos] then {
        extendBottom = parent.thickness;
    }
}
uiz_updater_FixViews_area_selfmarked(x1,ry-extendTop,x2,rly+extendBottom);

switch(kmouseover){
    case uiz_mousepressed:
        if snaptomouse = 0 and hasBar[overframebar] then {
            snaptomouse = 1
            snaptobar = overframebar;
            mousesnappoint = uiz_getmouse_x() - frameat[overframebar].rlx;
            global.mousefrozen = 1
            lastmouse = uiz_getmouse_x()
            uiz_mouse_freeze();
            uiz_updater_step();
        }
    break;
}

