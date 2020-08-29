////uiz_depth_set(instanceid, adddepth)
with(argument0){
depth=-argument1;//depth is inverted in uiz due to legacy issues.
//fix place in childrenlist
var l=parent.children;
var sz=ds_list_size(l)
//check if the place is still right:
if sz>1 and !((listpos=0 or l[|listpos-1].depth<=depth) and 
   (listpos=sz-1 or l[|listpos+1].depth>=depth)){
    //place is not right anymore
    for(var i=0;i<=sz;i++){//find correct place
        if i=sz or l[| i].depth>depth then{//found place at i-1
        i--;
        if i<0 then{i=0;}
            var overlapping=false;
            //check if before or after old place
            if i<listpos then{
            //before old place
                for(var e=listpos;e>i;e--){
                    l[|e-1].listpos++;
                    if uiz_objectsOverlap(l[|e],id){
                        overlapping=true;
                    }
                    l[|e]=l[|e-1];
                    
                }
                
            }else{
            if i!=listpos then{
            //i is bigger then listpos, the new position is further down the list than the old one
                for(var e=listpos;e<i;e++){
                    l[|e+1].listpos--;
                    l[|e]=l[|e+1];
                    if uiz_objectsOverlap(l[|e],id){
                        overlapping=true;
                    }
                }                
            }
            }
            l[|i]=id;
            listpos=i;
            oldmydepth=depth;
            if overlapping=true then{//items need to be updated when they overlap
                uiz_updater_FixViews()
            }
            exit;
        }
    }
}

}
