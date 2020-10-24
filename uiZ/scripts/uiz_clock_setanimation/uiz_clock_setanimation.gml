/// @description uiz_clock_setanimation(instanceid,secondsanimation[uiz_exponential_in],minutesanimation[uiz_zero],hoursanimation[uiz_straight])
/// @param instanceid
/// @param secondsanimation[uiz_exponential_in]
/// @param minutesanimation[uiz_zero]
/// @param hoursanimation[uiz_straight]
function uiz_clock_setanimation(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.secondsanimation=argument1;
	argument0.minutesanimation=argument2;
	argument0.hoursanimation=argument3;





}
