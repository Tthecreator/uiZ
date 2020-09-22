/// @description uiz_stringbox_getCharsInHalfWidth(incrementor);
/// @param incrementor
function uiz_stringbox_getCharsInHalfWidth(argument0) {
	//get amount of chars that fit in half a textbox length:
	w=0;
	var charPosAt=typepos_real;
	var charsToMove=0;
	while(w<floor(i_ilx-ix)/2 && charPosAt>0 && charPosAt<str_real_size){
	    w+=string_width(string_hash_to_newline(string_char_at(str_real,charPosAt)));
	    charPosAt+=argument0;
	    charsToMove++;
	}
	return charsToMove;



}
