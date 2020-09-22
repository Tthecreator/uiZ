function uiz_frame_tellListeners() {
	for(var i=0;i<ds_list_size(scrollupdateobjs);++i){
	    var o=scrollupdateobjs[|i];
	    if instance_exists(o){
	            with(o){event_user(9);}
	    }else{
	        ds_list_delete(scrollupdateobjs,i);
	        --i;
	    }
	}



}
