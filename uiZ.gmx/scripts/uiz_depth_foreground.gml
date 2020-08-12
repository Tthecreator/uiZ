////uiz_depth_foreground(instanceid)
with(argument0){

    if uiz_diddepth=false then{
        uiz_fix_Depth()
    }
    
    //gather variables
    var l=parent.children;
    var sz=ds_list_size(l);
    
    /*
    //we're placing this on the front, make sure every listpos is updated
    for(var i=listpos+1;i<sz;i++){
        l[| i].listpos--;
    }
    
    //update the actual listpos
    ds_list_delete(l, listpos);
    listpos = ds_list_size(l);
    ds_list_add(l, id);

    //reset depth to a value higher than anything else
    if (listpos>0){
        depth = l[| listpos-1] + 1;
    }
    */
    
    sdbm("foregrounding window",argument0,parent,l,sz,l[| sz-1].depth,l[| sz-1])
    if sz > 1 and listpos != sz-1 then{
        uiz_depth_set(argument0, -l[| sz-1].depth-1)
    }

}
