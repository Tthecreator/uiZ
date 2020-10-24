function uiz_updater_debug_processing(argument0) {
	with(argument0){
	//do something here

	//end do something here
	global.uiz_debug_count++;
	if ds_exists(children,ds_type_list) then{
	var sz=ds_list_size(children);
	for(var i=0;i<sz;i++){
	uiz_updater_debug_processing(children[|i])
	}
	}
	global.uiz_debug_count--;
	}



}
