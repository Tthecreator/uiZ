var swipicon = argument0;
with(argument1){
    window_clock=uiz_win31_createwindow_size(obj_uiZ_controller.id,"Clock",true,3,dp,3,dp)//we create the window in this object to keep the window controls working
    object_clock=uiz_c(obj_uiZ_clock)
    uiz_setparent(object_clock,window_clock)
    object_clock.posinframex=uiz_center;
    object_clock.posinframey=uiz_center;
    object_clock.posvalwtype=fcmin;
    object_clock.posvalhtype=fcmin;
    object_clock.posvalw=1;
    object_clock.posvalh=1;
    uiz_fixgeneralpos(object_clock)
}
