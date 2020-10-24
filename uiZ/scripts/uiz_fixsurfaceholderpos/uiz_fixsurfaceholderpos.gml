function uiz_fixsurfaceholderpos(argument0) {
	with(argument0){
	uiz_fix_Base();
	if surface_exists(surface) then{surface_resize(surface,max(1,width),max(1,height))}else{surface=surface_create(max(1,width),max(1,height))}

	}




}
