/// @description uiz_tabslider_drawtab(itemnumber, x)
/// @param itemnumber
/// @param  x
function uiz_tabslider_drawtab(argument0, argument1) {
	var i=argument0;
	var v=argument1;
	draw_text(v + spacinglist[| i] * (halign / 2), ry + height * (valign / 2), string_hash_to_newline(uiz_getText_contained(tablist[| i], spacinglist[| i])));



}
