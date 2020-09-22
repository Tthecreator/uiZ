function uiz_window_maximize_frommin() {
	uiz_animation_capture_oldState(id)
	posinframex=uiz_fill;
	posinframey=uiz_fill;
	setpointx=uiz_auto;
	setpointy=uiz_auto;
	sizestatus=2;
	uiz_fixwindowpos(id)
	uiz_animation_capture_newState(id)
	uiz_animation_setFunction(id,maximizeanimation,maximizeanimation,maximizeanimation,maximizeanimation,uiz_one,maximizeanimationspeed)
	uiz_animation_start(id)
	uiz_updater_FixViews();



}
