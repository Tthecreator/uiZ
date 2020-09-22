/// @description uiz_switch_setvalue(instanceid,value[false],doUpdate[false)
/// @param instanceid
/// @param value[false]
/// @param doUpdate[false
function uiz_switch_setvalue(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	with(argument0){
	    if value!=argument1 then{
	        value=argument1;
	        updated=true;
	        if argument2 then{
	        update=true;
	        }
	        uiz_updater_step();
	    }
	}



}
