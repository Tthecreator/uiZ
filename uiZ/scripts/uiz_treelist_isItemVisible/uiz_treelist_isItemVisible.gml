/// @description uiz_treelist_isItemVisible(treelist,handle)
/// @param treelist
/// @param handle
function uiz_treelist_isItemVisible(argument0, argument1) {
	//returns whether all the parents of the item are extended.
	//if live_call(argument0,argument1) return live_result;
	with(argument0){
	    var maxH = min(argument1,ds_list_size(nextItemList));
	    h = 0;
	    while(true){
	        h = nextItemList[|h];
	        if is_undefined(h) or h>maxH then{
	            //not visible, we passed it without finding it.
	            return false
	        }else{
	            if h==maxH then{//match found
	                return true;
	            }
	        }
	    }
	}



}
