function uiz_stringbox_resetdis() {
	if hasselection=false then{
	selpos_dis_min=-1;
	selpos_dis_max=-1;
	selpos_dis_min_px=-1;
	selpos_dis_max_px=-1;
	uiz_stringbox_dis_get();
	}else{
	selpos_dis_min_px=selpos_dis_min_px-sel_oldix+ix;
	selpos_dis_max_px=selpos_dis_max_px-sel_oldix+ix;
	uiz_stringbox_dis_get();
	uiz_stringbox_redoSelectionStrings();


	}





}
