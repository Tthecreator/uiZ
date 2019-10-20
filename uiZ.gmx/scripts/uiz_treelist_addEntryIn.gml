#define uiz_treelist_addEntryIn
///uiz_treelist_addEntryIn(id, handle, name, [sprite], [spriteImage], [enabled], [boxState])
//adds an entry right before a handle, with the same indentation as the item on the handle
//enabled: This item is grayed out

var argument_arr = array_create(argument_count);
for (var i = 0; i < argument_count; i++) {
argument_arr[i] = argument[i];
}
if (live_call_ext(argument_arr)) return live_result;

with(argument[0]){
    var handle = argument[1];
    if handle=-1 then{handle=0;}
    //find end of handle
    handleEnd = uiz_treelist_handle_getEnd(argument[0],handle)+1;
    var boxState = indentEnabledAndBoxList[|handle] mod 4;
    if (boxState == uiz_treelist_boxState_noBox) then{
        indentEnabledAndBoxList[|handle] = indentEnabledAndBoxList[|handle] - uiz_treelist_boxState_noBox + uiz_treelist_boxState_extended
    }
    var level = (indentEnabledAndBoxList[|handle]>>3) + 1;
    switch(argument_count){
        case 4:
            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],0,level)
        break;
        case 5:
            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level)
        break;
        case 6:
            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level,argument[5])
        break;
        case 7:
            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],argument[3],argument[4],level,argument[5],argument[6])
        break;
        default:
            uiz_treelist_addEntryAt(argument[0],handleEnd,argument[2],-1,0,level);
        break;    
    }
    
    
}

#define uiz_treelist_addEntryIn_refitXmlHandles
if (live_call(argument0)) return live_result;
var m=obj_uiz_xmlparser;
var l=m.filelistl[| usexml];
var d=m.filelistd[| usexml];
var v=m.filelistv[| usexml];
var lsz = ds_list_size(handleList);
var p;

//sdbm("uiz_treelist_addEntryIn_refitXmlHandles",handleList[|argument0])
//first decrease the xml handle of the listHandle, since it is placed inside and xml Endtag
/*for(; xmlHandle>0; --xmlHandle){
    if (l[| xmlHandle] mod 8)!=uiz_xml_closingTag then{
        //++xmlHandle;
        break;//we've found a valid xmlHandle position
    }
}*/
var xmlHandle = handleList[|argument0]-1;
handleList[|argument0] = xmlHandle;

//get added tag size
//sdbm("handleSize",usexml,xmlHandle)
//sdbm(uiz_dslist_print(handleList));
//sbm(uiz_xml_getdebugstringtotal(usexml))
repeat(5){sdbm("")}
var handleSize = uiz_xml_gethandleend(usexml,xmlHandle)-xmlHandle+1;
if handleSize<=0 then{
    sdbm("[uiZ|ERROR] Tried to fix invalid XML Handles",uiz_xml_gethandleend(usexml,xmlHandle),xmlHandle);
    show_error("Tried to fix invalid XML Handles",false);
}
//increase other handles with entry size
for(var i=argument0+1;i<lsz;++i){
    handleList[|i]+=handleSize;
}