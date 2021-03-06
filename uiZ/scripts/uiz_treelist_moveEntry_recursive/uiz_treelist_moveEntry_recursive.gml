/// @description uiz_treelist_moveEntry_recursive(treelist,itemHandle,destinationHandle,[indentLevel],[isOffset])
/// @param treelist
/// @param itemHandle
/// @param destinationHandle
/// @param [indentLevel]
/// @param [isOffset]
function uiz_treelist_moveEntry_recursive() {
	//Moves an entry and all its children from item to destination.

	//Optional: indentLevel. If this argument is omitted the indent of the item already at the destinationHandle is used.
	//Optional: isOffset. If this argument is true the default indentLevel is used, but indentLevel is added (or subtracted) from the default indentLevel.
	/*
	var argument_arr = array_create(argument_count);
	for (var i = 0; i < argument_count; i++) {
	argument_arr[i] = argument[i];
	}
	//if (live_call_ext(argument_arr)) return live_result;
	*/
	//sdbm("uiz_treelist_moveEntry_recursive",argument[0],argument[1],argument[2]);
	if argument[1]==argument[2] and (argument_count=3 or (argument_count>3 and uiz_treelist_item_get_indentLevel(argument[0],argument[2])==argument[3])) then exit;//if current position and destination are the same we don't need to do anything. However, if we have a different indentLevel, we might need to change up stuff

	with(argument[0]){
    

	    //get information about entry
	    var baseIndent;
	    if argument_count==4 then{
	        baseIndent = argument[3];
	    }else{
	        if argument[2]<ds_list_size(indentEnabledAndBoxList) then{
	            baseIndent = indentEnabledAndBoxList[|argument[2]]>>3;//uiz_treelist_item_get_indentLevel(argument0,argument1);
	        }else{
	            baseIndent = indentEnabledAndBoxList[|ds_list_size(indentEnabledAndBoxList)-1]>>3;
	        }
	        if argument_count==5 and argument[4]==true then{
	            baseIndent+=argument[3];
	            baseIndent = max(0,indent);
	        }
	    }
    
	    var curIndent = indentEnabledAndBoxList[|argument[1]]>>3;
	    var indentOffset = baseIndent - curIndent;
    
	    //prevent creating an invalid hierachy.
	    //check if the destination is below the hierarchy of the source. e.g. inside itself.
	    var sourceIndent = indentEnabledAndBoxList[|argument[1]]>>3;
	//    var destinationIndent = indentEnabledAndBoxList[|argument[2]]>>3;
	    var destinationIndent = baseIndent;
	    if (destinationIndent > sourceIndent and argument[2]>argument[1]){
	        var foundValidHierarchy = false;
	        for(var i = argument[1]+1; i<argument[2]; ++i){
	            var curIndent = (indentEnabledAndBoxList[| i]>>3);
	            if  curIndent <= sourceIndent {
	                foundValidHierarchy = true;
	                break;
	            }
	        }
	        if foundValidHierarchy==false then{
	            sdbm("[uiZ|Warning] Invalid move for treelist: trying to move an item below/within it's own hierachy")
	            exit;
	        }
	    }
    
	    //save indents
	    var indentList = ds_list_create();
	    for(var i=argument[1]+1;i<ds_list_size(textList);++i){
	        var indent = indentEnabledAndBoxList[|i]>>3;
	        if indent <= curIndent then{//we're back at the root
	            break;
	        }
	        indent+=indentOffset;
	        ds_list_add(indentList,indent);
	    }
    
    
	    uiz_treelist_moveEntry(argument[0],argument[1],argument[2],baseIndent);
	    var destinationPos = argument[2];
	    var sourcePos = argument[1];
	    for(var i=0;i<ds_list_size(indentList);++i){
	        if destinationPos<=sourcePos then{
	            ++sourcePos;
	            ++destinationPos;
	        }
	        var indent = indentList[|i];
	        uiz_treelist_moveEntry(argument[0],sourcePos,destinationPos,indent);
        
	    }
    
	    ds_list_destroy(indentList);
	    uiz_treelist_generateHierarchyItemList()
    

	}



}
