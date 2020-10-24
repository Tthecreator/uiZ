/// @description uiz_getposx_self(value,valuetype[px dp fc])
/// @param value
/// @param valuetype[px dp fc]
function uiz_getposx_self(argument0, argument1) {
	/*
	Gets a value using getposx/y but uses it's own object as a reference instead of it's parent.
	uiz_getposx_self(1,fc) will the objects width and uiz_getposx_self(0.5,fc) half of the objects width.
	Useful if you are programming your own uiz objects. 
	*/
	var oldp=parent;
	parent=id;
	var ret=uiz_getposx(argument0,argument1);
	parent=oldp;
	return ret;




}
