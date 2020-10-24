/// @description uiz_treelist_removeEntry_refitXmlHandles(listHandle,removedP,oldClosingTagPosition)
/// @param listHandle
/// @param removedP
/// @param oldClosingTagPosition
function uiz_treelist_removeEntry_refitXmlHandles(argument0, argument1, argument2) {
	//if live_call(argument0,argument1,argument2) return live_result;
	var lsz = ds_list_size(handleList);
	for(var i = argument0;i<lsz;++i){
	    var r = handleList[|i];
	    if(r >= argument2){
	        break;//we passed the old closing tag, we need to factor that in as well in the next for loop
	    }
	    handleList[|i] = r-argument1;
    
	}
	for(var i = i+0;i<lsz;++i){
	    handleList[|i]-=argument1+1;
	}




}
