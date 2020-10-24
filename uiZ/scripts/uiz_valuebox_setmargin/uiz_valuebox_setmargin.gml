/// @description uiz_valuebox_setmargin(instanceid,button knob margins[2], button right margin[0])
/// @param instanceid
/// @param button knob margins[2]
/// @param  button right margin[0]
function uiz_valuebox_setmargin(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.butmargin=argument1;
	argument0.butrightmargin=argument2;



}
