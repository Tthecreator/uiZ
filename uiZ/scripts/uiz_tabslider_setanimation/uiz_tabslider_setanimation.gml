/// @description uiz_tabslider_setanimation(instanceid,place[uiz_circular_in],width[uiz_spring],time[0.25])
/// @param instanceid
/// @param place[uiz_circular_in]
/// @param width[uiz_spring]
/// @param time[0.25]
function uiz_tabslider_setanimation(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.placeanimation=argument1;
	argument0.widthanimation=argument2;
	argument0.animationtime=argument3;



}
