function uiz_debug_getposes(argument0, argument1) {
	var p=argument0;
	var l=p.children;
	if p.object_index!=obj_uiZ_controller then{
	var str=string(p)+":"+object_get_name(p.object_index)+" rx:"+string(p.rx)+" ry:"+string(p.ry)+" rlx:"+string(p.rlx)+" rly:"+string(p.rly)+" width:"+string(p.width)+" height:"+string(p.height)   +" ix:"+string(p.ix)+" iy:"+string(p.iy)+" ilx:"+string(p.ilx)+" ily:"+string(p.ily)+" iwidth:"+string(p.iwidth)+" iheight:"+string(p.iheight)+"   wdif:"+string(p.parent.width-p.width)+" wdif:"+string(p.parent.iwidth-p.iwidth);
	}else{
	var str=string(p)+":"+object_get_name(p.object_index)+" width:"+string(p.width)+" height:"+string(p.height)+" iwidth:"+string(p.iwidth)+" iheight:"+string(p.iheight);
	}
	if ds_exists(l,ds_type_list) then{
	var sz=ds_list_size(l)
	for(var i=0;i<sz;i++){
	var w=l[| i];
	str+="#"+uiz_string_repeat("    ",argument1)+uiz_debug_getposes(w,argument1+1)
	}
	}
	return str;



}
