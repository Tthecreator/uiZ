/// @description uiz_menuobject_create(menu,object,size,sizetype)
/// @param menu
/// @param object
/// @param size
/// @param sizetype
function uiz_menuobject_create(argument0, argument1, argument2) {
	var m = argument0
	var mo = uiz_c(argument1)
	uiz_setParent(mo,m)
	var c = m.totobjects;
	m.itemsz[c]=argument2
	mo.height=argument2
	m.objectat[c]=mo
	m.totobjects++;
	mo.posinframey=uiz_static
	mo.posinframex=uiz_fill




}
