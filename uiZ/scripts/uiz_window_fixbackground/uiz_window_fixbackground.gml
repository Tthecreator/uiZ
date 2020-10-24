function uiz_window_fixbackground() {
	var u = 0;
	if global.selectedwindow=id then{selected=1}else{selected=0;}
	if sizestatus=2 then{
	u=selected*2+1;
	}else{
	u=selected*2;
	}
	uiz_fix_Background(u);
	uiz_fix_Background_top(u);
	if sizestatus=2 then{//disable background margins if the window is maximized
	    bkmar=0;
	    //topbar_bkmar=0;
	}
	/*var selected;

	if u_old!=u then{
	m=margin_normal;
	switch(u){
	case 1:
	if margin_over>-1 then{m=margin_over;}
	break;
	case 2:
	if margin_in>-1 then{m=margin_in;}
	break;
	case 3:
	if margin_out>-1 then{m=margin_out;}
	break;
	}
	uiz_fix_Background(u);
	uiz_fix_Background_top(u);
	}
	*/



}
