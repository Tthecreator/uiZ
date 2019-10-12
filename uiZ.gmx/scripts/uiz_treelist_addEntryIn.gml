#define uiz_treelist_addEntryIn
///uiz_treelist_addEntryIn(id, handle, name, [sprite], [spriteImage], [enabled], [boxState])
//adds an entry right before a handle, with the same indentation as the item on the handle
//enabled: This item is grayed out
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
var m=obj_uiz_xmlparser;
var l=m.filelistl[| usexml];
var d=m.filelistd[| usexml];
var v=m.filelistv[| usexml];
var lsz = ds_list_size(handleList);
var p;


//first decrease the xml handle of the listHandle, since it is placed inside and xml Endtag
var xmlHandle = handleList[|argument0] - 1;
handleList[|argument0] = xmlHandle;

//get added tag size
var handleSize = uiz_xml_gethandleend(usexml,xmlHandle)-xmlHandle+1;
//increase other handles with entry size
for(var i=argument0+1;i<lsz;++i){
    handleList[|i]+=handleSize;
}
