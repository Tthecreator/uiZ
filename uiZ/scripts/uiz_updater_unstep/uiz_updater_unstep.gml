function uiz_updater_unstep() {
	if uiz_steps=true then{
	var l=obj_uiZ_controller.uiz_steplist;
	ds_list_delete(l,ds_list_find_index(l,id))
	uiz_steps=false;
	}



}
