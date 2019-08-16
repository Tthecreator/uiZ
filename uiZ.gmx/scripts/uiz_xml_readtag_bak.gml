///uiz_xml_readtag(file,tree,tagname)
var f=argument0;
var m=obj_uiz_xmlparser;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l);



var tag=uiz_list_getadd(d,argument2)
var tbeg=uiz_xml_gethandle(f,argument1)
if tbeg=-1 then{return "";}
var tend=uiz_xml_gethandleend(f,tbeg)
if tend=-1 then{tend=lsz-1}
var findtag=(tag<<3)+2
var findtago=(tag<<3)+3
found=-1;
var gototag=-1
for(var i=tbeg;i<=tend;i++){
if gototag>-1 then{
//var lt=round(l[|i]>>3);
if round(uiz_positify(l[|i])>>3)=4 then{

}
}else{
if l[|i]=findtago then{
gototag=i
//found=i; break;
}
if l[|i]=findtag then{
found=i+1; break;
}
}
}
if found=-1 then{
return "";
}else{
return v[|found]
}
