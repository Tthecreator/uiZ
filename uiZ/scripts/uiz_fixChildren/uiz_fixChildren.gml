/// @description uiz_fixChildren(object, toGrandChildren)
/// @param object
/// @param  toGrandChildren
function uiz_fixChildren(argument0, argument1) {
	if global.isfixinggrandchildren=false then{
	//sdbm("Fixchildren called from",id,object_get_name(object_index))
	if argument1=true then{global.isfixinggrandchildren=true}
	uiz_fixchildren_processing(argument0,argument1)
	global.isfixinggrandchildren=false;
	}




}
