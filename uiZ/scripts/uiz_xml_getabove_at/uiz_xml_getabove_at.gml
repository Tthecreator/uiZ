/// @description uiz_xml_getabove_at(xml, at)
/// @param xml
/// @param  at
function uiz_xml_getabove_at(argument0, argument1) {
	//return -1 if position is not found, or position is top level
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var h=argument1;
	if h=0 then{return -1}else{
	for(var i=h-1;i>=0;i--){
	lt=uiz_positify(l[| i]) mod 8;
	switch(lt){
	case 0: case 1:
	return i;
	break;
	case 7:
	//find corresponding h
	lv=round(uiz_positify(l[| i])>>3);
	var ti=i
	for(var i=ti;i>=0;i--){
	lt=uiz_positify(l[| i]) mod 8;
	if lt=0 or lt=1 and (round(uiz_positify(l[| i])>>3)=lv) then{break;}
	}
	if i=0 then{return -1;}
	break;
	}
	}
	}
	return -1;



}
