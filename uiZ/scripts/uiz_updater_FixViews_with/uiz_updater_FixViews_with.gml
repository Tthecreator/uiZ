/// @description uiz_updater_FixViews_with(instance_id)
/// @param instance_id
function uiz_updater_FixViews_with(argument0) {
	//fix the views for the given object.
	//this reruns the draw event without checkig if the position of the object has changed.
	//use in with() construction if needed on another object.
	gml_pragma("forceinline")
	with(argument0){uiz_updater_FixViews();}



}
