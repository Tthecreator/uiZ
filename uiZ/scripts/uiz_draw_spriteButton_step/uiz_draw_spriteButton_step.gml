/// @description uiz_draw_spriteButton_step(x1,y1,x2,y2,currentState)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param currentState
function uiz_draw_spriteButton_step(argument0, argument1, argument2, argument3, argument4) {
	/*
	Checks the state of the object and updates the spritebutton if needed.
	Returns state of button (which needs to be fed to uiz_draw_spritebutton_state.
	if this number is negative, the state has changed.

	*/
	var newState = uiz_mouse_getStateWithin(argument0,argument1,argument2,argument3);
	if newState != argument4 then{
	    //update view
	    uiz_updater_FixViews_area_selfmarked(argument0,argument1,argument2,argument3);
	    return -1-newState;
	}

	return newState;



}
