/// @description Insert description here
// You can write your code in this editor

#region //Check new object
	if (uiz_drawdslist_getselection(object_list_uiList)!=-1 and uiz_mouse_isOver_object_pressingLeft(object_list_uiList)){
		var object = object_list_objects[|uiz_drawdslist_getselection(object_list_uiList)];
		var objToCreate = asset_get_index(object.name);
		var newObj = uiz_c(objToCreate);
		uiz_setParent(newObj, main_area_canvas);
		uiz_position(newObj, .5, fc, .5, fc);
		uiz_size(newObj, 1, dp, 1, dp);
		uiz_fix(newObj);
		ds_list_add(main_area_objectList, newObj);
	}
#endregion
