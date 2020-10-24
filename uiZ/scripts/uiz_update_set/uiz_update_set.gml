/// @description uiz_update_set(instanceid, uiz_update_script, uiz_update_script_argument)
/// @param instanceid
/// @param  uiz_update_script
/// @param  uiz_update_script_argument
function uiz_update_set(argument0, argument1, argument2) {
	//whenever the object updates, this script will be called
	with(argument0){
	    uiz_update_script = argument1;
	    uiz_update_script_argument = argument2;
	}



}
