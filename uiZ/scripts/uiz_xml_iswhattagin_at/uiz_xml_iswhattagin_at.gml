/// @description uiz_xml_iswhattagin_at(file,at)
/// @param file
/// @param at
function uiz_xml_iswhattagin_at(argument0, argument1) {
	//gets the amout of tags and structs in a place in a structure.
	//wil not count subdirs
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	var h=uiz_xml_getabove_at(argument0,argument1);
	if h=-1 then{seh=0}else{
	var seh=uiz_xml_gethandleshortend(argument0,h)}
	//var eh=uiz_xml_gethandleend(argument0,h)
	var count=0;
	//sdbm("iswhattagin count=0",seh,h,argument1)
	for(var i=seh;i<=argument1;i++){
	lv=round(uiz_positify(l[| i])>>3);
	lt=uiz_positify(l[| i]) mod 8;
	if lt=2 or lt=3 then{count++}
	//sdbm("iswhattagin count++",count)
	if lt=0 or lt=1 then{count++
	//sdbm("iswhattagin count++",count)
	//find end
	var setto=uiz_xml_gethandleend(argument0,i)
	if setto=-1 or setto<i then{break;}else{i=setto;}
	}
	}
	return count;



}
