///uiz_xml_createfolderstruct(file,tree)
/*
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
*/
var levels=uiz_xml_getlevels(argument1)
var tsz=ds_list_size(argument1)
for(i=1;i<=levels;i++){
var h=uiz_xml_gethandle_part(argument0,argument1,i)
//sdbm("HANDLE",i,h)
if h=-1 then{
//create folder
var ps=uiz_xml_toposintree(argument1,i)
var l=argument1
//sdbm("CREATEFOLDER",ps,uiz_xml_getdebugstring(argument1),l[| ps-1]>>3,l[|ps-1] mod 8,l[| ps]>>3,l[|ps] mod 8,l[| ps+1]>>3,l[|ps+1] mod 8)
sdbm("CREATEFOLDER",ps,uiz_xml_getdebugstring(argument1),uiz_positify(l[| ps])>>3,l[|ps] mod 8)
uiz_xml_addtreeintree_part(argument0,argument1,argument1,0,uiz_xml_toposintree(argument1,i),tsz,i-1)
//uiz_xml_addtreeintree_part(argument0,argument1,argument1,0,uiz_xml_toposintree(argument1,i),tsz,i-1)
//sdbm(uiz_xml_getdebugstringtotal(argument0))
break;
}
}
