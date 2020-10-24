/// @description uiz_frameset_divide_objects_vertical(object, divisionval, valuetype[px dp or fc], objectType, divisionval, valuetype[px dp or fc], objectType,........)
/// @param object
/// @param  divisionval
/// @param  valuetype[px dp or fc]
/// @param  objectType
/// @param  divisionval
/// @param  valuetype[px dp or fc]
/// @param  objectType
/// @param ........
function uiz_frameset_divide_objects_vertical() {
	/*
	Requires you to have a previously created frameset.
	Cannot be applied to another anchor, only to a frame assigned to that anchor.
	You need to give this function either a frame belonging to a anchor or the frameset itself.
	You cannot use this funciton to change how the frameset is divided after it has been divided. You can only use this function to add new divisions and add new anchors.
	This will take the given object and replace it with a row-anchor or a col-anchor, depending on which version of the function you called.
	It will then create the amount of frames you specified (you specify it by passing an x amount of arguments) at the size you specified.
	*/
	var p=uiz_framedivisionvertical_part_beg(argument[0]);

	var divisions=(argument_count-1)/3;
	p.isize[divisions-1]=0;
	p.isizetype[divisions-1]=0;
	p.frameat[divisions-1]=0;
	p.hasBar[divisions-1]=0;
	p.minSize[divisions-1]=0;
	p.minSizeType[divisions-1]=px;
	p.maxSize[divisions-1]=0;
	p.maxSizeType[divisions-1]=px;
	p.absorbPixelDiff[divisions-1]=0;

	for(var i=0;i<divisions;++i){
	    var at=i*3+1;
	    uiz_framedivision_part_mid(p, argument[0], argument[at], argument[at+1], argument[at+2]);
	}

	uiz_framedivisionvertical_part_end(p, argument[0]);
	return p;




}
