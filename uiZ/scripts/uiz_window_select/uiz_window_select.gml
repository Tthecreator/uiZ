/// @description uiz_window_select(instanceid)
/// @param instanceid
function uiz_window_select(argument0) {
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
	    if sizestatus=2 then{
	        bkmar=0;
	    }
	    uiz_updater_FixViews();
	}



}
