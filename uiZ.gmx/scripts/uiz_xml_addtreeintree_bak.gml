///uiz_xml_addtreeintree(file,basetree,xtratree,lastistag)
var k=argument2;
m=0;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var t=argument1
var h=uiz_xml_gethandle(argument0,argument1)
var eh=uiz_xml_gethandleshortend(argument0,h)
var tsz=ds_list_size(t)
var rd,wr;
var isendtag=argument3
var adda=0
for(var i=tsz-1;i>=0;i--){
rd=uiz_positify(t[|i])
adda++;
lt=rd mod 8;
if lt!=4 and lt!=5 then{isendtag=0;adda=0;}

if isendtag=1 then{
wr=uiz_xml_treetotag(argument0,rd,0)
lt=rd mod 8;
if lt!=4 and lt!=5 then{isendtag=0;}
}else{
wr=uiz_xml_treetolist(argument0,rd,0)
if lt=0 or lt=1 then{
ds_list_insert(l,eh,(rd div 8)+7)
}

}
//write to list
ds_list_insert(l,eh+adda,wr)
}
//var ls=uiz_list_getadd(l,argument2)

//var tree=uiz_xml_gettree(argument0,argument2)

