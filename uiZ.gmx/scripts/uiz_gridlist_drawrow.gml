///uiz_gridlist_drawrow(column,x,y)
///INTERNAL UIZ FUNCTION DO NOT USE
var grid_w = ds_list_size(mainlist);
var sz=argument1
for (var e = 0; e < grid_w; e++) {
var w=sizelist[|e];
    uiz_gridlist_drawcell(e,argument0,sz,argument2,w);
    sz+=w;
}
