/// @description uiz_isSpaceChar(char)
/// @param char
function uiz_isSpaceChar(argument0) {
	//Checks if a char is a space like characters
	//11=TAB
	if argument0=" " or argument0=chr(11) or argument0="-" or argument0="_" or argument0="/" or argument0="\\" or argument0="(" or argument0=")" then{
	return true;
	}else{
	return false;
	}



}
