///uiz_draw_spritebutton_step(x1,y1,x2,y2,currentState)
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
