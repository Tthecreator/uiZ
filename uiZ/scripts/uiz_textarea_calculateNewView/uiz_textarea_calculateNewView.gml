function uiz_textarea_calculateNewView(argument0) {
	var hadSelection = argument0
	if doscroll=true then{
	var scrbx = ilx-scblwidth;
	}else{
	var scrbx = ilx;
	}
	if hasSelection or hadSelection then{
	            uiz_textarea_saveMinMaxSnapshot()
	        }
	        uiz_textarea_genMinMax();
	        if (hasSelection or hadSelection) and uiz_textarea_hasMinMaxChangedSinceSnapshot() then{//update view
	            uiz_updater_FixViews_area_selfmarked(ix,iy+max(0,fontHeight*min(last_selectionMinLine,selectionMinLine)-listFromPx),scrbx-1,min(ily,iy+fontHeight*(max(last_selectionMaxLine,selectionMaxLine)+1)-listFromPx));
	        }



}
