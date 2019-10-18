#define uiz_treelist_parsexml
///uiz_treelist_parsexml(treelist)
//reload the xml data into the list
//the xml data to be used can be given using uiz_treelist_setxml

//if (live_call(argument0)) return live_result;

with(argument0){
    ds_list_clear(indentEnabledAndBoxList);
    ds_list_clear(handleList);
    ds_list_clear(nextItemList);
    ds_list_clear(spriteList);
    ds_list_clear(textList);
    ds_list_clear(hierarchyItemList);
    maxHierarchyLevel = 0;
    
    expandedLines = 1;
    
    var spr = -1;
    var name = "";
    var img = 0;
    var enabled = true;
    var boxState = -1;
    
    var level = -1;
    var beginLevel = level;
    var handle = uiz_xml_gethandle_begin(usexml);
    var lastTagHandle = handle;
    var isCollectingLineData=false;
    
    var fillNextPosQueue = ds_stack_create()
    
    //find next tag inside
    
    var m=obj_uiz_xmlparser.id;
    var l=m.filelistl[| usexml];
    var d=m.filelistd[| usexml];
    var v=m.filelistv[| usexml];
    
    var lsz = ds_list_size(l);
    while(handle<lsz){
        var tagType = (l[|handle] mod 8)
        switch(tagType){
            case uiz_xml_headTag: case uiz_xml_headAttributeTag:
                
                //save line data
                if isCollectingLineData==true then{
                    if boxState==-1 then{
                        boxState = uiz_treelist_boxState_collapsed;
                    }
                    uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue)
                }
                isCollectingLineData = true;
                //reset values
                spr = -1;
                name = uiz_xml_gettag_name_at(usexml,handle);
                img = 0;
                enabled = true;
                boxState = -1;
                lastTagHandle = handle;
                ++level;//go a level deeper
            break;
            case uiz_xml_attributeName:
                //read name and data
                var tagName = d[|(l[|handle] >> 3)];
                ++handle;
                var tagData = v[|(l[|handle] >> 3)];
                switch(tagName){
                    case "name":
                        name = string(tagData);
                        break;
                    case "sprite":
                        spr = real(tagData);            
                        break;
                    case "image":
                        img = real(tagData);
                        break;
                    case "enabled":
                        enabled = real(tagData);
                        break;
                    case "boxState":
                        boxState = real(tagData);
                        break;
                }
            break;
            case uiz_xml_closingTag:
                if isCollectingLineData==true then{
                    //new headtag, write previous values
                    uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue);
                }
                
                isCollectingLineData=false;
                --level;
            break;
        }
        ++handle;
    }
    if isCollectingLineData==true then{
        //add any stuck/left lines
        uiz_treelist_parsexml_saveLineData(spr,img,name,lastTagHandle,level,enabled,boxState,fillNextPosQueue);
    }
    if ds_list_size(textList)==0 then{
        expandedLines = 0;
    }else{
        //set last item to point to nothing
        nextItemList[|ds_list_size(textList)-1]=-1;
    }
    ds_stack_destroy(fillNextPosQueue);
    uiz_treelist_generateHierarchyItemList();
}

#define uiz_treelist_parsexml_saveLineData
///uiz_treelist_parsexml_saveLineData(sprite,image,name,handle,level,enabled,boxState,saveindentqueue)
//if (live_call(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)) return live_result;
if argument6==-1 then{
    argument6 = uiz_treelist_boxState_noBox;
}
//new headtag, write previous values
var sprl = (argument0<<7)+(argument1);
var curId = ds_list_size(indentEnabledAndBoxList);
ds_list_add(spriteList,sprl);
ds_list_add(textList,argument2);
ds_list_add(handleList,argument3);
ds_list_add(indentEnabledAndBoxList,(argument4<<3)+(argument5<<2)+(argument6));
if argument6==uiz_treelist_boxState_extended then{
    ds_list_add(nextItemList,curId+1);
}else{
    ds_list_add(nextItemList,-1);
}
maxHierarchyLevel = max(maxHierarchyLevel, argument4);
//ds_list_add(indentEnabledAndBoxList,(argument4<<3)+(argument5<<2)+(argument6));

    
while(ds_stack_size(argument7)-1>=argument4){//stack level higher than desired level, we might have found a match
        var checkId = ds_stack_pop(argument7);
        if checkId!=-1 then{//match found
            if nextItemList[|checkId]=-1 then{
                nextItemList[|checkId] = curId//make other entry point to this one as it's next item in the list.
            }
            if (checkId==curId-1){
                ++expandedLines;
            }
        }
}
//if curLevel<=argument4 then{//if current stack level is less than desired level
    ds_stack_push(argument7,curId);
//}