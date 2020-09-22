/// @description uiz_spritecounter_setvalue(instanceid,real number[0])
/// @param instanceid
/// @param real number[0]
function uiz_spritecounter_setvalue(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.value=argument1;
	with(argument0){uiz_updater_FixViews();}




}
