/// @description uiz_checkbox_setcheckmarkcolor(instanceid,checkmark color[c_black],checkmark on color[c_dkgray],checkmark in color[c_black])
/// @param instanceid
/// @param checkmark color[c_black]
/// @param checkmark on color[c_dkgray]
/// @param checkmark in color[c_black]
function uiz_checkbox_setcheckmarkcolor(argument0, argument1, argument2, argument3) {
	//#wiki https://git.tthecreator.win/TtheCreator/uiz/wikis/checkbox
	gml_pragma("forceinline");
	argument0.checkcolor=argument1;
	argument0.checkoncolor=argument2;
	argument0.checkincolor=argument3;



}
