/// @description uiz_treelist_addEntryIn(id, handle, name, [sprite], [spriteImage], [enabled], [boxState])
/// @param id
/// @param  handle
/// @param  name
/// @param  [sprite]
/// @param  [spriteImage]
/// @param  [enabled]
/// @param  [boxState]
function uiz_treelist_addEntryIn() {
	//adds an entry right before a handle, with the same indentation as the item on the handle
	//enabled: This item is grayed out
	/*
	var argument_arr = array_create(argument_count);
	for (var i = 0; i < argument_count; i++) {
	argument_arr[i] = argument[i];
	}
	//if (live_call_ext(argument_arr)) return live_result;
	*/
	with(argument[0]){
	    var handle = argument[1];
	    if handle=-1 then{handle=0;}
	    //find end of handle
	    handleEnd = uiz_treelist_handle_getEnd(argument[0],handle)+1;
	    var boxState = indentEnabledAndBoxList[|handle] mod 4;
	    if (boxState == uiz_treelist_boxState_noBox) then{
	        indentEnabledAndBoxList[|handle] = indentEnabledAndBoxList[|handle] - uiz_treelist_boxState_noBox + uiz_treelist_boxState_extended
	    }
	    var level = (indentEnabledAndBoxList[|handle]>>3) + 1;
	    switch(argument_count){
	        case 4:
	            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],0,level)
	        break;
	        case 5:
	            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level)
	        break;
	        case 6:
	            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level,argument[5])
	        break;
	        case 7:
	            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level,argument[5],argument[6])
	        break;
	        default:
	            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],-1,0,level);
	        break;    
	    }
    
    
	}




}
