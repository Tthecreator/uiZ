/// @description uiz_treelist_addEntryAt(id, handle, name, [sprite], [spriteImage], [indentLevel],[enabled], [boxState],[extraAttributeNameList,extraAttributeDataList],[entryName],[entryData])
/// @param id
/// @param  handle
/// @param  name
/// @param  [sprite]
/// @param  [spriteImage]
/// @param  [indentLevel]
/// @param [enabled]
/// @param  [boxState]
/// @param [extraAttributeNameList
/// @param extraAttributeDataList]
/// @param [entryName]
/// @param [entryData]
function uiz_treelist_addEntryAt() {
	//adds an entry right before a handle, with the same indentation as the item on the handle
	//enabled: This item is grayed out
	//extraAttributeNameList: Add extra attribute data to the xml file (has no visible effect on treelist)
	/*
	var argument_arr = array_create(argument_count);
	for (var i = 0; i < argument_count; i++) {
	argument_arr[i] = argument[i];
	}
	//if (live_call_ext(argument_arr)) return live_result;
	*/

	with(argument[0]){
	    var handle = argument[1];
	    if handle=-1 then{handle=0;}
	    var spr = -1;
	    var enabled = true;
	    var boxState = uiz_treelist_boxState_noBox;
	    var level;
	    if handle<ds_list_size(indentEnabledAndBoxList) then{
	        level = indentEnabledAndBoxList[|handle]>>3;//uiz_treelist_item_get_indentLevel(argument0,argument1);
	    }else{
	        level = indentEnabledAndBoxList[|ds_list_size(indentEnabledAndBoxList)-1]>>3;
	    }
	    var originalLevel = level;
	    var lsz = ds_list_size(indentEnabledAndBoxList);
    
	    var givenName = argument[2];
	    var entryData = "";
    
	    switch(argument_count){
	        default:
	        case 12:
	        entryData = argument[11];
	        case 11:
	        givenName = argument[10];
	        case 10:
	        case 9:
	        case 8://boxState
	            var boxState = argument[7];
	        case 7://enabled
	            enabled = argument[6];
	        case 6://level
	            level = argument[5];
	            //check for higher level
	            if argument_count<8 and handle<lsz and level<(indentEnabledAndBoxList[|handle]>>3) then{//if we get any nodes underneath us
	                boxState = uiz_treelist_boxState_extended;
	            }
	        case 5://image
	            spr += argument[4];
	        case 4://sprite
	            spr = argument[3]<<7;
	        case 3://do nothing, required argument
	            break;
	        case 2:
	        case 1:
	        case 0:
	            show_error("Invalid amount of arguments for uiz_treelist_addEntryAt",true);
	    }
	//    sdbm("addenTry level is",level,argument[5]);
	    ds_list_insert(textList,handle,argument[2]);
	    ds_list_insert(spriteList,handle,spr);
	    var xmlHandle, curHierarchy;
	    var lsz = ds_list_size(handleList);
	    if handle<lsz then{
	        xmlHandle = handleList[|handle];
	        curHierarchy = hierarchyItemList[|handle];//uiz_treelist_item_get_indentLevel(argument0,argument1);
	    }else{
	        nextItemList[|lsz-1] = handle;
	        xmlHandle = handleList[|lsz-1];
	        xmlHandle = uiz_xml_gethandleend(usexml,xmlHandle)+1;
	        curHierarchy = hierarchyItemList[|lsz-1];
	    }
	    ds_list_insert(handleList,handle,xmlHandle);
	    ds_list_insert(nextItemList,handle,-1);
	    if (argument_count<6 or originalLevel==level) and (curHierarchy>>(level-1))==0 then{
	        curHierarchy += 1<<(level-1);
	    }
	    ds_list_insert(hierarchyItemList,handle,curHierarchy);//will be overwritten anyways after fixing the item list
	//    sdbm("writing level",level,enabled);
	    ds_list_insert(indentEnabledAndBoxList,handle,(level<<3)+(enabled<<2)+boxState);
    
	    //fix itemlist
	    uiz_treelist_fixNextItemList(handle,1);
	    switch(boxState){
	        case uiz_treelist_boxState_extended:
	            nextItemList[|handle] = handle+1;
	        break;
	        case uiz_treelist_boxState_collapsed:
	            nextItemList[|handle] = uiz_treelist_findNextNodeAtOrBelowLevel(handle+1,level);
	        break;
	        default:
	            nextItemList[|handle] = handle+1;
	        break;
	    }
    
	    //fix visiblity
	    if uiz_treelist_isItemVisible(id,handle) then{
	        ++expandedLines;
	    }
    
	    if (argument_count>=6 && level>originalLevel){//don't add At, add inside
	        //fix hierarchy list
	        hierarchyItemList[|handle] |= 1<<(level-2);
        
	        if handle>0 then{
	            if (indentEnabledAndBoxList[|handle-1]>>3)==level then{
	                hierarchyItemList[|handle-1] |= 1<<(level-1);
	            }
	        }
	        if updateXML then{
	            //find correct xml handle to the beginning of the parent
	            var xmlInHandle = 0;
	            var mHandle = handle-1;
	            for(var mHandle = handle-1;mHandle>=0;--mHandle;){
	                if (indentEnabledAndBoxList[|mHandle]>>3)<=level-1 then{
	                    xmlInHandle = handleList[|mHandle];
	                    break;
	                }
	            }
	            //sdbm("adding to begin of parent",xmlInHandle,handle);
            
	            handleList[|handle]=uiz_xml_gethandleend(usexml, xmlInHandle)+1;
            
	            if argument_count>=10 then{
	                if argument_count>=12 then{
	                    uiz_xml_writeDataTag_in(usexml,xmlInHandle,givenName, entryData);
	                    uiz_treelist_addEntryAt_addExtraAttributes(handleList[|handle]-1,argument[8],argument[9]);
	                }else{
	                    uiz_xml_writeHeadTag_in(usexml,xmlInHandle,givenName);
	                    uiz_treelist_addEntryAt_addExtraAttributes(handleList[|handle]-1,argument[8],argument[9]);
	                }
	            }else{
	                //if boxState==uiz_treelist_boxState_noBox then{
	                //    uiz_xml_writeDataTag_in(usexml,xmlInHandle,argument[2],"name",argument[2],"sprite",string(spr>>7),"image",string(spr mod 128),"enabled",string(enabled),"boxState",string(boxState));
	                //}else{
	                    uiz_xml_writeHeadTag_in(usexml,xmlInHandle,givenName,"name",argument[2],"sprite",string(spr>>7),"image",string(spr mod 128),"enabled",string(enabled),"boxState",string(boxState));
	                //}
	            }
	            //uiz_xml_writeHeadTag_in(usexml,xmlInHandle,argument[2],"name",argument[2]);
	            //sdbm("refitHandles in");
	            uiz_treelist_addEntryIn_refitXmlHandles(handle);
	            //sdbm("afteradd",uiz_dslist_print(handleList));
	        }
	    }else{
	        //fix hierarchy list
	        uiz_treelist_fixNewHierarchyItemList(handle, level);
	        //apply changes to xml
	        if updateXML then{
            
	            if argument_count>=10 then{
	                uiz_xml_writeHeadTag_before(usexml,xmlHandle,givenName);
	                uiz_treelist_addEntryAt_addExtraAttributes(xmlHandle,argument[8],argument[9]);
	            }else{
	                uiz_xml_writeHeadTag_before(usexml,xmlHandle,givenName,"name",argument[2],"sprite",string(spr>>7),"image",string(spr mod 128),"enabled",string(enabled),"boxState",string(boxState));
	            }
	            //uiz_xml_writeHeadTag_before(usexml,xmlHandle,argument[2],"name");
	            if (argument_count>=6){
	                uiz_xml_decreaseTagDepth(usexml,xmlHandle,originalLevel-level);
	            }
	            //sdbm("refitHandles AT",xmlHandle);
	            uiz_treelist_addEntryAt_refitXmlHandles(xmlHandle,handle,level);
	        }
        
	    }
    
	}




}
