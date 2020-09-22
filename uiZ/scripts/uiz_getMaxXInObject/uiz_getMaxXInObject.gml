/// @description uiz_getMaxXInObject(instance id)
/// @param instance id
function uiz_getMaxXInObject(argument0) {
	var p=argument0;
	var l=p.children;
	if ds_exists(l,ds_type_list) then{
	    var sz=ds_list_size(l)
	    var ma=0;
	    for(var i=0;i<sz;i++){
	        var w=l[| i]
	        if instance_exists(w) then{
	            if w.lx>ma then{ma=w.lx}
	        }
	    }
	    return ma;
	}
	return 0;



}
