///uiz_stringbox_setvalue(stringbox,value)
//Sets the text in a stringbox.
gml_pragma("forceinline");
uiz_stringbox_setvalue_noupdate(argument0,argument1);
argument0.update=true;
argument0.updated=true;
