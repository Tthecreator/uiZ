/// @description uiz_xml_remove_at(file,at)
/// @param file
/// @param at
function uiz_xml_remove_at(argument0, argument1) {
	//removes a single tag.
	//if this tag has children, those children will be put at the same xml depth as the removed tag was.
	//returns how much interal xml parser data was deleted
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var h = argument1;
	var seh=uiz_xml_gethandleshortend(argument0,h)
	var eh=uiz_xml_gethandleend(argument0,h)
	repeat(seh-h){//remove tag part
	    ds_list_delete(l,h);
	}
	if eh!=-1 then{
	    ds_list_delete(l,eh-(seh-h))//remove closing tag
	    return seh-h+1;
	}else{
	    return seh-h;
	}



}
