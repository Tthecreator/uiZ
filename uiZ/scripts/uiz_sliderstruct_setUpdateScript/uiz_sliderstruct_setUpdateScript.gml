/// @description uiz_sliderstruct_setUpdateScript(instanceid, script, argument, doImmidiateUpdate)
/// @param instanceid
/// @param  script
/// @param  argument
/// @param  doImmidiateUpdate
function uiz_sliderstruct_setUpdateScript(argument0, argument1, argument2, argument3) {
	with(argument0){
	updatescript=argument1;
	updatescriptargument=argument2;
	if argument3 then{
	    uiz_destroyObject_notself(newframe);
	    if (updatescript!=-1 and script_exists(updatescript)){script_execute(updatescript,id,updatescriptargument);}
	}
	}



}
