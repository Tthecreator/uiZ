function uiz_fixtextlinespos(argument0) {
	var t=argument0;
	with(t){
	uiz_fix_Base();
	if font!=-1 then{draw_set_font(font)}
	drawtext=uiz_getTextLines_contained(text,width-marginw*2,height-marginh*2)
	//sdbm(drawtext)

	}




}
