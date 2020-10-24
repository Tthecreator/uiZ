function uiz_dpi_init() {
	//gml_pragma("global","uiz_dpi_init();");
	if (os_type==os_windows && os_browser==browser_not_a_browser){
	    global.uiz_dll_getdpitype = external_define("uiz\\GMDPI.dll","GetDpiAwareness",dll_cdecl,ty_real,1,ty_string)
	    global.uiz_dll_getdpi = external_define("uiz\\GMDPI.dll","getDpi",dll_cdecl,ty_real,1,ty_string)
	}



}
