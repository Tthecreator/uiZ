/// @description uiz_xml_removedown_at(file,at)
/// @param file
/// @param at
function uiz_xml_removedown_at(argument0, argument1) {
	//removes everything within a tag
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var seh=uiz_xml_gethandleshortend(argument0,argument1)
	var eh=uiz_xml_gethandleend(argument0,argument1)
	repeat(eh-seh){
	ds_list_delete(l,seh)
	}



}
