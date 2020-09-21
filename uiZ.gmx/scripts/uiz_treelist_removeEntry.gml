#define uiz_treelist_removeEntry
///uiz_treelist_removeEntry(treelist,handle,recursive)
//if live_call(argument0,argument1,argument2) return live_result;
//remove an entry from a treelist
//if this entry has children, the children will be placed in the entry above the deleted entry.
//However, if that entry doesn't exist (e.g. you are at the first node) or the indentLevel of the entry above is not the same as this one, the children might get broken.
//If recursive is enabled however, all children are deleted.
with(argument0){
    if argument2 then{//recursive
    uiz_treelist_removeEntry_recursively(argument1);
    }else{//non recursive
        //remove from xml
        if updateXML then{
            //remove from xml
            var xmlHandle = handleList[|argument1];
            var afterMax = uiz_xml_gethandleend(usexml,xmlHandle);
            var removed = uiz_xml_remove_at(usexml,xmlHandle)
            //update handles
            uiz_treelist_removeEntry_refitXmlHandles(argument1+1,removed-1,afterMax);
        }
        
        //check if this item was extended
        if uiz_treelist_isItemVisible(argument0,argument1) then{
            --expandedLines;
        }
        
        //remember stuff for later
        var level = indentEnabledAndBoxList[|argument1]>>3;
        
        //remove from treelist
        uiz_treelist_removeEntry_removeFromLists(argument1);
        
        //update nextItemList
        var lsz = ds_list_size(nextItemList);
        for(var i=argument1;i<lsz;++i){
            --nextItemList[|i];
        }
        nextItemList[|lsz-1]=-1;
        
        //update children's indent
        for(var i=argument1;i<lsz;++i){
            var r = indentEnabledAndBoxList[|i]
            var rs = r>>3;
            if rs<=level then{
                break;//we're at the same indent as the on on which we started, all children are processed
            }
            indentEnabledAndBoxList[|i] -= (1<<3);
        }
    }
}

#define uiz_treelist_removeEntry_refitXmlHandles
///uiz_treelist_removeEntry_refitXmlHandles(listHandle,removedP,oldClosingTagPosition)
//if live_call(argument0,argument1,argument2) return live_result;
var lsz = ds_list_size(handleList);
for(var i = argument0;i<lsz;++i){
    var r = handleList[|i];
    if(r >= argument2){
        break;//we passed the old closing tag, we need to factor that in as well in the next for loop
    }
    handleList[|i] = r-argument1;
    
}
for(var i = i+0;i<lsz;++i){
    handleList[|i]-=argument1+1;
}

#define uiz_treelist_removeEntry_recursively
/// uiz_treelist_removeEntry_recursively(handle)
///uiz_treelist_removeEntry_recursively(listHandle)
var handle = argument0;
if updateXML then{
    //remove from xml
    var xmlHandle = handleList[|handle];
    var afterMax = uiz_xml_gethandleend(usexml,xmlHandle);
    var removed = uiz_xml_remove_at_all(usexml,xmlHandle)
    //update handles
    uiz_treelist_removeEntry_refitXmlHandles(handle+1,removed-1,afterMax);
}

//remember stuff for later
var level = indentEnabledAndBoxList[|handle]>>3;

//check until what to remove lines
var lsz = ds_list_size(nextItemList);
var removeUntil = lsz;
for(var i=handle+1;i<lsz;++i){
    if (indentEnabledAndBoxList[|i]>>3)<=level then{
        removeUntil = i;
        break;
    }
}

//check how many visible lines to remove
expandedLines -= uiz_treelist_removeEntry_recursively_getVisibleLines(handle,removeUntil-1);
removeLines = removeUntil-handle;

//remove from treelist
repeat(removeLines){
    uiz_treelist_removeEntry_removeFromLists(handle);
}

//update nextItemList
var lsz = ds_list_size(nextItemList);
for(var i=handle;i<lsz;++i){
    nextItemList[|i]-=removeLines;
}
nextItemList[|lsz-1]=-1;

#define uiz_treelist_removeEntry_recursively_getVisibleLines
/// uiz_treelist_removeEntry_recursively_getVisibleLines(startH)
///uiz_treelist_removeEntry_recursively_getVisibleLines(listHandle,removeUntil)
//if (live_call(argument0,argument1)) return live_result;
var visibleLines = 0;
var startH = argument0;
var maxH = min(argument1,ds_list_size(nextItemList));
h = 0;
while(true){
    if h>maxH then{
        //not visible, we passed it without finding it.
        return visibleLines
    }else{
        if h>=startH then{
            ++visibleLines;
        }
    }
    h = nextItemList[|h];
}

return visibleLines;

#define uiz_treelist_removeEntry_removeFromLists
/// uiz_treelist_removeEntry_removeFromLists(handle)
///uiz_treelist_removeEntry_removeFromLists(handle)
var handle = argument0;
ds_list_delete(indentEnabledAndBoxList,handle);
ds_list_delete(spriteList,handle);
ds_list_delete(textList,handle);
ds_list_delete(handleList,handle);
ds_list_delete(hierarchyItemList,handle);  
ds_list_delete(nextItemList,handle);