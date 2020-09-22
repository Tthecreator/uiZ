/// @description uiz_xml_getlevels(tree)
/// @param tree
function uiz_xml_getlevels(argument0) {
	var levels=0
	var tsz=ds_list_size(argument0)
	for(var i=0;i<tsz;i++){
	if (uiz_positify(argument0[|i]) mod 8)<4 then{levels++;}
	}
	return levels;



}
