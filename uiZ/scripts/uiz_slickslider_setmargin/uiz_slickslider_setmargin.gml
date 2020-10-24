/// @description uiz_slickslider_setmargin(instanceid,margin[4],type[px],linemargin[3])
/// @param instanceid
/// @param margin[4]
/// @param type[px]
/// @param linemargin[3]
function uiz_slickslider_setmargin(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.slidermargin=argument1;
	argument0.slidermargintype=argument2;
	argument0.linemargin=argument3;



}
