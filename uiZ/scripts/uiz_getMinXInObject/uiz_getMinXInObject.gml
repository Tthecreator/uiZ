/// @description uiz_getMinXInObject(instance id)
/// @param instance id
function uiz_getMinXInObject(argument0) {
	var p=argument0;
	var l=p.children;
	if ds_exists(l,ds_type_list) then{
	var sz=ds_list_size(l)
	var ma=0;
	for(var i=0;i<sz;i++){
	var w=l[| i]
	if w.rx<ma then{ma=w.rx}
	}
	return ma-p.addx;
	}
	return 0;



}
