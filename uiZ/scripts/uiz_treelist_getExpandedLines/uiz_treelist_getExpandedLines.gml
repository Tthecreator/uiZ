function uiz_treelist_getExpandedLines() {
	expandedLines = 0;
	var lsz = ds_list_size(nextItemList);
	for(var i=0;i<lsz;i+=0){    
	    var oldi = i;
	    expandedLines++;
	    i = nextItemList[|i];
	    if i<=0 or i<oldi or is_undefined(i) then{break;}
	}
	return expandedLines;



}
