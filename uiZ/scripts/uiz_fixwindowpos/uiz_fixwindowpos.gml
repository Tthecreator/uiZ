function uiz_fixwindowpos(argument0) {
	//uiz_fixobjectpos(argument0)

	var t=argument0;
	with(t){
	uiz_window_fixbackground();
	bars=uiz_getposy(barsize,barsizevaltype);
	uiz_fixpositioninframe()

	//calculate end margins
	uiz_fix_Base_endmargin();
	end_topframemargin=ceil(end_topframemargin+bars+topbar_bkmar);//add top window bar as margin

	uiz_fixwindowpos_finalValues();

	}





}
