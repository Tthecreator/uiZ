///uiz_spaceAreas_format_changeList_dontMax(ds list,space)
var glist=argument0;
var msz=argument1;
//slist=ds_list_create()
//count up all sizes
var gsz=ds_list_size(glist)
var isz=0;
for(var i=0;i<gsz;i++){
isz+=glist[| i]
}
if isz>msz then{
//if the size of items is bigger than the maximum given size
var sc=msz/isz;
for(var i=0;i<gsz;i++){
glist[| i]*=sc
}
}
