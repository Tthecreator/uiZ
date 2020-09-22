/// @description uiz_xml_writetag(file,tree,tagname,taginfo,[tagattributename,tagattributeinfo,......])
/// @param file
/// @param tree
/// @param tagname
/// @param taginfo
/// @param [tagattributename
/// @param tagattributeinfo
/// @param ......]
function uiz_xml_writetag() {
	var h=uiz_xml_gethandle(argument[0],argument[1])
	eh=uiz_xml_gethandleshortend(argument[0],h)
	if h>-1 and (argument_count mod 2)=0 then{
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument[0]];
	var d=m.filelistd[| argument[0]];
	var v=m.filelistv[| argument[0]];
	args=(argument_count-4)/2
	if args=0 then{
	uiz_list_addinsert(l,eh,(uiz_list_getadd(d,argument[2])<<3)+2)
	uiz_list_addinsert(l,eh+1,(uiz_list_getadd(v,argument[3])<<3)+5)
	}
	}

	return 0;



}
