function uiz_drawscrollbar_getUpdated(argument0) {
	gml_pragma("forceinline");
	return argument0[@uiz_drawscrollbar_struct.uiz_dsb_updated]
	//return abs(frac(argument0*100))*10
	//updatemodes:
	//3: partial update
	//4: full update



}
