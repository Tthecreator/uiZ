///uiz_findfile_dslist(path)
//path supports wildcards. define full path with drive letter included.
//example uiz_findfile_dslist("C:\windows\somewhere\*.ini")
var str=external_call(global.uiz_dllfind,argument0);
//sdbm(str)
var len=string_length(str);
var lat=0;
var l=ds_list_create();
for(var i=1;i<len;i++){
var ch=string_char_at(str,i);
if ch=":" then{
var file=string_copy(str,lat+1,i-lat-1)
sdbm("[uiZ:INFO] found file: "+file)
if string_length(file)>0 and file!="." and file!=".." then{
ds_list_add(l,file)}
lat=i;
}
}
if string_length(str)>0 then{
var file=string_copy(str,lat+1,i-lat)
sdbm("[uiZ:INFO] found file: "+file)
if string_length(file)>0 and file!="." and file!=".." then{
ds_list_add(l,file)}
}

return l;
