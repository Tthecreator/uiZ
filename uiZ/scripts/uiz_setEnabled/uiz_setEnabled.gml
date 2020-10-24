/// @description uiz_setEnabled(instance_id,bool enabled)
/// @param instance_id
/// @param bool enabled
function uiz_setEnabled(argument0, argument1) {
	//take an object and enable or disable it and all of it's children.
	//This will stop an object from drawing, running uiZ step events, mouse checking and fixing.
	argument0.uiz_enabled=argument1;



}
