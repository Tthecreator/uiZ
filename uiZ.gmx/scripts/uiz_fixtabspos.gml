var t=argument0;
with(t){
uiz_fix_Base()
//get size of spacings
//getlist=true
if ds_exists(tablist,ds_type_list) and ds_exists(spacinglist,ds_type_list) then{
var sz=ds_list_size(tablist)
var tot=0;
uiz_ds_list_resize(spacinglist,sz,0)
if font!=-1 then{draw_set_font(font)}
for(var i=0;i<sz;i++){
var s=string_width(string(tablist[| i]))+tabmargin+margin_normal;
if i=ms then{
msX=sx+tot;
msX2=sx+tot+s;
}
if i=oldms then{
oldmsX=sx+tot;
oldmsX2=sx+tot+s;
}
if i=selected then{
selmsX = sx+tot;
selmsX2 = sx+tot+s;
}
tot+=s;
spacinglist[| i]=s;
}
if tot>width then{
var sc=width/tot;
for(var i=0;i<sz;i++){
spacinglist[| i]*=sc;
}
}
}

}

