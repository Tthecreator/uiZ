function uiz_dpi_getdpi() {
	if os_type=os_windows then{
	if os_version>=393219 then{//if using windows 8.1 or up
	return external_call(global.uiz_dll_getdpi,string(window_handle()))
	}
	}
	return display_get_dpi_x()



}
