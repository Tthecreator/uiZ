//setup frameset
frameset=uiz_frameset_create()
uiz_setparent(frameset,window)
a1=uiz_frameset_divide_objects_vertical(frameset,0.4,fc,obj_uiZ_treelist,1,xtra,obj_uiZ_gridlist);

uiz_frameset_setBarSlider(a1, 0, true);
uiz_frameset_setMinimumSize(a1, 0, 0.1, fc);
uiz_frameset_setMinimumSize(a1, 1, 0.1, fc);

folderview = uiz_frameset_getObject(a1,0);//left pane with a obj_uiZ_treelist
fileview = uiz_frameset_getObject(a1,1);//right pane with a obj_uiZ_gridlist

uiz_fixframesetpos(frameset);

//setup treelist
uiz_treelist_setxml(folderview, folders);
uiz_treelist_onClick(folderview, uiz_win31_filemanager_clickFolder)
uiz_treelist_onDrag(folderview, uiz_win31_filemanager_dragFolder)
uiz_treelist_setscrollbarsettings(folderview, .18, dp, spr_uiZ_win31_scrollbar, uiz_texturemode_fill, c_white);
uiz_fixgeneralpos(folderview)

//setup gridlist
toplist=ds_list_create()
ds_list_add(toplist,"name","size","date")
fileview.mainlist=toplist;
uiz_gridlist_setscrollbar(fileview, .18, dp, spr_uiZ_win31_scrollbar, uiz_texturemode_fill, 1, uiz_smoothstep, 0.3);

//fill up fileview with mock instructions
fileview.maingrid = ds_grid_create(3,1);
fileview.maingrid[# 0,0]="Select a folder on the left";
fileview.maingrid[# 1,0]="";
fileview.maingrid[# 2,0]="";

uiz_fixgeneralpos(fileview)
