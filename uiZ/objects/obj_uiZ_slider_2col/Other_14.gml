updated = 0;
if selected = true then{
    updated = 1;
    value = clamp((uiz_getmouse_x() - sx - snappoint) / (width - slidersz), 0, 1);
    if obj_uiZ_controller.lastmousex < sx then {
        value = 0
    }
    if obj_uiZ_controller.lastmousex > slx then {
        value = 1
    }
    ucolor = slidercolorin;
    if !mouse_check_button(mb_left) then {
        uiz_slider_unselect(id)
    }
    
    
}

if !(fromvalue = value) and animation = 1 then {
    invalue = fromvalue + (uiz_animation_getFunction(anicount, animationtype) * (value - fromvalue))
    anicount += 1 / (anicountspeed * room_speed)
    update = 1;
    if anicount >= 1 then {
        invalue = value;
        fromvalue = value;
        anicount = 0;
        //check if should slide:
        //var pf = (width - slidersz) * invalue
        //var pl = pf + slidersz
        //if mouse_check_button(mb_left) and kmouseover > 0 and point_in_rectangle(uiz_getmouse_x(), uiz_getmouse_y(), pf + sx, sy + height / 2 - sliderh / 2, pl + sx, sy + height / 2 + sliderh / 2 + 1) then {
        //    uiz_slider_select(id)
        //}
    }

} else {
    update = 0;
    fromvalue = value
    invalue = value
    anicount = 0
    if selected=false then{
    uiz_updater_unstep();}
}
if update or updated then{
uiz_updater_FixViews()}

