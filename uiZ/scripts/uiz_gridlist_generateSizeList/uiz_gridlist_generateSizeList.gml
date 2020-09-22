/// @description INTERLA UIZ FUNCTION DO NOT USE
function uiz_gridlist_generateSizeList() {

	//make new sizelist
	if !ds_exists(sizelist,ds_type_list) then{
	if !mouse_check_button(mb_any) then{resiz=1;}
	sizelist=ds_list_create()
	var sz=ds_list_size(mainlist);
	initialized=false;
	repeat(sz){ds_list_add(sizelist,width/sz)}
	}



}
