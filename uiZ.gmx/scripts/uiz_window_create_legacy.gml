///uiz_window_create_legacy(width,valuetype[px dp or fc],height,valuetype[px dp or fc]) -returns windowid
/*
Creates a window holder object and returns the id of that object.
See "windows in general" for more information on how to handle windows.
Takes arguments for width and height, and the types of those width and heights.
What valuetype does is equivalent to how the variable "posval w/h type" works, but this one only supports px, dp and fc.
*/
var w=instance_create(0,0,obj_uiZ_windowholder);
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
uiz_window_fixadddepth()
global.selectedwindow=id
//uiz_compatibility_windowdepth_fix3()
uiz_window_create_finish()}
//uiz_fixwindowpos(w)
//w.posinframex=uiz_static
//w.posinframey=uiz_static
return w;
