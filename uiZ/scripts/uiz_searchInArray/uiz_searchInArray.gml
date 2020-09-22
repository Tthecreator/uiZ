/// @description uiz_searchInArray(array, arraySize, findWhat)
/// @param array
/// @param  arraySize
/// @param  findWhat
function uiz_searchInArray(argument0, argument1, argument2) {
	/*
	Find a specified value(of either real or string) in an specified array and returns that position.
	Returns -1 if nothing has been found.
	arraysize of 1 means a range from 0 to 0.
	araysize of 2 means a range from 0 to 1.
	*/
	if is_array(argument0) then{
	for(var i=0;i<argument1;i++){
	if ((is_string(argument0[i]) and is_string(argument2)) or (is_real(argument0[i]) and is_real(argument2))) and argument0[i]=argument2 then{return i;}
	}
	}
	return -1;



}
