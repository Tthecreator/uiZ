/// @description Insert description here
// You can write your code in this editor

#region //Check new object
	if (uiz_drawdslist_getselection(object_list_uiList)!=-1 and uiz_mouse_isOver_object_releasedLeft(object_list_uiList)){
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

#region //Resize Halo's
	if mouse_check_button_released(mb_left) and uiz_mouse_isFrozen() and uiz_mouse_isOver(main_area_frontUI) then{//if we released the mouse from a selection
		snapToResize = 0;
		snapToObject = -1;
		uiz_mouse_unFreeze();
	}else{//check if we need to select a new item or if we need to continue selection.
		if snapToObject!=-1 and instance_exists(snapToObject) then{//use currently selected item
			obj_uiZ_designer_handleHaloMouse(snapToObject);
			if !mouse_check_button(mb_left) then{
				snapToResize = 0;
				snapToObject = -1;
				uiz_mouse_unFreeze();
			}
		}else if uiz_mouse_isOver_canvas(obj_uiZ_designer.main_area_frontUI) and mouse_check_button(mb_left) and !uiz_mouse_isFrozen(){//find new thing to press
			for(var i=0; i<ds_list_size(main_area_objectList); ++i){
				if obj_uiZ_designer_checkHaloMouse(main_area_objectList[|i]) then{
					snapToObject = main_area_objectList[|i];
					break;
				}
			}
		}
	}
#endregion
