function uiz_textarea_selectionToRightCursor() {
	selection1Line=selectionMaxLine;
	selection1X=selectionMaxX;
	selection1Char=selectionMaxChar;

	selection2Line=-1;
	selection2X=-1;
	selection2Char=-1

	hasSelection=false;
	isTyping=true;

	uiz_textarea_resetSelection_selectionOnly();//remove selection
	uiz_textarea_registerTypeCursor();



}
