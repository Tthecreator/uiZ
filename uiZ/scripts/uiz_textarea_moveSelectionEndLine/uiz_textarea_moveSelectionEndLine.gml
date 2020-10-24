function uiz_textarea_moveSelectionEndLine() {
	selection2Line=ds_list_size(textList)-1;
	uiz_textarea_moveSelectionEnd();
	uiz_textarea_moveCursorInView();



}
