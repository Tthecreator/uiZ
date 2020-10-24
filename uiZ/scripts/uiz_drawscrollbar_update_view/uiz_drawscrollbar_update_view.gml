/// @description uiz_drawscrollbar_update_view(x1,y1,x2,y2,orientation,mstate,mstate_last,updated)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param orientation
/// @param mstate
/// @param mstate_last
/// @param updated
function uiz_drawscrollbar_update_view(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	//updates a scrollbars view
	//possible orientations:
	//uiz_auto:-1;
	//uiz_horizontal:0;
	//uiz_vertical:1;
	var updated=argument7;
	var orient = argument4;
	if orient = uiz_auto then {
	    if (argument2 - argument0) > (argument3 - argument1) then {
	        orient = uiz_horizontal;
	    } else {
	        orient = uiz_vertical;
	    }
	}
	var mstate = argument5;
	var mstate_last = argument6;
	if mstate = mstate_last then {
	    var state_change = false;
	} else {
	    var state_change = true;
	}
	var w = argument2 - argument0;
	var h = argument3 - argument1;

	if orient = uiz_vertical then {
	    if (state_change = true and((mstate >= 1 and mstate <= 2) or(mstate_last >= 1 and mstate_last <= 2))) {
	        //update top button
	        //sdbm("update top button");
	        uiz_updater_FixViews_area_selfmarked(argument0, argument1, argument2, argument1 + w - 1);
	    }
	    if (state_change = true and((mstate >= 3 and mstate <= 4) or(mstate_last >= 3 and mstate_last <= 4))) {
	        //update bottom button
	        //sdbm("update bottom button");
	        uiz_updater_FixViews_area_selfmarked(argument0, argument3 - w, argument2, argument3);
	    }
	    if updated=5 or (state_change = true and((mstate >= 5 and mstate <= 6) or(mstate_last >= 5 and mstate_last <= 6))) {
	        //update middle
	        //sdbm("update middle 1");
	        uiz_updater_FixViews_area_selfmarked(argument0, argument1 + w , argument2, argument3 - w - 1);
	    }
	} else {
	    if (state_change = true and((mstate >= 1 and mstate <= 2) or(mstate_last >= 1 and mstate_last <= 2))) {
	        //update left button
	        //sdbm("update left button");
	        uiz_updater_FixViews_area_selfmarked(argument0, argument1, argument0 + h - 1, argument3);
	    }
	    if (state_change = true and((mstate >= 3 and mstate <= 4) or(mstate_last >= 3 and mstate_last <= 4))) {
	        //update right button
	        //sdbm("update right button");
	        uiz_updater_FixViews_area_selfmarked(argument2 - h, argument1, argument2, argument3);
	    }
	    if updated=5 or (state_change = true and((mstate >= 5 and mstate <= 6) or(mstate_last >= 5 and mstate_last <= 6))) {
	        //update middle
	        //sdbm("update middle 2");
	        uiz_updater_FixViews_area_selfmarked(argument0 + h, argument1, argument2 - h - 1, argument3)
	    }
	}



}
