function uiz_stringbox_selpos_remainInView() {
	if selpos_dis<=0 then{//check if we aren't on the left side, if so move the typepos to the middle
	    var charsToMove = uiz_stringbox_getCharsInHalfWidth(-1);
	    while(str_dis_begin>0 && charsToMove>0){
	    uiz_stringbox_shiftleft();
	    charsToMove--;
	    }
	}else{
	if selpos_dis>=str_dis_size then{
	    var charsToMove = uiz_stringbox_getCharsInHalfWidth(1);
	    repeat(charsToMove){
	    uiz_stringbox_shiftright();
	    }
	}
	}
	//uiz_updater_FixViews_inside();



}
