//uiz_gridlist_drawcolumn(column,x,y,w)
///INTERNAL UIZ FUNCTION DO NOT USE
var grid_h = uiz_gridlist_getheight(maingrid);
//sdbm("draw column",scroll_start, grid_h)
for (var e = scroll_start; e < scroll_finish; e++) {
//sdbm("now drawing",argument2-scroll+e*h,scroll,argument2,e*h)
    uiz_gridlist_drawcell(argument0,e,argument1,argument2-scroll+e*h,argument3);
}
