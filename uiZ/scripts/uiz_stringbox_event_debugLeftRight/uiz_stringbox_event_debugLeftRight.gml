/// @description check debug left-right movement
function uiz_stringbox_event_debugLeftRight() {

	if keyboard_check_released(vk_pagedown) then{
	    uiz_stringbox_shiftleft();
	    uiz_updater_FixViews();

	}
	if keyboard_check_released(vk_pageup) then{
	    uiz_stringbox_shiftright();
	    uiz_updater_FixViews();

	}



}
