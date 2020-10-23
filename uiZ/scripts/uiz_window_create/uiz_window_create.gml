/// @description uiz_window_create(width, widthtype, height, heighttype) -returns windowid
/// @param width
/// @param  widthtype
/// @param  height
/// @param  heighttype
function uiz_window_create(argument0, argument1, argument2, argument3) {
	/*
	Creates a window holder object and returns the id of that object.
	See "windows in general" for more information on how to handle windows.
	Takes arguments for width and height, and the types of those width and heights.
	What valuetype does is equivalent to how the variable "posval w/h type" works, but this one only supports px, dp and fc.
	*/
	var w=uiz_c(obj_uiZ_window);
	//w.width=uiz_getposx(argument0,argument1)
	//w.height=uiz_getposy(argument2,argument3)
	w.posinframex=uiz_center
	w.posinframey=uiz_center
	w.setpointx=uiz_middle;
	w.setpointy=uiz_middle;
	w.posvalw=argument0
	w.posvalwtype=argument1
	w.posvalh=argument2
	w.posvalhtype=argument3
	w.containposvx=uiz_screencontain
	w.containposvy=uiz_screencontain
	global.uiz_windows+=2

	with(w){
	uiz_window_fixadddepth();
	uiz_depth_foreground(id);
	//sdbm("set new window depth to ",depth);
	global.selectedwindow=id
	}
	return w;



}
