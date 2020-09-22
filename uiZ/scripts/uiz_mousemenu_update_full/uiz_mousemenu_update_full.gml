function uiz_mousemenu_update_full() {
	updateselection = true;
	if oldselection!=-1 then{
	    uiz_updater_FixViews_area_selfmarked(rx,sel_oy,rlx,sel_oly);
	}
	if selection!=-1 then{
	    uiz_updater_FixViews_area_selfmarked(rx,sel_y,rlx,sel_ly);
	}



}
