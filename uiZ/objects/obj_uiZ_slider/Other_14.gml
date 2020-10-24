updated = 0;
if selected = true then{
    updated = 1;
    fromvalue = invalue;
    //anicount = 0;
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
    anicount += uiz_sc(anicountspeed)
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
//    if selected=false then{
//    uiz_updater_unstep();}
}

if animateColors<1 then{
    animateColors += uiz_sc(coloranicountspeed);
    var f = uiz_animation_getFunction(animateColors, coloranimationtype);
    color1 = merge_colour(color1from,color1to,f);
    color2 = merge_colour(color2from,color2to,f);
    uiz_updater_FixViews();
}

if (animateColors>=1 and selected==false and anicount==0){
    uiz_updater_unstep();
}

if update or updated then{
uiz_updater_FixViews()}

