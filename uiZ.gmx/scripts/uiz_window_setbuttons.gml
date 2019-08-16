///uiz_window_setbuttons(instanceid,button_cross[true],button_maximize[true],button_minimize[true])
gml_pragma("forceinline");
argument0.button_cross=argument1;
argument0.button_maximize=argument2;
argument0.button_minimize=argument3;
uiz_window_resetbuttons(argument0)
