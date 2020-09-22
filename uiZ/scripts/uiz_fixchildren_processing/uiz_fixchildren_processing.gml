function uiz_fixchildren_processing(argument0, argument1) {
	var p=argument0;
	var l=p.children;
	//sdbm("fixchildren",p)
	if ds_exists(l,ds_type_list) then{
	var sz=ds_list_size(l)
	//sdbm("sz:",sz)
	for(var i=0;i<sz;i++){
	var w=l[| i]

	uiz_fixgeneralpos(w)
	//sdbm("wdone:",i,w)
	if argument1=true and w.uiz_enabled=true then{
	uiz_fixchildren_processing(w,true)
	}
	}
	}



}
