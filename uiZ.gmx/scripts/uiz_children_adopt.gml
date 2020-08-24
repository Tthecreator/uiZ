///uiz_children_adopt(from, to)
/*Transfers all children from argument0 to argument1.
Useful if you want to destroy an object, but don't want all the children to have uiZ_obj_controller as a parent.
0-from: From what object the children should be transferred. Needs to be a game maker instance id.
1-to: To what object the children should be transferred. Needs to be a game maker instance id.
*/
var g=argument0;
var f=argument1;
if ds_exists(g.children,ds_type_list) then{
if !ds_exists(f.children,ds_type_list) then{f.children=ds_list_create()}
var sz=ds_list_size(g.children);
for(var i=0;i<sz;i++){
//var curchild=g.children[| 0];
var curchild=g.children[| ds_list_size(g.children)-1];
///sdbm("adopting:",curchild)
uiz_setparent_fast(curchild,f)
}
}else{show_debug_message("[uiZ:WARNING] tried to adopt from someone without childrenlist.")}
