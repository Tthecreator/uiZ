/// @description uiz_lastStringChars(string,number of chars)
/// @param string
/// @param number of chars
function uiz_lastStringChars(argument0, argument1) {
	//gets the last x characters inside of a string
	//example: uiz_lastStringChars("Hello World",4) would return "orld"
	var len=string_length(argument0)
	return string_copy(argument0,len-argument1+1,argument1)



}
