function uiz_compatibility_windowdepth_fix5() {
	if instance_exists(global.selectedwindow) and global.selectedwindow.depth>-1000000 then{
	global.selectedwindow=id;
	}



}
