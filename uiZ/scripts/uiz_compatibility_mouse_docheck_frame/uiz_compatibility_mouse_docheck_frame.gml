function uiz_compatibility_mouse_docheck_frame() {
	//gml_pragma("forceinline");
	if enablemousecheck=true and point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),max(rx,cntnx),max(ry,cntny),min(rlx,cntnlx),min(rly,cntnly)) then{
	global.mouseover=id;
	global.mouseovermydepth=depth;
	if (scrolly=true or scrollx=true) then{
	global.mouseoverscrollable=id; global.mouseoverscrollablemydepth=depth}
	global.mouseoverframe=id global.mouseoverframemydepth=depth

	}






}
