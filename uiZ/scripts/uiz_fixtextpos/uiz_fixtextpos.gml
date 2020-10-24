function uiz_fixtextpos(argument0) {
	var t=argument0;
	with(t){
	//width=string_width(text)
	//height=string_height(text)
	var oldw = iwidth;
	var oldh = iheight;
	uiz_fix_Base();
	if oldw!=iwidth || oldh!=iheight then{
	uiz_text_recalculate(argument0);
	}
	}




}
