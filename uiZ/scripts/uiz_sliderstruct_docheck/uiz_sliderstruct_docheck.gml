/// @description uiz_sliderstruct_docheck(instance id)
/// @param instance id
function uiz_sliderstruct_docheck(argument0) {
	if argument0.update=true then{
	argument0.update=false
	//sdbm(argument0.frame)
	return argument0.frame;
	}else{return -1;}



}
