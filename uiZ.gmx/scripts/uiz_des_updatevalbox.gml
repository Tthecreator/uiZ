///uiz_des_updatevalbox(updatetype,newvalue)
if ds_exists(itemlist,ds_type_list) then{
var sz=ds_list_size(itemlist)
for(i=0;i<sz;i++){
if itemlist[| i].updatetype=argument0 then{
itemlist[| i].value=argument1
}
}
}
