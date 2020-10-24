function uiz_rebuilddepths_processing(argument0) {
	//check children
	var o=argument0;
	if instance_exists(o) then{
	var l=o.children;
	if ds_exists(l,ds_type_list) then{
	var sz=ds_list_size(l);
	//sort childrenlist
	scr_sort_depths(l);
	for(var i=0;i<sz;i++){
	var g=l[| i];
	//g.depth=global.rebuildingdepths;
	//global.rebuildingdepths--;
	uiz_rebuilddepths_processing(g)
	}

	}}



}
