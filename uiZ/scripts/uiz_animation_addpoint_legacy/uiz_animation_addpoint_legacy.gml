/// @description uiz_animation_addpoint(animationid,attime,value,optional curvetype)
/// @param animationid
/// @param attime
/// @param value
/// @param optional curvetype
function uiz_animation_addpoint_legacy() {
	var a=uiz_animationto;
	with(a){
	var aid=argument[0];
	var pnts=uiz_points[aid];
	uiz_apoint[aid,pnts]=argument[1]
	uiz_apointval[aid,pnts]=argument[2]
	if argument_count>3 then{
	uiz_apointtype[aid,pnts]=argument[3]
	//apointtypeval[aid,pnts]=argument[3]
	}else{
	uiz_apointtype[aid,pnts]=uiz_straight
	}
	uiz_points[aid]++
	pnts++
	uiz_apoint[aid,pnts]=uiz_lastpoint[aid]
	uiz_apointval[aid,pnts]=uiz_lastpointval[aid]
	}



}
