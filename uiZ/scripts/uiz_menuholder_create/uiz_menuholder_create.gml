/// @description uiz_menuholder_create(crollway)
/// @param crollway
function uiz_menuholder_create(argument0) {
	var m=instance_create(0,0,obj_uiZ_menuholder);
	m.totobjects=0
	m.itemsz[0]=0
	m.scrollway=argument0
	m.curobjects=0
	return m;



}
