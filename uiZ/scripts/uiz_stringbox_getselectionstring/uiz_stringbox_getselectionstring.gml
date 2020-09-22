function uiz_stringbox_getselectionstring() {
	/*This is a script originally intended for use within the obj_uiZ_stringbox object, and thus you'll have to put this function inside a with-construction as follows:
	with(stringbox instance id){sdbm(uiz_stringbox_getselectionstring())} 
	*/
	return string_copy(str_real,selpmin+1,selpmax-max(selpmin,0))




}
