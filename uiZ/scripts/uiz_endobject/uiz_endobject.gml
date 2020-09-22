function uiz_endobject() {
	//ds_list_delete(parent.children,listpos)
	uiz_destroyDsList(children)
	/*
	var l=obj_uiZ_controller.uiz_objlist
	var sz=ds_list_size(l);
	l[|uiz_objlistpos]=l[|ds_list_size(l)-1]
	ds_list_delete(l,ds_list_size(l)-1);
	*/
	if surface_exists(containframe) then{surface_free(containframe)}
	//uiz_fix_Base_View();
	//sdbm("updating this instance",object_index,id,object_get_name(object_index))
	uiz_steps_scrollable = false;
	uiz_updater_FixViews()



}
