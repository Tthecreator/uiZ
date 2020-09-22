/// @description uiz_xml_getextendedtags_number(file,n)
/// @param file
/// @param n
function uiz_xml_getextendedtags_number(argument0, argument1) {
	//in this script, 0 is the first tag
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
	if l[| i]>=0 then{count++
	if count=argument1+1 then{return i}
	}else{
	//find end
	var setto=uiz_xml_gethandleend(argument0,i)
	if setto>=i then{i=setto;}
	}
	}
	}
	return -1;



}
