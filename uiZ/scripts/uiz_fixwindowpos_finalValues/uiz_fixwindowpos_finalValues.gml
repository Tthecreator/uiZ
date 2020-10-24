function uiz_fixwindowpos_finalValues() {
	uiz_window_fixminwh();
	width=max(width,minw);
	height=max(height,minh);

	uiz_fix_Base_Pos_Values()
	uiz_fix_Base_View();
	uiz_fix_Base_iValues()



}
