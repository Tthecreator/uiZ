/// @description uiz_xml_makelistfromattributes_nonsub_at(file,at,attribute)
/// @param file
/// @param at
/// @param attribute
function uiz_xml_makelistfromattributes_nonsub_at(argument0, argument1, argument2) {
	//checks all the tags for a certain attribute, but will do in the given at tree position, not inside other tags.
	//will return a ds list.
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var list=ds_list_create()
	var h=argument1;
	var seh=uiz_xml_gethandleshortend(argument0,h)
	var eh=uiz_xml_gethandleend(argument0,h)
	//get what to find
	fn=ds_list_find_index(d,argument2)
	//sdbm("a",seh,eh)
	var isin=false;
	var lastwastrue=false;
	var inlevel=0;
	for(var i=seh;i<eh;i++){
	lv=round(uiz_positify(l[| i])>>3);
	lt=uiz_positify(l[| i]) mod 8;
	if lt=0 or lt=1 then{inlevel++}
	if lt=7 then{inlevel--}
	if inlevel=0 then{
	if !(lt=3 or lt=4 or lt=5) then{isin=false}
	if lt=3 then{
	isin=true;
	}
	if lastwastrue=true then{
	if lt=5 then{
	ds_list_add(list,v[| lv])
	}else{lastwastrue=false}
	}
	if isin=true and lt=4 and lv=fn then{
	lastwastrue=true
	}else{lastwastrue=false}
	}
	}
	return list;




}
