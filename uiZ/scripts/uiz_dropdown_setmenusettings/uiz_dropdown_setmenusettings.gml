/// @description uiz_dropdown_setmenusettings(instanceid,mousebackcolor[c_blue],mousebackalpha[0.5],mouseitemcolor[c_white],mouseitemoncolor[c_ltgray],mouseitemincolor[c_ltgray],mouseitemalpha[1],mousemargin[3],mousefont[-1],mousetextcolor[c_black])
/// @param instanceid
/// @param mousebackcolor[c_blue]
/// @param mousebackalpha[0.5]
/// @param mouseitemcolor[c_white]
/// @param mouseitemoncolor[c_ltgray]
/// @param mouseitemincolor[c_ltgray]
/// @param mouseitemalpha[1]
/// @param mousemargin[3]
/// @param mousefont[-1]
/// @param mousetextcolor[c_black]
function uiz_dropdown_setmenusettings(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	gml_pragma("forceinline");
	argument0.mousebackcolor=argument1;
	argument0.mousebackalpha=argument2;
	argument0.mouseitemcolor=argument3;
	argument0.mouseitemoncolor=argument4;
	argument0.mouseitemincolor=argument5;
	argument0.mouseitemalpha=argument6;
	argument0.mousemargin=argument7;
	argument0.mousefont=argument8;
	argument0.mousetextcolor=argument9;



}
