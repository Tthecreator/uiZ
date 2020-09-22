/// @description uiz_slider_setRoundedCorners(id,enabled,distance_x,distance_x_type,distance_y,distance_y_type)
/// @param id
/// @param enabled
/// @param distance_x
/// @param distance_x_type
/// @param distance_y
/// @param distance_y_type
function uiz_slider_setRoundedCorners(argument0, argument1, argument2, argument3, argument4, argument5) {
	with(argument0){
	    roundedcorners=argument1;
	    rounddistance_x=argument2;
	    rounddistancetype_x=argument3;
	    rounddistance_y=argument4;
	    rounddistancetype_y=argument5;
	    rounddx=min(width/2,uiz_getposx_self(rounddistance_x,rounddistancetype_x));
	    rounddy=min(height/2,uiz_getposy_self(rounddistance_y,rounddistancetype_y));
	    uiz_updater_FixViews();
	}



}
