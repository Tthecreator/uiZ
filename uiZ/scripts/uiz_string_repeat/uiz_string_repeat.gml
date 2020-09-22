/// @description uiz_string_repeat(string, times)
/// @param string
/// @param  times
function uiz_string_repeat(argument0, argument1) {
	var str="";
	if argument1>0 then{
	repeat(argument1){
	str+=argument0
	}
	}
	return str;



}
