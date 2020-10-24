/// @description  uiz_treelist_removeEntry_recursively_getVisibleLines(startH)
/// @param startH
///uiz_treelist_removeEntry_recursively_getVisibleLines(listHandle,removeUntil)
function uiz_treelist_removeEntry_recursively_getVisibleLines(argument0, argument1) {
	//if (live_call(argument0,argument1)) return live_result;
	var visibleLines = 0;
	var startH = argument0;
	var maxH = min(argument1,ds_list_size(nextItemList));
	h = 0;
	while(true){
	    if h>maxH then{
	        //not visible, we passed it without finding it.
	        return visibleLines
	    }else{
	        if h>=startH then{
	            ++visibleLines;
	        }
	    }
	    h = nextItemList[|h];
	}

	return visibleLines;




}
