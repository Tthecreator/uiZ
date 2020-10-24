function uiz_updater_FixViews_processing_bak(argument0) {

	//var pt1=rectangle_in_rectangle(rx,ry,rlx,rly,global.uiz_rec_rx,global.uiz_rec_ry,global.uiz_rec_rlx,global.uiz_rec_rly);
	with(argument0){
	if object_index=obj_uiZ_controller or rectangle_in_rectangle(rx,ry,rlx,rly,global.uiz_rec_last_rx,global.uiz_rec_last_ry,global.uiz_rec_last_rlx,global.uiz_rec_last_rly)>0 or
	rectangle_in_rectangle(global.uiz_rec_last_rx,global.uiz_rec_last_ry,global.uiz_rec_last_rlx,global.uiz_rec_last_rly,rx,ry,rlx,rly)>0
	then{
	uiz_doredraw=true;
	//sdbm("setting doredraw for",id,object_get_name(object_index))
	//uiz_dodraw=true;
	if ds_exists(children,ds_type_list) then{
	var sz=ds_list_size(children);
	for(var i=0;i<sz;i++){
	uiz_updater_FixViews_processing(children[|i])
	}
	}
	}
	}




}
