///uiz_textarea_setfont(instanceid,font[-1])
gml_pragma("forceinline");
argument0.font=argument1;
draw_set_font(argument1);
argument0.fontHeight = string_height("{|}");
