globalvar colorlist
if !ds_exists(colorlist,ds_type_list) then{colorlist=ds_list_create()
if file_exists("uiz_colordump") then{
var f=file_text_open_read("uiz_colordump")
ds_list_read(colorlist,file_text_read_string(f))
file_text_close(f)}else{
//add default colors
ds_list_add(colorlist,c_aqua,c_black,c_blue,c_dkgray,c_fuchsia,c_gray,c_green,c_lime,c_ltgray,c_maroon)
ds_list_add(colorlist,c_navy,c_olive,c_orange,c_purple,c_red,c_silver,c_teal,c_white,c_yellow)
}
}
