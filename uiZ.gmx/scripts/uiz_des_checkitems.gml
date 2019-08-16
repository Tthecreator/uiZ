//sdbm("checking items",itemlist)
if ds_exists(itemlist,ds_type_list) then{
var sz=ds_list_size(itemlist)
for(i=0;i<sz;i++){
//if itemlist[| i].updated=1 then{
//sdbm(itemlist[| i],itemlist[| i].update)
//if i=2 then{sdbm("i=2!",itemlist[| i],itemlist[| i].update)}
if itemlist[| i].update=1 or itemlist[| i].updated=1 then{
show_debug_message("[uiZ,Designer:INFO]data update @"+string(itemlist[| i])+": "+itemlist[| i].updatetype)
updatetype=itemlist[| i].updatetype
updateobject=itemlist[| i]
return 1;
}
}
//sdbm("end for")
}else{sdbm("[uiZ,Designer:ERROR]itemlist doesnt exist")}
return 0;
