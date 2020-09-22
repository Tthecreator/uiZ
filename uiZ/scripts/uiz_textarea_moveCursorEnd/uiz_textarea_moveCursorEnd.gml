function uiz_textarea_moveCursorEnd() {
	if selection1Line>=0{
	selection1X=ix+string_width(string_hash_to_newline(textList[|selection1Line]));
	selection1Char=string_length(textList[|selection1Line]);
	uiz_textarea_registerTypeCursor();
	}



}
