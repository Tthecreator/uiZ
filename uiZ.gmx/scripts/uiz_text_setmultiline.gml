///uiz_text_setmultiline(instanceid,enable multi line support[false])
//enable or disable compatability for multiple lines in your text object.
//enabling multiple lines will make it a little bit slower.
//this needs to be turned on whenever you are using one or more newlines in your string.
//don't forget to call uiz_text_recalculate after changing this parameter. (see uiz_text_recalculate for more info)
gml_pragma("forceinline");
argument0.multiline=argument1;
