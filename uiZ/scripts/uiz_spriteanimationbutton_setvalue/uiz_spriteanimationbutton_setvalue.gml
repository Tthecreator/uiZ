/// @description uiz_spriteanimationbutton_setvalue(instance id,value)
/// @param instance id
/// @param value
function uiz_spriteanimationbutton_setvalue(argument0, argument1) {
	/*
	Takes a spriteanimationbutton and sets the value of that button.
	*/

	with(argument0){
	    if value!=argument1 then{
	        updated=true;
	        value=!value;
	        uiz_updater_step();
	        update=true;
	    }
	}



}
