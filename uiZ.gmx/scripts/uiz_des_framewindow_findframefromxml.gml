///uiz_des_framewindow_findframefromxml(frameid,xmlfile,xmlat)
var f=argument1
var m=obj_uiz_xmlparser;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l)
var to=min(lsz-1,argument2)
var objectat=argument0
//sdbm("findframefromxml",to)
for(var i=0;i<=to;i++){
//sdbm("findframefromxml",i,to)
lv=round(uiz_positify(l[| i])>>3);
lt=uiz_positify(l[| i]) mod 8;
switch(lt){
case 0: case 1:
var num=uiz_xml_iswhattagin_at(argument1,i)
//sdbm("findframefromxml case 0,1",num,objectat)
if num>0 and instance_exists(objectat) and (objectat.object_index=obj_uiZ_frameset or objectat.object_index=obj_uiZ_framecolanchor or objectat.object_index=obj_uiZ_framerowanchor) and array_length_1d(objectat.frameat)>num-1 then{
//sdbm("objectat!0",objectat)
objectat=objectat.frameat[num-1]
//sdbm("objectat!0end",objectat)
}
break;
case 2: case 3:
//check if end
if i=to then{
//found
var num=uiz_xml_iswhattagin_at(argument1,i)
if num>0 and instance_exists(objectat) and (objectat.object_index=obj_uiZ_frameset or objectat.object_index=obj_uiZ_framecolanchor or objectat.object_index=obj_uiZ_framerowanchor) and array_length_1d(objectat.frameat)>num-1 then{
//sdbm("objectat!1",objectat)
objectat=objectat.frameat[num-1]
//sdbm("objectatend!1",objectat)
}
}
break;
case 7:
if !(objectat.object_index=obj_uiZ_frameset) then{
//sdbm("objectatparent!2",objectat)
objectat=objectat.parent
//sdbm("objectatparent!2end",objectat)
}
break;
}

}
return objectat;
