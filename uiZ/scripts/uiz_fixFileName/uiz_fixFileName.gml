/// @description uiz_fixFileName(filepath)
/// @param filepath
function uiz_fixFileName(argument0) {
	/*
	A function made to check the validity of a filename.
	It checks a single file or file path.
	It removes invalid signs/characters that have been used.
	It returns a new string holding the fixed file path.
	*/
	//var valid=1;
	//var rror=argument1
	//check for false characters:
	var str=argument0
	for(var i=1;i<=string_length(str);i++){
	var ch=string_char_at(str,i);
	if ch="<" or ch=">" or ch="\"" or ch="'" or ch="/" or ch="|" or ch="?" or ch="*" or ch=":" or ord(ch)<32 then{
	str=uiz_removeChar(str,i);
	i--;
	}
	}

	return str;



}
