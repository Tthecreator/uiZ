/// @description uiz_updater_FixViews_inside()
function uiz_updater_FixViews_inside() {
	//sdbm("initiating the updating of object area",id,object_get_name(object_index));
	var l=obj_uiZ_controller.uiz_arealist
	if ds_exists(l,ds_type_list){
	//uiz_updater_FixViews_addsquare(ix,iy,ilx,ily)
	uiz_updater_FixViews_addsquare(max(cntnx,ix), max(cntny,iy), min(cntnlx,ilx), min(cntnly,ily));
	}



}
