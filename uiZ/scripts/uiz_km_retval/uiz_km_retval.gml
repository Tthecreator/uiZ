/// @description uiz_km_retval(defaultValue, mouseOnValue, mouseInValue)
/// @param defaultValue
/// @param  mouseOnValue
/// @param  mouseInValue
function uiz_km_retval(argument0, argument1, argument2) {
	/*
	Requires you to call this from a uiZ object.
	Returns a different value for when your mouse is over an object, and when it clicks an object, and it has a default value for when the mouse isn't over the object
	Can save some space in your scripts/objects.
	*/
	//sdbm(kmouseover)
	switch(kmouseover){
	case 3: case 2: return argument2; break;
	case 1: return argument1; break;
	default: return argument0; break;
	}



}
