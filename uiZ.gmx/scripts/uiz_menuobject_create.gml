///uiz_menuobject_create(menu,object,size,sizetype)
var m = argument0
var mo = instance_create(0,0,argument1)
uiz_setParent(mo,m)
var c = m.totobjects;
m.itemsz[c]=argument2
mo.height=argument2
m.objectat[c]=mo
m.totobjects++;
mo.posinframey=uiz_static
mo.posinframex=uiz_fill

