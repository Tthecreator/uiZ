/// @description uiz_pixelsToValY(type,pos in px,object)
/// @param type
/// @param pos in px
/// @param object
function uiz_pixelsToValY(argument0, argument1, argument2) {
	/*
	Script that takes a pos in pixels and reverts it back to value of given type.
	Arguments:
	0-valueType: what type you want to convert to. px, dp, fc, fcx, fcy and fcm are supported.
	1-value in px: the value in pixels you want to convert from.
	2-instanceid: The object to reverse the values for.
	*/
	switch(argument0){
	case px: return argument1; break;
	case dp: return (argument1/uiz_dp); break;
	case fcy: case fc: return (argument1/argument2.parent.height); break;
	case fcx: return (argument1/argument2.parent.width); break;
	case fcm: return (2*(argument1/argument2.parent.height)); break;
	default: return 0; break;
	}



}
