/// @description uiz_slider_setvalue(id,value from 0 to 1)
/// @param id
/// @param value from 0 to 1
function uiz_slider_setvalue(argument0, argument1) {
	/*
	Set the value of the slider using an animation.
	*/
	with(argument0){
	    fromvalue=invalue
	    value=argument1
	    updated=1;
	    update=1;
	    uiz_updater_step();
	}



}
