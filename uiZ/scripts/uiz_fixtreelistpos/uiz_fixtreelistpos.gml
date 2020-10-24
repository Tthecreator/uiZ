function uiz_fixtreelistpos(argument0) {
	var t=argument0;
	with(t){
	    uiz_fix_Base();
	    if font>-1 then{draw_set_font(font)}
	    fontHeight = string_height(string_hash_to_newline("|"))
	    scrollBarX = rlx - scrollBarW;
	    uiz_treelist_fixScroll();
	}



}
