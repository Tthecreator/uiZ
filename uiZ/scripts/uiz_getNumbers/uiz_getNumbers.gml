/// @description uiz_getNumbers(real)
/// @param real
function uiz_getNumbers(argument0) {
	/*
	Gets the amount of numbers of a number. (In base 10)
	Doesn't work with decimal points.
	3 would become 1 and 769453 would return 6.
	*/
	var a=floor(abs(argument0))
	if a=0 then{return 1;}else{
	return floor(log10(a))+1;}



}
