/// @description uiz_replaceChars(string, replaceWith, char1, char2...)
/// @param string
/// @param  replaceWith
/// @param  char1
/// @param  char2...
function uiz_replaceChars() {
	/*
	Will take the string and replace all given characters with another given character, then return the new string.
	Make argument1 (replacewith) an emtpy string "" if you want it to remove the characters.
	Takes as many arguments as game maker can handle, any arguments more than 2 will be replaced in the given string.
	*/
	var str=argument[0];
	var rep=argument[1];
	var len=string_length(str)

	for(var i=1;i<=len;i++){
	var c=string_char_at(str,i)
	for(var e=2;e<argument_count;e++){
	if c=argument[e] then{
	//replace
	str=uiz_changeChar(str,i,rep)
	break;
	}
	}
	}
	return str;



}
