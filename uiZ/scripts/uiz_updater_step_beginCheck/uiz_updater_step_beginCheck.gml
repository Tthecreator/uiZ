/// @description uiz_updater_step_begincheck()
function uiz_updater_step_beginCheck() {
	//code in the user 6 event should run once in the begin step event.
	if (uiz_steps_begin==false){
	    uiz_steps_begin=true;
	    ds_list_add(obj_uiZ_controller.uiz_beginsteplist,id);
	}



}
