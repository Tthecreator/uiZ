/// @description uiz_valuebox_setcolor(instanceid,textcolor[c_black],plusbuttoncolor[c_green],plusbuttononcolor[c_olive],plusbuttonincolor[c_lime],minbuttoncolor[c_red],minbuttononcolor[c_orange],minbuttonincolor[c_yellow],iconcolor[c_white])
/// @param instanceid
/// @param textcolor[c_black]
/// @param plusbuttoncolor[c_green]
/// @param plusbuttononcolor[c_olive]
/// @param plusbuttonincolor[c_lime]
/// @param minbuttoncolor[c_red]
/// @param minbuttononcolor[c_orange]
/// @param minbuttonincolor[c_yellow]
/// @param iconcolor[c_white]
function uiz_valuebox_setcolor(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	gml_pragma("forceinline");
	argument0.textcolor=argument1;
	argument0.plusbuttoncolor=argument2;
	argument0.plusbuttononcolor=argument3;
	argument0.plusbuttonincolor=argument4;
	argument0.minbuttoncolor=argument5;
	argument0.minbuttononcolor=argument6;
	argument0.minbuttonincolor=argument7;
	argument0.iconcolor=argument8;




}
