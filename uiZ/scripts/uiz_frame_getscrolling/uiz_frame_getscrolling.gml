/// @description uiz_frame_getscrolling();
function uiz_frame_getscrolling() {
	//returns whether the frame is in a scrolling state lasting multiple steps. (so not a single scrollwheel whip, but when the mouse actually clicks and drags something)

	if (snapm=true or snapk=true or uiz_drawscrollbar_getSelected(uscrollx)=true or uiz_drawscrollbar_getSelected(uscrolly)=true){
	return true;
	}else{
	return false;
	}



}
