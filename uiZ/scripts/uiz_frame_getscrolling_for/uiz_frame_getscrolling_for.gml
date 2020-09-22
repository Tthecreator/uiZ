/// @description uiz_frame_getscrolling_for(instance_id);
/// @param instance_id
function uiz_frame_getscrolling_for(argument0) {
	//returns whether the frame is in a scrolling state lasting multiple steps. (so not a single scrollwheel whip, but when the mouse actually clicks and drags something)
	with(argument0){return uiz_frame_getscrolling();}



}
