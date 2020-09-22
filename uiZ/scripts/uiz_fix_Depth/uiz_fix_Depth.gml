function uiz_fix_Depth() {
	if instance_exists(parent) then{
	with(parent){
	if ds_exists(children,ds_type_list) then{
	scr_sort_depths(children)
	}
	}
	}
	uiz_diddepth=true;



}
