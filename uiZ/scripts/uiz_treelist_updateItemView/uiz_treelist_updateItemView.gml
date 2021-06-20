function uiz_treelist_updateItemView(treelist, item){
	with(treelist){
		var lsz = ds_list_size(textList);
        var ih=startOffset;
            
        for(var i=startList;i<lsz;i+=0){    
            var oldi = i;
            i = nextItemList[|i];
            //sdbm("Just ran!, i = ",i," oldi = ",oldi);
			if (i==item){
				uiz_updater_FixViews_area_selfmarked(rx, ih, rlx, ih+fontHeight);
				ds_list_add(updateIndividualItemList, i);
			}
            if i<=0 or i<oldi or i>item or is_undefined(i) then{return;}
            ih+=fontHeight;
        }
	}
}