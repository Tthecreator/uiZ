function uiz_compatibility_mouse_docheck_window() {
	//gml_pragma("forceinline");
	if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,cntnx),max(ry,cntny),min(rlx,cntnlx),min(rly,cntnly)) then{
	global.mouseover=id; global.mouseovermydepth=depth;
	global.mouseoverwindow=id; global.mouseoverwindowmydepth=depth
	}



}
