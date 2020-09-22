/// @description uiz_xml_unloadfile(file)
/// @param file
function uiz_xml_unloadfile(argument0) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	uiz_destroyDsList(l)
	uiz_destroyDsList(d)
	uiz_destroyDsList(v)



}
