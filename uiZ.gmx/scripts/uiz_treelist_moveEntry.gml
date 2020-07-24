///uiz_treelist_moveEntry(treelist,itemHandle,destinationHandle,[indentLevel],[isOffset])
//Moves an entry from item to destination.

//Optional: indentLevel. If this argument is omitted the indent of the item already at the destinationHandle is used.
//Optional: isOffset. If this argument is true the default indentLevel is used, but indentLevel is added (or subtracted) from the default indentLevel.
/*
var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
argument_arr[i] = argument[i];
}
//if (live_call_ext(argument_arr)) return live_result;
*/
if argument[1]==argument[2] and argument_count=3 then exit;//if current position and destination are the same we don't need to do anything. However, if we have a different indentLevel, we might need to change up stuff

with(argument[0]){
    //get information about entry
    var name = uiz_treelist_item_get_name(argument[0],argument[1]);
    var sprite = uiz_treelist_item_get_sprite(argument[0],argument[1]);
    var img = uiz_treelist_item_get_spriteImg(argument[0],argument[1]);
    var indent;
    if argument_count==4 then{
        indent = argument[3];
    }else{
        if argument[2]<ds_list_size(indentEnabledAndBoxList) then{
            indent = indentEnabledAndBoxList[|argument[2]]>>3;//uiz_treelist_item_get_indentLevel(argument0,argument1);
        }else{
            indent = indentEnabledAndBoxList[|ds_list_size(indentEnabledAndBoxList)-1]>>3;
        }
        if argument_count==5 and argument[4]==true then{
            indent+=argument[3];
            indent = max(0,indent);
        }
    }
    var enabled = uiz_treelist_item_get_enabled(argument[0],argument[1]);
    var boxState = uiz_treelist_item_get_boxState(argument[0],argument[1]);
    
    var updXML = updateXML;
    
    if updXML then{
        var readXMLHandle = handleList[|argument[1]];
        var attributeList = ds_list_create();
        var attributeDataList = ds_list_create();
        while(true){
            readXMLHandle = uiz_xml_nextattribute(usexml,readXMLHandle);
            if readXMLHandle=-1 then{
                break;
            }
            var attributeName = uiz_xml_attribute_getName(usexml,readXMLHandle);
            var attributeData = uiz_xml_attribute_getValue(usexml,readXMLHandle);
            ds_list_add(attributeList,attributeName);
            ds_list_add(attributeDataList,attributeData);
        }
    }
    //sdbm("before remove");    
    uiz_treelist_removeEntry(argument[0],argument[1],false);
    //sdbm("after remove");    
//    sdbm("removedEntry",usexml)
//    sdbm(uiz_dslist_print(handleList));
//    sdbm(uiz_xml_getdebugstringtotal(usexml));
    
    //repeat(5){sdbm("")}
    if argument[2]>argument[1] then{--argument[2];}
    if updXML then{
        //sdbm("before add");
        uiz_treelist_addEntryAt(argument[0],argument[2],name,sprite,img,indent,enabled,boxState,attributeList,attributeDataList);
        //sdbm("after add");
        //sdbm("addedEntry",usexml)
        //sdbm(uiz_dslist_print(handleList));
        //sdbm(uiz_xml_getdebugstringtotal(usexml));
        ds_list_destroy(attributeList);
        ds_list_destroy(attributeDataList);
    }else{
        uiz_treelist_addEntryAt(argument[0],argument[2],name,sprite,img,indent,enabled,boxState);
    }
    
    if updXML then{
             
    }
    //sdbm("Did moveEntry");
    //sdbm(uiz_xml_toString(folders))
    //sdbm(uiz_xml_getdebugstringtotal(usexml))
    
}
