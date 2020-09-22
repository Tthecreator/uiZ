/// @description moves the type selection on to the left
function uiz_stringbox_moveKeyLeft() {
	if hasselection then{
	if keyboard_check(vk_shift) then{
	    uiz_stringbox_selpos_moveLeft();
	}else{//disable the selection and start typing again.
	        uiz_stringbox_selection_disable();
	        uiz_stringbox_typepos_moveLeft();
	    }
	}else{//just move the typecursor
	if keyboard_check(vk_shift) then{
	    uiz_stringbox_beginSelection();
	    uiz_stringbox_selpos_moveLeft();
	}else{
	uiz_stringbox_typepos_moveLeft();
	}
	}



}
