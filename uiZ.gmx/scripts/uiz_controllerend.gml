///uiz_controllerend() do not use this command
if ds_exists(children,ds_type_list) then{ds_list_destroy(children)}
if ds_exists(uiz_animationlist,ds_type_list) then{ds_list_destroy(uiz_animationlist)}
globalvar colorlist;
if ds_exists(colorlist,ds_type_list) then{
if ds_list_size(colorlist)>50 then{
while (ds_list_size(colorlist) > 50){
ds_list_delete(colorlist,0)
}
}
if file_exists("uiz_colordump") then{file_delete("uiz_colordump")}
var f=file_text_open_write("uiz_colordump")
file_text_write_string(f,ds_list_write(colorlist))
file_text_close(f)
}
uiz_destroydslist(uiz_arealist);
uiz_destroydslist(uiz_steplist);
uiz_destroydslist(uiz_endsteplist);
uiz_destroydslist(uiz_beginsteplist);
uiz_destroydslist(uiz_arealist_extra);
//uiz_destroydslist(uiz_objlist);
///uiz by Thomas Saedt, Tthecreator on the game maker forums.
