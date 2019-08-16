///uiz_des_updateset(newobject)
//if instance_exists(selobj) then{with(selobj){instance_destroy()}}
//selobj=-1
switch(argument0.object_index){
case obj_uiZ_gradientsquare:
selobj=instance_create(0,0,obj_uiz_des_gradientsquare)
break;
default:
var oldname=object_get_name(argument0.object_index)
//sdbm("newdesobjct",oldname,string_copy(oldname,1,8),string_copy(oldname,9,string_length(oldname)-8))
if string_copy(oldname,1,8)="obj_uiZ_" then{
var newobject=asset_get_index("obj_uiz_des_"+string_copy(oldname,9,string_length(oldname)-8))
if newobject>-1 then{selobj=instance_create(0,0,newobject); break;}

}
//selobj=instance_create(0,0,obj_uiz_des_empty)

break;
}
selobj.object=argument0
var o=argument0;
//objstr=ini_read_string(string(i),"object","obj_uiZ_testobject");

ds_list_add(aflist,o)
//o.afnlpos=ds_list_size(afnamelist)
ds_list_add(afnamelist,string(o)+"_"+objstr)

var pos=ds_list_find_index(uizlist,objstr)
ds_list_add(afsprlist,uizsprlist[| pos])
ds_list_add(afimglist,uizimglist[| pos])
ds_list_add(afobjlist,selobj)
uiz_setparent(o,af)
objecttreelist.checkuplist=1
if instance_exists(gmtreelist) then{uiz_fixgeneralpos(gmtreelist)}
