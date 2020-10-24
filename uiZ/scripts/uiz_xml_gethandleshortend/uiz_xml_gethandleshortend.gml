/// @description uiz_xml_gethandleshortend(file,handle)
/// @param file
/// @param handle
function uiz_xml_gethandleshortend(argument0, argument1) {

	var h=argument1
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var lsz=ds_list_size(l);
	//get what handle is
	if lsz=0 then{return 0;}
	if argument1<0 then{return lsz-1;}
	var ret=-1
	for(var i=h+1;i<lsz;++i){
	    var lookfor=uiz_positify(l[|i]) mod 8;
	    if lookfor!=uiz_xml_attributeName and lookfor!=uiz_xml_attributeData then{ret=i;break;}
	}
	if i=lsz then{ret=lsz;}
	return ret;



}
