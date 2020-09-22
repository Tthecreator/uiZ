/// @description uiz_getValidVariableName(variable)
/// @param variable
function uiz_getValidVariableName(argument0) {
	/*
	Takes a string and returns a version of that string that whould be considered a valid variable name by game maker.
	If there is no possible way to turn it into a valid variable the funciton will return "random_"+string(irandom(9999)) 
	*/
	//returns a variable that would be considered a valid variable by game maker
	var str=argument0;
	//check for a numer at the beginning
	//sdbm("wut?",string_char_at(str,1))
	while (uiz_charIsNumber(string_char_at(str,1))=1) {
	str=string_copy(str,2,string_length(str)-1)
	}
	//check for invalid characters
	var len=string_length(str)
	for(var i=1;i<=len;i++){
	var c=ord(string_char_at(str,i))
	if !((c>=$30 and c<=$39) or (c>=$41 and c<=$7a) or c=$5f) then{
	str=uiz_changeChar(str,i,"_")
	}
	}


	//return
	if string_length(str)=0 then{
	return "random_"+string(irandom(9999))
	}else{return str;}




}
