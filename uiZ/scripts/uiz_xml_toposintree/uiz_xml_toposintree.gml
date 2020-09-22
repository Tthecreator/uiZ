/// @description uiz_xml_toposintree(tree,pos)
/// @param tree
/// @param pos
function uiz_xml_toposintree(argument0, argument1) {
	var t=argument0
	var tsz=ds_list_size(t)
	var pos=0;
	for(var i=0;i<tsz;i++){
	var rd=t[|i] mod 8;
	if rd!=4 and rd!=5 and rd!=7 then{
	pos++
	//sdbm("GG",i,rd)
	if pos=argument1 then{return i;}
	}
	}



}
