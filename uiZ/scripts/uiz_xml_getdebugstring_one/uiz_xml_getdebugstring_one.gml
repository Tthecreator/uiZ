/// @description uiz_xml_getdebugstring(tree,i)
/// @param tree
/// @param i
function uiz_xml_getdebugstring_one(argument0, argument1) {
	var sz=ds_list_size(argument0)
	var str=""
	var i=argument1
	switch(uiz_positify(argument0[| i]) mod 8){
	case 0: str+="A"+string(uiz_positify(argument0[| i])>>3) break;
	case 1: str+="B"+string(uiz_positify(argument0[| i])>>3) break;
	case 2: str+="D"+string(uiz_positify(argument0[| i])>>3) break;
	case 3: str+="F"+string(uiz_positify(argument0[| i])>>3) break;
	case 4: str+="N"+string(uiz_positify(argument0[| i])>>3) break;
	case 5: str+="I"+string(uiz_positify(argument0[| i])>>3) break;
	case 6: str+="W"+string(uiz_positify(argument0[| i])>>3) break;
	case 7: str+="U"+string(uiz_positify(argument0[| i])>>3) break;
	}
	return str;



}
