#define uiz_fixchildren
///uiz_fixchildren(object,tograndchildren)
if global.isfixinggrandchildren=false then{
//sdbm("Fixchildren called from",id,object_get_name(object_index))
if argument1=true then{global.isfixinggrandchildren=true}
uiz_fixchildren_processing(argument0,argument1)
global.isfixinggrandchildren=false;
}

#define uiz_fixchildren_processing
var p=argument0;
var l=p.children;
//sdbm("fixchildren",p)
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)
//sdbm("sz:",sz)
for(var i=0;i<sz;i++){
var w=l[| i]
//dbm("w:",i,w)
//sdbm("w:",i,w,object_get_name(w.object_index),w.height)
//show_message(w)
//if w=100033 then{dbm(w,p)}
//sdbm("fixing:",w)
uiz_fixgeneralpos(w)
//sdbm("wdone:",i,w)
if argument1=true and w.uiz_enabled=true then{
uiz_fixchildren_processing(w,true)
}
}
}