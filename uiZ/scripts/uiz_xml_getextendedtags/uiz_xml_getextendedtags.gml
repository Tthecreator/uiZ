/// @description uiz_xml_getextendedtags(file)
/// @param file
function uiz_xml_getextendedtags(argument0) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var lsz=ds_list_size(l)
	var count=0;
	for(var i=0;i<lsz;i++){
	//lv=round(uiz_positify(l[| i])>>3);
	lt=(uiz_positify(l[| i]) mod 8);
	if lt<=3 then{
	if l[| i]>=0 then{count++}else{
	//find end
	var setto=uiz_xml_gethandleend(argument0,i)
	if setto>=i then{i=setto;}
	}
	}
	}
	return count;



}
