function uiz_textarea_moveSelectionUp() {
	//if uiz_textarea_moveCursorBoundsCheck() then{exit;}

	if selection2Line==-1 || !hasSelection then{
	    selection2Line = selection1Line;
	    selection2X = selection1X;
	    selection2Char = selection2Char;
	}

	if selection2Line>0 && selection2Line!=-1 then{
	    --selection2Line;//increase line
    
	    if last_moveVerticalX =-1 then{
	        last_moveVerticalX = selection2X;//save old x pos
	    }
	    uiz_textarea_moveCursorToLastVerticalX(2);
	    uiz_textarea_rehandleSelectionCursor();
	}



}
