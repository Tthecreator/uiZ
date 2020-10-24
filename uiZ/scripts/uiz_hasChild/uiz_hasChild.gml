/// @description uiz_hasChild(id, child)
/// @param id
/// @param  child
function uiz_hasChild(argument0, argument1) {
	//checks weather an object has a child.
	if instance_exists(argument1) then{
	    var list=argument0.children;
	    //scroll trough list to find value
	    var sz=ds_list_size(list)
	    for(var i=0;i<sz;i++){
	        if list[| i]=argument1 then{return true;}
	    }
	}
	return false;



}
