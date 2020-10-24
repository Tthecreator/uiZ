/// @description uiz_realGetDecimalPoints(real, points to check)
/// @param real
/// @param  points to check
function uiz_realGetDecimalPoints(argument0, argument1) {
	//returns the number of decimal points for a real
	/*
	returns the number of decimal points of a real.
	0-real: The real to be checked.
	1-points to check: The maximum amount this function is able to return and the maximum amount of points expected.
	*/
	for(var i=argument1;i>0;i--){
	if !(string(floor(argument0*power(10,i)) mod 10)="0")then{return i;}
	}
	return 0;



}
