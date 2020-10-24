/// @description uiz_cover_settings(instanceid,disablemouse[true],ignorecontain[false],destroyonclick[true])
/// @param instanceid
/// @param disablemouse[true]
/// @param ignorecontain[false]
/// @param destroyonclick[true]
function uiz_cover_settings(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.disablemouse=argument1;
	argument0.ignorecontain=argument2;
	argument0.destroyonclick=argument3;



}
