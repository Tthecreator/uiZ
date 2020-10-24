function uiz_window_fixadddepth_maindepth() {
	//if ds_exists(parent.children,ds_type_list) and ds_list_size(parent.children)>0 then{
	var listmax=ds_list_size(parent.children)-1;
	instd=parent.children[|listmax];
	while(instd.object_index=obj_uiZ_mousemenu){
	    --listmax;
	    if listmax<0 then{
	        exit;
	    }
	    instd=parent.children[|listmax];    
	}
	//}
	//sdbm("instd",parent.children,instd)
	if instd!=id then{
	//depth=min(-10000,instd.depth-1)
	depth=clamp(instd.depth+1,10000,10000000)
	//move every item to next spot:
	for(var i=listpos;i<listmax;i++){
	parent.children[|i]=parent.children[|i+1];
	parent.children[|i].listpos=i;
	}
	parent.children[|listmax]=id;
	listpos=listmax;
	}



}
