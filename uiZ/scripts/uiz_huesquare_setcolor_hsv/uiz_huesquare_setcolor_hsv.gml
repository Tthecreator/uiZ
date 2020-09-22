/// @description uiz_huesquare_setcolor_hsv(instanceid,h[0],s[0],v[255])
/// @param instanceid
/// @param h[0]
/// @param s[0]
/// @param v[255]
function uiz_huesquare_setcolor_hsv(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.h=argument1;
	argument0.s=argument2;
	argument0.v=argument3;
	with(argument0){
		if animation then{
			uiz_updater_step();
			//if anicount==0 then{
				//anicount = 0;
				//fromh = h;
				//froms = s;
			//}else{
				anicount = 0;
				fromh = inh;
				froms = ins;
			//}
		}else{
			inh = h;
			ins = s;
		}
		inv = v;
		incolor=make_colour_hsv(inh,ins,inv)
		icolor=make_colour_hsv(128+inh,255-ins,255)
		uiz_updater_FixViews();
	}
}
