function uiz_fixtreelistpos(argument0) {
	var t=argument0;
	with(t){
		if (usexml == -1){
				sdbm("[uiZ|Warning] XML for treelist not set! Please refer to the example in the manual");
				uiz_treelist_emptyXml(id);
		}
	    uiz_fix_Base();
	    if font>-1 then{draw_set_font(font)}
	    fontHeight = string_height(string_hash_to_newline("|"))
	    scrollBarX = rlx - scrollBarW;
	    uiz_treelist_fixScroll();
	}



}
