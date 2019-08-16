///uiz_xml_settaginfo_at(file,at,infoname,setto)
//deismantel the tagname
var f=argument0;
var m=obj_uiz_xmlparser;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l);
var h=argument1
eh=uiz_xml_gethandleshortend(f,h)
for(var i=h;i<eh;i++){
//sdbm()
lv=round(uiz_positify(l[| i])>>3);
lt=(uiz_positify(l[| i]) mod 8);
//sdbm("1at",lv,lt,d[| lv])
if lt=4 and d[| lv]=argument2 then{
i++;
if i<eh and i<ds_list_size(l) then{
lv=round(uiz_positify(l[| i])>>3);
lt=(uiz_positify(l[| i]) mod 8);
//sdbm("2at",lv,lt,v[| lv])
if lt=5 then{
//return d[| lv];
//l[| i]=((uiz_list_getadd(v,argument3)<<3)+5)*uiz_sign(l[| i])
v[| lv]=argument3
return 0;
}else{i--;}
}
}
}
//add to end
ds_list_insert(l,eh-1,(uiz_list_getadd(d,argument2)<<3)+4)
ds_list_insert(l,eh,(uiz_list_getadd(v,argument3)<<3)+5)
return 0;
