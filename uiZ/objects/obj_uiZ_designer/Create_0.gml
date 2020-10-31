/// @description Insert description here
// You can write your code in this editor

#region //Do Pre-checks
if obj_uiZ_designer_checkSystemSandbox()==false then{
	show_message("Failed to find project. Check the compile window for more clues.")
	game_end();
}
#endregion

#region //Setup Basic UI
	uiz_init();
	frameset_main = uiz_frameset_create();
	var anchor_1=uiz_frameset_divide_vertical(frameset_main, 3,dp, 1,xtra, 3,dp);
	object_list_sidebar = uiz_frameset_getObject(anchor_1,0);
	main_area = uiz_frameset_getObject(anchor_1,1);
	object_settings_sidebar = uiz_frameset_getObject(anchor_1,2);
	uiz_fix(frameset_main);
#endregion

#region //Setup Object List
	object_list_objects = obj_uiZ_designer_getObjectList();
	object_list_names = obj_uiZ_designer_getObjectNameList(object_list_objects);
	object_list_sprites = obj_uiZ_designer_getObjectSpriteList(object_list_objects);
	object_list_spriteNums = obj_uiZ_designer_getObjectSpriteNumList(object_list_objects);
	
	
	//setup ui element
	object_list_uiList = uiz_c(obj_uiZ_drawdslist);
	uiz_setParent(object_list_uiList, object_list_sidebar);
	uiz_position_t(object_list_uiList, uiz_fill, uiz_fill);
	uiz_drawdslist_setlist(object_list_uiList, object_list_names, object_list_sprites, object_list_spriteNums);
	uiz_fix(object_list_uiList);
#endregion

#region //Setup Main Region
	main_area_canvas = uiz_c(obj_uiZ_canvas);//object in which all ui elements will be put
	uiz_setParent(main_area_canvas, main_area);
	uiz_position_t(main_area_canvas, uiz_fill, uiz_fill);
	uiz_fix(main_area_canvas);
	
	main_area_frontUI = uiz_c(obj_uiZ_canvas);//canvas to prevent mouse interaction with normal objects
	uiz_setParent(main_area_frontUI, main_area);
	uiz_position_t(main_area_frontUI, uiz_fill, uiz_fill);
	uiz_depth_foreground(main_area_frontUI);
	uiz_fix(main_area_frontUI);
	
	main_area_objectList = ds_list_create();
#endregion