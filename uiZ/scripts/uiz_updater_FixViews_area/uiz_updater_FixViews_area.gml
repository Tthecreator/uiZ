/// @description uiz_updater_FixViews_area(x1, y1, x2, y2)
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
function uiz_updater_FixViews_area(argument0, argument1, argument2, argument3) {
	//sdbm("initiating the updating of object area",id,object_get_name(object_index));
	var l=obj_uiZ_controller.uiz_arealist
	if ds_exists(l,ds_type_list){
	uiz_updater_FixViews_addsquare(argument0,argument1,argument2,argument3)
	}



}
