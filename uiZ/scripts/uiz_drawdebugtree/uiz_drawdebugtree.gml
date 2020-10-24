/// @description uiz_drawdebugtree(controller/parentobjectid,x,y)
/// @param controller/parentobjectid
/// @param x
/// @param y
function uiz_drawdebugtree(argument0, argument1, argument2) {
	/*
	Draws a object family tree with useful information about those objects, sorted by listpos.
	Listpos is sorted by depth.
	*/
	var yp=argument2;
	with(argument0){
	var l=children;
	if ds_exists(l,ds_type_list){
	var sz=ds_list_size(l)
	for(var i=0;i<sz;i++){
	var p=l[| i];

	draw_text(argument1,yp,string_hash_to_newline(object_get_name(p.object_index)+" @@@ "+string(argument0)+" ###-> "+string(p)))
	if p.object_index!=obj_uiZ_controller then{
	draw_text(700,yp,string_hash_to_newline(": @"+string(p)+"   depth: "+string(p.depth)+"   depth: "+string(p.depth)+"   listpos: "+string(p.listpos)))
	}
	draw_line(0,yp+15,1000,yp+15);
	yp+=15;
	yp=uiz_drawdebugtree(p,argument1+50,yp)
	}
	}
	}
	return yp;




}
