///uiz_tabslider_drawtab(itemnumber, x)
var i=argument0;
var v=argument1;
draw_text(v + spacinglist[| i] * (halign / 2), ry + height * (valign / 2), uiz_getText_contained(tablist[| i], spacinglist[| i]));
