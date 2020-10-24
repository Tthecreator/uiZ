/// @description  uiz_treelist_removeEntry_recursively(handle)
/// @param handle
///uiz_treelist_removeEntry_recursively(listHandle)
function uiz_treelist_removeEntry_recursively(argument0) {
	var handle = argument0;
	if updateXML then{
	    //remove from xml
	    var xmlHandle = handleList[|handle];
	    var afterMax = uiz_xml_gethandleend(usexml,xmlHandle);
	    var removed = uiz_xml_remove_at_all(usexml,xmlHandle)
	    //update handles
	    uiz_treelist_removeEntry_refitXmlHandles(handle+1,removed-1,afterMax);
	}

	//remember stuff for later
	var level = indentEnabledAndBoxList[|handle]>>3;

	//check until what to remove lines
	var lsz = ds_list_size(nextItemList);
	var removeUntil = lsz;
	for(var i=handle+1;i<lsz;++i){
	    if (indentEnabledAndBoxList[|i]>>3)<=level then{
	        removeUntil = i;
	        break;
	    }
	}

	//check how many visible lines to remove
	expandedLines -= uiz_treelist_removeEntry_recursively_getVisibleLines(handle,removeUntil-1);
	removeLines = removeUntil-handle;

	//remove from treelist
	repeat(removeLines){
	    uiz_treelist_removeEntry_removeFromLists(handle);
	}

	//update nextItemList
	var lsz = ds_list_size(nextItemList);
	for(var i=handle;i<lsz;++i){
	    nextItemList[|i]-=removeLines;
	}
	nextItemList[|lsz-1]=-1;




}
