/// @description uiz_stringbox_setcursoranimation(instanceid,animation in[uiz_exponential_in],animation out[uiz_exponential_in],time[1])
/// @param instanceid
/// @param animation in[uiz_exponential_in]
/// @param animation out[uiz_exponential_in]
/// @param time[1]
function uiz_stringbox_setcursoranimation(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.typeanimationin=argument1;
	argument0.typeanimationout=argument2;
	argument0.countspeed=argument3;




}
