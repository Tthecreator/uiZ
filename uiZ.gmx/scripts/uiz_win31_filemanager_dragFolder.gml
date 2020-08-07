///uiz_win31_filemanager_dragFolder(treelist id, draggingItem, itemDestination, itemDestinationYPosition)
uiz_treelist_dragScript_move(argument0, argument1, argument2, argument3);

var itemDestination = argument2;
var handle = uiz_treelist_getXmlHandle(argument0, itemDestination);
var tagType = uiz_xml_getTagType(argument0.usexml, handle);

if (tagType!=uiz_xml_headTag and tagType!=uiz_xml_headAttributeTag) then{//if this is not a folder
        //get parent instead, because we can't index this folder.
        handle = uiz_xml_getabove_at(argument0.usexml, handle);
        if handle=-1 then{
            handle = uiz_xml_gethandle_begin(argument0.usexml);//handle to root
        }
}

uiz_win31_filemanager_selectFolder(argument0, handle);
