/// @description uiz_getposx_simple(value,valuetype[px dp or fc])
/// @param value
/// @param valuetype[px dp or fc]
function uiz_getposx_simple(argument0, argument1) {
	/*
	Changes a value from a value and valuetype value to a single pixel value, but only works for px, dp, fc, fcx, fcy, fcm, fcmin and fcmax.
	uiz_getposx_simple(1,fc) will the objects width and uiz_getposx_simple(0.5,fc) half of the parent's objects width.
	Useful if you are programming your own uiz objects. 
	*/
	switch(argument1){
	case px:
	return argument0;
	break;
	case dp:
	return argument0*uiz_dp
	break;
	case fc: case fcx:
	return round(argument0*(parent.iwidth)-leftmargin-rightmargin)
	break;
	case fcy:
	return round(argument0*(parent.iheight)-leftmargin-rightmargin)
	break;
	case fcm:
	return round(mean(argument0*(parent.iwidth),argument0*(parent.iheight))-leftmargin-rightmargin)
	break;
	case fcmin:
	if parent.width>parent.height then{
	return round(argument0*(parent.iheight)-leftmargin-rightmargin);
	}else{
	return round(argument0*(parent.iwidth)-leftmargin-rightmargin);
	}
	break;
	case fcmax:
	if parent.width<parent.height then{
	return round(argument0*(parent.iheight)-leftmargin-rightmargin);
	}else{
	return round(argument0*(parent.iwidth)-leftmargin-rightmargin);
	}
	break;
	default:
	return argument0;
	break;
	}



}
