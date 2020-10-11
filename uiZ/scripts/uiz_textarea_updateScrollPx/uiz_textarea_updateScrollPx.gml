function uiz_textarea_updateScrollPx(argument0) {
	//check for updated scroll
	var oldListFrom = listFromPx;
	listFromPx=uiz_drawscrollbar_getValue(scroll);
	if oldListFrom!=listFromPx then{
	    uiz_updater_FixViews_inside();
	    uiz_textarea_registerTypeCursor();
	}
	
	//check for changed scrolllines
	if argument0 then{
		uiz_drawscrollbar_update(scroll, ilx-scblwidth-1,iy,ilx,ily, uiz_vertical);
	}


}
