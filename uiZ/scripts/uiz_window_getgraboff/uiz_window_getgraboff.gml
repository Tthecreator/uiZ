function uiz_window_getgraboff() {
	//get the offset of the mouse from the pixelperfect edge of the window.

	if keepratio=true then{
	if (isresizing_x-isresizing_y)=0 then{
	        ratio = iheight / iwidth;
	        }else{
	        ratio = -iheight / iwidth;
	        }
	}

	uiz_window_getgraboff_x(uiz_getmouse_x());
	uiz_window_getgraboff_y(uiz_getmouse_y());



}
