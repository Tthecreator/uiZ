function uiz_xml_drawstuff(argument0) {

	var sz=ds_list_size(argument0)
	var str=""
	for(var i=0;i<sz;i++){
	switch(uiz_positify(argument0[| i]) mod 8){
	case 0: str+="H"+string(uiz_positify(argument0[| i])>>3) break;
	case 1: str+="K"+string(uiz_positify(argument0[| i])>>3) break;
	case 2: str+="T"+string(uiz_positify(argument0[| i])>>3) break;
	case 3: str+="O"+string(uiz_positify(argument0[| i])>>3) break;
	case 4: str+="N"+string(uiz_positify(argument0[| i])>>3) break;
	case 5: str+="I"+string(uiz_positify(argument0[| i])>>3) break;
	case 6: str+="C"+string(uiz_positify(argument0[| i])>>3) break;
	case 7: str+="E"+string(uiz_positify(argument0[| i])>>3) break;
	}
	}
	/*
	for(var i=0;i<sz;i++){
	switch(uiz_positify(argument0[| i]) mod 8){
	case 0: str+="A"+string(uiz_positify(argument0[| i])>>3) break;
	case 1: str+="B"+string(uiz_positify(argument0[| i])>>3) break;
	case 2: str+="D"+string(uiz_positify(argument0[| i])>>3) break;
	case 3: str+="F"+string(uiz_positify(argument0[| i])>>3) break;
	case 4: str+="N"+string(uiz_positify(argument0[| i])>>3) break;
	case 5: str+="I"+string(uiz_positify(argument0[| i])>>3) break;
	case 6: str+="U"+string(uiz_positify(argument0[| i])>>3) break;
	case 7: str+="U"+string(uiz_positify(argument0[| i])>>3) break;
	}
	}
	*/
	draw_text(0,room_height/2+50,string_hash_to_newline(str))



}
