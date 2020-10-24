function uiz_compatibility_frameanchor_beginstep0() {
	gml_pragma("forceinline")
	globalvar mouseover,mouseoverdepth,mouseoverdone;
	if mouseoverdone=0 then{
	global.mouseoverobject=obj_uiZ_controller.id
	global.mouseoverobjectmydepth=0
	global.mouseoverwindow=obj_uiZ_controller.id
	global.mouseoverwindowmydepth=0
	global.mouseoverframe=obj_uiZ_controller.id
	global.mouseoverframemydepth=0
	global.mouseoverscrollable=obj_uiZ_controller.id
	global.mouseoverscrollablemydepth=0
	global.mouseover=obj_uiZ_controller.id
	global.mouseovermydepth=0
	global.mouseoverdone=1
	}



}
