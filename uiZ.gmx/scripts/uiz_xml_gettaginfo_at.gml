///uiz_xml_gettaginfo_at(file,at,infoname,default)
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
//sdbm(i,lv,lt)
//return d[| lv];
return v[| lv];
}else{i--;}
}
}
}
//sdbm("3at,reutnring default")
return argument3;
