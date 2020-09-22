/// @description uiz_sign(n)
/// @param n
function uiz_sign(argument0) {
	/*
	Does almoast the same as the regular sign() function, but returns 1 when the number is 0.
	Returns a -1 if the entered number is negative and a 1 if the number was 0 or positive. 
	*/
	if sign(argument0)>=0 then{return 1;}else{return -1;}



}
