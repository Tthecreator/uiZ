function uiz_textarea_rehandleSelectionCursor() {
	var hadSelection=hasSelection;
	uiz_textarea_handleSelectingOrTyping();
	if hasSelection then{
	uiz_typecursor_deregister();
	}
	uiz_textarea_calculateNewView(hadSelection);



}
