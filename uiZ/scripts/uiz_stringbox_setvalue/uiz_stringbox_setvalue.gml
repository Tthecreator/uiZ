/// @description uiz_stringbox_setvalue(stringbox,value)
/// @param stringbox
/// @param value
function uiz_stringbox_setvalue(argument0, argument1) {
	//Sets the text in a stringbox.
	gml_pragma("forceinline");
	uiz_stringbox_setvalue_noupdate(argument0,argument1);
	argument0.update=true;
	argument0.updated=true;



}
