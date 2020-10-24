function uiz_frame_stepScrollbars() {
	var c = false;
	/***************************************************
	 scrollbars mouseover
	***************************************************/
	if snapm=false and snapk=false then{
	    if scrollx = true and scrollbarx = true and mscrollbarx < 0 then {
	        var scrollox = uiz_drawscrollbar_getValue(uscrollx);
	        uiz_drawscrollbar_horizontal_step(rx,ily,rlx-scrollbarcorner_x,rly, uscrollx, -mscrollbarx, false, scrollxspeed, scrollbarAnimation, scrollbarAnimationTime)
	        var scrollnx = uiz_drawscrollbar_getValue(uscrollx);
	        if scrollnx != scrollox then {
	            c = true;
	            addx = -scrollnx;
	        }
	    }

	    if scrolly = true and scrollbary = true and mscrollbary < 0 then {
	        var scrollox = uiz_drawscrollbar_getValue(uscrolly);

	        uiz_drawscrollbar_vertical_step(ilx,ry,rlx,rly-scrollbarcorner_y, uscrolly, -mscrollbary, true, scrollyspeed, scrollbarAnimation, scrollbarAnimationTime)

	        var scrollnx = uiz_drawscrollbar_getValue(uscrolly);
                    
	        if scrollnx != scrollox then {
	            c = true;
	            addy = -scrollnx;
	        }
	    }
	}
	return c;



}
