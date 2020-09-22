/// @description uiz_treelist_setHierarchyLinesSettings(instanceid, hierarchyLines[true], hierarchyLineMaxWidth[5], hierarchyLineMinWidth[1], hierarchyLineDecreaseWidth[1], hierarchyLineColor[c_black])
/// @param instanceid
/// @param  hierarchyLines[true]
/// @param  hierarchyLineMaxWidth[5]
/// @param  hierarchyLineMinWidth[1]
/// @param  hierarchyLineDecreaseWidth[1]
/// @param  hierarchyLineColor[c_black]
function uiz_treelist_setHierarchyLinesSettings(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.hierarchyLines=argument1;
	argument0.hierarchyLineMaxWidth=argument2;
	argument0.hierarchyLineMinWidth=argument3;
	argument0.hierarchyLineDecreaseWidth=argument4;
	argument0.hierarchyLineColor=argument5;



}
