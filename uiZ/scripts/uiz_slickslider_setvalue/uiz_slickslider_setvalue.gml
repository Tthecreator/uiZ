/// @description uiz_slickslider_setvalue(id,value from 0 to 1)
/// @param id
/// @param value from 0 to 1
function uiz_slickslider_setvalue(argument0, argument1) {
	/*
	Sets the value of a sliderframe to be extended(true) or collapsed(false).
	An animation will be played when this function is used.
	*/
	with(argument0){
	    if anim=0 then{anim=1; animationcount=0;
	        oldvalue=value;
	        newvalue=argument1;
	    }else{
	        oldvalue=value;
	        newvalue=argument1;
	        animationcount=0;
	    }
	uiz_updater_step();
	}



}
