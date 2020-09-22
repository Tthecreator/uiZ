function uiz_framescrollbar_step() {
	var oscroll=scroll;
	if horizontal=false then{
	uiz_drawscrollbar_vertical_step(rx,ry,rlx,rly,uscroll,scrolllines,true,scrollspeed, scrollbarAnimation, scrollbarAnimationTime);
	}else{
	uiz_drawscrollbar_horizontal_step(rx,ry,rlx,rly,uscroll,scrolllines,true,scrollspeed, scrollbarAnimation, scrollbarAnimationTime);
	}
	scroll=uiz_drawscrollbar_getValue(uscroll)


	if oscroll!=scroll and instance_exists(frame) then{
	    if horizontal=false then{
	        uiz_frame_setscroll(frame,uiz_vertical,scroll);
	        if lastadd!=frame.addy then{lastadd=frame.addy}
	    }else{
	        uiz_frame_setscroll(frame,uiz_horizontal,scroll);
	        if lastadd!=frame.addx then{lastadd=frame.addx}
	    }
	}



}
