function uiz_textarea_moveCursorEndLine() {
	selection1Line=ds_list_size(textList)-1;
	uiz_textarea_moveCursorInView();
	uiz_textarea_moveCursorEnd();



}
