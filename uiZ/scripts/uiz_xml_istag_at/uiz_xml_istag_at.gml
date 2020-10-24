/// @description uiz_xml_istag_at(file,at)
/// @param file
/// @param at
function uiz_xml_istag_at(argument0, argument1) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	if ds_list_size(l)>argument1 then{
	//lv=round(uiz_positify(l[| argument1])>>3);
	lt=uiz_positify(l[| argument1]) mod 8;
	if lt=2 or lt=3 then{return 1;}else{return 0;}
	}
	return 0;



}
