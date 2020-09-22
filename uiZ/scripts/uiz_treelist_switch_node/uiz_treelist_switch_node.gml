/// @description uiz_treelist_switch_node(listID)
/// @param listID
function uiz_treelist_switch_node(argument0) {
	//takes an position in the item list and expands/collapses that item
	var miscl = indentEnabledAndBoxList[|argument0];
	var boxState = miscl mod 4;
	if (boxState!=uiz_treelist_boxState_noBox) then{//if this item is even expandable
	    var nextPosition = nextItemList[|argument0];
	    var isExtended = (nextPosition == argument0+1 || boxState == uiz_treelist_boxState_extended);
	    var lsz = ds_list_size(nextItemList);
    
	    if isExtended then{
	    //collapse box    
	        var searchIndentLevel = miscl >> 3;
	        //find next item with the same level
	        for(var i=argument0+1;i<=lsz;++i){
	            if (i==lsz){
	            nextItemList[|argument0]=lsz; break;;}//end of list, extend node
	            var miscl2 = indentEnabledAndBoxList[|i];
	            var indent = miscl2 >> 3;
	            if indent <= searchIndentLevel then{//tree depth level the same or less, we found the next node to extend to
	                 nextItemList[|argument0] = i; break;
	            }
	        }
	        indentEnabledAndBoxList[|argument0] = miscl - boxState + uiz_treelist_boxState_collapsed;
	    }else{
	     //extend box
	        nextItemList[|argument0] = argument0+1;
	        indentEnabledAndBoxList[|argument0] = miscl - boxState + uiz_treelist_boxState_extended;
	    }
	    uiz_treelist_switch_node_updateXML(argument0);
	    uiz_treelist_getExpandedLines();
	    uiz_treelist_fixScroll();
	}




}
