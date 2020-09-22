function uiz_updater_ClearView() {
	//DO NOT USE
	with(obj_uiZ_controller){
	if !surface_exists(uiz_surf) {uiz_surf=surface_create(width,height);}
	surface_set_target(uiz_surf);

	if ds_exists(children,ds_type_list) then{
	var sz=ds_list_size(children);
	for(var i=0;i<sz;i++){
	uiz_updater_ClearView_processing(children[|i])
	}
	}
	}
	surface_reset_target()



}
