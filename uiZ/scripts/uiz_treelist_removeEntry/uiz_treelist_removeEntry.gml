/// @description uiz_treelist_removeEntry(treelist,handle,recursive)
/// @param treelist
/// @param handle
/// @param recursive
function uiz_treelist_removeEntry(argument0, argument1, argument2) {
	//if live_call(argument0,argument1,argument2) return live_result;
	//remove an entry from a treelist
	//if this entry has children, the children will be placed in the entry above the deleted entry.
	//However, if that entry doesn't exist (e.g. you are at the first node) or the indentLevel of the entry above is not the same as this one, the children might get broken.
	//If recursive is enabled however, all children are deleted.
	with(argument0){
	    if argument2 then{//recursive
	    uiz_treelist_removeEntry_recursively(argument1);
	    }else{//non recursive
	        //remove from xml
	        if updateXML then{
	            //remove from xml
	            var xmlHandle = handleList[|argument1];
	            var afterMax = uiz_xml_gethandleend(usexml,xmlHandle);
	            var removed = uiz_xml_remove_at(usexml,xmlHandle)
	            //update handles
	            uiz_treelist_removeEntry_refitXmlHandles(argument1+1,removed-1,afterMax);
	        }
        
	        //check if this item was extended
	        if uiz_treelist_isItemVisible(argument0,argument1) then{
	            --expandedLines;
	        }
        
	        //remember stuff for later
	        var level = indentEnabledAndBoxList[|argument1]>>3;
        
	        //remove from treelist
	        uiz_treelist_removeEntry_removeFromLists(argument1);
        
	        //update nextItemList
	        var lsz = ds_list_size(nextItemList);
	        for(var i=argument1;i<lsz;++i){
	            --nextItemList[|i];
	        }
	        nextItemList[|lsz-1]=-1;
        
	        //update children's indent
	        for(var i=argument1;i<lsz;++i){
	            var r = indentEnabledAndBoxList[|i]
	            var rs = r>>3;
	            if rs<=level then{
	                break;//we're at the same indent as the on on which we started, all children are processed
	            }
	            indentEnabledAndBoxList[|i] -= (1<<3);
	        }
	    }
	}




}
