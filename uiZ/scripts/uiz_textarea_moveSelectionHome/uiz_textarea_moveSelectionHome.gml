function uiz_textarea_moveSelectionHome() {
	if selection1Char=0 then{
	    hasSelection=false;
	    isTyping=true;
	}else{
	//uiz_textarea_genMinMax();
	hasSelection=true;
	isTyping=false;
	selection2X=ix;
	selection2Char=0;
	if selection2Line=-1 then{
	    selection2Line=selection1Line
	}
	uiz_typecursor_deregister();
	uiz_textarea_calculateNewView(false);
	}




}
