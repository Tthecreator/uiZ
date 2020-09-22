function uiz_window_getgraboff_x(argument0) {
	//get the offset of the mouse from the pixelperfect edge of the window.
	    switch (isresizing_x) {
	        case uiz_left:
	            //left
	            graboffx = ix - argument0;
	            break;
	        case uiz_right:
	            //right
            
	            graboffx = ilx - argument0;
	            break;
	    }



}
