/// @description moves the type selection on to the right
function uiz_stringbox_typepos_moveRight() {
	if typepos_real<str_real_size then{
	var charSize = string_width(string_hash_to_newline(string_char_at(str_real,typepos_real+1)));
	typepos_real++;
	typepos_dis++;
	typepos_dis_px+=charSize;
	if hasselection then{
	uiz_stringbox_calculateConnectionPoints();
	}
	uiz_stringbox_typer_remainInView();
	uiz_stringbox_typecursor_register();
	}



}
