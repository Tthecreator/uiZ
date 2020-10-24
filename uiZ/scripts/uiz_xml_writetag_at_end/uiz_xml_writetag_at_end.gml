/// @description uiz_xml_writetag_at(file,at,tagname,taginfo,[tagattributename,tagattributeinfo,......])
/// @param file
/// @param at
/// @param tagname
/// @param taginfo
/// @param [tagattributename
/// @param tagattributeinfo
/// @param ......]
function uiz_xml_writetag_at_end() {
	//var h=uiz_xml_gethandle(argument[0],argument[1])
	var h=argument[1]
	//eh=uiz_xml_gethandleshortend(argument[0],h)
	//eh=uiz_xml_gethandleend(argument[0],h)-1;
	eh=uiz_xml_gethandleend(argument[0],h);
	//sdbm(h,eh)
	//sdbm("4.5")
	if h>-1 and (argument_count mod 2)=0 then{
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument[0]];
	var d=m.filelistd[| argument[0]];
	var v=m.filelistv[| argument[0]];
	//sdbm("WRITETAG:",h,eh,uiz_xml_getdebugstringtotal_one(l,h),uiz_xml_getdebugstringtotal_one(l,eh))
	args=(argument_count-5)/2
	if args<=0 then{
	//sdbm("4.6")
	uiz_list_addinsert(l,eh,(uiz_list_getadd(d,argument[2])<<3)+2)
	//sdbm("4.7")
	//uiz_list_addinsert(l,eh+1,(uiz_list_getadd(v,argument[3])<<3)+5)
	var vsz=ds_list_size(v)
	ds_list_add(v,argument[3])
	uiz_list_addinsert(l,eh+1,(vsz<<3)+5)
	//sdbm("4.8")
	//ds_list_insert(l,eh+2,(uiz_list_getadd(d,argument[2])<<3)+2)
	//ds_list_insert(l,eh+3,(uiz_list_getadd(v,argument[3])<<3)+5)
	}else{
	//sdbm("4.9")
	uiz_list_addinsert(l,eh,(uiz_list_getadd(d,argument[2])<<3)+3)
	//sdbm("4.10")
	for(var i=1;i<(args*2+1);i+=2){
	uiz_list_addinsert(l,eh+i,(uiz_list_getadd(d,argument[i+3])<<3)+4)
	var vsz=ds_list_size(v)
	ds_list_add(v,argument[i+4])
	uiz_list_addinsert(l,eh+i+1,(vsz<<3)+5)
	}
	//sdbm("4.11")
	//uiz_list_addinsert(l,eh+args*2+1,(uiz_list_getadd(v,argument[3])<<3)+5)
	var abh=(uiz_list_getadd(v,argument[3])<<3)+5
	//sdbm("4.11.1")
	uiz_list_addinsert(l,eh+args*2+2,abh)
	//sdbm("4.12")
	}
	}
	//sdbm("4.13")
	return 0;



}
