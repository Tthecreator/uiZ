uiz_destroyObject_notself(obj_uiz_designer.rightbar)
if ds_exists(itemlist,ds_type_list) then{ds_list_destroy(itemlist)}
uiz_destroyDsList(updatelist)
uiz_destroyDsList(updaterlorstrlist)
uiz_destroyDsList(updatedefvallist)
