/// @description uiz_removeDecimals(real)
/// @param real
function uiz_removeDecimals(argument0) {
	/*
	Takes a number and "removes" the decimal point creating a whole number.
	3.6 would become 36 and 76.9453 would become 769453.
	*/
	var num=argument0
	while(frac(num)>0){
	num*=10
	}
	return num;



}
