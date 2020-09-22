/// @description uiz_spaceAreas_format_newList(ds list, space)
/// @param ds list
/// @param  space
function uiz_spaceAreas_format_newList(argument0, argument1) {
	/*
	This is a easy to use script that takes a ds list that has spacing values and compares those values to the totalspacevalues, and changes that given ds list so that it has slightly better spacings.
	This can be usefull if you have something like a menubar of a certain width and have a ds list containing the spaces of the itemtexts of the menu, and want that menu to be nicely spread across the entire bar. (See example).
	THE DS LIST MUST HAVE ONLY REAL NUMBERS IN IT!
	After this script has been ran then all the spacings in the new ds list added together will equal the the total space (argument1).
	The difference with uiz_spaceAreas_format_newList and uiz_spaceAreas_format_changeList is that _newlist creates a new ds list and returns that list, while _changelist changes your already existing list that you gave at argument0.
	*/
	var glist=argument0;
	var msz=argument1;
	slist=ds_list_create()
	//count up all sizes
	var gsz=ds_list_size(glist)
	var isz=0;
	for(var i=0;i<gsz;i++){
	isz+=glist[| i]
	}
	if isz=msz then{
	//if the size of items is bigger the same as the maximum given size
	for(var i=0;i<gsz;i++){
	ds_list_add(slist,glist[| i]);
	}
	}else{
	if isz>msz then{
	//if the size of items is bigger than the maximum given size
	var sc=msz/isz;
	for(var i=0;i<gsz;i++){
	ds_list_add(slist,glist[| i]*sc);
	}
	}else{
	//if the maximum given size is bigger than the numbers of items
	var smallsize=msz/gsz;
	var nsz=msz;
	//var jsz=isz;
	var nss=gsz
	for(var i=0;i<gsz;i++){
	if glist[| i]>smallsize then{
	nsz-=glist[| i]
	//jsz-=glist[| i]
	nss--;
	}
	}
	var newsize=nsz/nss
	for(var i=0;i<gsz;i++){
	ds_list_add(slist,max(newsize,glist[| i]))
	}
	}
	}
	return slist;



}
