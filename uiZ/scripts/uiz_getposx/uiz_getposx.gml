/// @description uiz_getposx(value,valuetype[px dp fc])
/// @param value
/// @param valuetype[px dp fc]
function uiz_getposx(argument0, argument1) {
	/*
	Changes a value from a value and valuetype value to a single pixel value.
	uiz_getposx(1,fc) will the objects width and uiz_getposx(0.5,fc) half of the parent's objects width.
	Useful if you are programming your own uiz objects. 
	*/
	switch(argument1){
	default:
	sdbm("[uiZ|Warning]: given valuetype '"+argument1+"' not a correct value in function uiz_getposy. Reverting to px");
	case px:
	return argument0;
	break;
	case pxmin:
	return parent.iwidth-argument0
	break;
	case dp:
	return round(argument0*uiz_dp);
	break;
	case dpmin:
	return round(parent.iwidth-argument0*uiz_dp);
	break;
	case fc: case fcx:
	return round(argument0*(parent.iwidth)/*-leftmargin-rightmargin*/);
	break;
	case fcy:
	return round(argument0*(parent.iheight)/*-leftmargin-rightmargin*/)
	break;
	case fcm:
	return round(mean(argument0*(parent.iwidth),argument0*(parent.iheight))/*-leftmargin-rightmargin*/)
	break;
	case fcmin:
	if parent.iwidth>parent.iheight then{
	return round(argument0*(parent.iheight)/*-leftmargin-rightmargin*/)
	}else{
	return round(argument0*(parent.iwidth)/*-leftmargin-rightmargin*/);
	}
	break;
	case fcmax:
	if parent.iwidth<parent.iheight then{
	return round(argument0*(parent.iheight)/*-leftmargin-rightmargin*/)
	}else{
	return round(argument0*(parent.iwidth)/*-leftmargin-rightmargin*/);
	}
	break;
	//default:
	//return argument0;
	//break;
	}



}
