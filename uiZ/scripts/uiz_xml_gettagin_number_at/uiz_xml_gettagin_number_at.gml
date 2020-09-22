/// @description uiz_xml_gettagin_number_at(xml,at,number)
/// @param xml
/// @param at
/// @param number
function uiz_xml_gettagin_number_at(argument0, argument1, argument2) {
	//number: first tag isn't 0, but 1.
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var lsz=ds_list_size(l);
	//check if at is a tag
	if argument1<lsz then{
	var flv=round(uiz_positify(l[| argument1])>>3);
	var flt=(uiz_positify(l[| argument1]) mod 8);
	if flt<=1 then{
	var count=0;
	var seh=uiz_xml_gethandleshortend(argument0,argument1)
	for(var i=seh;i<lsz;i++){
	lv=round(uiz_positify(l[| i])>>3);
	lt=(uiz_positify(l[| i]) mod 8);
	if lt=7 and d[| lv]=d[| flv] then{break;}
	if lt<=3 then{
	count++;
	if count=argument2 then{return i;}
	}

	}
	}
	}
	return -1;
	return undefined



}
