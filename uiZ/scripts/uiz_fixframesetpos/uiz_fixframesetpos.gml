/// @description uiz_fixframesetpos(frameset)
/// @param frameset
function uiz_fixframesetpos(argument0) {
	var g=argument0;
	with(g){
	uiz_fix_Base_Pos();
	/*
	if snaptoparent=1 then{
	width=parent.iwidth
	height=parent.iheight
	}
	*/
	uiz_fix_Base_View();
	uiz_fix_Base_Margins();
	uiz_fixChildren(id,true)
	}

	with(g.headframe){

	if snaptoparent=1 then{
	width=parent.iwidth
	height=parent.iheight

	}

	;
	uiz_compatibility_fixframesetpos_depth()

	if object_index == obj_uiZ_framerowanchor then{
	uiz_framesetfixhorizontal(id);
	}else if object_index == obj_uiZ_framecolanchor then{
	uiz_framesetfixvertical(id);
	}

	}
	//if global.debug_action=true then{sdbm(global.debug_action_string);sdbm("END")}
	//global.uiz_fix_updates++;



}
