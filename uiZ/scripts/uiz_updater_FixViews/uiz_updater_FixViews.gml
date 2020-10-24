/// @description uiz_updater_FixViews()
function uiz_updater_FixViews() {
	//fix the views for the current object.
	//this reruns the draw event without checkig if the position of the object has changed.
	//use in with() construction if needed on another object.
	if view_fix=false and ds_exists(obj_uiZ_controller.uiz_arealist,ds_type_list){
	view_fix=true;
	uiz_updater_FixViews_addsquare(cntnx,cntny,cntnlx,cntnly)
	uiz_updater_FixViews_addsquare(last_cntnx,last_cntny,last_cntnlx,last_cntnly)


	}




}
