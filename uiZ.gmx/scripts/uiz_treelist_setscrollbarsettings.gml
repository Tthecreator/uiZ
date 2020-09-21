///uiz_treelist_setscrollbarsettings(instanceid,width[16],widthtype[px],sprite[spr_uiZ_scrollbar],texturemode[uiz_texturemode_fill],color[c_white])
gml_pragma("forceinline");
argument0.scrollbarwidth=argument1;
argument0.scrollbarwidthtype=argument2;
argument0.scrollbarsprite=argument3;
argument0.scrollbarbacktextmode=argument4;
argument0.scrollbarcolor=argument5;
uiz_treelist_updateScrollbar(argument0);
