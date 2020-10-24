/// @description disable mouse grab
function uiz_stringbox_event_disableMouseGrab() {
	if hasmouse=true and !mouse_check_button(mb_left) then{
	    global.mousefrozen=false;
	    hasmouse=false;
	    exit;
	}



}
