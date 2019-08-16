///scr_sort_list(ds_list)
var l=argument0;
var sz=ds_list_size(l)
if sz>0 then{
//check trough
var curdepth=l[| 0].depth;
for(var i=1;i<sz;i++){
var c=l[| i].depth
if c<curdepth then{scr_sorting_depths(l,0,sz-1); break;}
curdepth=c;
}

}
