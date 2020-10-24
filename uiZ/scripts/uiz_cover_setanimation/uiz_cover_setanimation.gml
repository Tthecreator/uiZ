/// @description uiz_cover_setanimation(instanceid,destroyalphaanimation[uiz_cubic_inout],destroyalphaanimationtime[uiz_cubic_inout])
/// @param instanceid
/// @param destroyalphaanimation[uiz_cubic_inout]
/// @param destroyalphaanimationtime[uiz_cubic_inout]
function uiz_cover_setanimation(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.destroyalphaanimation=argument1;
	argument0.destroyalphaanimationtime=argument2;



}
