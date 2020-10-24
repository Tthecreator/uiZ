/// @description uiz_string_pos_at(string,subchar to find,the x't character the find)
/// @param string
/// @param subchar to find
/// @param the x't character the find
function uiz_string_pos_at(argument0, argument1) {
	//return -1 if nothing has been found
	//finds the x't character inside a string where a value 1 for argument2 would return the position of the first character
	var len=string_length(argument0);
	var count=0;
	for(var i=1;i<=len;i++){
	if string_char_at(argument0,i)=argument1 then{
	count++;
	if count>=argument1 then{
	return i;}}
	}
	return -1;



}
