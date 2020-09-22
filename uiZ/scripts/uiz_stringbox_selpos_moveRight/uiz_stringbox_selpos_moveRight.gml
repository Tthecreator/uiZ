/// @description moves the selection position to the right
function uiz_stringbox_selpos_moveRight() {
	if selpos_dis<str_dis_size && str_dis_end<=str_real_size then{
	var charAdd = string_char_at(str_dis,selpos_dis+1);
	switch(sign(selpos_dis-typepos_dis)){
	case -1://selectionpos to the left of typepos
	sel_str_beg_m=charAdd;
	sel_str_mid=string_copy(sel_str_mid,2,string_length(sel_str_mid)-1);
	sel_str_beg+=charAdd;
	break;
	case 1: case 0://selectionpos to the right of typepos
	sel_str_end=string_copy(sel_str_end,2,string_length(sel_str_end)-1)
	sel_str_mid+=charAdd;
	break;
	}

	var charSize = string_width(string_hash_to_newline(charAdd));
	selpos_dis++;
	selpos_dis_px+=charSize;
	if str_dis_begin+selpos_dis=typepos_real then{
	//hasselection=false;
	//uiz_stringbox_selection_disable();
	}
	uiz_stringbox_calculateConnectionPoints();
	uiz_stringbox_selpos_remainInView();

	}



}
