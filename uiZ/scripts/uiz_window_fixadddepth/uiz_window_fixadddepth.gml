/// @description a script used by uiz itself, not for manual use in your code.
function uiz_window_fixadddepth() {
	//sdbm("fixing adddepth for",id)
	uiz_window_fixadddepth_maindepth()
	if parent!=obj_uiZ_controller.id then{
	//check for other windows above parent
	var searchp=parent;
	while(searchp.object_index!=obj_uiZ_controller){
	if searchp.object_index=obj_uiZ_window then{
	//recheck
	fixforp=searchp;
	with(searchp){
	uiz_window_fixadddepth_maindepth();
	uiz_updater_FixViews();
	}
	}
	searchp=searchp.parent
	}
	}



}
