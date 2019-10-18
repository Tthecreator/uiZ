#define uiz_treelist_addEntryAt
///uiz_treelist_addEntryAt(id, handle, name, [sprite], [spriteImage], [indentLevel],[enabled], [boxState])
//adds an entry right before a handle, with the same indentation as the item on the handle
//enabled: This item is grayed out
/*
var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
	argument_arr[i] = argument[i];
}
if (live_call_ext(argument_arr)) return live_result;
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
    switch(argument_count){
        default:
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
    ds_list_insert(indentEnabledAndBoxList,handle,(level<<3)+(enabled<<2)+boxState);
    
    //fix itemlist
    uiz_treelist_fixNextItemList(handle,1);
    switch(boxState){
        case uiz_treelist_boxState_extended:
            nextItemList[|handle] = handle+1;
        break;
        case uiz_treelist_boxState_collapsed:
            nextItemList[|handle] = uiz_treelist_findNextNodeAtLevel(handle+1,level);
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
        
            uiz_xml_writeHeadTag_in(usexml,xmlInHandle,argument[2],"name",argument[2],"sprite",string(spr>>7),"image",string(spr mod 128),"enabled",string(enabled),"boxState",string(boxState));
            //uiz_xml_writeHeadTag_in(usexml,xmlInHandle,argument[2],"name",argument[2]);
            uiz_treelist_addEntryIn_refitXmlHandles(handle);
        }
    }else{
        //fix hierarchy list
        uiz_treelist_fixNewHierarchyItemList(handle, level);
        //apply changes to xml
        if updateXML then{
            uiz_xml_writeHeadTag_before(usexml,xmlHandle,argument[2],"name",argument[2],"sprite",string(spr>>7),"image",string(spr mod 128),"enabled",string(enabled),"boxState",string(boxState));
            //uiz_xml_writeHeadTag_before(usexml,xmlHandle,argument[2],"name");
            if (argument_count>=6){
                uiz_xml_decreaseTagDepth(usexml,xmlHandle,originalLevel-level);
            }
        }
        uiz_treelist_addEntryAt_refitXmlHandles(xmlHandle,handle,level);
    }
    
}

#define uiz_treelist_addEntryAt_refitXmlHandles
///uiz_treelist_addEntryAt_refitXmlHandles(startHandle,startHandleList,indentlevel)
var m=obj_uiz_xmlparser;
var l=m.filelistl[| usexml];
var d=m.filelistd[| usexml];
var v=m.filelistv[| usexml];
var lsz = ds_list_size(l);
var p;
var xmlHandle = argument0;
//count amount of added end tags before handle
var addedEndTagSizes = 0;//the amount of end tags that have been added before the xmlHandle
for(var i=xmlHandle;i<lsz;++i){
    p = uiz_positify(l[| i]);
    if (p mod 8)==uiz_xml_closingTag{
        ++addedEndTagSizes;
    }else{
        break;
    }
}

//check for headtag or attributeHeadTag
var beginTagSize = 0;
//p = uiz_positify(l[| i]);//reuse last p from loop
switch(p mod 8){
    case uiz_xml_headTag:
        beginTagSize = 1;
    break;
    case uiz_xml_headAttributeTag:
        beginTagSize = 1;
        //find out how much data this tag has
        for(var i=i+1;i<lsz;++i){
            p = uiz_positify(l[| i])
            ptype = p mod 8;
            if(ptype==uiz_xml_attributeName || ptype==uiz_xml_attributeData){
                ++beginTagSize;
            }else{
                break;
            }
        }
    break;
    default:
        sdbm("[uiZ|ERROR]Unable to figure out how treelist "+string(id)+" relates to it's underlying xml",ptype);
        show_error("[uiZ|ERROR]Unable to figure out how treelist "+string(id)+" relates to it's underlying xml",false);
}
//add calculated offsets to xml handles
var hsz = ds_list_size(handleList);
handleList[|argument1]+=addedEndTagSizes;//tag that has changed only needs this offset
var lowestLevel = argument2;
//add offsets before endtag
for(var i=argument1+1;i<hsz;++i){
    if (indentEnabledAndBoxList[|i]>>3)<=lowestLevel then{
        break;//endtag passed, we need to add an extra offset.
    }
    handleList[|i]+=addedEndTagSizes+beginTagSize;    
}
//add offsets after endtag
for(var i=i+0;i<hsz;++i){
    handleList[|i]+=addedEndTagSizes+beginTagSize+1;    
}