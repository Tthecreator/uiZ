/// @description uiz_xml_treetolist(file,item,tovlist)
/// @param file
/// @param item
/// @param tovlist
function uiz_xml_treetolist(argument0, argument1, argument2) {
	var rd,lse,lt,lte;
	var m=obj_uiz_xmlparser;
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];
	rd=argument1
	lse=round(rd>>3);
	lte=rd mod 8;
	switch(lte){
	case 0:
	//A>>H
	lt=0
	break;
	case 1:
	//B>>K
	lt=1
	break;
	case 2:
	//D>>H
	lt=0
	break;
	case 3:
	//F>>K
	lt=1
	break;
	case 4:
	//N>>N
	lt=4
	break;
	case 5:
	//I>>I
	if argument2=1 then{
	ds_list_add(v,d[|lse])
	lse=ds_list_size(v)-1
	}
	lt=5
	break;
	default:
	lt=-1
	break;
	}
	if lt=-1 then{return -1;}else{
	return (lse<<3)+lt;
	}





}
