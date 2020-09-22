/// @description uiz_textarea_handleSelectingOrTyping(bool checkmouse)
/// @param bool checkmouse
function uiz_textarea_handleSelectingOrTyping() {
	if uiz_textarea_selectionAreTheSame(){//check type/selection state
	            hasSelection=false;
	            if !mouse_check_button(mb_left) then{
	                isTyping=true;
	                uiz_updater_step();
	                uiz_textarea_registerTypeCursor();
	            }
	        }else{
	            isTyping=false;
	            hasSelection=true;
	            uiz_updater_step();
	            uiz_textarea_registerTypeCursor();
	        }



}
