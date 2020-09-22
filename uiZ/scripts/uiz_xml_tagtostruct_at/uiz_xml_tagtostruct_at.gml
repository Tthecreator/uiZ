/// @description uiz_xml_tagtostruct_at(file,at)
/// @param file
/// @param at
function uiz_xml_tagtostruct_at(argument0, argument1) {
	//data whithin a tag will get lost
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	lv=round(uiz_positify(l[| argument1])>>3);
	lt=uiz_positify(l[| argument1]) mod 8;
	//var nlt;
	switch(lt){
	case 2:
	//T
	if l[| argument1]<0 then{
	l[| argument1]=-1-((lv<<3))
	}else{
	l[| argument1]=(lv<<3)}
	l[| argument1+1]=(lv<<3)+7;
	break;
	case 3:
	//O
	var eh=uiz_xml_gethandleshortend(argument0,argument1)
	if l[| argument1]<0 then{
	l[| argument1]=-1-((lv<<3)+1)
	}else{
	l[| argument1]=(lv<<3)+1}
	l[| eh-1]=(lv<<3)+7;

	break;
	//default: nlt=lt break;
	}



}
