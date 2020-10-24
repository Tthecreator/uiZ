/// @description uiz_treelist_setbackgroundsettings(instanceid, normal color[c_white], mouse over color[c_black], mouse click color[c_black], mouse drag color[$ffd1ab], normal alpha[0], mouse over alpha[0.5], mouse in alpha[1], mouse drag alpha[0.5])
/// @param instanceid
/// @param  normal color[c_white]
/// @param  mouse over color[c_black]
/// @param  mouse click color[c_black]
/// @param  mouse drag color[$ffd1ab]
/// @param  normal alpha[0]
/// @param  mouse over alpha[0.5]
/// @param  mouse in alpha[1]
/// @param  mouse drag alpha[0.5]
function uiz_treelist_setbackgroundsettings(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	gml_pragma("forceinline");
	argument0.backcolor=argument1;
	argument0.backoncolor=argument2;
	argument0.backincolor=argument3;
	argument0.backselcolor=argument4;
	argument0.backalpha=argument5;
	argument0.backonalpha=argument6;
	argument0.backselalpha=argument7;
	argument0.backdragalpha=argument8;




}
