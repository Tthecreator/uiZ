/// @description uiz_drawscrollbar_setValue_animation(scroll, newValue, animation)
/// @param scroll
/// @param  newValue
/// @param  animation
function uiz_drawscrollbar_setValue_animation(argument0, argument1, argument2) {
	/*
	Changes how far a scrollbar has scrolled inside a scrollbar's "scroll" value.
	The animation parameter should be the same as the animation parameter in uiz_drawscrollbar_horizontal/vertical_step.
	Set newvalue to the amount you want the scrollbar to be scrolled. Should be 0 or higher and lower than the "scrolllines" argument in uiz_drawscrollbar_. 

	don't forget to call uiz_drawscrollbar_update to make sure the scrollbar displays the right values.
	*/

	if argument0[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel] then{
	global.mousefrozen=0;
	global.mousefrozensafety=0;
	}

	argument0[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel] = false;

	var updated=uiz_drawscrollbar_getUpdated(argument0);
	if updated<=3 then{
	argument0[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 5-updated;
	}

	if argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor]=1 then{//not busy doing an animation
	    argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]=argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll];
	    argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor] = 0;
	}else{//busy doing an animation
	    var animfac = (argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll] - argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from])/(argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to] - argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_from]);
	    argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_factor]=uiz_animation_revertFunction(animfac,argument2);
	}
	argument0[@uiz_drawscrollbar_struct.uiz_dsb_tween_scroll_to] = argument1




}
