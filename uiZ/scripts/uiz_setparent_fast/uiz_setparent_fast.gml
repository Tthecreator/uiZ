/// @description uiz_setParent(object,newparent)
/// @param object
/// @param newparent
function uiz_setparent_fast(argument0, argument1) {
	//using in parts where rearanging of the list is not necessary. SCRIPT CAN LEAD TO INSTABILITY
	//remove from old parentlist
	//if argument0.parent=100027 then{show_message(argument0.listpos)}
	if argument0.listpos>-1 then{
	//if argument0.parent=100027 then{show_message("2")}
	ds_list_delete(argument0.parent.children,argument0.listpos)
	}
	//set new parent
	var t=argument1;
	argument0.parent=t


	if !ds_exists(t.children,ds_type_list) then{t.children=ds_list_create()}
	ds_list_add(t.children,argument0.id)
	argument0.listpos=ds_list_size(t.children)-1



}
