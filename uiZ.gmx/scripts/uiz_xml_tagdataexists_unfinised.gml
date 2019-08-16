///uiz_xml_tagdataexists(file,tree,tagtree,data)
var h=uiz_xml_gethandle(argument[0],argument[1])
eh=uiz_xml_gethandleshortend(argument[0],h)
endh=uiz_xml_gethandleend(argument[0],h)
var th=uiz_xml_gethandle(argument[0],argument[2])
if eh>-1 and (argument_count mod 2)=0 then{
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument[0]];
var d=m.filelistd[| argument[0]];
var v=m.filelistv[| argument[0]];
for(var i=eh;i<=endh;i++){

}
}
