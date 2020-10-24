function uiz_window_unmaximize() {
	sizestatus=1
	uiz_animation_capture_oldState(id)
	x=an_old_x;
	y=an_old_y;
	width=an_old_width;
	height=an_old_height;
	posinframex=uiz_static;
	posinframey=uiz_static;
	uiz_fixwindowpos(id);
	uiz_animation_capture_newState(id)
	uiz_animation_setFunction(id,unmaximizeanimation,unmaximizeanimation,unmaximizeanimation,unmaximizeanimation,uiz_one,unmaximizeanimationspeed)
	uiz_animation_start(id);
	uiz_updater_FixViews();



}
