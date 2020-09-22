function uiz_frameset_rowanchor_CalculateOverFrameBar() {
	if kmouseover < uiz_mouseclick then{
	    for (var i = array_length_1d(frameat)-1; i >=0 ; --i) {
	        if uiz_getmouse_y() >= frameat[i].ry + frameat[i].height/2 then {
	            overframebar = i;
	            break;
	        }
	    }
	    overframebar = max(overframebar, 0);
	}
	return overframebar;



}
