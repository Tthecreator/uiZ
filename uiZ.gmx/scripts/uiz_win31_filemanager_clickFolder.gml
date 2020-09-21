///uiz_win31_filemanager_clickFolder(treelist id, listHandle)
if uiz_mouse_isDoubleClick() or uiz_treelist_isMouseOverBox(argument0,argument1) then{
    uiz_treelist_clickScript_switch_node(argument0, argument1);
}else{
    if uiz_treelist_item_get_boxState(argument0, argument1) !=uiz_treelist_boxState_noBox then{
        var handle = uiz_treelist_getXmlHandle(argument0, argument1);
        uiz_win31_filemanager_selectFolder(argument0, handle);
    }
}
