function uiz_window_unminimize() {
	sizestatus=1
	uiz_animation_capture_oldState(id)
	x=an_old_x;
	y=an_old_y;
	width=an_old_width;
	height=an_old_height;
	uiz_animation_capture_newState(id)
	uiz_animation_setFunction(id,unminimizeanimation,unminimizeanimation,unminimizeanimation,unminimizeanimation,uiz_one,unminimizeanimationspeed)
	uiz_animation_start(id)



}
