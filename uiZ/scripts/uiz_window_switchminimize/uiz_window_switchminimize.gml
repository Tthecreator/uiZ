function uiz_window_switchminimize() {
	switch(sizestatus){
	case 0:
	uiz_window_unminimize()
	break;
	case 1:
	uiz_window_minimize()
	break;
	case 2:
	uiz_window_minimize_frommax()
	break;
	}



}
