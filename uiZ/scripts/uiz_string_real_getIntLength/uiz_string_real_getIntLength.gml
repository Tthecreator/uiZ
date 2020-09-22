/// @description uiz_string_real_getIntLength(string)
/// @param string
function uiz_string_real_getIntLength(argument0) {
	//returns how many int positions a string (containing a number) has.
	//requires a string that represents a string: (-)0123456789.0123456789
	//example: 123.456 would return 3 because there are 3 characters in "123"
	var addMinusPos;
	if string_char_at(argument0,1)=="-" then{
	    addMinusPos = 1;
	}else{
	    addMinusPos = 0;
	}
	var dotPos = string_pos(".",argument0);

	if dotPos == 0 then{
	    return string_length(argument0)-addMinusPos;
	}

	return dotPos-addMinusPos-1



}
