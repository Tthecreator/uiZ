/// @description uiz_updater_FixViews_processing(id)
/// @param id
function uiz_updater_FixViews_processing(argument0) {
	with(argument0){
	    var inside=false;
	    var l=obj_uiZ_controller.uiz_arealist;
	    var m=obj_uiZ_controller.uiz_arealist_oldsz;
	    var sz=ds_list_size(l);
	    if (ds_exists(l,ds_type_list) and ds_list_size(l)>=4) then{
	        //if m mod 4=0 then{
	            var drawstate=true;
	            for(var i=0;i<m;i+=4){
	                //sdbm("processing normal square for",object_get_name(object_index),id,l[|i],l[|i+1],l[|i+2],l[|i+3]);
	                if uiz_updater_FixViews_processing_insideSquare(l[|i],l[|i+1],l[|i+2],l[|i+3]) then{inside=true; uiz_selfmarked=false; break;}
	            }
	            if inside=false then{
	                if uiz_selfmarked=true then{
	                    for(var i=m;i<sz;i+=5){
	                        //sdbm("processing selfmarked sm square for",object_get_name(object_index),id,l[|i],l[|i+1],l[|i+2],l[|i+3]);
	                        var aide=l[|i+4];
	                        if aide=id then{inside=true; continue;}
	                        if uiz_updater_FixViews_processing_insideSquare(l[|i],l[|i+1],l[|i+2],l[|i+3]) then{inside=true; uiz_selfmarked=false; break;}
	                    }
	                }else{
	                    for(var i=m;i<sz;i+=5){
	                     //sdbm("processing selfmarked square for",object_get_name(object_index),id,l[|i],l[|i+1],l[|i+2],l[|i+3]);
	                        if uiz_updater_FixViews_processing_insideSquare(l[|i],l[|i+1],l[|i+2],l[|i+3]) then{inside=true; break;}
	                    }
	                }
	            }else{
	                uiz_selfmarked=false;
	            }
	            //sdbm("processing done for",object_get_name(object_index),id,inside,cntnx,cntny,cntnlx,cntnly);
	            if inside=true then{
	                uiz_doredraw=true;
	                //uiz_dodraw=true;
	                if ds_exists(children,ds_type_list) then{
	                    var sz=ds_list_size(children);
	                    for(var i=0;i<sz;i++){
	                        var child = children[|i];
	                        if child.uiz_enabled=true then{
	                            uiz_updater_FixViews_processing(child)
	                        }
	                    }
	                }
	            }
	        //}
	    }
	}




}
