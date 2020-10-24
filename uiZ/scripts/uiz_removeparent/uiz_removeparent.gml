/// @description uiz_removeparent(object,newparent)
/// @param object
/// @param newparent
///DO NOT USE
function uiz_removeparent(argument0) {
	//remove from old parentlist
	if argument0.listpos>-1 then{
	ds_list_delete(argument0.parent.children,argument0.listpos)
	for(var i=argument0.listpos;
	i<ds_list_size(argument0.parent.children);
	i++){
	var u=argument0.parent.children[| i];
	//show_message(string(argument0.parent.object_index)+"#i: "+string(i))
	u.listpos-=1}
	}



}
