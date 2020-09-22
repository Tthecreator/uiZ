function uiz_updater_ClearView_processing(argument0) {
	with(argument0){
	if uiz_doclear=true then{
	draw_set_blend_mode_ext(bm_zero,bm_zero)
	//draw_set_color(c_blue)
	//draw_rectangle(last_rx-1-leftmargin-bkmar,last_ry-1-topmargin-bkmar,last_rlx+1+rightmargin+bkmar,last_rly+1+bottommargin+bkmar,0)
	//draw_rectangle(rx-1-leftmargin-bkmar,ry-1-topmargin-bkmar,rlx+1+rightmargin+bkmar,rly+1+topmargin+bkmar,0)
	draw_rectangle(save_rec_last_rx,save_rec_last_ry,save_rec_last_rlx,save_rec_last_rly,0)
	draw_rectangle(save_rec_rx-bkmar,save_rec_ry-bkmar,save_rec_rlx+bkmar,save_rec_rly+bkmar,0)
	//draw_set_color(c_white)
	uiz_doclear=false;
	draw_set_blend_mode(bm_normal)
	}

	if ds_exists(children,ds_type_list) then{
	var sz=ds_list_size(children);
	for(var i=0;i<sz;i++){
	uiz_updater_ClearView_processing(children[|i])
	}
	}

	}



}
