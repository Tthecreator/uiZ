with(obj_uiz_designer){
if ds_list_size(afobjlist)>0 then{
uiz_destroyobject_notself(rightbarframe)
var p=gmtreelist.keepselected
var o=afobjlist[| p]
sdbm("[uiZ,Designer:INFO]Deleting object: "+string(o))
//removing parents from children
var l=o.object.children;
ini_open(ini)
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)

for(var i=0;i<sz;i++){
var w=l[| i];
//dbm(l,i,l[| i],o.object.parent)
uiz_setParent(w,o.object.parent)
uiz_fixgeneralpos(w)
var n=ds_list_find_index(aflist,w)
if n>=0 then{
//ini_key_delete(string(n),"parent")
if o.object.parent=af then{ini_key_delete(string(n),"parent")}else{
var m=ds_list_find_index(aflist,o.object.parent);
if m>=0 then{
ini_write_real(string(n),"parent",m)}
}
}
//uiz_destroyobject(w)
}
//var changewhat=p;
var m=ds_list_find_index(aflist,o.object.parent);
for(var i=0;i<uiobjects;i++){
var rd= ini_read_real(string(i),"parent",-1)
//sdbm("rd:",rd,p,m)
if rd=p then{

if o.object.parent=af then{ini_key_delete(string(i),"parent")}else{
//var m=ds_list_find_index(aflist,o.object.parent);
if m>=0 then{
ini_write_real(string(i),"parent",m)}
}


}
}


}


uiz_destroyobject(o.object)
uiz_destroyobject(o)
uiz_deletefromlists(p,afobjlist,afnamelist,afsprlist,afimglist,aflist)
gmtreelist.keepselected=0
gmtreelist.sel=0
//delete and change ini file
//var changewhat="parent="+string(p)
uiobjects--
ini_write_real("general","uiobjects",uiobjects)
ini_section_delete(string(p))
ini_close()
var rf=file_text_open_read(ini);
var wf=file_text_open_write(ini);
while (!file_text_eof(rf))
{
var rd = file_text_readln(rf);
if string_char_at(rd,1)="[" then{
//is section
var rs=string_copy(rd,2,string_length(rd)-4)
var rn=string_digits(rs)
//sdbm("beg",rs,rn,p,"end")
if rs=rn and real(rn)>p then{
//valid number
file_text_write_string(wf,"["+string(real(rn)-1)+"]")
}else{
file_text_write_string(wf,rd)
}
}else{file_text_write_string(wf,rd)}
file_text_writeln(wf)
}
file_text_close(rf)
file_text_close(wf)
//edit other items from list to fit stuff
var sz=ds_list_size(aflist);
for(var i=p;i<sz;i++){
aflist[| i].uiobject--;
//afobjlist[| i].listpos--;

}

if ds_list_size(afobjlist)>0 then{
afobjlist[| gmtreelist.sel].alarm[0]=1
}
global.selobj=-1
}
}

