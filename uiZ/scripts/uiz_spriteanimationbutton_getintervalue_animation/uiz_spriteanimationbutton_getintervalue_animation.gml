/// @description uiz_spriteanimationbutton_getintervalue_animation(instance id)
/// @param instance id
function uiz_spriteanimationbutton_getintervalue_animation(argument0) {
	/*
	Gives a interpolated with animationin/out applied value of the state of a spriteanimationbutton, ranging from 0 to 1.
	Could be useful if you want to open up a menu at the same time as the button is doing its animation.
	*/
	with(argument0){
	if value=true then{
	if intervalue=0 then{return 1;}
	return intervalue;
	}else{
	if intervalue=0 then{return 0;}
	return 1-intervalue;
	}

	}



}
