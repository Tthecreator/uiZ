/// @description uiz_treelist_parsexml_saveLineData(sprite,image,name,handle,level,enabled,boxState,saveindentqueue)
/// @param sprite
/// @param image
/// @param name
/// @param handle
/// @param level
/// @param enabled
/// @param boxState
/// @param saveindentqueue
function uiz_treelist_parsexml_saveLineData(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	//if (live_call(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)) return live_result;
	if argument6==-1 then{
	    argument6 = uiz_treelist_boxState_noBox;
	}
	//new headtag, write previous values
	var sprl = (argument0<<7)+(argument1);
	var curId = ds_list_size(indentEnabledAndBoxList);
	ds_list_add(spriteList,sprl);
	ds_list_add(textList,argument2);
	ds_list_add(handleList,argument3);
	ds_list_add(indentEnabledAndBoxList,(argument4<<3)+(argument5<<2)+(argument6));
	if argument6==uiz_treelist_boxState_extended then{
	    ds_list_add(nextItemList,curId+1);
	}else{
	    ds_list_add(nextItemList,-1);
	}
	maxHierarchyLevel = max(maxHierarchyLevel, argument4);
	//ds_list_add(indentEnabledAndBoxList,(argument4<<3)+(argument5<<2)+(argument6));

    
	while(ds_stack_size(argument7)-1>=argument4){//stack level higher than desired level, we might have found a match
	        var checkId = ds_stack_pop(argument7);
	        if checkId!=-1 then{//match found
	            if nextItemList[|checkId]=-1 then{
	                nextItemList[|checkId] = curId//make other entry point to this one as it's next item in the list.
	            }
	            //if (checkId==curId-1){
	            //    ++expandedLines;
	            //}
	        }
	}
	//if curLevel<=argument4 then{//if current stack level is less than desired level
	    ds_stack_push(argument7,curId);
	//}



}
