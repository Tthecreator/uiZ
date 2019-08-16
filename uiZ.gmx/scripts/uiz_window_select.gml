///uiz_window_select(instanceid)
//gives focus to the given window, and unfocuses the currently focused window
if instance_exists(global.selectedwindow) then{
    with(global.selectedwindow){
        global.selectedwindow = argument0;
        uiz_window_fixbackground();
        uiz_updater_FixViews();
    }
}else{
global.selectedwindow = argument0;
}
with(argument0){
    uiz_window_fixadddepth();   
    uiz_window_fixbackground();
    uiz_updater_FixViews();
}
