///uiz_updater_useApplicationSurface(bool)
function uiz_updater_useApplicationSurface(argument0) {
	with(obj_uiZ_controller){
	var cur=uiz_useappsurf;
	var newSurf = argument0;
	if cur=false  then{
	if newSurf = true then{
	if cur!=application_surface and surface_exists(cur) then{
	surface_free(cur);
	}
	cur=surface_create(width,height);
	}
	}else{
	if newSurf = false then{
	//true -> false (app -> cust)
	if cur=application_surface or !surface_exists(cur) then{cur=surface_create(width,height);}
	}else{
	//true -> true
	if !surface_exists(cur) then{cur=surface_create(width,height);}
	}
	}
	uiz_useappsurf=argument0;
	}




}
