/// @description Insert description here
// You can write your code in this editor

#region //Check new object
	if (uiz_drawdslist_getselection(object_list_uiList)!=-1 and uiz_mouse_isOver_object_releasedLeft(object_list_uiList)){
		var selection = uiz_drawdslist_getselection(object_list_uiList);
		var object = object_list_objects[|selection];
		var objToCreate = asset_get_index(object.name);
		var newObj = uiz_c(objToCreate);
		uiz_setParent(newObj, main_area_canvas);
		uiz_position(newObj, .5, fc, .5, fc);
		uiz_size(newObj, 1, dp, 1, dp);
		uiz_fix(newObj);
		ds_list_add(main_area_objectList, newObj);
		
		//add to livelist
		var treelistHandle = uiz_treelist_handle_getRootEnd(object_list_liveList);//get reference to (just beyond) the end of the treelist.
		uiz_treelist_addEntryAt(object_list_liveList, treelistHandle, object.name, object_list_sprites[|selection], object_list_spriteNums[|selection])//add an entry at the end of the treelist
		uiz_fix(object_list_liveList);
		
		//update xml
		var xml = object_list_liveList.usexml;
		var xmlHandle = uiz_treelist_getXmlHandle(object_list_liveList, treelistHandle);//get an xml handle to the treelist data to add stuff.
		uiz_xml_settaginfo_at(xml, xmlHandle, "instance_id", newObj);
		
		//update view of livelist
		uiz_updater_FixViews_with(object_list_liveList);
		sdbm(uiz_xml_toString(object_list_liveList.usexml));//print xml for debug
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
			//method using xml (preserves depth)
			
			
			var xml = uiz_treelist_getxml(obj_uiZ_designer.object_list_liveList);
			//sdbm("XML DEBUG:", uiz_xml_getdebugstringtotal(xml));
			
			
			var startIt = uiz_xml_gethandle_begin(xml);
			var endIt = uiz_xml_gethandle_end(xml);
			//for(var i = uiz_xml_gethandle_begin(xml); i<endIt && i!=-1; i = uiz_xml_nexttag(xml, i)){
			endIt = uiz_xml_previoustag(xml, endIt);
			for(var i = endIt; i>=startIt && i!=-1; i = uiz_xml_previoustag(xml, i)){
				//if (i=-1) then{break;}
				var inst = uiz_xml_gettaginfo_at(xml, i, "instance_id", noone);
				if inst!=noone and instance_exists(inst){
					if obj_uiZ_designer_checkHaloMouse(inst) then{
						snapToObject = inst;
						break;
					}
				}
			}
			
			//method not using xml;
			/*
			for(var i=ds_list_size(main_area_objectList)-1; i>=0; --i){
				if obj_uiZ_designer_checkHaloMouse(main_area_objectList[|i]) then{
					snapToObject = main_area_objectList[|i];
					break;
				}
			}
			*/
			
		}
	}
#endregion
