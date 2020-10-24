function uiz_window_minimize() {
	uiz_window_an_old();
	uiz_animation_capture_oldState(id)
	posinframex=uiz_static;
	posinframey=uiz_static;
	posvalhtype = uiz_nonpos;
	posvalwtype = uiz_nonpos;
	width=bars*(5+ds_list_size(custom_buttons_left_sprite)+ds_list_size(custom_buttons_right_sprite))+end_leftframemargin+end_rightframemargin;
	height=minh+end_topframemargin+end_bottomframemargin;
	setpointx=uiz_auto;
	setpointy=uiz_auto;
	sizestatus=0
	uiz_fixwindowpos(id)
	uiz_animation_capture_newState(id)
	uiz_animation_setFunction(id,maximizeanimation,maximizeanimation,maximizeanimation,maximizeanimation,uiz_one,maximizeanimationspeed)
	uiz_animation_start(id)




}
