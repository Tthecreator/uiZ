/// @description uiz_frameset_setDividerThickness(framesetAnchor, frameBarThickness[.1], frameBarThicknessType[dp])
/// @param framesetAnchor
/// @param  frameBarThickness[.1]
/// @param  frameBarThicknessType[dp]
function uiz_frameset_setDividerThickness(argument0, argument1, argument2) {
	with(argument0){
	    frameBarThickness = argument1;
	    frameBarThicknessType = argument2;
	    uiz_frameset_fixThickness();
	    uiz_frameset_forceFixSize(argument0);
	}




}
