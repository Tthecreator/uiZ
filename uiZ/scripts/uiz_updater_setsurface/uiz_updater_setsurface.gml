function uiz_updater_setsurface() {

	with(obj_uiZ_controller){

	//uiz_changeSurface=true
	if !surface_exists(uiz_surf) {uiz_surf=surface_create(width,height);}
	surface_set_target(uiz_surf);
	}

	//draw_clear_alpha(c_white,0);
	//draw_surface(uiz_surf_secondary,0,0)
	/*
	if uiz_doclear=true then{

	//gpu_set_blendmode_ext(bm_zero,bm_zero)
	draw_set_alpha(0)
	draw_rectangle(last_rx-1-leftmargin,last_ry-1-topmargin,last_rlx+1+rightmargin,last_rly+1+topmargin,0)
	draw_rectangle(rx-1-leftmargin,ry-1-topmargin,rlx+1+rightmargin,rly+1+topmargin,0)
	uiz_doclear=false;
	//if uiz_doredraw=false then{
	//gpu_set_blendmode(bm_normal)
	//}
	}
	*/




}
