///uiz_xml_addtreeintree_part(file,xtratree,nothing,lastistag,start,end,handlepart)
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var t=argument1
var k=argument2;
var h=uiz_xml_gethandle_part(argument0,argument1,argument6)
var eh=uiz_xml_gethandleshortend(argument0,h)
if eh=-1 then{eh=ds_list_size(l)}
//sdbm("handles:",h,eh,argument0,argument1,argument6)
var tsz=ds_list_size(t)
var adda=-1;
var rd,wr;
var isendtag=argument3

for(var i=argument5-1;i>=argument4;i--){

rd=uiz_positify(t[|i])
var waslast=1;
adda++;
lt=rd mod 8;
//sdbm("ADDIN")

if isendtag=1 then{
wr=uiz_xml_treetotag(argument0,rd,1)
lt=rd mod 8;
if lt!=4 and lt!=5 then{isendtag=0;}
}else{
wr=uiz_xml_treetolist(argument0,rd,1)
if lt=0 or lt=1 then{
//sdbm("ADDIN",eh+adda)
ds_list_insert(l,eh+adda,(round(rd>>3)<<3)+7)
adda++
}

}
if lt!=4 and lt!=5 then{var waslast=1;}else{
var waslast=0
}
//if lt!=4 and lt!=5 then{isendtag=0;adda=0;}
//write to list
//sdbm("ADDIN1",eh)
ds_list_insert(l,eh,wr)
//sdbm("!1!",uiz_xml_getdebugstringtotal_list(l))
}
//var ls=uiz_list_getadd(l,argument2)

//var tree=uiz_xml_gettree(argument0,argument2)

