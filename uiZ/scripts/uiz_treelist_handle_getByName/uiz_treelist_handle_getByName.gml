/// @description uiz_treelist_handle_getByName(id, itemName);
/// @param id
/// @param  itemName
function uiz_treelist_handle_getByName(argument0, argument1) {
	//Returns a handle to the first occuring treelist entry with the given name. Returns -1 if no item was found.
	with(argument0){
	    var lsz = ds_list_size(textList);
	    for(var i=0;i<lsz;++i){
	        if (textList[|i]==argument1) then{
	            return i;
	        }
	    }
	    return -1;
	}



}
