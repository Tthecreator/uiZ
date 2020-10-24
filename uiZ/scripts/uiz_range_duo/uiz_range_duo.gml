/// @description uiz_range_duo(value, min1, max1, min2, max2)
/// @param value
/// @param  min1
/// @param  max1
/// @param  min2
/// @param  max2
function uiz_range_duo(argument0, argument1, argument2, argument3, argument4) {
	//returns if value is between the min1 and max1 or if the value is between min2 and max2.
	if (argument0>argument1 and argument0<argument2) or (argument0>argument3 and argument0<argument4) then{
	    return true;
	}else{
	    return false;
	}



}
