/// @description uiz_tabslider_setvalue(instance id,newvalue,[optional inanimation],[optional goback])
/// @param instance id
/// @param newvalue
/// @param [optional inanimation]
/// @param [optional goback]
function uiz_tabslider_setvalue() {
	/*
	Moves the frame on the slide to a new tab, using an animation.
	You can also include argument2 (inanimation) to say how far it is in animation. This ranges from -1 to 0 when moving backwards and from 0 to 1 when moving forward. 0-instance id: This should refer to a tabslider object.
	1-newvalue: A real value holding the number for the new frame.
	2-inanimation: Optional arguments stating how far the tabslider should be in its animation.
	3-isdragging: setting this to true will disable the automatic animation of the tabslider for a single step.
	*/
	with(argument[0]){
	if ds_exists(spacinglist, ds_type_list) and ds_exists(tablist, ds_type_list) then{
	var oldvalue=value;
	value=min(argument[1],ds_list_size(spacinglist),ds_list_size(tablist));
	//set goback
	    if argument_count>=4 then{
	    goback=argument[3]}else{
	    goback=false;
	    }
	//    sdbm("trying oldtabpos",oldvalue,value,goback)
	if oldvalue!=value && goback=false then{
	//    sdbm("setting oldTabPos");
	    oldTabPos=newpos;
	    oldTabWidth=newwidth;
	    newTabPos=rx;
	    for(var i=0;i<value;i++){
	    newTabPos+=spacinglist[| i];
	    }
	//    sdbm("newtab",newTabPos);
	}


	if argument_count>=3 then{
	linearinter=argument[2];
	    if linearinter=0 or linearinter=1 then{
	        uiz_updater_unstep();
	    }else{
	        uiz_updater_step();
	    }
	}else{
	linearinter=1
	//uiz_tabslider_handleanimation()
	}
	}


	uiz_tabslider_handleanimation();

	}




}
