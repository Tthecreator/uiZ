function uiz_textarea_selectAll() {
	hasselection=true;
	selection1Line = 0;
	selection1Char = 0;
	selection1X = ix;
	uiz_textarea_moveSelectionEndLine();
	uiz_updater_FixViews();



}
