function uiz_fixslicksliderpos(argument0) {
	var t=argument0;
	with(t){
	uiz_fix_Base_Pos();
	uiz_fix_Base_View();
	uiz_fix_Base_Margins();
	w=round(uiz_getposx_self(sliderthickness,sliderthicknesstype));
	uiz_slickslider_calcKnobPoints();
	}




}
