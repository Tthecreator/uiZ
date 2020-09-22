function uiz_compatibility_windowdepth_fix4() {
	if parent=obj_uiZ_controller.id then{
	depth=500000-addwindowmydepth
	if depth!=oldmydepth then{global.rebuilddepths=true; oldmydepth=depth;}
	}else{
	depth=-addwindowmydepth
	if depth!=oldmydepth then{global.rebuilddepths=true; oldmydepth=depth;}

	}




}
