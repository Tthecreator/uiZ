/// @description uiz_animation_get(animationid,attime)
/// @param animationid
/// @param attime
function uiz_animation_get_legacy(argument0, argument1) {
	var a=uiz_animationto
	var aid=argument0
	var t=argument1
	//find the point left and right of the attime
	var pts=a.uiz_points[aid]
	atleft=a.uiz_apoint[aid,0]
	atright=a.uiz_apoint[aid,pts]
	valleft=a.uiz_apointval[aid,0]
	valright=a.uiz_apointval[aid,1]
	for(var i=0;i<=pts;i++){

	if a.uiz_apoint[aid,i]>t then{
	atleft=a.uiz_apoint[aid,i-1]
	atleftpoint=i-1
	atright=a.uiz_apoint[aid,i]
	valleft=a.uiz_apointval[aid,i-1]
	valright=a.uiz_apointval[aid,i]
	i=pts+1
	}
	}


	//check where between, get a factor
	var bf=(t-atleft)/(atright-atleft)
	var diff=0
	//if valleft>=valright then{betweenfactor=1-betweenfactor}
	//get diffrence in values
	diff=uiz_animation_getFunction(bf,a.uiz_apointtype[aid,atleftpoint])
	var valdelta=abs(valright-valleft)
	//return right value
	//ret=valdelta*betweenfactor

	if valleft>=valright then{
	return (valleft-valdelta*diff)
	}else{
	return (valleft+valdelta*diff)
	}

	///uiz by thomas saedt, Tthecreator on the game maker forums.



}
