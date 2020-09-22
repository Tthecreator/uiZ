/// @description uiz_treelist_setxml(instanceid,xml handle[0])
/// @param instanceid
/// @param xml handle[0]
function uiz_treelist_setxml(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.usexml=argument1;
	uiz_treelist_parsexml(argument0);



}
