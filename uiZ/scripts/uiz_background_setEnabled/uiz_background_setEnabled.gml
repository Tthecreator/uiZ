/// @description uiz_background_setEnabled(instanceid, enabled)
/// @param instanceid
/// @param  enabled
function uiz_background_setEnabled(argument0) {
	//enables the use of background on a certain object.
	//for this to work the object does need to be compatible with background
	//most objects come with backgrounds enabled by default
	//you can easily check if your object is compatible with backgrounds by checking the manual or going into the create event and see if it has any of the background variables.
	//you might also need to 'set' the background using uiz_background_set in case you aren't already planning on 'fixing' the object (using something like uiz_fixgeneralpos)
	gml_pragma("forceinline");
	argument0.hasbackground=argument0



}
