function uiz_getmouse_x() {
	switch(os_type){
	case os_android: case os_ios:
	return device_mouse_x_to_gui(0);
	break;
	default:
	return window_mouse_get_x();
	break;
	}



}
